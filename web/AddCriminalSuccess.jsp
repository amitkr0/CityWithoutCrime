<%-- 
    Document   : SucessAdded
    Created on : 11 Jun, 2017, 12:27:16 PM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>



 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Criminal Record</title>
    </head>
    <body>
    <center>
        <%if(session.getAttribute("admin")!=null)
        {
            %>
        Successfully added!!<br><br>
        <%out.println("<em>Criminal added with id :</em>"+request.getAttribute("id"));%><br><br>
            <h:link action="/cadd">Click here</h:link> to add another record.
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
