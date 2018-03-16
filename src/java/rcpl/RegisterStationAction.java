/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class RegisterStationAction extends org.apache.struts.action.Action {

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
        
        RegisterStationBean rsb=(RegisterStationBean)form;
        String pid=rsb.getPid();
        String name=rsb.getPn();
        String add=rsb.getAd();
        String ph=rsb.getPh();
        String sh=rsb.getSh();
        String pass=rsb.getPass();
        try
        {
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            PreparedStatement pst=con.prepareStatement("insert into station values(?,?,?,?,?,?)");
            pst.setString(1,pid);
            pst.setString(2,name);
            pst.setString(3,add);
            pst.setString(4,ph);
            pst.setString(5,sh);
            pst.setString(6,pass);
            int status=0;
            if(pid.length()!=0 && name.length()!=0 && add.length()!=0 && ph.length()!=0 && pass.length()!=0 && sh.length()!=0 )
            {
                status=pst.executeUpdate();
            }
            if(status>0)
            {
                SUCCESS="pass";
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
            SUCCESS="excep";
            request.setAttribute("msg","notunique");
        }
        return mapping.findForward(SUCCESS);
    }
}
