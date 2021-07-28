<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@include file="common_admin.jsp" %>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="${contextPath}/css/navbar.css" type="text/css">
    <script src="${contextPath}/js/canvas.js" defer></script>
    <script src="${contextPath}/js/canvas2.js" defer></script>
    <script src="${contextPath}/js/canvas3.js" defer></script>
    <script src="${contextPath}/js/hamburger.js" defer></script>
</head>
<body>
<%@ include file="admin-nav.jsp" %>

<div class="container">
    <canvas id="chart">
    </canvas>
</div>

<div class="flex-container">
<div class="container_order">
    <canvas id="chart2">
    </canvas>
</div>

<div class="container_user">
    <canvas id="chart3">
    </canvas>
</div>
</div>
</body>
</html>