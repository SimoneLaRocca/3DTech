package Controller;

import Model.Cart;
import Model.CartItem;
import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/AddProductToCartServlet")
public class AddProductToCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_id = request.getParameter("product");
        Prodotto product = null;
        ProdottoDAO pDAO = new ProdottoDAO();
        product = pDAO.doRetrieveById(Integer.parseInt(product_id));
        HttpSession session = request.getSession();
        Cart c = (Cart) session.getAttribute("sessionCart");
        c.addProduct(product, 1);
        session.setAttribute("sessionCart", c);
        RequestDispatcher rd = request.getRequestDispatcher("/Carrello.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
