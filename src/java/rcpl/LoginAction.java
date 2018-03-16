/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
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
public class LoginAction extends org.apache.struts.action.Action {

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
            throws ServletException,IOException {
        LoginBean lb=(LoginBean)form;
        String pass=lb.getApass();
        if(pass.equals("admin123"))
        {
            HttpSession session=request.getSession();
            session.setAttribute("admin","Admin");
            request.setAttribute("msg","Welcome");
            SUCCESS="pass";
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            Statement stmt=con.createStatement();
            Statement stmt1=con.createStatement();
            Statement stmt2=con.createStatement();
            ResultSet rs=stmt.executeQuery("select count(*) from criminal");
            ResultSet rs1=stmt1.executeQuery("select count(*) from station");
            ResultSet rs2=stmt2.executeQuery("select count(*) from complaint");
            while(rs.next())
            {
            session.setAttribute("crim",""+rs.getString(1));
            }
            while(rs1.next())
            {
             session.setAttribute("stat",""+rs1.getString(1));
            }
            while(rs2.next())
            {
            session.setAttribute("comp",""+rs2.getString(1));
            }}
            catch(Exception e){
                SUCCESS="fail";
                request.setAttribute("msg","fail");
            }
        }
        else
        {
            SUCCESS="fail";
            request.setAttribute("msg","fail");
        }
        return mapping.findForward(SUCCESS);
    }
}
