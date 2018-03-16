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
public class DeleteCriminalAction extends org.apache.struts.action.Action {

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
        
        DeleteCriminalBean dcb=(DeleteCriminalBean)form;
        String cid=dcb.getT1();
        try{
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
            {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
            PreparedStatement pst=con.prepareStatement("delete from criminal where criminalid=?");
            pst.setString(1,cid);
            int status=0;
            if(cid!=null && cid.length()!=0)
            {
                status=pst.executeUpdate();
            }
            if(status>0)
            {
                SUCCESS="pass";
            }
            else
            {
                SUCCESS="fail";
                request.setAttribute("mymsg",""+cid);
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
            request.setAttribute("mymsg",""+e.getMessage());
        }
        return mapping.findForward(SUCCESS);
    }
}
