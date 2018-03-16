<%-- 
    Document   : StationRecords
    Created on : 18 Jun, 2017, 1:41:10 AM
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
            <h1 style="color: midnightblue" >Police Station Records</h1> <hr><br>
        <%
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from station");
            
          %>
        <br><br>
        <table border="1" style="border-collapse: collapse; background-color: midnightblue; color:whitesmoke">
            <tr style="background-color:#ff0000; color:black;">
                <th class="a">Police Station Id</th>
                <th class="a">Area</th>
                <th class="a">Address</th>
                <th class="a">Phone</th>
                <th class="a">Station Head</th>
                <th class="a">Password</th>
            </tr>
            
                <% while(rs.next())
                        {
                            out.println("<tr><td class=\"a\">"+rs.getString(1)+"</td><td class=\"a\">"+rs.getString(2)+"</td><td class=\"a\">"+rs.getString(3)+"</td><td class=\"a\">"+
                                    rs.getString(4)+"</td><td class=\"a\">"+rs.getString(5)+"</td><td class=\"a\">"+rs.getString(6)
                                    +"</td></tr>");
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
