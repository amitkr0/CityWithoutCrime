<%-- 
    Document   : Home
    Created on : 10 Jun, 2017, 11:43:51 PM
    Author     : Shreya
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
        <%if(session.getAttribute("admin")!=null)
        {
            %>
        <h1><font color="midnightblue">Database Details</font></h1><hr>
        <p><h3>
            <em><b>No. of complaints registered :</b></em> <%out.println(session.getAttribute("comp"));%><br><br>
        <em><b>No. of criminals recorded :</b></em> <%out.println(session.getAttribute("crim"));%><br><br>
        <em><b>No. of stations registered :</b></em> <%out.println(session.getAttribute("stat"));%><br><br></h3>
        </p>
        <%}
       else
        {
            out.println("<h3><font color=red>You must login to see this page !</font></h3>");
        %>
        <jsp:include page="Login.jsp"/>
        <%}%>
    </center>
    </body>
</html>
