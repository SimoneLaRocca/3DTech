<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>3DTech</title>

    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script defer src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
            integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
    <script defer type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script defer src="js/bar_advices.js"></script>
    <script defer src="js/format.js"></script>

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/blitzer/jquery-ui.css">
    <!-- Add the slick-theme.css if you want default styling -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <!-- Add the slick-theme.css if you want default styling -->
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
    <link rel="stylesheet" href="./css/style.css" type="text/css">

</head>
<body>
<%@include file="WEB-INF/jsp/NavigationBar.jsp" %>
<div class="home">
    <div class="best_products">
        <div class="printer">
            <span class="label_printer">Migliori stampanti 3D</span>
            <div class="best_choice">
                <img src="img/test/favpng_hewlett-packard-enterprise-printer-managed-print-services.png">
                <span>1. Nome Prodotto Numero 1</span>
            </div>
            <div class="best_choice">
                <img src="img/test/favpng_hewlett-packard-enterprise-printer-managed-print-services.png">
                <span>2. Nome Prodotto Numero 2</span>
            </div>
            <div class="best_choice">
                <img src="img/test/favpng_hewlett-packard-enterprise-printer-managed-print-services.png">
                <span>3. Nome Prodotto Numero 3</span>
            </div>
        </div>
        <div class="brands">
            <span class="label_brands">Migliori marchi 2021</span>
            <div class="best_choice">
                <img src="img/brands/kisspng-intel-dell-logo-business-computer-icons-intel-logo-5b3f706848fc28.452094801530884200299.png">
                <span>1. Nome primo marchio</span>
            </div>
            <div class="best_choice">
                <img src="img/brands/kisspng-hewlett-packard-laptop-logo-hp-pavilion-lenovo-logo-5ac00df0a43ee6.9135001215225359206728.png">
                <span>2. Nome secondo marchio</span>
            </div>
            <div class="best_choice">
                <img src="img/brands/kisspng-laptop-lenovo-thinkpad-thinkpad-x1-carbon-intel-de-lenovo-logo-5ac494de7144d0.121336941522832606464.png">
                <span>3. Nome terzo marchio</span>
            </div>
        </div>
    </div>
</div>

<!--
<div class="sconti">
    <div class="content">
        <div class="label_sconti">Sconti</div>
        <div class="slider">
            <div>
                <img src="img/test/favpng_3d-printing-filament-aleph-objects-printer.png">
                <span>Nome Prodotto Numero 1</span>
            </div>
            <div>
                <img src="img/test/favpng_hewlett-packard-enterprise-printer-managed-print-services.png">
                <span>Nome Prodotto Numero 2</span>
            </div>
            <div>
                <img src="img/categorie/stampante3d.png">
                <span>Nome Prodotto Numero 3</span>
            </div>
            <div>
                <img src="img/categorie/filamenti.png">
                <span>Nome Prodotto Numero 4</span>
            </div>
        </div>
    </div>
</div>-->

<%@include file="WEB-INF/jsp/Footer.jsp" %>

</body>
</html>
