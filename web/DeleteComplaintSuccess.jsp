<%-- 
    Document   : DeleteComplaintSuccess
    Created on : 16 Jun, 2017, 3:02:38 PM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
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
            <h2>Complaint successfully deleted !</h2><br><br>
            <h:link action="/cdelcomp">Click here</h:link> to delete another record.
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
