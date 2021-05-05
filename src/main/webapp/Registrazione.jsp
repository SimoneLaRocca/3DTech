
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrazione</title>
</head>
<body>
<header>
    <p>LOGO</p>
    <div class="accesso">
        <form action="AccessoServlet" method="post">
            <a href="Registrazione.jsp">Registrati</a>
            <a href="Login.jsp">Login</a>
        </form>
        <form action="CarrelloServlet" method="post">
            <a href="">Carrello</a>
        </form>
    </div>
    <div class="barra">
        <ul>
            <li><a href="#">Home</a> </li>
            <li><a href="#">Categorie</a> </li>
            <li><a href="#">Chi Siamo</a> </li>
            <li><a href="#">Contatti</a> </li>
        </ul>
    </div>
</header>

    <form action="AccessoServlet" method="post">
    <fieldset>
        <legend>Registrati</legend>
        <label for="email">Email: </label>
        <input type="email" id="email" name="email" value=""><br>
        <label for="username">Username: </label>
        <input type="text" id="username" name="username" value=""><br>
        <label for="password">Password: </label>
        <input type="password" id="password" name="password" value=""><br>

        <input type="submit" name="Submit" value="Registrati">
    </fieldset>
    </form>
</body>
</html>
