<%-- 
    Document   : DeleteCriminal
    Created on : 11 Jun, 2017, 1:00:55 AM
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
        <h:form action="/deletecriminal">
            <em><b> Criminal Id :</b></em> <% out.println("<input type=\"hidden\" name=\"t1\" value="+request.getAttribute("cid")+" />"+request.getAttribute("cid"));%><br><br>
            <em><b>        Name :</b></em> <% out.println(request.getAttribute("name"));%><br><br>
            <em><b>        Gender :</b></em> <% out.println(request.getAttribute("gender"));%><br><br>
            <em><b>        Height :</b></em> <% out.println(request.getAttribute("height"));%><br><br>
            <em><b>        Weight :</b></em> <% out.println(request.getAttribute("weight"));%><br><br>
            <em><b>        Police Station Id :</b></em> <% out.println(request.getAttribute("p_id"));%><br><br>
            <em><b>        Crime Level : </b></em><% out.println(request.getAttribute("criminallevel"));%><br><br>
            <em><b>        Status :</b></em> <% out.println(request.getAttribute("status"));%><br><br>
            <b>Are you sure you want to delete this record ?</b>
        <input type="submit" value="Yes"/>
        </h:form>
        <h:link action="maindelcrim"><input type="submit" value="No"/></h:link>
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
