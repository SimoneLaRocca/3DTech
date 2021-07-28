<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/account.css" type="text/css">
</head>
<body>
    <%@include file="NavigationBar.jsp"%>
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
    <%@include file="Footer.jsp"%>
</body>
</html>
