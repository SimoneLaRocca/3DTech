<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ricerca prodotti</title>
    <%@include file="WEB-INF/jsp/common.jsp" %>
    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <link rel="stylesheet" href="./css/showProduct.css">
</head>
<body>
<%@include file="WEB-INF/jsp/NavigationBar.jsp" %>

<div class="main">
    <div class="left_menu">
        <ul>
            <li id="label-categories">Categorie</li>
            <li><a href="${contextPath}/VisualizzazioneProdottiServlet?option=stampanti">Stampanti 3D</a></li>
            <li><a href="${contextPath}/VisualizzazioneProdottiServlet?option=filamenti">Filamenti</a></li>
            <li><a href="${contextPath}/VisualizzazioneProdottiServlet?option=ricambi">Ricambi per stampanti</a></li>
            <li><a href="${contextPath}/VisualizzazioneProdottiServlet?option=resina">Resina</a></li>
            <li><a href="${contextPath}/VisualizzazioneProdottiServlet?option=utensili">Utensili</a></li>
            <li><a href="${contextPath}/VisualizzazioneProdottiServlet?option=accessori">Accessori</a></li>
        </ul>
    </div>

    <div class="all_products">
        <c:forEach items="${requestScope.listProducts}" var="product">
            <div class="item">
                <a href="${contextPath}/ProdottoServlet?product=${product.id}">
                    <img src="${contextPath}/images/${product.urlImage}">
                </a>
                <span>Nome: <c:out value="${product.nome}"/></span>
                <span>Prezzo: <c:out value="${product.prezzo}"/></span>
                <form action="${contextPath}/AddProductToCartServlet?product=${product.id}" method="post"> <!-- servlet da definire -->
                    <button>Aggiungi al carrello</button>
                </form>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
