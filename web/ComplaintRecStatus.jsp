<%-- 
    Document   : ComplaintRecStatuts
    Created on : 16 Jun, 2017, 8:24:04 PM
    Author     : Shreya
--%>

<%@page import="rcpl.Complaint"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style>
            .a{
                width:200px;
            }
        </style>
    </head>
    <body>
    <center>
        <%if(session.getAttribute("admin")!=null)
        {
            %>
        <table border="1" style="border-collapse: collapse; background-color: midnightblue; color:whitesmoke">
            <tr style="background-color:#ff0000; color:black;">
                <th class="a">Complaint Id</th>
                <th class="a">Type</th>
                <th class="a">Description</th>
                <th class="a">Police Station Id</th>
                <th class="a">Aadhar Id</th>
                <th class="a">Contact</th>
                <th class="a">Email</th>
                <th class="a">Status</th>
            </tr>
        <% Complaint c=(Complaint)request.getAttribute("complaint");
        String id=c.getId();
           out.println("<tr><td class=\"a\">"+id+"</td><td class=\"a\">"+c.getType()+"</td><td class=\"a\">"+c.getDescription()+"</td><td class=\"a\">"+c.getP_id()+"</td><td class=\"a\">"+
                   c.getAadhar()+"</td><td class=\"a\">"+c.getContact()+"</td><td class=\"a\">"+c.getEmail()+"</td><td class=\"a\">"+c.getStatus()+"</td></tr>");   
                       %>
            
        </table>
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
