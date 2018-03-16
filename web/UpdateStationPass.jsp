<%-- 
    Document   : UpdateStationPass
    Created on : 14 Jun, 2017, 5:12:19 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
        <center><h1 style="font-family: monospace">Updated Successfully !!!</h1></center>
    </body>
</html>
