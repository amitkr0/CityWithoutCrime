<%-- 
    Document   : UpdateProfile
    Created on : 10 Jun, 2017, 10:52:33 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
h1{color:#003333;font-family: fantasy;letter-spacing: 1px}
#a1{font-family: serif;color: #000033;font-size: large}
input{width: 240px;}
-->
        </style>
        <script>
            funtion checkPassword(){
                alert("hello");
            }
        </script>
    </head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
    <center>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
            Statement pst=con.createStatement();
            //String s1="patna";
            //pst.setString(1,s1);
            ResultSet rs=pst.executeQuery("select * from station where pstation_id="+session.getAttribute("pid"));
            boolean o=rs.next();
        %>
        <h1><strong><u>Update your Information</u></strong></h1><br><br>
            <table width="500" height="300" border="1" align="center" bordercolor="#000000">
        <h:form action="/updatestation">
            <tr><td id="a1">PoliceStation ID</td><td style="letter-spacing: 2px"><% out.println(rs.getString(1));%></td></tr>
            <tr><td id="a1">PoliceStation Name</td><td style="letter-spacing: 1px"><% out.println(rs.getString(2));%></td></tr>
            <tr><td id="a1">Address</td><td><input type="text" name="addr" width="200" value="<% out.println(rs.getString(3));%>"></td></tr>
            <tr><td id="a1">Phone Number</td><td><input type="text" name="phno"value="<% out.println(rs.getString(4));%>"></td></tr>
            <tr><td id="a1">PoliceStation Head</td><td><input name="phed" type="text" value="<% out.println(rs.getString(5));%>"></td></tr>
            <tr><td id="a1">Password</td><td><input type="password" name="pass" value="<% out.println(rs.getString(6));%>"></td></tr>
            <tr><td id="a1">Retype Password</td><td><input type="password" onblur="check" name="rpas" value="<% out.println(rs.getString(6));%>"></td></tr>
            
      </table>
            <br>
            <input type="submit" value="Update Details"/> 
        </h:form>
            
            <% 
            }
            catch(Exception e){
            }
            %>
            <br><br>
    </center> 
    </body>
</html>
