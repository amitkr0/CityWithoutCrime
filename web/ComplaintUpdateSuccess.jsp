<%-- 
    Document   : ComplaintUpdateSuccess
    Created on : 17 Jun, 2017, 3:01:33 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <p align="right">Logged In as <strong><%out.println(session.getAttribute("pid"));%></strong></p>
        <center>
            <h1 style="font-family: cursive;color: #003333">Status Updated Successfully</h1>
        </center>
    </body>
</html>
