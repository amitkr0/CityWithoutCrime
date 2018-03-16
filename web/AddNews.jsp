<%-- 
    Document   : AddNews
    Created on : 11 Jun, 2017, 1:04:37 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
        <style>
            h1{
                letter-spacing: 1px;
                font-family: serif;
                color: #003366;
            }
            
</style>
    </head>
    <body class="s">
        <p align="right">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
        <br><br><br>
    <center>
        <h:form action="/addnews">
            <h1>ADD NEWS</h1>
            <hr><br>
            <h3 style="text-align: left;margin-left: 220px">News</h3>
            <textarea name="news" rows="6" cols="75">Enter text here...</textarea><br><br>
            <input type="submit" value="Add News"/>
        </h:form>
            <br><br><hr>
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
