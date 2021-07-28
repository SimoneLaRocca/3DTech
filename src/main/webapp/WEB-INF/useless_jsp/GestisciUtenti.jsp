<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <%@include file="../jsp/common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/hamburger.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/css/gestisci_utenti.css" type="text/css">
    <script defer src="${contextPath}/js/hamburger.js"></script>
</head>

<%@include file="../jsp/Hamburger.jsp"%>

<div class="table-container">
    <table class="rtable">
        <thead>
        <tr>
            <th>id</th>
            <th>email</th>
            <th>nome</th>
            <th>cognome</th>
            <th>telefono</th>
            <th>indirizzo</th>
            <th>città</th>
            <th>cap</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope.listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.email}</td>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.phoneNumber}</td>
                <td>${user.street}</td>
                <td>${user.city}</td>
                <td>${user.ZIPCode}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<hr id="division-line">
<div class="flex-container-user">

    <div id="user-orders" class="rem_user">
        <div class="rem_user_label">
            <label for="users-list">Ordini</label>
        </div>

        <div class="rem_user_input">
            <select id="users-list" name="userId">
                <option value="default" id="default-option" selected> -- Seleziona id --</option>
                <c:forEach items="${requestScope.listUsers}" var="user">
                    <option value="${user.id}">${user.id}</option>
                </c:forEach>
            </select>
            <button class="agg" id="orders-btn" type="submit">Mostra prodotti</button>
            <div class="orders-content">
            </div>
        </div>
    </div>
</div>
<!--
<div class="user">

    <div class="mod_user">

        <div class="mod_user_label"> Modifica utente</div>

        <div class="mod_user_input">
            <form action="" name="modifica" method="">
                <label for="id">ID utente</label>
                <input class="input" type="number" id="id" name="id" value=""><br><br>
                <label for="email">Email</label>
                <input class="input" type="email" id="email" name="email" value=""><br><br>
                <label for="password">Password</label>
                <input class="input" type="password" id="password" name="password" value=""><br><br>
                <label for="nome">Nome</label>
                <input class="input" type="text" id="nome" name="nome" value=""><br><br>
                <label for="cognome">Cognome</label>
                <input class="input" type="cognome" id="cognome" name="cognome" value=""><br><br>
                <label for="telefono">Telefono</label>
                <input class="input" type="tel" id="telefono" name="telefono" value=""><br><br>
                <label for="indirizzo">Indirizzo</label>
                <input class="input" type="text" id="indirizzo" name="indirizzo" value=""><br><br>
                <label for="citta">Città</label>
                <input class="input" type="text" id="citta" name="citta" value=""><br><br>
                <label for="cap">CAP</label>
                <input class="input" type="text" id="cap" name="cap" value=""><br><br>


                <input type="radio" id="normal_user" name="user_p" value="">
                <label for="normal_user">Utente</label><br>
                <input type="radio" id="super_user" name="user_p" value="">
                <label for="super_user">Amministratore</label><br><br>

                <input class="agg" type="submit" value="Modifica utente">
            </form>
        </div>
    </div>

    <table class="rtable">
        <thead>
        <tr>
            <th>id</th>
            <th>email</th>
            <th>nome</th>
            <th>cognome</th>
            <th>telefono</th>
            <th>indirizzo</th>
            <th>città</th>
            <th>cap</th>
            <th>privilegi</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${applicationScope.listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.email}</td>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.phoneNumber}</td>
                <td>${user.street}</td>
                <td>${user.city}</td>
                <td>${user.ZIPCode}</td>
                <td>${user.admin}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div class="rem_user">

    <div class="rem_user_label"> Rimuovi utente</div>

    <div class="rem_user_input">

        <form action="" name="rimuovi" method="">
            <label for="email_">Email utente</label>
            <input class="input" type="text" id="email_" name="email" value=""><br><br><br>
            <input class="agg" type="submit" value="Rimuovi utente">
        </form>
    </div>
</div>
-->

</body>
</html>
