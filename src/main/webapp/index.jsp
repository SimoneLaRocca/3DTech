<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>3DTech</title>
    <%@include file="WEB-INF/jsp/common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/index.css" type="text/css">
    <!-- Add the slick-theme.css if you want default styling -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <!-- Add the slick-theme.css if you want default styling -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
    <script defer type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script defer src="${contextPath}/js/slider.js"></script>
</head>
<body>
<%@include file="WEB-INF/jsp/NavigationBar.jsp" %>
<div class="home">
    <div class="best_products">
        <div class="printer">
            <span class="label_printer">Migliori stampanti 3D</span>
            <div class="flex-items">
                <c:forEach items="${applicationScope.listProducts}" var="product">
                    <c:if test="${product.categoria.nome.equals('Stampanti 3D') and product.visible}">
                        <div class="container-item">
                            <a href="${contextPath}/CartServlet/details?product_id=${product.id}">
                                <img src="${contextPath}/images/${product.urlImage}">
                            </a>
                            <span><c:out value="${product.nome}"/></span>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
            </div>
            <div class="brands">
            <span class="label_brands">Migliori Resine</span>
                <div class="flex-items">
                    <c:forEach items="${applicationScope.listProducts}" var="product">
                        <c:if test="${product.categoria.nome.equals('Resine') and product.visible}">
                            <div class="container-item">
                                <a href="${contextPath}/CartServlet/details?product_id=${product.id}">
                                    <img src="${contextPath}/images/${product.urlImage}">
                                </a>
                                <span><c:out value="${product.nome}"/></span>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
        </div>
        </div>

    </div>

<div class="sconti">
    <div class="content">
        <div class="label_sconti">Sconti</div>
        <div class="slider">
            <c:forEach items="${applicationScope.listProducts}" var="product">
                <c:if test="${product.sconto > 30 and product.visible}">
                    <div class="best_choice">
                        <a href="${contextPath}/CartServlet/details?product_id=${product.id}">
                            <img src="${contextPath}/images/${product.urlImage}">
                        </a>
                        <span><c:out value="${product.nome}"/></span>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </div>
</div>

<%@include file="WEB-INF/jsp/Footer.jsp" %>
</body>
</html>
