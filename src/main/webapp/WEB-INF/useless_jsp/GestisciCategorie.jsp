
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gestisci Categorie</title>
    <%@include file="../jsp/common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/hamburger.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/css/gestisci_categorie.css" type="text/css">
    <script defer src="${contextPath}/js/hamburger.js"></script>
</head>
<body>
<%@include file="../jsp/Hamburger.jsp"%>

<div class="table-container-cat">
    <table class="rtable">
        <thead>
        <tr>
            <th>Info</th>
            <th>Id</th>
            <th>Nome</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${applicationScope.listCategories}" var="category">
            <tr>
                <td>
                    <button class="show-info" value="${category.id}">clicca</button>
                    <input type="hidden" value="${category.id}">
                </td>
                <td>${category.id}</td>
                <td>${category.nome}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
