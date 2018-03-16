<%-- 
    Document   : UpdateStationExcep
    Created on : 14 Jun, 2017, 5:13:14 PM
    Author     : Dell
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
        <center>
        <h1 style="font-family: fantasy;">Exception during Updation !!!</h1>
        <span style="font-family: cursive;font-size: x-large"><% 
        out.println((String)request.getAttribute("errr"));%><br><br><%
        out.println((String)request.getAttribute("errmsg"));%>
        </span></center>
    </body>
</html>
