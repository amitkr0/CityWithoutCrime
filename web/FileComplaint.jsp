<%-- 
    Document   : FileComplaint
    Created on : 10 Jun, 2017, 7:31:36 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FileComplaint</title>
    </head>
    <body>
    <center><h2 style="color: midnightblue" >WELCOME TO ONLINE POLICE COMPLAINT FILING</h2>
            <hr>
        <table>
            <h:form action="/fca">
                <tr><td>type:</td><td><select name="type">
                    <option>Theft</option>
                    <option>Physical Violence</option>
                    <option>Corruption</option>
                    <option>Murder</option>
                    <option>Missing</option>
                    <option>Kidnapping</option>
                    <option>Blackmail/Threat/Ransom</option>
                    <option>Eve-Tease</option>
                    <option>Cyber Crime</option>
                    <option>Others</option>
                        </select></td>
                </tr>
                
                <tr><td>police station ID:</td><td><input type="text" name="pid" value="" size="20" /></td></tr>
                <tr><td>description:</td><td> <input type="text" name="desc" value="" size="20" /></td></tr>
                <tr><td>aadhar number:</td><td><input type="text" name="aadhar" value="" size="20" /></td></tr>
                <tr><td>contact number:</td><td><input type="text" name="contact" value="" size="20" /></td></tr>
                <tr><td>email:</td><td><input type="text" name="email" value="" size="20" /></td></tr>
                
                <tr><td><br><br><input type="submit" value="SUBMIT"/></td></tr>
            </h:form>
            
        </table>
          <p style="color: #C00">   
        <% 
           if(request.getAttribute("insertstatus")=="failed")
               out.println(request.getAttribute("message"));
            %></p>
    </center>

    </body>
</html>
