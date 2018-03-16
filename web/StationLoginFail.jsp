<%-- 
    Document   : StationLoginBody
    Created on : 12 Jun, 2017, 12:15:52 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
        #a1 {font-family: monospace;font-size: x-large;font-weight:600}
        </style>
    </head>
    <h:javascript formName="StationLoginBean"/>
    <body>
    <center>
        <h2 style="color: midnightblue;">LOGIN AS POLICE STATION</h2><hr>
        <table> <h:form action="/stentr" onsubmit="return validateStationLoginBean(this)">
                <tr><td id="a1">PoliceStation Id</td><td><h:text property="pid" size="30"/><br></td></tr><br><br>
                <tr><td id="a1">Password</td><td> <h:password property="pass" size="30"/></td></tr><br><br>
                <tr><td><h:submit value="Login"/></td></tr>
            </h:form>
       </table>
        
        <h:errors/>${requestScope.msg}
        <p style="color: #C00">   
        <% 
           if(request.getAttribute("slogin")=="failed")
               out.println(request.getAttribute("message"));
            %></p>
    </center>
        
        
    </body>
</html>
