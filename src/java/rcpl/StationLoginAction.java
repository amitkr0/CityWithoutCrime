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
 * @author Dell
 */
public class StationLoginAction extends org.apache.struts.action.Action {

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
        
        StationLoginBean slb=(StationLoginBean)form;
        String pid=slb.getPid();
        String pass=slb.getPass();
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
            PreparedStatement pst=con.prepareStatement("select * from station where pstation_id=? and password=?");
            pst.setString(1, pid);
            pst.setString(2, pass);
            ResultSet rs=pst.executeQuery();
            boolean bool=rs.next();
            if(bool==true){
                SUCCESS="pass";
                //out.println("Welcome , "+user);
                HttpSession session=request.getSession();  
                session.setAttribute("pid",pid);
            }
            else{
                SUCCESS="fail";
                request.setAttribute("slogin", "failed");
                request.setAttribute("message", "Invalid Username/Password !!");
            }
        }
        catch(Exception e){
            request.setAttribute("slogin", "failed");
            request.setAttribute("message", "Login Failed !!");
            SUCCESS="fail";
        }
        
        
        
        return mapping.findForward(SUCCESS);
    }
}
