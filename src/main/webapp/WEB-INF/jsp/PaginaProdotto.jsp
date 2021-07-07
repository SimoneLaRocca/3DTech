<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Scheda prodotto</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <link rel="stylesheet" href="./css/productDetails.css" type="text/css">
</head>
<body>
<%@include file="/WEB-INF/jsp/NavigationBar.jsp" %>
<div class="product_container">
    <div class="product_img">
        <img src="${contextPath}/images/${requestScope.product.urlImage}">
    </div>
    <div class="product_details">

        <span class="name_product">
            <c:out value="${requestScope.product.nome}"/>
        </span>

        <span class="price_product">
            <c:out value="€ ${requestScope.product.prezzo}"/>
        </span>

        <div class="line"></div>

        <div class="buttons">
            <button class="buy_now">Compra adesso</button>
            <button class="add_to_cart">Aggiungi al carrello</button>
        </div>

        <span class="product_info">
            <c:out value="Descrizione: ${requestScope.product.descrizione}"/>
        </span>

        <span class="product_info">
            <c:out value="Marchio: ${requestScope.product.marchio}"/>
        </span>

        <span class="product_info">
            <c:out value="Peso: ${requestScope.product.peso}"/>
        </span>
    </div>
</div>
</body>
</html>
