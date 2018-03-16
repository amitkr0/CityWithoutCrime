<%-- 
    Document   : StationBody
    Created on : 11 Jun, 2017, 2:47:21 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            #a1{
                font-family: fantasy;
                font-size: large;
                text-align: center;
            }
            #a2{
                font-family: sans-serif;
                font-size: large;
                color: #333333;
            }
            
        </style>
        
    </head>
        
    <body>
        <p align="right">Logged In as <strong><%out.println(session.getAttribute("pid"));%></strong></p>
         <center><%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Police","root","password");
            PreparedStatement pst=con.prepareStatement("select id,description,status from complaint where p_id=?");
            pst.setString(1, (String)request.getSession().getAttribute("pid"));
            ResultSet rs=pst.executeQuery();
            if(!rs.isBeforeFirst()){
                %><pre style="font-family: fantasy;letter-spacing: 1px"><%out.println("NO  ANY  COMPLAINT  IN  THIS  AREA");%></pre><%
            }
            else{
         %>
         <h1 style="letter-spacing: 1px">Complaints</h1>
         <hr><br><br>
         <p>Enter Id to update status of Complaint</p>
         <h:form action="/cmplntup">
             ID <input type="text" name="cid">
             Status<input type="text" name="status">
             <input type="submit" value="Update">
                          
         </h:form>
             <br><br><br>
        <table border="1" width="600" style="font-family: serif;color: #333333;"><tr>
                <th id="a2">ID</th><th id="a2">Description</th><th id="a2">Status</th></tr>
            
            
                        <%while(rs.next()){%>
                        <tr>
                <td id="a1"><span style="margin-left: 10px;margin-right: 10px;letter-spacing: 1px;"><%
                out.println(rs.getString(1));%>
                    </span></td>
                    <td>
                    
        <span style="margin-left: 10px;letter-spacing: 1px;">
                    <% out.println(rs.getString(2));%>
                </span>
                    </td>
        
        <td id="a1">
            <span style="margin-left: 10px;margin-right: 10px;letter-spacing: 1px;">
                <%out.println(rs.getString(3));}%>
            </span>
        </td>
            
            </tr>
        </table><%
            }
            }
            catch(Exception e){
                out.println(e.getMessage());
            }
        %>
         
        <br><br>
        
         </center>
    </body>
</html>
