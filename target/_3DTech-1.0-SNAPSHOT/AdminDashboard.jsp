<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>Admin Dashboard</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" defer></script>
    <script defer src="js/hamburger.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/chart.js@3.3.2/dist/chart.min.js"></script>
    <script src="js/canvas.js" defer></script>
</head>
<body>

<nav>
    <div class="barra_di_nav">
        <a href="#"><img class="three_hor_lines" src="img/three_horizontal_lines_white.png"></a>
        <div class="search">
            <form>
                <input type="search" name="search" placeholder="Cerca...">
            </form>
        </div>
    </div>
</nav>

<aside class="sidebar">
    <ul class="hamburger_menu">
        <li><a href="${pageContext.request.contextPath}/GestisciProdotti.jsp">Gestisci prodotti</a></li>
        <!-- agg, elimina e modifica -->
        <li><a href="${pageContext.request.contextPath}/GestisciProdotti.jsp">Gestisci utenti</a></li>
        <li><a href="${pageContext.request.contextPath}/GestisciProdotti.jsp">Gestione ordini</a></li>
        <li><a class="${pageContext.request.contextPath}/GestisciProdotti.jsp" href="#">Logout</a></li>
    </ul>
</aside>

<canvas id="myChart"></canvas>

</body>
</html>
