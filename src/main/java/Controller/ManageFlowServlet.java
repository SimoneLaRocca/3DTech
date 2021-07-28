package Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/ManageFlowServlet/*")
public class ManageFlowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pattern = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        String path = null;

        switch (pattern){
            case "/category":
                path = "/WEB-INF/jsp/Categorie.jsp";
                break;
            case "/info_about_us":
                path = "/WEB-INF/jsp/ChiSiamo.jsp";
                break;
            case "/info_about_contacts":
                path = "/WEB-INF/jsp/Contatti.jsp";
                break;
            case "/cart":
                path = "/WEB-INF/jsp/Carrello.jsp";
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
