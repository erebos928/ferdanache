<%-- 
    Document   : changelang
    Created on : Nov 26, 2016, 4:12:46 PM
    Author     : shahin.behrooz@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Changer de langue</title>
    </head>
    <body>
        <c:if test="${param.lang eq 'fr' or param.lang eq 'en'}">
            
            <fmt:setLocale value="${param.lang}"></fmt:setLocale>
            <fmt:setBundle basename="resources.Messages" scope="session"/>
            <c:set scope="application" var="currentLanguage" value="${param.lang}"></c:set>
        </c:if>    
            <c:redirect url="${returnUrl}"></c:redirect>
            
    </body>
</html>
