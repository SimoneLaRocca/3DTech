<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" scope="page" var="contextPath"/>
<header>
    <input id="ctxPath" type="hidden" value="${contextPath}">
    <c:if test="${sessionScope.user == null}">
        <div class="accesso">
            <a href="${contextPath}/AccountServlet/registration_page">Registrati</a>
            <a href="${contextPath}/AccountServlet/login_page">Login</a>
        </div>
    </c:if>

    <c:if test="${sessionScope.user != null}"> <!--pageContext.request.getSession().getAttribute('user') != null -->
        <div class="utente_loggato">
            <button class="email_user">${sessionScope.user.email}</button>
            <a href="${contextPath}/ManageFlowServlet/cart">
                <img class="carrello" src="${contextPath}/img/carrello.png">
            </a>
            <div class="opzioni">
                <ul>
                    <li>
                        <form action="${contextPath}/AccountServlet/account">
                            <button>Account</button>
                        </form>
                    </li>
                    <li>
                        <form action="${contextPath}/OrderServlet/orders" method="post">
                            <button>Ordini</button>
                        </form>
                    </li>
                    <li>
                        <form action="${contextPath}/AccountServlet/logout" method="post">
                            <button>Logout</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </c:if>

</header>
<nav>
    <ul class="barra_di_nav">
        <li><a href="${contextPath}/index.jsp">Home</a></li>
        <li><a href="${contextPath}/ManageFlowServlet/category">Categorie</a></li>
        <li><a href="${contextPath}/ManageFlowServlet/info_about_us">Chi Siamo</a></li>
        <li><a href="${contextPath}/ManageFlowServlet/info_about_contacts">Contatti</a></li>
        <li>
            <div class="search">
                <div class="ui-widget">
                    <form action="${contextPath}/ShowProductsServlet" method="post">
                        <label for="tags"></label>
                        <input id="tags" class="search_bar" type="text" name="search" value="" placeholder="Cerca...">
                    </form>
                </div>
            </div>
        </li>
    </ul>
</nav>


