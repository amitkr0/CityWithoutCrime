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
public class CheckCriminalAction extends org.apache.struts.action.Action {

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
        
        CheckCriminalBean ccb=(CheckCriminalBean)form;
        String cid=ccb.getCid();
        try{
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            PreparedStatement pst=con.prepareStatement("select * from criminal where criminalid=?");
            pst.setString(1,cid);
            ResultSet rs=null;
            if(cid!=null && cid.length()!=0)
            {
                rs=pst.executeQuery();
            if(rs.next())
            {
                SUCCESS="pass";
                request.setAttribute("cid",""+rs.getString(1));
                request.setAttribute("name",""+rs.getString(2));
                request.setAttribute("gender",""+rs.getString(3));
                request.setAttribute("height",""+rs.getString(4));
                request.setAttribute("weight",""+rs.getString(5));
                request.setAttribute("p_id",""+rs.getString(6));
                request.setAttribute("criminallevel",""+rs.getString(7));
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
