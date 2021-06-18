package Controller;

import Model.Categoria;
import Model.CategoriaDAO;
import Model.Utente;
import Model.UtenteDAO;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ChartServlet", value = "/ChartServlet")
public class ChartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json");
        System.out.println("Sono stata chiamata");
        CategoriaDAO dao = new CategoriaDAO();
        List<Integer> test = dao.doCountCategories();

        JSONArray array = new JSONArray(test);

        PrintWriter writer = response.getWriter();
        writer.println(array);
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
