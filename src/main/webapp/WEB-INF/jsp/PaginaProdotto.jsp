<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scheda prodotto</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/productDetails.css" type="text/css">
</head>
<body>
<%@include file="NavigationBar.jsp"%>
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
            <form action="${contextPath}/CartServlet/add?product_id=${product.id}" method="post">
                <button class="add_to_cart">Aggiungi al carrello</button>
                <input type="hidden" name="show" value="${requestScope.Category_name}">
            </form>
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

        <span class="product_info">
            <c:out value="Sconto: ${requestScope.product.sconto} %"/>
        </span>

        <c:forEach items="${requestScope.product.caratteristiche.keys()}" var="elemName">
            <c:set var="jsonObject" value="${requestScope.product.caratteristiche}"/>
            <c:set var="keyName" value="${elemName}"/>
            <span class="product_info">
                <c:out value="${keyName}: ${jsonObject.opt(keyName)}"/>
            </span>
        </c:forEach>
    </div>
</div>
</body>
</html>
