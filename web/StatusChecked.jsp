<%-- 
    Document   : StatusChecked
    Created on : 11 Jun, 2017, 1:56:58 AM
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
    <center>
        <h2 style="color: midnightblue;">Your Complaint Status:</h2><hr>
        <table style="font-size: x-large">
            <tr><td><em>Complaint ID:</em></td><td><% out.println(" "+request.getAttribute("complaint_id"));%></td></tr>
            <tr><td><em>Complaint Type:</em></td><td><% out.println(" "+request.getAttribute("complaint_type"));%> </td></tr>
            <tr><td><em>Police Station ID:</em></td><td><% out.println(" "+request.getAttribute("complaint_p_id"));%></td></tr>
            <tr><td><em>Complaint Status:</em></td><td><% out.println(" "+request.getAttribute("complaint_status"));%></td></tr>
        </table>
    </center>
    </body>
</html>
