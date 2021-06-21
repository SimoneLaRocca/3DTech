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
  <li><a href="${pageContext.request.contextPath}/GestisciProdotti.jsp">Gestisci prodotti</a></li> <!-- agg, elimina e modifica -->
  <li><a href="${pageContext.request.contextPath}/GestisciUtenti.jsp">Gestisci utenti</a></li>
  <li><a href="${pageContext.request.contextPath}/GestisciOrdini.jsp">Gestione ordini</a></li>
  <li><a class="logout" href="${pageContext.request.contextPath}/Home.jsp">Logout</a></li>
</ul>
