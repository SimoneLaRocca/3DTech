package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDAO {
    public List<Integer> doCountCategories() {
        List<Integer> list = new ArrayList<>();
        String query = "SELECT COUNT(pro.id_prodotto) FROM prodotto as pro JOIN categoria as cat ON pro.id_categoria = cat.id_categoria GROUP BY cat.id_categoria";
        try (Connection connection = ConPool.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            ResultSet set = stmt.executeQuery();
            System.out.println(set.getFetchSize());
            while (set.next()) {
                list.add(set.getInt(1));
            }
            System.out.println(list);
        } catch (SQLException e) {
            System.out.println("errore??");
            throw new RuntimeException(e);
        }
        return list;
    }
}
