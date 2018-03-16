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
import java.sql.ResultSet;
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
public class CriminalRecordFilterAction extends org.apache.struts.action.Action {

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
            throws IOException,ServletException {
        
        CriminalRecordFilterBean crfb=(CriminalRecordFilterBean)form;
        String cid=crfb.getCid();
        String cname=crfb.getCname();
        String gen=crfb.getGen();
        String p_id=crfb.getP_id();
        String cll=crfb.getCll();
        String sts=crfb.getSts();
        
        String query="select * from criminal";
        String s="";
        if(cid.trim().length()!=0 && cid!=null){
           request.setAttribute("rcid", cid);
            s="CriminalId='"+cid+"'";
        }
        if(cname.trim().length()!=0 && cname!=null ){
            request.setAttribute("rcname", cname);
            if(!s.equals(""))s=s+" and ";
            s=s+"Name='"+cname+"'";
        }
        if(gen.trim().length()!=0 && gen!=null ){
            request.setAttribute("rgen", gen);
            if(!s.equals(""))s=s+" and ";
            s=s+"Gender='"+gen+"'";
        }
        if(p_id.trim().length()!=0 && p_id!=null ){
            request.setAttribute("rpid", p_id);
            if(!s.equals(""))s=s+" and ";
            s=s+"PStation_Id='"+p_id+"'";
        }
        if(cll.trim().length()!=0 && cll!=null ){
            request.setAttribute("rcll", cll);
            if(!s.equals(""))s=s+" and ";
            s=s+"Crimelevel='"+cll+"'";
        }
        if(sts.trim().length()!=0 && sts!=null ){
            request.setAttribute("rsts", sts);
            if(!s.equals(""))s=s+" and ";
            s=s+"Status='"+sts+"'";
        }
        if(!s.equals("")){
            query=query+" where ";
        }
        query=query+s;
        
        request.setAttribute("que", query);
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
               
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            request.setAttribute("rset", rs);
            if(rs.isBeforeFirst())
            {
                SUCCESS="pass";
            }
		
            else
            {
		 SUCCESS="fail";
            }
        }
        catch(Exception e)
        {
            SUCCESS="fail";
            request.setAttribute("crimfilt", "failed");
            request.setAttribute("message", "Enter Details again !!");
        }
        
        
        
        return mapping.findForward(SUCCESS);
    }
}
