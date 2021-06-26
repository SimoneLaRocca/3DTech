
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <title>Registrazione</title>
    <script async src="js/check.js"></script>
</head>
<body>

    <%@include file="NavigationBar.jsp"%>

    <div class="registrazione">
    <form action="RegistrazioneServlet" method="post">
        <label for="email">Email</label>
        <input class="input" type="email" id="email" name="email" value=""><br><br
        <label for="nome">Nome</label>
        <input class="input" type="text" id="nome" name="nome" value=""><br><br>
        <label for="cognome">Cognome</label>
        <input class="input" type="text" id="cognome" name="cognome" value=""><br><br>

        <label for="telefono">Telefono</label>
        <input class="input" type="tel" id="telefono" name="telefono" value=""><br><br>
        <label for="indirizzo">Indirizzo</label>
        <input class="input" type="text" id="indirizzo" name="indirizzo" value=""><br><br>
        <label for="citta">Città</label>
        <input class="input" type="text" id="citta" name="citta" value=""><br><br>

        <label for="cap">CAP</label>
        <input class="input" type="text" id="cap" name="cap" value=""><br><br>
        <label for="password">Password</label>
        <input class="input" type="password" id="password" name="password" value=""><br><br><br>

        <input class="accedi" type="submit" name="Submit" value="Registrati">
    </form>
    </div>
    <%@include file="WEB-INF/jsp/Footer.jsp" %>
</body>
</html>
