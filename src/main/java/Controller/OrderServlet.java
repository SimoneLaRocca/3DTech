package Controller;


import Model.Ordine.Ordine;
import Model.Ordine.OrdineDAO;
import Model.Utente.Utente;
import Model.utilities.Cart;
import Model.utilities.CartItem;
import Model.utilities.RequestValidator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;


@WebServlet(urlPatterns = "/OrderServlet/*")
public class OrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        OrdineDAO dao = new OrdineDAO();
        HttpSession session = request.getSession();
        Utente user = (Utente) session.getAttribute("user");

        switch (path) {
            case "/orders": /* ottieni gli ordini del client*/
                user.setOrdini(dao.doRetrieveOrdersWithProductsByUser(user.getId()));
                System.out.println(user.getOrdini());
                request.setAttribute("userOrders", user.getOrdini());
                request.getRequestDispatcher("/WEB-INF/jsp/ResocontoOrdini.jsp").forward(request, response);
                break;
            case "/checkout": /* conferma l'ordine */
                Cart c = (Cart) session.getAttribute("sessionCart");
                List<CartItem> products = c.getProdotti();
                if (products != null && products.size() > 0) {
                    Ordine order = new Ordine();
                    order.setCarrello(c);
                    order.setQuantita(products.size());
                    order.setDataOrdine(LocalDate.now());
                    order.setUserId(user.getId());
                    System.out.println("id utente "+user.getId());
                    order.setVisible(true);
                    dao.doSave(order);
                    c.reset();
                    request.getRequestDispatcher("/OrderServlet/orders").forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Carrello.jsp");
                    rd.forward(request,response);
                }
                break;
            case "/remove":
                Utente user1 = (Utente) session.getAttribute("user");
                String idOrder = request.getParameter("order-id");
                dao.doDeleteById(Integer.parseInt(idOrder));
                List<Ordine> orders = dao.doRetrieveOrdersWithProductsByUser(user1.getId());
                request.setAttribute("userOrders", orders);
                request.getRequestDispatcher("/WEB-INF/jsp/ResocontoOrdini.jsp").forward(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Risorsa non trovata");
                break;
        }
    }
}
