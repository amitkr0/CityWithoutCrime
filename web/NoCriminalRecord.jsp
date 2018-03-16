<%-- 
    Document   : NoCriminalRecord
    Created on : 15 Jun, 2017, 2:42:07 PM
    Author     : Dell
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            .style1 {font-family: "Times New Roman", Times, serif;font-size: large}
        </style>
    </head>
    <body>
        <p align="right" valign="top">Logged In as <b><%out.println(session.getAttribute("pid"));%></b></p>
    <center>
        <h:form action="/searcrim">
            <h1 class="style5"><u>Criminal Record</u></h1>
            <p><br>
                <span class="style1">Criminal ID:
              <input type="text" name="cid" value="<%if(request.getAttribute("rcid")!=null){
                    out.println((String)request.getAttribute("rcid"));    }%>">
              Name:
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
              <input type="submit" value="SUBMIT"/><br><br><br><br><br><br><br><br><br><br>
            </p>
          </h:form>
        </center>
    <center><h1 style="letter-spacing: 1px;font-family: fantasy">No Records Found!!!</h1>
    <p style="color: #C00">   
        <% 
           if(request.getAttribute("crimfilt")=="failed")
               out.println(request.getAttribute("message"));
            %></p></center>
        
    </body>
</html>
