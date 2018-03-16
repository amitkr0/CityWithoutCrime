<%-- 
    Document   : DeleteComplaint
    Created on : 11 Jun, 2017, 1:01:09 AM
    Author     : Shreya
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
        <%if(session.getAttribute("admin")!=null)
        {
            %>
        <h:form action="/delcomp">
            <em><b> Complaint Id : </b></em><% out.println("<input type=\"hidden\" name=\"t1\" value="+request.getAttribute("coid")+" />"+request.getAttribute("coid"));%><br><br>
            <em><b>   Type :</b></em> <% out.println(request.getAttribute("type"));%><br><br>
                    <em>Description :</b></em> <% out.println(request.getAttribute("description"));%><br><br>
              <em> <b>      Police Station Id :</b></em> <% out.println(request.getAttribute("p_id"));%><br><br>
              <em> <b>      Aadhar Card :</b></em> <% out.println(request.getAttribute("aadhar"));%><br><br>
               <em> <b>     Contact :</b></em> <% out.println(request.getAttribute("contact"));%><br><br>
               <em> <b>     Email :</b></em> <% out.println(request.getAttribute("email"));%><br><br>
                <em> <b>    Status :</b></em> <% out.println(request.getAttribute("status"));%><br><br>
                <b> Are you sure you want to delete this record ?</b><br>
        <input type="submit" value="Yes"/>
        </h:form><br>
        <h:link action="/maindelcomp"><input type="submit" value="No"/></h:link>
        <%}
       else
        {
            out.println("<h3><font color=red>You must login to see this page !</font></h3>");
        %>
        <jsp:include page="Login.jsp"/>
        <%}%>
    </center>
    </body>
</html>
