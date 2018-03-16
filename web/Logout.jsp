<%-- 
    Document   : Logout
    Created on : 11 Jun, 2017, 1:02:58 AM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%if(session.getAttribute("admin")!=null)
        {
            session.invalidate();
        }
        %>
        <center><h1>
            You are successfully logged out !</h1>
        </center><%--session.invalidate();
        --%>
    </body>
</html>
