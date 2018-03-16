<%-- 
    Document   : CheckCriminal
    Created on : 11 Jun, 2017, 9:41:07 PM
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
            <h2 style="color: midnightblue" >Delete Criminal Record</h2> <hr><br>
        <% String s=(String)request.getAttribute("msg");
        if(s=="fail")
        {
            out.println("<font color=red><b>No such record exists!</b></font><br>");
        }
        if(s=="enter")
        {
            out.println("<font color=red><b>Enter valid Criminal Id !<b></font><br>");
        }
        %>
        <h:form action="/checkcriminal">
            <h3><b>Enter Criminal Id :</b> <input type="text" name="cid"/>
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
