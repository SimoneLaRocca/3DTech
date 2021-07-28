package Controller;


import Model.Categoria.Categoria;
import Model.Categoria.CategoriaDAO;
import Model.Categoria.CategoryBuilder;
import Model.Ordine.Ordine;
import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;
import Model.Prodotto.ProductBuilder;
import Model.Utente.UtenteDAO;
import Model.utilities.RequestNotValidException;
import Model.utilities.RequestValidator;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/controlpanel/*")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        String resource = null;
        HttpSession session = request.getSession();
        ProdottoDAO dao = new ProdottoDAO();

        try {
            switch (path) {
                case "/":
                    resource = "/WEB-INF/jsp/admin-dashboard.jsp";
                    break;
                case "/products":
                    resource = "/WEB-INF/jsp/manage-products.jsp";
                    break;
                case "/categories":
                    resource = "/WEB-INF/jsp/manage-categories.jsp";
                    break;
                case "/users":
                    request.setAttribute("listUsers", new UtenteDAO().doRetrieveAll());
                    resource = "/WEB-INF/jsp/manage-users.jsp";
                    break;
                case "/orders":
                    response.setContentType("application/json");
                    String userId = request.getParameter("userId");

                    List<Ordine> orders = new UtenteDAO().doRetrieveAllOrdersByUser(Integer.parseInt(userId));

                    PrintWriter writer = response.getWriter();
                    writer.println(new JSONArray(orders));
                    writer.close();
                    break;
                default:
                    response.sendError(HttpServletResponse.SC_NOT_FOUND);
                    return;
            }
        } catch (RequestNotValidException e) {
            e.dispatchErrors(request, response);
            return;
        }


        RequestDispatcher dispatcher = request.getRequestDispatcher(resource);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String path = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        PrintWriter writer;
        HttpSession session = request.getSession();

        switch (path) {
            case "/product-info":
                //RequestValidator.authorize(session, "userSession");
                response.setContentType("application/json");
                String id = request.getParameter("productId");

                Prodotto p = new ProdottoDAO().doRetrieveById(Integer.parseInt(id));
                JSONObject obj = ProductBuilder.fromObjectToJson(p);

                writer = response.getWriter();
                writer.println(obj);
                writer.close();
                break;
            case "/category-info":
                //RequestValidator.authorize(session, "userSession");
                response.setContentType("application/json");

                String idCategoria = request.getParameter("categoryId");

                Categoria c = new CategoriaDAO().doRetrieveById(Integer.parseInt(idCategoria));
                JSONObject object = CategoryBuilder.fromObjectToJson(c);

                writer = response.getWriter();
                writer.println(object);
                writer.close();
                break;
            case "/get":
                //RequestValidator.authorize(session, "userSession");
                response.setContentType("application/json");

                String productId = request.getParameter("productId");

                Prodotto item = new ProdottoDAO().doRetrieveById(Integer.parseInt(productId));
                if (item != null) {
                    writer = response.getWriter();
                    JSONObject obj3 = ProductBuilder.fromObjectToJson(item);
                    writer.println(obj3);
                    writer.close();
                }
                break;
            default:
                break;
        }
    }
}