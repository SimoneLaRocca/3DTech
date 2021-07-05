<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Categorie</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script defer src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
            integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <script defer src="js/bar_advices.js"></script>

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/blitzer/jquery-ui.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
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
