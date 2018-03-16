/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.sql.*;

/**
 *
 * @author Nilaya
 */
public class FileComplaintAction extends org.apache.struts.action.Action
{

    /* forward name="success" path="" */
    private static String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception
    {
        FileComplaintBean ob=(FileComplaintBean)form;
        String type=ob.getType();
        String pid=ob.getPid();
        String desc=ob.getDesc();
        String aadhar=ob.getAadhar();
        String contact=ob.getContact();
        String email=ob.getEmail();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            
            Statement st=con.createStatement();
            ResultSet r=st.executeQuery("select sysdate() from dual");
            r.next();
            String sysdate=r.getString(1);
            System.out.println(sysdate);
            String id=""+sysdate.charAt(0)+sysdate.charAt(1)+sysdate.charAt(2)+sysdate.charAt(3)+sysdate.charAt(5)+sysdate.charAt(6)+sysdate.charAt(8)+sysdate.charAt(9)+sysdate.charAt(11)+sysdate.charAt(12)+sysdate.charAt(14)+sysdate.charAt(15)+sysdate.charAt(17)+sysdate.charAt(18)+sysdate.charAt(20);
            PreparedStatement  pst=con.prepareStatement("insert into complaint values(?,?,?,?,?,?,?,?)");
            
            pst.setString(1,id); 
            pst.setString(2,type);
            pst.setString(3,desc);
            pst.setString(4,pid);
            pst.setString(5,aadhar);
            pst.setString(6,contact);
            pst.setString(7,email);
            pst.setString(8,"Filed");
            int status=pst.executeUpdate();
            
            
            if(status>0)
            {
                request.setAttribute("filedcompid", id);
                request.setAttribute("filedcomptype", type);
                request.setAttribute("filedcompdesc", desc);
                request.setAttribute("filedcomppid", pid);
                request.setAttribute("filedcompstatus", "filed");
                SUCCESS="pass";
            }
		
            else
            {
		request.setAttribute("insertstatus", "failed");
                request.setAttribute("message", "Complaint filing failed!");
            }
        }
        catch(Exception e)
        {   
            request.setAttribute("insertstatus", "failed");
            request.setAttribute("message", "Compalint filing failed! Check details again.");
            SUCCESS="fail";
        }
        return mapping.findForward(SUCCESS);
    }
}
