
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>Gestisci Ordini</title>
    <script defer src="js/hamburger.js"></script>
</head>
<body>
<%@include file="WEB-INF/jsp/Hamburger.jsp"%>

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
