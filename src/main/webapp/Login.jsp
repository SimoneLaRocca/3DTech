<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <p>Effettua il login</p>
    <form action="AccessoServlet" method="post">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username" value=""><br>
        <label for="password">Password: </label>
        <input type="password" id="password" name="password" value=""><br>
        <input type="submit" name="Submit" value="Accedi">
    </form><br>

</body>
</html>
