<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrazione</title>
    <%@include file="common.jsp" %>
    <link rel="stylesheet" href="${contextPath}/css/registrazione.css" type="text/css">
    <script defer src="${contextPath}/js/check_registration.js"></script>
</head>
<body>

<%@include file="NavigationBar.jsp" %>

<div class="registrazione">
    <form action="${contextPath}/AccountServlet/registration" method="post">
        <div>
            <label for="email">Email</label>
            <input class="input" type="email" id="email" name="email" value="">
            <div class="alert_email">esempio@gmail.com</div>
        </div>
        <div>
            <label for="nome">Nome</label>
            <input class="input" type="text" id="nome" name="nome" value="">
        </div>
        <div>
            <label for="cognome">Cognome</label>
            <input class="input" type="text" id="cognome" name="cognome" value="">
        </div>
        <div>
            <label for="data_nascita">Data di nascita</label>
            <input class="input" type="date" id="data_nascita" name="data_nascita" value="">
        </div>
        <div>
            <label for="telefono">Telefono</label>
            <input class="input" type="tel" id="telefono" name="telefono" value="">
        </div>
        <div>
            <label for="indirizzo">Indirizzo</label>
            <input class="input" type="text" id="indirizzo" name="indirizzo" value="">
        </div>
        <div>
            <label for="citta">Città</label>
            <input class="input" type="text" id="citta" name="citta" value="">
        </div>
        <div>
            <label for="cap">CAP</label>
            <input class="input" type="text" id="cap" name="cap" value="">
        </div>
        <div>
            <label for="password">Password</label>
            <input class="input" type="password" id="password" name="password" value="">
            <div class="alert_password">Almeno 8 caratteri, una lettera maiuscola, <br>un numero e un carattere speciale (. _ -)
            </div>
        </div>

        <input class="accedi" type="submit" name="Submit" value="Registrati">
    </form>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>
