<%-- 
    Document   : CheckStation
    Created on : 12 Jun, 2017, 12:21:56 AM
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
         <% String s=(String)request.getAttribute("msg");
        if(s=="fail")
        {
            out.println("<font color=red><b>No such record exists !</b></font><br>");
        }
        String s1=(String)request.getAttribute("mymsg");
        if(s1=="fail1")
        {
            out.println("<font color=red><b>Cannot delete the given record. Invalid deletion !</b></font><br>");
        }
        %>
        <h:form action="/checkpol">
            <h3><b>Enter Police Station Id : </b><input type="text" name="pid"/>
                <input type="submit" value="Delete"/></h3>
        </h:form>
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
