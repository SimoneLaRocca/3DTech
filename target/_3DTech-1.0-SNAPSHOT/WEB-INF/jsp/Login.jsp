<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common.jsp"%>
    <title>Login</title>
</head>
<body>
    <%@include file="NavigationBar.jsp"%>
    <div class="login">
    <form action="${contextPath}/LoginServlet" method="post">
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
