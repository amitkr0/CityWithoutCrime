<%-- 
    Document   : StationLogoutSuccess
    Created on : 14 Jun, 2017, 3:51:41 PM
    Author     : Dell
--%>

<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            #a1{
                font-family: monospace;
                letter-spacing: 1px;
                color: #003333;
                font-weight: bold;
                font-size: x-large;
            }
        </style>
    </head>
    <body>
        <span id="a1">
            <center><br><br><br>
        <% 
            out.println(session.getAttribute("pid")+" : You are successfully logged out!");
            session.invalidate();
            %>
            </center></span>
    </body>
</html>
