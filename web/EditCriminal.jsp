<%-- 
    Document   : EditCriminal
    Created on : 15 Jun, 2017, 12:46:53 AM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <%if(session.getAttribute("admin")!=null)
        {
            %>
           <% 
            String s=(String)request.getAttribute("msg");
            if(s=="incomplete")
            {
                out.println("<font color=red><b>Incomplete Details !</b></font>");
            }
            %>
       <h:form action="/editcrim">
           <em><b>Criminal Id :</b></em> <% out.println("<input type=\"hidden\" name=\"t1\" value="+request.getAttribute("cid")+" />"+request.getAttribute("cid"));%><br><br>
        <em><b>Name :</b></em> <%out.println("<input type=\"text\" name=\"nm\" value="+request.getAttribute("name")+" />");%><br><br>
        <em><b>Gender :</b></em> <%out.println("<input type=\"text\" name=\"gd\" value="+request.getAttribute("gender")+" />");%><br><br>
        <em><b>Height :</b></em> <%out.println("<input type=\"text\" name=\"ht\" value="+request.getAttribute("height")+" />");%><br><br>
        <em><b>Weight :</b></em> <%out.println("<input type=\"text\" name=\"wt\" value="+request.getAttribute("weight")+" />");%><br><br>
        <em><b>Police Station Id :</b></em> <%out.println("<input type=\"text\" name=\"sid\" value="+request.getAttribute("p_id")+" />");%><br><br>
        <em><b>Crime Level : </b></em><%out.println("<input type=\"text\" name=\"cl\" value="+request.getAttribute("criminallevel")+" />");%><br><br>
        <em><b>Status :</b></em> <%out.println("<input type=\"text\" name=\"st\" value="+request.getAttribute("status")+" />");%><br><br>
           <input type="submit" value="Save Changes" />
       </h:form>
           <%}
       else
        {
            out.println("<h3><font color=red>You must login to see this page !</font></h3>");
        %>
        <jsp:include page="Login.jsp"/>
        <%}%>
    </center>
</body>
</html>
