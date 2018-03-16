<%-- 
    Document   : First
    Created on : 10 Jun, 2017, 8:13:36 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
         ul#topmenu{
           padding:10px;
        }
        #topmenu li{
            list-style:none; display:inline; margin-right:5%; margin-left:5%;
            text-decoration:none; padding:0.10%;
        }
        
        #sidemenu li{
            list-style:none;padding:0.8%; margin-top:5%; margin-bottom:5%;
            text-decoration:none; padding:0.10%;
        }
    </style>
    <body>
        <center>
        <table border="1" width="100%">
            <tr> 
                <td height="30" colspan="3" valign="top">
                    <h1>CITY WITHOUT CRIME</h1>
                </td> 
            </tr>
            <tr>
                <td height="30" colspan="3" valign="top">
                    TOP MENU
                    <ul id="topmenu">
                        <li><h:link action="/h">HOME</h:link></li>
                        <li><h:link action="/g">GALLERY</h:link></li>
                        <li><h:link action="/sd">POLICE STATION DETAILS</h:link></li>
                        <li><h:link action="/cu">CONTACT US</h:link></li>
                    </ul>
                </td>
            </tr>
                
            <tr> 
                <td width="150" height="400" valign="top">
                    MAIN MENU
                    <ul id="sidemenu">
                        <li><h:link action="/fc">FILE COMPLAINT</h:link></li>
                        <li><h:link action="/fc">CHECK COMPLAINT STATUS</h:link></li>
                        <li><h:link action="/slg">STATION LOGIN</h:link></li>
                        <li><h:link action="/adlog">ADMIN LOGIN</h:link></li>
                    </ul>
                </td> 
                <td width="843" valign="top">FIRST BODY</td> 
            </tr>
            <tr> 
                <td height="30" width="100%" colspan="3" valign="top">city without crime footer</td> 
            </tr>
        </table>
    </center>
    </body>
</html>
