package Controller;

import Model.CategoriaDAO;
import Model.Prodotto;
import Model.ProdottoDAO;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/GetAdvicesServlet")
public class GetAdvicesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProdottoDAO pDAO = new ProdottoDAO();
        String s = request.getParameter("input_bar_value");
        ArrayList<Prodotto> list = (ArrayList<Prodotto>) pDAO.doRetrievebyName(s);
        JSONArray jarray = new JSONArray(list);
        response.setContentType("application/json");
        response.getWriter().println(jarray);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
