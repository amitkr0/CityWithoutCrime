/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author lenovo
 */
public class AddCriminalAction extends org.apache.struts.action.Action {

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
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        AddCriminalBean acb=(AddCriminalBean)form;
        String cid=acb.getCid();
        String name=acb.getName();
        String gender=acb.getGender();
        String height=acb.getHeight();
        String weight=acb.getWeight();
        String pid=acb.getPid();
        String level=acb.getLevel();
        String stat=acb.getStat();
        Connection con=null;
        PreparedStatement pst=null;
        try{
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            pst=con.prepareStatement("insert into criminal values(?,?,?,?,?,?,?,?)");
            pst.setString(1,cid);
            pst.setString(2,name);
            pst.setString(3,gender);
            pst.setString(4,height);
            pst.setString(5,weight);
            pst.setString(6,pid);
            pst.setString(7,level);
            pst.setString(8,stat);
            int status=0;
            if(cid.length()!=0 && name.length()!=0 && gender.length()!=0 && height.length()!=0 && weight.length()!=0 && pid.length()!=0 && level.length()!=0 && stat.length()!=0)
            {
                status=pst.executeUpdate();
            }
            if(status>0)
            {
                request.setAttribute("id",""+cid);
                SUCCESS="pass";
            }
            else
            {
                request.setAttribute("msg","incomplete");
                SUCCESS="fail";
            }
        }
            else
            {
                SUCCESS="fail";
            }
        }
        catch(Exception e)
        {
            request.setAttribute("msg","notunique");
            SUCCESS="uniquefail";
        }
        return mapping.findForward(SUCCESS);
    }
}
