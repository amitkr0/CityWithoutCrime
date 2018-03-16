/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Dell
 */
public class UpdateStationAction extends org.apache.struts.action.Action {

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
        
        UpdateStationBean us=(UpdateStationBean)form;
        String addr=us.getAddr();
        String phno=us.getPhno();
        String phed=us.getPhed();
        String pass=us.getPass();
        String rpas=us.getRpas();
        String pid=(String)request.getSession().getAttribute("pid");
        if(addr.trim().length()==0 || phno.trim().length()==0 || phed.trim().length()==0 || pass.trim().length()==0 || rpas.trim().length()==0){
            SUCCESS="fail";
            request.setAttribute("updatest", "failed");
            request.setAttribute("message", "All Fields required!!");
        }
        else if(!pass.equals(rpas)){
            SUCCESS="fail";
            request.setAttribute("updatest", "failed");
            request.setAttribute("message", "Password must match in both fields!!");
        }
        else{
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
                Statement st=con.createStatement();
                String s1="update student set address=?,password=?,phone=?,pstation_head=? where pstation_id=?";
                PreparedStatement pst=con.prepareStatement("update station set address=?,password=?,phone=?,pstation_head=? where pstation_id=?");
                pst.setString(1,addr);
                pst.setString(2,pass);
                pst.setString(3,phno);
                pst.setString(4,phed);
                pst.setString(5,pid);
                int status=pst.executeUpdate();
                if(status==1){
                    SUCCESS="pass";
                }
                else{
                    SUCCESS="fail";
                    request.setAttribute("updatest", "failed");
                    request.setAttribute("message", "Compalint filing failed!");
                }
            }
            catch(Exception e){
                SUCCESS="fail";
                request.setAttribute("updatest", "failed");
                request.setAttribute("message", "Compalint filing failed! Check details again.");
                
            }
        }
        return mapping.findForward(SUCCESS);
    }
}
