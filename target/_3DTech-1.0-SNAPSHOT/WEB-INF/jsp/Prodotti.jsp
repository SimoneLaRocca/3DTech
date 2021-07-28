<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ricerca prodotti</title>
    <%@include file="common.jsp" %>
    <link rel="stylesheet" href="${contextPath}/css/showProduct.css">
</head>
<body>
<%@include file="NavigationBar.jsp" %>

<div class="main">
    <div class="left_menu">
        <ul>
            <li id="label-categories">Categorie</li>
            <li><a href="${contextPath}/ShowProductsServlet?option=Stampanti+3D">Stampanti 3D</a></li>
            <li><a href="${contextPath}/ShowProductsServlet?option=Materiale+plastico">Filamenti</a></li>
            <li><a href="${contextPath}/ShowProductsServlet?option=Ricambi">Ricambi per stampanti</a></li>
            <li><a href="${contextPath}/ShowProductsServlet?option=Resine">Resina</a></li>
            <li><a href="${contextPath}/ShowProductsServlet?option=Utensili">Utensili</a></li>
            <li><a href="${contextPath}/ShowProductsServlet?option=Accessori">Accessori</a></li>
        </ul>
    </div>

    <div class="all_products">
        <c:choose>
            <c:when test="${not empty requestScope.listProducts}">
                <c:forEach items="${requestScope.listProducts}" var="product">
                    <div class="item">
                        <a href="${contextPath}/CartServlet/details?product_id=${product.id}">
                            <img src="${contextPath}/images/${product.urlImage}">
                        </a>
                        <span>Nome: <c:out value="${product.nome}"/></span>
                        <span>Prezzo: <c:out value="${product.prezzo}"/></span>
                        <form action="${contextPath}/CartServlet/details?product_id=${product.id}" method="post">
                            <button>Visualizza prodotto</button>
                            <!--<input type="hidden" name="option" value="${requestScope.Category_name}">-->
                        </form>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <p>Nessun risultato trovato...</p>
            </c:otherwise>
        </c:choose>
    </div>
</div>
</body>
</html>
