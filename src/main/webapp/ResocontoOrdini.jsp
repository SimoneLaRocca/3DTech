<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Resoconto Ordini</title>
  <%@include file="/WEB-INF/jsp/common.jsp" %>
  <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
          integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="${contextPath}/css/style.css" type="text/css">
  <link rel="stylesheet" href="${contextPath}/css/ordini.css" type="text/css">
</head>
<body>
<%@include file="WEB-INF/jsp/NavigationBar.jsp" %>
<div class="order_report">
  <span class="order_label">Ordini</span>
  <div class="line"></div>
  <c:forEach items="${requestScope.userOrders}" var="order">
    <div class="order_item">
      <div class="order_info order_id"><c:out value="ID Ordine: ${order.id}"/></div>
      <div class="order_info order_date"><c:out value="Data: ${order.dataOrdine}"/></div>
      <span class="order_remove_button"><button class="remove_button">Rimuovi</button></span>
      <div class="order_info order_total_price"><c:out value="Totale prezzo: ${order.carrello.getTotal()}"/></div>
      <c:forEach items="${order.carrello.prodotti}" var="cartItem">
        <div class="order_product">
          <div><img src="${contextPath}/images/${cartItem.prodotto.urlImage}"/></div>
          <span><c:out value="Nome: ${cartItem.prodotto.nome}"/></span>
          <span><c:out value="Prezzo: ${cartItem.prodotto.prezzo}"/></span>
          <span><c:out value="Quantità: ${cartItem.quantita}"/></span>
        </div>
      </c:forEach>
    </div>
    
  </c:forEach>
</div>
<%@include file="WEB-INF/jsp/Footer.jsp"%>
</body>
</html>
