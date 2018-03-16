<%-- 
    Document   : CriminalRecord
    Created on : 11 Jun, 2017, 2:05:51 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style1 {font-family: "Times New Roman", Times, serif;font-size: large}
.style5 {font-family: Arial, Helvetica, serif; color: #000066;letter-spacing: 1px;}
#th{ color: #666666}
#a1{text-align: center}
-->
        </style>
</head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
        
            <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from criminal");%>
           
        <center>
          <h:form action="/searcrim">
            <h1 class="style5"><u>Criminal Records</u></h1>
            <br>
              <span class="style1">Criminal ID:
              <input type="text" name="cid" value="<%if(request.getAttribute("rcid")!=null){
                    out.println((String)request.getAttribute("rcid"));    }%>">
              Criminal Name:
              <input type="text" name="cname" value="<%if(request.getAttribute("rcname")!=null){
                    out.println((String)request.getAttribute("rcname"));    }%>">
              Gender:
              <input type="text" name="gen" value="<%if(request.getAttribute("rgen")!=null){
                    out.println((String)request.getAttribute("rgen"));    }%>">
              <br>
              <br>
              PStation ID:
              <input type="text" name="p_id" value="<%if(request.getAttribute("rpid")!=null){
                    out.println((String)request.getAttribute("rpid"));    }%>">
              CrimeLevel:
              <input type="text" name="cll" value="<%if(request.getAttribute("rcll")!=null){
                    out.println((String)request.getAttribute("rcll"));    }%>">
              Status:
              <input type="text" name="sts" value="<%if(request.getAttribute("rsts")!=null){
                    out.println((String)request.getAttribute("rsts"));    }%>">
                </span><br>
              <br>
              <input type="submit" value="SUBMIT"/>
            </p>
          </h:form>
          
            <%
            ResultSet rst=(ResultSet)request.getAttribute("rset");
            //out.println((String)request.getAttribute("que"));
            //out.println((String)request.getAttribute("rset"));
            
            if(rst!=null){
                rs=rst;
            }
            if(rs==null){
                out.println("NO RECORDS FOUND");
            }
            else{
            %>
        
            <table border="1" width="800" style="margin-top: -200px"> 
            <tr>
                <th id="th">Criminal ID</th>
                <th id="th">Criminal Name</th>
                <th id="th">Gender</th>
                <th id="th">Height</th>
                <th id="th">Weight</th>
                <th id="th">PStation ID</th>
                <th id="th">Crimelevel</th>
                <th id="th">Status</th>
              </tr>
            <%
            while(rs.next())  
            {%>
            
            <br>
            <tr>
              <td id="a1"><%out.println(rs.getString(1));%></td>
                <td id="a1"><%out.println(rs.getString(2));%></td>
                <td id="a1"><%out.println(rs.getString(3));%></td>
                <td id="a1"><%out.println(rs.getString(4));%></td>
                <td id="a1"><%out.println(rs.getString(5));%></td>
                <td id="a1"><%out.println(rs.getString(6));%></td>
                <td id="a1"><%out.println(rs.getString(7));%></td>
                <td id="a1"><%out.println(rs.getString(8));%></td>
            </tr>
            
            
            <br>
            <%
            }  
            %>
            </table>
        
            <br>
            <br>
            <%
            }
            }
            catch(Exception e){
                out.println(e);
                out.println(e.getMessage());
            }
        %>
                </p>

              </center>
    </body>
</html>
