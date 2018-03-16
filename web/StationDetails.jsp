<%-- 
    Document   : StationDetails
    Created on : 11 Jun, 2017, 2:01:08 AM
    Author     : Nilaya
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            .a{
                width:200px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        
        <%if(session.getAttribute("pid")!=null){%>
        <p align="right">Logged In as <b><%out.println(session.getAttribute("pid"));}%></b></p>
        <%
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/police","root","password");
               
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from station");
        %>
    <center>
        <h2 style="color: midnightblue;">POLICE STATION DETAILS</h2><hr>
        <br><br>
        <table border="1" style="border-collapse: collapse; background-color: midnightblue; color:whitesmoke">
            <tr style="background-color:#ff0000; color:black;">
                <th class="a">STATION ID</th>
                <th class="a">STATION NAME</th>
                <th class="a">ADDRESS</th>
                <th class="a">PHONE</th>
                <th class="a">STATION HEAD</th>
            </tr>
            <% while(rs.next())
            { 
            %>
                <tr>
                    <td class="a"><%out.println(rs.getString(1));%></td>
                    <td class="a"><%out.println(rs.getString(2));%></td>
                    <td class="a"><%out.println(rs.getString(3));%></td>
                    <td class="a"><%out.println(rs.getString(4));%></td>
                    <td class="a"><%out.println(rs.getString(5));%></td>
                </tr>
               
            <%}%>
        </table>
    </center>
    </body>
</html>
