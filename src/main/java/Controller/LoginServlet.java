package Controller;

import Model.utilities.Cart;
import Model.utilities.CartItem;
import Model.Utente.Utente;
import Model.Utente.UtenteDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("email")==null || request.getParameter("password")==null){
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
            rd.forward(request,response);
        }
        Utente u = new Utente();
        Cart c = null;
        u.setEmail(request.getParameter("email"));
        u.setPasswordhash(request.getParameter("password"));
        UtenteDAO uDAO = new UtenteDAO();

        if (uDAO.doRetrieveEmailPassword(u) != null) {
            HttpSession session = request.getSession();
            u = uDAO.doRetrieveEmailPassword(u);
            session.setAttribute("user", u);
            c = (Cart) session.getAttribute("sessionCart");
            if(c==null){
                ArrayList<CartItem> items = new ArrayList<>();
                c = new Cart(items);
                session.setAttribute("sessionCart", c);
            }
            RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
            rd.forward(request,response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
            rd.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
