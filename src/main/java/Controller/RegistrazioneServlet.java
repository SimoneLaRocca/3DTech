package Controller;

import Model.Utente;
import Model.UtenteDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/RegistrazioneServlet")
public class RegistrazioneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utente u = new Utente();
        u.setEmail(request.getParameter("email"));
        u.setName(request.getParameter("nome"));
        u.setSurname(request.getParameter("cognome"));
        u.setPasswordhash(request.getParameter("password"));
        u.setPhoneNumber(request.getParameter("telefono"));
        u.setCity(request.getParameter("citta"));
        u.setStreet(request.getParameter("indirizzo"));
        u.setZIPCode(request.getParameter("cap"));
        UtenteDAO uDAO = new UtenteDAO();

        if(uDAO.doRetrieveByEmail(u)==null){
            uDAO.doSave(u);
            RequestDispatcher rd = request.getRequestDispatcher("/RegistrazioneCompletata.jsp");
            rd.forward(request,response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("/Registrazione.jsp");
            rd.forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
