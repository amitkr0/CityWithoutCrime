<%-- 
    Document   : NewsAdded
    Created on : 15 Jun, 2017, 1:36:52 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Login</title>
    <style type="text/css">
<!--
p {
	color: #003366;
	background-color: #FFFFFF;
}
h2{font-family: monospace;font-size: xx-large}
-->
</style></head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
    <center>
        <h2>News Added Successfully!!!</h2>
        <%try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
            PreparedStatement pst=con.prepareStatement("select * from emergency where PStationID=?");
            pst.setString(1, (String)request.getSession().getAttribute("pid"));
            ResultSet rs=pst.executeQuery();
            if(!rs.isBeforeFirst()){
                %><pre style="font-family: fantasy;letter-spacing: 1px"><%out.println("NO  ANY  NEWS  IN  THIS  AREA");%></pre><%
            }
            else{%>
            <h1 style="letter-spacing: 1px">NEWS</h1><hr><br><br>
<%
                while(rs.next()){%>
                <ol type="square">
                    <li style="text-align: left;font-family: serif;font-size: x-large"><%out.println(rs.getString(2));%></li>
                </ol>

                <%}
            }
        }
                catch(Exception e){
                        out.println("NO ANY NEWS IN THIS AREA !!");
                        }
         %>
         <br><br>
    </center>
    </body>
</html>
