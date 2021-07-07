package Controller;

import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/ProdottoServlet")
public class ProdottoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_id = request.getParameter("product");
        Prodotto p = null;
        ProdottoDAO pDAO = new ProdottoDAO();
        p = pDAO.doRetrieveById(Integer.parseInt(product_id));
        request.setAttribute("product", p);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/PaginaProdotto.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
