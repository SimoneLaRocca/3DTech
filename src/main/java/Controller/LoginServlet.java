package Controller;

import Model.Utente;
import Model.UtenteDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utente u = new Utente();
        u.setEmail(request.getParameter("email"));
        u.setPasswordhash(request.getParameter("password"));
        UtenteDAO uDAO = new UtenteDAO();

        if(uDAO.doRetrieveByEmailPassword(u)!=null){
            HttpSession session = request.getSession();
            session.setAttribute("user", u);
            RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
            rd.forward(request,response);
        }else {
            RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
            rd.forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
