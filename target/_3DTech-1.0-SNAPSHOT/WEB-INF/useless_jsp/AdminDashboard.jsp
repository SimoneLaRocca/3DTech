<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <%@include file="../jsp/common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/hamburger.css">
    <script defer src="${contextPath}/js/hamburger.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/chart.js@3.3.2/dist/chart.min.js"></script>
    <script defer src="${contextPath}/js/canvas.js"></script>
</head>
<body>
<%@include file="../jsp/Hamburger.jsp"%>
<input id="ctxPath" type="hidden" value="${contextPath}">
<canvas id="myChart"></canvas>
</body>
</html>
