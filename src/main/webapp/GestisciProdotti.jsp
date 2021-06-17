
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>Admin Dashboard</title>
    <script defer src="js/hamburger.js"></script>
</head>

    <nav>
        <div class="barra_di_nav">
            <a href="#"><img class="three_hor_lines" src="img/three_horizontal_lines_white.png"></a>
            <div class="search">
                <form>
                    <input type="search" name="search" placeholder="Cerca...">
                </form>
            </div>
        </div>
    </nav>


    <ul class="hamburger_menu">
        <li><a class="posizione_corrente" href="#">Gestisci prodotti</a></li> <!-- agg, elimina e modifica -->
        <li><a href="#">Gestisci utenti</a></li>
        <li><a href="#">Gestione ordini</a></li>
        <li><a class="logout" href="#">Logout</a></li>
    </ul>

    <div class="product">
        <div class="add_product">

            <div class="add_product_label"> Aggiungi prodotto</div>

            <div class="add_product_input">

                <form action="" name="aggiungi" method="">

                    <label for="nome">Nome</label>
                    <input class="input" type="text" id="nome" name="nome" value=""><br><br>
                    <label for="descrizione">Descrizione</label>
                    <input class="input" type="text" id="descrizione" name="descrizione" value=""><br><br>
                    <label for="marchio">Marchio</label>
                    <input class="input" type="text" id="marchio" name="marchio" value=""><br><br>
                    <label for="prezzo">Prezzo</label>
                    <input class="input" type="number" id="prezzo" name="prezzo" value=""><br><br>
                    <label for="peso">Peso</label>
                    <input class="input" type="number" id="peso" name="peso" value=""><br><br>
                    <label for="sconto">Sconto</label>
                    <input class="input" type="number" id="sconto" name="sconto" value=""><br><br>
                    <label for="categoria">Categoria</label>
                    <input class="input" type="text" id="categoria" name="categoria" value=""><br><br><br>
                    <input class="agg" type="submit" value="Aggiungi prodotto">

                </form>
            </div>
        </div>

        <div class="mod_product">

            <div class="mod_product_label"> Modifica prodotto</div>

            <div class="mod_product_input">
                <form action="" name="modifica" method="">
                    <label for="id2">ID prodotto</label>
                    <input class="input" type="number" id="id2" name="id" value=""><br><br>
                    <label for="nome2">Nome</label>
                    <input class="input" type="text" id="nome2" name="nome" value=""><br><br>
                    <label for="descrizione2">Descrizione</label>
                    <input class="input" type="text" id="descrizione2" name="descrizione" value=""><br><br>
                    <label for="marchio2">Marchio</label>
                    <input class="input" type="text" id="marchio2" name="marchio" value=""><br><br>
                    <label for="prezzo2">Prezzo</label>
                    <input class="input" type="number" id="prezzo2" name="prezzo" value=""><br><br>
                    <label for="peso2">Peso</label>
                    <input class="input" type="number" id="peso2" name="peso" value=""><br><br>
                    <label for="sconto2">Sconto</label>
                    <input class="input" type="number" id="sconto2" name="sconto" value=""><br><br>
                    <label for="categoria2">Categoria</label>
                    <input class="input" type="text" id="categoria2" name="categoria" value=""><br><br><br>
                    <input class="agg" type="submit" value="Modifica prodotto">
                </form>
            </div>
        </div>

        <div class="rem_product">

            <div class="rem_product_label"> Rimuovi prodotto</div>

            <div class="rem_product_input">

                <form action="" name="rimuovi" method="">
                    <label for="id">ID prodotto</label>
                    <input class="input" type="number" id="id" name="id" value=""><br><br><br>
                    <input class="agg" type="submit" value="Rimuovi prodotto">
                </form>
            </div>

        </div>


    </div>

    <table class="rtable">
        <thead>
        <tr>
            <th>id</th>
            <th>nome</th>
            <th>marchio</th>
            <th>prezzo</th>
            <th>peso</th>
            <th>categoria</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${applicationScope.listProducts}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.nome}</td>
                <td>${product.marchio}</td>
                <td>${product.prezzo}</td>
                <td>${product.peso}</td>
                <td>${product.categoria.nome}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    </body>
</html>
