<%-- 
    Document   : CheckComplaintStatus
    Created on : 10 Jun, 2017, 11:21:07 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <h2 style="color: midnightblue" >Check your complaint status</h2> <hr><br>
        <h:form action="/ccsa">
            Enter complaint ID: <input type="text" name="cid" value="" size="20" /><br><br><br>
            <input type="submit" value="CHECK" />
        </h:form>
        <br>    
        <p style="color: #C00"><% 
           if(request.getAttribute("found")=="false")
               out.println("The Complaint ID does not exist!");
           %> </p>   </center> 
    </body>
</html>
