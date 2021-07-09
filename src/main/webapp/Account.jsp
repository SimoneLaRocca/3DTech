<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <link rel="stylesheet" href="./css/account.css" type="text/css">
</head>
<body>
    <%@include file="WEB-INF/jsp/NavigationBar.jsp"%>
    <div class="user_details">
        <span>
            <c:out value="Nome: ${sessionScope.user.name}"/>
        </span>
        <span>
            <c:out value="Cognome: ${sessionScope.user.surname}"/>
        </span>
        <span>
            <c:out value="Email: ${sessionScope.user.email}"/>
        </span>
        <span>
            <c:out value="Data di nascita: ${sessionScope.user.dataNascita}"/>
        </span>
        <span>
            <c:out value="Numero di telefono: ${sessionScope.user.phoneNumber}"/>
        </span>
        <span>
            <c:out value="Città: ${sessionScope.user.city}"/>
        </span>
        <span>
            <c:out value="Via: ${sessionScope.user.street}"/>
        </span>
        <span>
            <c:out value="CAP: ${sessionScope.user.ZIPCode}"/>
        </span>
    </div>

</body>
</html>
