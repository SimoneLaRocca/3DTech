<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="../../css/style.css" type="text/css">
    <title>3DTech</title>
    <script src="js/user_logged.js" defer></script>
</head>
<body>
<c:set value="${pageContext.request.contextPath}/" scope="page" var="contextPath"/>
<header>

    <c:if test="${sessionScope.user == null}">
        <div class="accesso">
            <a href="http://localhost:8080/3DTech_war_exploded/Registrazione.jsp">Registrati</a>
            <a href="http://localhost:8080/3DTech_war_exploded/Login.jsp">Login</a>
        </div>
    </c:if>

    <c:if test="${sessionScope.user != null}"> <!--pageContext.request.getSession().getAttribute('user') != null -->
        <div class="utente_loggato">
            <button class="email_user">${sessionScope.user.email}</button>
            <img src="${contextPath}img/carrello.png">
            <div class="opzioni">
                <ul>
                    <li><a href="#account">Account</a></li>
                    <li><a href="#ordini">Ordini</a></li>
                    <li><a href="#logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </c:if>

</header>
<nav>
    <ul class="barra_di_nav">
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

</body>
</html>

