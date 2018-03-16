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
public class ComplaintReceivedAction extends org.apache.struts.action.Action {

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
        
        ComplaintReceivedBean crb=(ComplaintReceivedBean)form;
        String cid=crb.getCid();
        Complaint comp=new Complaint();
        try
        {
            HttpSession session=request.getSession(false);
            if(session.getAttribute("admin")!=null)
            {
            if(cid.length()!=0)
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
                PreparedStatement pst=con.prepareStatement("select * from complaint where id=?");
                pst.setString(1, cid);
                ResultSet rs=pst.executeQuery();
                if(rs.next())
                {
                    comp.setId(rs.getString(1));
                    comp.setType(rs.getString(2));
                    comp.setDescription(rs.getString(3));
                    comp.setP_id(rs.getString(4));
                    comp.setAadhar(rs.getString(5));
                    comp.setContact(rs.getString(6));
                    comp.setEmail(rs.getString(7));
                    comp.setStatus(rs.getString(8));
                SUCCESS="pass";
                request.setAttribute("complaint",comp);
                }
                else
                {
                    SUCCESS="fail";
                    request.setAttribute("msg","wrong");
                }
            }
            else
            {
                SUCCESS="fail";
                request.setAttribute("msg","empty");
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
            request.setAttribute("msg",e.getMessage());
        }
        return mapping.findForward(SUCCESS);
    }
}
