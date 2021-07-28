package Controller;

import Model.Prodotto.Prodotto;
import Model.Prodotto.ProdottoDAO;
import org.json.JSONArray;

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
        ArrayList<String> list = (ArrayList<String>) pDAO.doSearch(s);
        JSONArray js_array = new JSONArray(list);
        response.setContentType("application/json");
        response.getWriter().println(js_array);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
