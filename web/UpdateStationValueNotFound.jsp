<%-- 
    Document   : UpdateStationValueNotFound
    Created on : 16 Jun, 2017, 2:12:53 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            #a1{
                font-family: monospace;
                color: #666666;
                font-size: xx-large;
            }
        </style>
    </head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
       <center id="a1">
        <ul>
            <% if(request.getAttribute("val1")!=null){%><li><%out.println((String)request.getAttribute("val1")+" required");%></li><br><%}
               if(request.getAttribute("val2")!=null){%><li><%out.println((String)request.getAttribute("val2")+" required");%></li><br><%}
               if(request.getAttribute("val3")!=null){%><li><%out.println((String)request.getAttribute("val3")+" required");%></li><br><%}
               if(request.getAttribute("val4")!=null){%><li><%out.println((String)request.getAttribute("val4")+" required");%></li><br><%}%>
        </ul></center>
    </body>
</html>
