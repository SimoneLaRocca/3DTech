<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
