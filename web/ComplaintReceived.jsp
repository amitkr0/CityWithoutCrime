<%-- 
    Document   : ComplaintReceived
    Created on : 11 Jun, 2017, 12:59:22 AM
    Author     : Shreya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page import="java.sql.*"%>
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
        <%
            String msg=(String)request.getAttribute("msg");
            if(msg=="empty")
            {
                out.println("<font color=\"red\"><b>Enter valid Complaint Id !</b></font>");
            }
            if(msg=="wrong")
            {
                out.println("<font color=\"red\"><b>No such record exists !</b></font>");
            }
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from complaint");
            
          %>  
        <h:form action="/comprec">
            <h3>Search by Complaint Id : <input type="text" name="cid" />
                <input type="submit" value="Check"/></h3>
        </h:form>
        <br><br>
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
            
                <% while(rs.next())
                        {
                            out.println("<tr><td class=\"a\">"+rs.getString(1)+"</td><td class=\"a\">"+rs.getString(2)+"</td><td class=\"a\">"+rs.getString(3)+"</td><td class=\"a\">"+
                                    rs.getString(4)+"</td><td class=\"a\">"+rs.getString(5)+"</td><td class=\"a\">"+rs.getString(6)+"</td><td class=\"a\">"+
                                    rs.getString(7)+"</td><td class=\"a\">"+rs.getString(8)+"</td></tr>");
                        }
                    %>
            
        </table>
        <%
                }
            catch(Exception e)
            {
                out.println(e.getMessage());
            }
            %>
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
