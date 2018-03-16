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
 * @author lenovo
 */
public class CheckStationAction extends org.apache.struts.action.Action {

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
        
        CheckStationBean csb=(CheckStationBean)form;
        String pid=csb.getPid();
        try{
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            PreparedStatement pst=con.prepareStatement("select * from station where pstation_id=?");
            pst.setString(1,pid);
            ResultSet rs=null;
            if(pid!=null && pid.length()!=0)
            {
                rs=pst.executeQuery();
            }
            if(rs.next())
            {
                SUCCESS="pass";
                request.setAttribute("pid",""+rs.getString(1));
                request.setAttribute("area",""+rs.getString(2));
                request.setAttribute("address",""+rs.getString(3));
                request.setAttribute("phone",""+rs.getString(4));
                request.setAttribute("password",""+rs.getString(5));
            }
            else
            {
                request.setAttribute("msg","fail");
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
            SUCCESS="fail";
            request.setAttribute("msg",""+e.getMessage());
        }
        return mapping.findForward(SUCCESS);
    }
}
