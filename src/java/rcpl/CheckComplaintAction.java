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
import javax.servlet.http.HttpSession;

/**
 *
 * @author lenovo
 */
public class CheckComplaintAction extends org.apache.struts.action.Action {

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
        
        CheckComplaintBean ccob=(CheckComplaintBean)form;
        String coid=ccob.getCoid();
        try{
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            PreparedStatement pst=con.prepareStatement("select * from complaint where id=?");
            pst.setString(1,coid);
            ResultSet rs=null;
            if(coid!=null && coid.length()!=0)
            {
                rs=pst.executeQuery();
            if(rs.next())
            {
                SUCCESS="pass";
                request.setAttribute("coid",""+rs.getString(1));
                request.setAttribute("type",""+rs.getString(2));
                request.setAttribute("description",""+rs.getString(3));
                request.setAttribute("p_id",""+rs.getString(4));
                request.setAttribute("aadhar",""+rs.getString(5));
                request.setAttribute("contact",""+rs.getString(6));
                request.setAttribute("email",""+rs.getString(7));
                request.setAttribute("status",""+rs.getString(8));
            }
            else
            {
                request.setAttribute("msg","fail");
                SUCCESS="fail";
            }
        }
            else
            {
               request.setAttribute("msg","enter");
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
