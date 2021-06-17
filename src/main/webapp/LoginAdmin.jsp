
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <title>LoginAdmin</title>
</head>
<body class="admin">
<div class="login_admin">
    <div>
        <p>Login Amministratore</p><hr>
    </div>
  <form action="${contextPath}" method="post">
    <label for="email">Email</label>
    <input class="input_admin" type="email" id="email" name="email" value=""><br><br>
    <label for="password">Password</label>
    <input class="input_admin" type="password" id="password" name="password" value=""><br><br><br>
    <input class="accedi_admin" type="submit" name="Submit" value="Accedi">
  </form><br>
</div>
</body>
</html>
