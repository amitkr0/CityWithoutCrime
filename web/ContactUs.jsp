<%-- 
    Document   : ContactUs
    Created on : 12 Jun, 2017, 12:46:03 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #a{
                text-align: left;
                color: #003333;
                font-family: fantasy;
            }
        </style>
    </head>
    <body>
        <%if(session.getAttribute("pid")!=null){%>
        <p align="right">Logged In as <b><%out.println(session.getAttribute("pid"));}%></b></p>
    <center><h2 style="color: midnightblue;">Contact Us:</h2><hr><br>
        <span style="font-size: x-large">Do not hesitate to contact us if you have any questions or feature requests:</span>
        <h3 id="a">Phone: 9128252525</h3> 
        <h3 id="a">email: query@cwc.com</h3>
        <h3 id="a">Address: Astric Centre, (Opposite Shiv Mandir) Khajpura Patna</h3>
    </center>
    </body>
</html>
