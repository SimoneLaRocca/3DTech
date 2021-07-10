<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Carrello</title>
    <%@include file="/WEB-INF/jsp/common.jsp" %>
    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <link rel="stylesheet" href="./css/carrello.css" type="text/css">
</head>
<body>
<%@include file="WEB-INF/jsp/NavigationBar.jsp" %>

<div class="page_cart">

    <div class="cart">
        <span class="cart_label">Carrello</span>
        <span class="prize_label">Prezzo</span>
        <div class="line"></div>
        <c:forEach items="${sessionScope.sessionCart.prodotti}" var="cartItem">
            <div class="cart_item">

                <div class="cart_item_img">
                    <img src="${contextPath}/images/${cartItem.prodotto.urlImage}">
                </div>

                <span class="main_info_cart_item">
          <c:out value="Nome: ${cartItem.prodotto.nome}"/>
          <span class="price_cart_item">
            <c:out value="${cartItem.prodotto.prezzo} €"/>
          </span>
        </span>

                <span class="info_cart_item">
          <c:out value="Descrizione: ${cartItem.prodotto.descrizione}"/>
        </span>

                <span class="info_cart_item">
          <c:out value="Marchio: ${cartItem.prodotto.marchio}"/>
        </span>

                <span class="info_cart_item">
          <c:out value="Peso: ${cartItem.prodotto.peso}"/>
        </span>

                <span class="quantity_and_remove">
          <span><label for="quantita">Quantità: </label></span>
          <span><form action="${contextPath}/UpdateProductQuantityServlet" method="post">
            <input type="hidden" name="product_id" value="${cartItem.prodotto.id}">
            <select id="quantita" name="quantita" onchange="this.form.submit()">
              <option value="${cartItem.quantita}" selected hidden>${cartItem.quantita}</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>
          </form>
            </span>
          <span><button class="remove_button">Rimuovi</button></span>
        </span>

            </div>

        </c:forEach>
        <div class="total">
            <c:out value="Totale: ${sessionScope.sessionCart.getTotal()} €"/>
        </div>
    </div>

    <div class="order">
        <span class="finish_order">Completa il tuo ordine</span>
        <div class="total">
            <c:out value="Totale: ${sessionScope.sessionCart.getTotal()} €"/>
        </div>
        <div class="make_order">
            <form action="${contextPath}/order/checkout" method="post">
                <input class="order_button" type="submit" name="order" value="Ordina">
            </form>
        </div>
    </div>

</div>

</body>
</html>
