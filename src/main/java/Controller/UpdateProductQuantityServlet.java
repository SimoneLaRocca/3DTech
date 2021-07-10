package Controller;

import Model.utilities.Cart;
import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/UpdateProductQuantityServlet")
public class UpdateProductQuantityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quantity = request.getParameter("quantita");
        String product_id = request.getParameter("product_id");

        HttpSession session = request.getSession();
        Cart c = (Cart) session.getAttribute("sessionCart");
        /**Optional<CartItem> item = c.find(Integer.parseInt(product_id));
        CartItem cItem = item.get();**/
        ProdottoDAO pDAO = new ProdottoDAO();
        Prodotto product = pDAO.doRetrieveById(Integer.parseInt(product_id));
        c.removeProduct(Integer.parseInt(product_id));
        c.addProduct(product, Integer.parseInt(quantity));
        session.setAttribute("sessionCart", c);

        RequestDispatcher rd = request.getRequestDispatcher("/Carrello.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
