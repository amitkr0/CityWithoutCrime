<%-- 
    Document   : RegisterStation
    Created on : 11 Jun, 2017, 11:25:10 PM
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
        <h2 style="color: midnightblue" >Register Police Station</h2> <hr><br>
        <%String s=(String)request.getAttribute("msg");
        if(s=="fail")
        {
            out.println("<font color=red><b>Incomplete Details !</b></font>");
        }
        if(s=="notunique")
        {
            out.println("<font color=red><b>Record already Exists !</b></font>");
        }
        %>
        <h:form action="/regpol">
            <b> Police Station Id : </b><input type="text" name="pid"/><br><br>
            <b>Name :</b> <input type="text" name="pn"/><br><br>
            <b>Address :</b> <input type="text" name="ad"/><br><br>
            <b>Phone :</b> <input type="text" name="ph"/><br><br>
            <b>Station Head :</b> <input type="text" name="sh"/><br><br>
            <b>Password :</b> <input type="text" name="pass"/><br><br>
            <input type="submit" value="Register"/><br><br>
            <input type="reset" value="Reset"/><br><br>
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
