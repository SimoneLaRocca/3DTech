package Controller;

import Model.Categoria.CategoriaDAO;
import Model.Ordine.Ordine;
import Model.Ordine.OrdineDAO;
import Model.Utente.Utente;
import Model.Utente.UtenteDAO;
import org.json.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/ChartServlet/*")
public class ChartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pattern = (request.getPathInfo() == null ? "/" : request.getPathInfo());
        response.setContentType("text/json");
        JSONObject json_obj = new JSONObject();

        switch (pattern){
            case "/bar":
                CategoriaDAO dao = new CategoriaDAO();
                List<Integer> nums = dao.doCountCategories();
                List<String> names = dao.doRetrieveCategoriesName();

                json_obj.put("labels", names);
                json_obj.put("info", nums);

                break;
            case "/line":
                OrdineDAO oDAO = new OrdineDAO();
                ArrayList<Ordine> list = (ArrayList<Ordine>) oDAO.doRetrieveAll();

                ArrayList<String> days = new ArrayList<>();
                int[] orders = new int[7];
                Arrays.fill(orders, 0);

                LocalDate now = LocalDate.now();
                for (LocalDate d = now.minusDays(6); !d.isAfter(now); d = d.plusDays(1)) {
                    days.add(d.format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
                }

                int i = 0;
                for(String date : days) {
                    for (Ordine o : list) {
                        String test = o.getDataOrdine().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
                        if(test.equals(date)){
                            orders[i] += 1;
                        }
                    }
                    i++;
                }
                json_obj.put("labels", days);
                json_obj.put("info", orders);
                break;
            case "/doughnut":
                UtenteDAO uDAO = new UtenteDAO();
                ArrayList<Utente> list2 = null;
                list2 = (ArrayList<Utente>) uDAO.doRetrieveAllPlusAdmin();

                int[] total = new int[2];
                Arrays.fill(total, 0);

                for (Utente u : list2){
                    if(u.isAdmin()){
                        total[1] += 1;
                    }else {
                        total[0] += 1;
                    }
                }

                json_obj.put("info", total);

                break;
        }
        //Per scrivere nel body della response...
        PrintWriter writer = response.getWriter();
        writer.println(json_obj);
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
