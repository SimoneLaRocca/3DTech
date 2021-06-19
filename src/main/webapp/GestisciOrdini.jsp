<%--
  Created by IntelliJ IDEA.
  User: simon
  Date: 16/06/2021
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gestisci Ordini</title>
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

<ul class="hamburger_menu">
    <li><a class="posizione_corrente" href="#">Gestisci prodotti</a></li> <!-- agg, elimina e modifica -->
    <li><a href="#">Gestisci utenti</a></li>
    <li><a href="#">Gestione ordini</a></li>
    <li><a class="logout" href="#">Logout</a></li>
</ul>

<div class="order">
    <div class="search_order_by_user">

        <div class="search_order_label"> Ricerca ordini </div>

        <div class="search_order_input">

            <form action="" name="search" method="">

                <label for="email_utente">Email utente</label>
                <input class="input" type="number" id="email_utente" name="id" value=""><br><br><br>
                <input class="agg" type="submit" value="Ricerca ordini">

            </form>
        </div>
    </div>

    <div class="rem_order">

        <div class="rem_order_label"> Rimuovi ordine</div>

        <div class="rem_order_input">

            <form action="" name="rimuovi" method="">
                <label for="id">ID ordine</label>
                <input class="input" type="number" id="id" name="id" value=""><br><br><br>
                <input class="agg" type="submit" value="Rimuovi ordine">
            </form>
        </div>
    </div>
</div>

<table class="rtable">
    <thead>
    <tr>
        <th>id</th>
        <th>quantità</th>
        <th>data ordine</th>
        <th>id utente</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${applicationScope.listOrders}" var="order">
        <tr>
            <td>${order.id}</td>
            <td>${order.quantita}</td>
            <td>${order.dataOrdine}</td>
            <td>${order.user.email}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
