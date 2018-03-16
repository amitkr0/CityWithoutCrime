<%-- 
    Document   : DeleteStation
    Created on : 12 Jun, 2017, 12:48:34 PM
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
        <h:form action="/delstation">
            <em><b>Police Station Id :</b></em> <% out.println("<input type=\"hidden\" name=\"t1\" value="+request.getAttribute("pid")+" />"+request.getAttribute("pid"));%><br><br>
                    <em><b>Area :</b></em> <% out.println(request.getAttribute("area"));%><br><br>
                    <em><b>Address :</b></em> <% out.println(request.getAttribute("address"));%><br><br>
                    <em><b>Phone :</b></em> <% out.println(request.getAttribute("phone"));%><br><br>
                    <em><b>Password :</b></em> <% out.println(request.getAttribute("password"));%><br><br>
                    <b> Are you sure you want to delete this record ?</b><br>
        <input type="submit" value="Yes"/>
        </h:form><br>
        <h:link action="/maindelstat"><input type="submit" value="No"/></h:link>
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
