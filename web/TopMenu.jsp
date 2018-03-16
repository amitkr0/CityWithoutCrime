<%-- 
    Document   : TopMenu
    Created on : 10 Jun, 2017, 9:22:05 PM
    Author     : Nilaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        #navcontainer {
                        background-color: #2175bc;

        border-top: 1px solid #9CC;
        font: normal normal 11px Verdana, Geneva, Arial, Helvetica, sans-serif;
        font-size: 13px;
}

#navlist {
        list-style: none outside none;
        margin: 0;
        padding: 0;
}

@media all {
        #navlist {
                text-align: center
        }
}

#navlist li {
        bottom: 11px;
        display: inline;
        line-height: 1.2em;
        margin: 0;
        padding: 0;
        position: relative;
}

html>body #navlist li {
        background: #000;
        margin: 0 3px 0 0;
        padding: 4px 0px 4px 0;
        
}

#navlist a, #navlist a:link, #navlist a:visited {
        background: #900;
        border: 1px solid #FFF;
        bottom: 2px;
        color: #FFF;
        cursor: pointer;
        display: inline;
        height: 1em;
        width: 50px;
        margin: 0;
        padding: 3px 5px 3px 5px;
        position: relative;
        right: 2px;
        text-decoration: none;
}

#navlist a:hover {
        background: #C00;
        bottom: 1px;
        color: #FFF;
        position: relative;
        right: 1px;
}

#navlist a:active {
        background: #999;
        bottom: 0px;
        color: #FFF;
        position: relative;
        right: 0px;
}

#navlist li#active {
        background: #369;
        bottom: 13px;
        display: inline;
        margin: 0 3px 0 0;
        padding: 0;
        position: relative;
}

html>body #navlist li#active {
        background: #000;
        margin: 0 4px 0 4px;
}

#navlist #active a, #navlist #active a:link, #navlist #active a:visited, #navlist #active a:hover {
        background: #369;
        border-bottom: none;
        border-left: 1px solid #9CC;
        border-right: 1px solid #9CC;
        border-top: 1px solid #9CC;
        bottom: 0;
        color: #FFF;
        cursor: text;
        margin: 0;
        padding: 2px 5px 0 5px;
        position: relative;
        right: 0;
}
    </style>
    </head>
    <body>
        <div id="navcontainer">
        <ul id="navlist">
            <li><h:link action="/h">HOME</h:link></li>
            <li><h:link action="/g">GALLERY</h:link></li>
            <li><h:link action="/sd">POLICE STATION DETAILS</h:link></li>
            <li><h:link action="/cu">CONTACT US</h:link></li>
        </ul>
        </div>
    </body>
</html>
