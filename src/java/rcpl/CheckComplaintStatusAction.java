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

/**
 *
 * @author Nilaya
 */
public class CheckComplaintStatusAction extends org.apache.struts.action.Action
{

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
    public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception
    {
        CheckComplaintStatusBean ob=(CheckComplaintStatusBean)form;
        String cid=ob.getCid();
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
        
        PreparedStatement  pst=con.prepareStatement("select * from complaint where id = ?");
        pst.setString(1, cid);
        ResultSet rs=pst.executeQuery();
        if(!rs.next())
        {
            SUCCESS="notfound";
            request.setAttribute("found","false");
            request.setAttribute("message","The complaint ID does not exist!");
        }
        else
        {
            request.setAttribute("complaint_id", rs.getString(1));
            request.setAttribute("complaint_type", rs.getString(2));
            request.setAttribute("complaint_desc", rs.getString(3));
            request.setAttribute("complaint_p_id", rs.getString(4));
            request.setAttribute("complaint_status", rs.getString(8));
            SUCCESS="found";
        }
        }
        catch(Exception e)
        {
            SUCCESS="notfound";
        }
        return mapping.findForward(SUCCESS);
    }
}
