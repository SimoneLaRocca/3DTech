<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" defer></script>
    <script defer type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script defer src="js/bar_advices.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/blitzer/jquery-ui.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" type="text/css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" defer></script>
    <!--<link rel="stylesheet" href="css/normalize.css" type="text/css">-->
    <title>Categorie</title>
</head>
<body class="clearfix">
<%@include file="WEB-INF/jsp/NavigationBar.jsp" %>
<section class="category">
    <div class="cat">
        <a href="#"><img src="img/categorie/stampante3d.png"></a>
        <span class="text_category category_label">Stampanti 3D</span>
    </div>

    <div class="cat">
        <a href="#"><img src="img/categorie/ricambi.png"></a>
        <span class="text_category category_label">Ricambi</span>
    </div>

    <div class="cat">
        <a href="#"><img src="img/categorie/filamenti.png"></a>
        <span class="text_category category_label">Filamenti</span>
    </div>

    <div class="cat">
        <a href="#"><img src="img/categorie/resina.png"></a>
        <span class="text_category category_label">Resina</span>
    </div>

    <div class="cat">
        <a href="#"><img src="img/categorie/utility.png"></a>
        <span class="text_category category_label">Utensili</span>
    </div>

    <div class="cat">
        <a href="#"><img src="img/categorie/accessori.png"></a>
        <span class="text_category category_label">Accessori</span>
    </div>
</section>

<%@include file="WEB-INF/jsp/Footer.jsp" %>
</body>
</html>
