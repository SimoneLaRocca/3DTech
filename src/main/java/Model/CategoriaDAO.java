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
        String query = "SELECT COUNT(pro.id_prodotto) FROM prodotto as pro JOIN categoria as cat ON pro.id_categoria = cat.id_categoria GROUP BY pro.id_categoria";
        try (Connection connection = ConPool.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            ResultSet set = stmt.executeQuery();

            while (set.next())
                list.add(set.getInt(1));

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }


    public List<String> doRetrieveCategoriesName() {
        List<String> names = new ArrayList<>();
        String query = "SELECT nome FROM categoria";

        try (Connection connection = ConPool.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            ResultSet set = stmt.executeQuery();
            while (set.next())
                names.add(set.getString(1));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return names;
    }
}
