<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common.jsp"%>
    <title>Login</title>
    <link rel="stylesheet" href="${contextPath}/css/login.css">
    <script defer src="${contextPath}/js/check_login.js"></script>
</head>
<body>
    <%@include file="NavigationBar.jsp"%>
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
    <div class="login">
    <form action="${contextPath}/AccountServlet/login" method="post">
        <label for="email">Email</label>
        <input class="input" type="email" id="email" name="email" value=""><br><br>
        <label for="password">Password</label>
        <input class="input" type="password" id="password" name="password" value=""><br><br><br>
        <input class="accedi" type="submit" name="Submit" value="Accedi">
    </form><br>
    </div>
    <%@include file="Footer.jsp"%>
</body>
</html>
