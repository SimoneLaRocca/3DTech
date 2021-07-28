<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/loginAdmin.css" type="text/css">
    <title>LoginAdmin</title>
</head>
<body class="admin">
<div id="alert-box" class="alert">
    <c:if test="${not empty requestScope.errorMessages}">
        <c:forEach items="${requestScope.errorMessages}" var="message">
            <p>${message}</p>
        </c:forEach>
        <script>
            document.querySelector("#alert-box").style.display = "block"
        </script>
    </c:if>
</div>
<div class="login_admin">
    <div>
        <p>Login Amministratore</p>
    </div>
    <form action="${contextPath}/AccountServlet/admin" method="post">
        <label for="email">Email</label>
        <input class="input_admin" type="email" id="email" name="email" value=""><br><br>
        <label for="password">Password</label>
        <input class="input_admin" type="password" id="password" name="password" value=""><br><br><br>
        <input class="accedi_admin" type="submit" name="Submit" value="Accedi">
    </form>
    <br>
</div>
</body>
</html>
