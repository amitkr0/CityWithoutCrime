<%-- 
    Document   : Login
    Created on : 10 Jun, 2017, 11:44:04 PM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://struts.apache.org/tags-html" prefix="h"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
         
        <h2 style="color: midnightblue;">LOGIN AS ADMINISTRATOR</h2><hr>
        <%String s=(String)request.getAttribute("msg");
            if(s=="fail")
            {
                out.println("<font color=\"red\"><b>Incorrect Password !</b></font>");
            }
            %>
            <h:form action="/logadmin">
        <h3>
            <!--Enter Password : <input type="password" name="apass"/><br><br>-->
            Enter Password : <input type="password" name="apass"><br><br>
            <h:submit value="Login"/></h2>
            <h:reset value="Reset"/></h2><br><br></h3>
        </h:form>
            
    </center>
    </body>
</html>