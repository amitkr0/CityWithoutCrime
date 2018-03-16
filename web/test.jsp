<%-- 
    Document   : test
    Created on : 26 Jul, 2017, 1:44:36 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<p id="demo">Click the button to change the text in this paragraph.</p>

<button onclick="myFunction()">Try it</button>

<script>
function myFunction() {
    alert(document.getElementById("demo").value);
    
}
</script>

</body>
</html>
