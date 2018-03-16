<%-- 
    Document   : ComplaintFiled
    Created on : 11 Jun, 2017, 12:46:32 AM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Your complaint has been filed successfully!</h3>
        <h3>Complaint details:</h3>
        <p>
            <em>Your Complaint ID:</em><% out.println(" "+request.getAttribute("filedcompid"));%> <br><br>
            <em>Complaint type:</em><% out.println(" "+request.getAttribute("filedcomptype"));%> <br><br>
            <em>Complaint description:</em><% out.println(" "+request.getAttribute("filedcompdesc"));%> <br><br>
            <em>Complaint station ID:</em><% out.println(" "+request.getAttribute("filedcomppid"));%> <br><br>
            <em>Complaint status:</em><% out.println(" "+request.getAttribute("filedcompstatus"));%> <br><br>
            <br>
        
        </p>
        <h5>NOTE: Use your Complaint ID for all future references.</h5>
    </body>
</html>
