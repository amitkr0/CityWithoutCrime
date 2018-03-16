<%-- 
    Document   : AddCriminal
    Created on : 11 Jun, 2017, 1:00:21 AM
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
       <h2 style="color: midnightblue" >Enter Criminal Details</h2> <hr><br>
             <% 
            String s=(String)request.getAttribute("msg");
            if(s=="incomplete")
            {
                out.println("<font color=red><b>Incomplete Details ! </b></font><br>");
            }
            if(s=="notunique")
            {
                out.println("<font colr=red><b>Record already exists !</b> </font><br>");
            }
            %>
       <h:form action="/add">
           <b>Criminal Id : </b><input type="text" name="cid"/><br><br>
        <b>Name :</b>        <input type="text" name="name"/><br><br>
        <b>Gender :</b>      <input type="radio" name="gender" value="Male"/>Male
        <input type="radio" name="gender" value="Female"/>Female<br><br>
        <b>Height :</b>      <input type="text" name="height"/><br><br>
        <b>Weight :</b>      <input type="text" name="weight"/><br><br>
        <b>Police Station Id :</b> <input type="text" name="pid"/><br><br>
        <b>Crime Level :</b> <select name="level">
            <option value="Pickpocketing">Pickpocketing </option>
            <option value="Kidnapping">Kidnapping </option>
            <option value="Murder">Murder </option>
            <option value="Theft">Theft</option>
            <option value="Cyber Crime">Cyber Crime </option>
            <option value="Attempt to murder">Attempt to Murder </option>
            <option value="Corruption">Corruption </option>
            <option value="Smuggling">Smuggling </option>
            <option value="Harassment">Harassment</option>
            <option value="Others">Others </option>
                     </select><br><br>
                     <b>Status :</b> <input type="textarea" name="stat"/><br><br>
        <input type="submit" value="Add Record"/>
        <input type="reset" value="Reset"/>
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
