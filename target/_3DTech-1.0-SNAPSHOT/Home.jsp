<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <title>3DTech</title>
</head>
<body>
    <header>


        <div class="accesso">
            <form action="AccessoServlet" method="post">
                <a href="Registrazione.jsp">Registrati</a>
                <a href="Login.jsp">Login</a>
            </form>
            <form action="CarrelloServlet" method="post">
                <a href="">Carrello</a>
            </form>
        </div>

    </header>
    <nav>
        <ul>
            <li><a href="#">Home</a> </li>
            <li><a href="#">Categorie</a> </li>
            <li><a href="#">Chi Siamo</a> </li>
            <li><a href="#">Contatti</a> </li>
            <li><div class="search">
                    <form>
                        <input type="search" name="search" placeholder="Cerca...">
                    </form>
                </div>
            </li>
        </ul>
    </nav>

    <section class="prima">
        Sconti
    </section>
    <section class="seconda">
        Tendenze
    </section>
    <section class="terza">
        Nuovi articoli
    </section>
    <section class="quarta">
        Recenti
    </section>

    <footer>

    </footer>
</body>
</html>
