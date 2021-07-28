<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Categorie</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/category.css" type="text/css">
</head>
<body>
<%@include file="NavigationBar.jsp" %>
<section class="category">
    <div class="cat">
        <a href="${contextPath}/ShowProductsServlet?option=Stampanti+3D">
            <img src="${contextPath}/img/categorie/stampante3d.png">
        </a>
        <span class="text_category category_label">Stampanti 3D</span>
    </div>

    <div class="cat">
        <a href="${contextPath}/ShowProductsServlet?option=Ricambi">
            <img src="${contextPath}/img/categorie/ricambi.jpg">
        </a>
        <span class="text_category category_label">Ricambi</span>
    </div>

    <div class="cat">
        <a href="${contextPath}/ShowProductsServlet?option=Materiale+plastico">
            <img src="${contextPath}/img/categorie/filamenti.png">
        </a>
        <span class="text_category category_label">Filamenti</span>
    </div>

    <div class="cat">
        <a href="${contextPath}/ShowProductsServlet?option=Resine">
            <img src="${contextPath}/img/categorie/resina.jpg">
        </a>
        <span class="text_category category_label">Resina</span>
    </div>

    <div class="cat">
        <a href="${contextPath}/ShowProductsServlet?option=Utensili">
            <img src="${contextPath}/img/categorie/utility.jpg">
        </a>
        <span class="text_category category_label">Utensili</span>
    </div>

    <div class="cat">
        <a href="${contextPath}/ShowProductsServlet?option=Accessori">
            <img src="${contextPath}/img/categorie/accessori.jpg">
        </a>
        <span class="text_category category_label">Accessori</span>
    </div>
</section>

<%@include file="Footer.jsp" %>
</body>
</html>
