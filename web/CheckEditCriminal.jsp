<%-- 
    Document   : CheckEditCriminal
    Created on : 15 Jun, 2017, 2:31:57 AM
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
    <center>
        <%if(session.getAttribute("admin")!=null)
        {
            %>
        <h2 style="color: midnightblue" >Edit Criminal Record </h2> <hr><br>
        <% String s=(String)request.getAttribute("msg");
        if(s=="fail")
        {
            out.println("<font color=red><b>No such record exists !</b></font><br>");
        }
        if(s=="enter")
        {
            out.println("<font color=red><b>Enter valid Criminal Id ! </b></font><br>");
        }
        if(s=="incomplete")
        {
            out.println("<font color=red><b>Enter complete Details ! </b></font><br>");
        }
        %>
        <h:form action="/checkeditcrim">
            <h3><b>Enter Criminal Id :</b> <input type="text" name="cid"/>
        <input type="submit" value="Edit"/></h3>
        </h:form>
        <%}
       else
        {
            out.println("<h3><font color=red>You must login to see this page !</font></h3>");
        %>
        <jsp:include page="Login.jsp"/>
        <%}%>
    </center>
</html>
