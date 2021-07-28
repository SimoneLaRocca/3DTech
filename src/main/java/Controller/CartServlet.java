package Controller;

import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;
import Model.utilities.Cart;
import Model.utilities.CartItem;
import Model.utilities.RequestValidator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/CartServlet/*")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pattern = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        String product_id = request.getParameter("product_id");
        String path = null;
        ProdottoDAO pDAO = new ProdottoDAO();
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("sessionCart");
        System.out.println(request.getParameter("url"));
        switch (pattern) {
            case "/add":
                if (session.getAttribute("user") == null) {
                    path = "/WEB-INF/jsp/Login.jsp";
                    break;
                }
                String url = request.getHeader("Referer");
                System.out.println(url);

                Prodotto product = null;
                product = pDAO.doRetrieveById(Integer.parseInt(product_id));
                String show = request.getParameter("show");
                CartItem cartItem = cart.find2(Integer.parseInt(product_id));

                if (cartItem != null) {
                    int q = cartItem.getQuantita() + 1;
                    if (q > 10) {
                        q = 10;
                    }
                    cartItem.setQuantita(q);
                } else {
                    cart.addProduct(product, 1);
                    session.setAttribute("sessionCart", cart);
                }
                path = "/CartServlet/details?product_id=" + product_id;
                break;
            case "/update":
                String quantity = request.getParameter("quantita");
                CartItem cItem = cart.find2(Integer.parseInt(product_id));
                cItem.setQuantita(Integer.parseInt(quantity));
                path = "/WEB-INF/jsp/Carrello.jsp";
                break;
            case "/remove":
                if(cart.removeProduct(Integer.parseInt(product_id))) {
                    path = "/WEB-INF/jsp/Carrello.jsp";
                }
                break;
            case "/details":
                Prodotto p = null;
                p = pDAO.doRetrieveById(Integer.parseInt(product_id));
                request.setAttribute("product", p);
                path = "/WEB-INF/jsp/PaginaProdotto.jsp";
                break;
        }
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
