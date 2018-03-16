/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Dell
 */
public class ComplaintUpdateAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "pass";

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
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        ComplaintUpdateBean cub=(ComplaintUpdateBean)form;
        String cid=cub.getCid();
        String status=cub.getStatus();
        if(status.trim().length()==0 || cid.trim().length()==0){
            if(cid.trim().length()==0)request.setAttribute("ccid", "Complaint Id");
            if(status.trim().length()==0)request.setAttribute("sts", "Status");            
            SUCCESS="fail";
            request.setAttribute("compupdate", "failed");
            request.setAttribute("message", "Both Field Required");
        }
        else{
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
            PreparedStatement pst=con.prepareStatement("update complaint set status=? where id=?");
            pst.setString(1, status);
            pst.setString(2, cid);
            int chk=pst.executeUpdate();
            if(chk==1){
                SUCCESS="pass";
            }
            else{
                request.setAttribute("compupdate", "failed");
                request.setAttribute("message", "Complaint Status failed!");
                SUCCESS="fail";
            }
        }
        catch(Exception e){
            request.setAttribute("compupdate", "failed");
            request.setAttribute("message", "Complaint Status failed!Check Details Again");
            SUCCESS="fail";
        }
        }
        
        return mapping.findForward(SUCCESS);
    }
}
