<%-- 
    Document   : CheckComplaint
    Created on : 16 Jun, 2017, 2:21:36 PM
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
            <h2 style="color: midnightblue" >Delete Complaint</h2> <hr><br>
        <% String s=(String)request.getAttribute("msg");
        if(s=="fail")
        {
            out.println("<font color=red><b>No such record exists !</b></font><br>");
        }
        if(s=="enter")
        {
            out.println("<font color=red><b>Enter valid Complaint Id !</b></font><br>");
        }
        %>
        
        <h:form action="/checkcomplaint">
        <h3>Enter Complaint Id : <input type="text" name="coid"/>
            <input type="submit" value="Check"/></h3>
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
