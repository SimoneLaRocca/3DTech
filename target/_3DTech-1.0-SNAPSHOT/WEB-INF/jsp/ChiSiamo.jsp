<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi Siamo</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" href="${contextPath}/css/chiSiamo.css">
</head>
<body>
    <%@include file="NavigationBar.jsp"%>
    <div class="people">
        <div>
            <img src="${contextPath}/img/user-profile-svgrepo-com.svg">
            <span>Salve, sono Luigi e sono uno sviluppatore web di 20 anni.<br>
                Sono uno dei creatori di questo brand.<br>
                Mi occupo della manutenzione e degli aspetti tecnici.</span>
        </div>
        <div>
            <img src="${contextPath}/img/user-profile-svgrepo-com.svg">
            <span>Ciao, sono Simone e sono uno sviluppatore web di 20 anni.<br>
                Sono uno dei creatori di questo brand.<br>
                Mi occupo della logistica.</span>
        </div>
        <div>
            <img src="${contextPath}/img/user-profile-svgrepo-com.svg">
            <span>Benvenuti, sono Oskar e sono uno sviluppatore web di 20 anni.<br>
                Sono uno dei creatori di questo brand.<br>
                Mi occupo delle risorse umane e della comunicazione.</span>
        </div>
    </div>

</body>
</html>
