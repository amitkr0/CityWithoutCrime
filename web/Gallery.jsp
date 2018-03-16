<%-- 
    Document   : Gallery
    Created on : 12 Jun, 2017, 1:00:07 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%if(session.getAttribute("pid")!=null){%>
        <p align="right">Logged In as <b><%out.println(session.getAttribute("pid"));}%></b></p>
        <center><h2 style="color: midnightblue;">Welcome to Gallery...</h2><hr></center>
    </body>
</html>
