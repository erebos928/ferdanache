<%-- 
    Document   : erreur
    Created on : Nov 17, 2016, 8:48:31 PM
    Author     : shahin.behrooz@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Erreur pendant l'execution</h1>
        <PRE>
<% exception.printStackTrace(
       new java.io.PrintWriter(out)); %>
</PRE>

    </body>
</html>
