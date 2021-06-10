<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/check.js" defer></script>
    <title>Login</title>
</head>
<body>
<%@include file="NavigationBar.jsp" %>
<div class="login">
    <span id="spanId">
            Email errata!
        </span>
    <form action="LoginServlet" method="post">
        <label for="email">Email</label>
        <input class="input" type="text" id="email" name="email" value=""><br><br>
        <label for="password">Password</label>
        <input class="input" type="password" id="password" name="password" value=""><br><br><br>
        <input class="accedi" type="submit" name="Submit" value="Accedi">
    </form>
    <br>
</div>
</body>
</html>
