package Controller;

import Model.Utente.Utente;
import Model.Utente.UtenteDAO;
import Model.utilities.Cart;
import Model.utilities.CartItem;
import Model.utilities.FormExtractor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Map;

@WebServlet(urlPatterns = "/AccountServlet/*")
public class AccountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pattern = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        String path = null;
        Utente user = null;
        UtenteDAO uDAO = new UtenteDAO();
        HttpSession session = request.getSession();
        Map<String, String[]> map = request.getParameterMap();
        switch (pattern){
            case "/login":
                Cart cart = null;
                user = FormExtractor.extractLogin(map);
                user = uDAO.doRetrieveEmailPassword(user);

                if (user == null) {
                    request.setAttribute("errorMessages", "Account inesistente");
                    path = "/WEB-INF/jsp/Login.jsp";
                    break;
                }else {
                    session.setAttribute("user", user);
                    cart = (Cart) session.getAttribute("sessionCart");
                    if(cart==null){
                        ArrayList<CartItem> items = new ArrayList<>();
                        cart = new Cart(items);
                        session.setAttribute("sessionCart", cart);
                    }
                    path = "/index.jsp";
                }
                break;
            case "/registration":
                user = FormExtractor.extractRegistration(map);
                ArrayList<Utente> list = (ArrayList<Utente>) uDAO.doRetrieveAllPlusAdmin();
                for(Utente u : list){
                    if(u.getPhoneNumber().equals(user.getPhoneNumber())){
                        path = "/WEB-INF/jsp/Registrazione.jsp";
                        RequestDispatcher rd = request.getRequestDispatcher(path);
                        rd.forward(request,response);
                    }
                }
                if(uDAO.doRetrieveEmailPassword(user)==null){
                    uDAO.doSave(user);
                    path = "/WEB-INF/jsp/RegistrazioneCompletata.jsp";
                }else{
                    path = "/WEB-INF/jsp/Registrazione.jsp";
                }
                break;
            case "/admin":
                user = FormExtractor.extractLogin(map);
                Utente test = uDAO.doRetrieveEmailPassword(user);
                if (test == null) {
                    request.setAttribute("errorMessages", "Account inesistente");
                    path = "/WEB-INF/jsp/LoginAdmin.jsp";
                    break;
                }
                if(test.isAdmin()){
                    path = "/WEB-INF/jsp/admin-dashboard.jsp";
                }
                break;
            case "/logout":
                session.invalidate();
                path = "/index.jsp";
                break;
        }
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pattern = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        String path = null;

        switch (pattern){
            case "/loginAdmin":
                path = "/WEB-INF/jsp/LoginAdmin.jsp";
                break;
            case "/login_page":
                path = "/WEB-INF/jsp/Login.jsp";
                break;
            case "/registration_page":
                path = "/WEB-INF/jsp/Registrazione.jsp";
                break;
            case "/account":
                path = "/WEB-INF/jsp/Account.jsp";
                break;
        }

        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request,response);
    }
}
