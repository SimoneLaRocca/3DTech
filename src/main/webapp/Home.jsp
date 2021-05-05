<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="style.css" href="WEB-INF/css/style.css" type="text/css">
    <title>3DTech</title>
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
</body>
</html>
