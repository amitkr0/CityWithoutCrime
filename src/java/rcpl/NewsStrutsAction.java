/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Dell
 */
public class NewsStrutsAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static String SUCCESS = "success";
    private static int count=0;
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
        NewsActionBean nb=(NewsActionBean)form;
        String nws=nb.getNews();
        String s1=(String)request.getSession().getAttribute("pid");
        try
            {
               Class.forName("com.mysql.jdbc.Driver"); 
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
               
               PreparedStatement pst=con.prepareStatement("insert into emergency values(?,?,?)");
               Statement st=con.createStatement();
               ResultSet rst=st.executeQuery("select max(sno) from emergency");
               boolean flag=rst.next();
               count=rst.getInt(1)+1;
               pst.setInt(1,count);
               pst.setString(2,nws);
               pst.setString(3, s1);
               int status=pst.executeUpdate();
               SUCCESS="success";
               if(status==0){
                   SUCCESS="fail";
                   request.setAttribute("newsa", "failed");
                   request.setAttribute("message", "Failed in adding News !!");
               }
            }
            catch(Exception e){
                SUCCESS="fail";
                request.setAttribute("newsa", "failed");
                request.setAttribute("message", "Failed in adding News !!");
            }
       
        return mapping.findForward(SUCCESS);
    }
}
