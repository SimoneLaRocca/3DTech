package Controller;

import Model.CategoriaDAO;
import org.json.JSONArray;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ChartServlet", value = "/ChartServlet")
public class ChartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/json");
        CategoriaDAO dao = new CategoriaDAO();
        List<Integer> nums = dao.doCountCategories();
        List<String> names = dao.doRetrieveCategoriesName();

        JSONArray array = new JSONArray();

        array.put(0, names);
        array.put(1, nums);
        //Per scrivere nel body della response...
        PrintWriter writer = response.getWriter();
        writer.println(array);
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
