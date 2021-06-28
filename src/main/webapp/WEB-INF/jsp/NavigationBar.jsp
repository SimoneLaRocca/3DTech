<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}/" scope="page" var="contextPath"/>
<header>
    <c:if test="${sessionScope.user == null}">
        <span class="accesso clearfix">
            <a href="${contextPath}Registrazione.jsp">Registrati</a>
            <a href="${contextPath}Login.jsp">Login</a>
        </span>
    </c:if>

    <c:if test="${sessionScope.user != null}"> <!--pageContext.request.getSession().getAttribute('user') != null -->
        <div class="utente_loggato">
            <button class="email_user">${sessionScope.user.email}</button>
            <a href="#pagina_carello">
                <img class="carrello" src="${contextPath}img/carrello.png">
            </a>
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
        <li><a href="${contextPath}Categorie.jsp">Categorie</a> </li>
        <li><a href="#">Chi Siamo</a> </li>
        <li><a href="#">Contatti</a> </li>
        <li><div class="search">
            <form>
                <input type="text" name="search" placeholder="Cerca...">
            </form>
            <ul id="listResults" class="opzioni">
                <li>aaaa</li>
                <li>bbbbb</li>
            </ul>
        </div>
        </li>
    </ul>

</nav>

