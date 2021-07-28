package Controller;

import Model.Categoria.Categoria;
import Model.Categoria.CategoriaDAO;
import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/ShowProductsServlet")
public class ShowProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("option");
        String search = request.getParameter("search");
        Categoria category = null;
        CategoriaDAO cDAO = new CategoriaDAO();

        if(search!=null){
            ArrayList<Prodotto> products = null;
            ProdottoDAO pDAO = new ProdottoDAO();
            products = (ArrayList<Prodotto>) pDAO.doRetrieveProductsByName(search);
            request.setAttribute("listProducts", products);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Prodotti.jsp");
            rd.forward(request,response);
        }

        switch (option){
            case "Stampanti 3D":
                category = cDAO.doRetrieveByCategory("Stampanti 3D");
                break;

            case "Materiale plastico":
                category = cDAO.doRetrieveByCategory("Materiale plastico");
                break;

            case "Ricambi":
                category = cDAO.doRetrieveByCategory("Ricambi");
                break;

            case "Resine":
                category = cDAO.doRetrieveByCategory("Resine");
                break;

            case "Accessori":
                category = cDAO.doRetrieveByCategory("Accessori");
                break;

            case "Utensili":
                category = cDAO.doRetrieveByCategory("Utensili");
                break;

            default:
                category = cDAO.doRetrieveByCategory("Stampanti 3D");
                break;
        }
        request.setAttribute("listProducts", category.getProdotti());
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Prodotti.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
