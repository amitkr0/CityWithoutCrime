<%-- 
    Document   : Layout
    Created on : 10 Jun, 2017, 9:07:42 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="t" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table width="100%"">
            <tr> 
                <td height="50" colspan="3" valign="top"><t:insert attribute="header"/></td> 
            </tr>
            <tr> 
                <td height="30" colspan="3" valign="top"><t:insert attribute="topmenu"/></td> 
            </tr>
            <tr> 
                <td width="150" height="400" valign="top"><t:insert attribute="menu"/></td> 
                <td width="843" valign="top"><t:insert attribute="body"/></td> 
            </tr>
            <tr> 
                <td height="30" width="100%" colspan="3" valign="top"><t:insert attribute="footer"/></td> 
            </tr>
        </table>
    </center>
    </body>
</html>
