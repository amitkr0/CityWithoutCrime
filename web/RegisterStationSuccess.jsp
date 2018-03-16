<%-- 
    Document   : RegisterStationSuccess
    Created on : 12 Jun, 2017, 12:09:37 AM
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
        <h2>Police Station successfully registered !</h2><br><br>
        <h:link action="/creg">Click here</h:link> to register another Police Station.
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
