package Model.Categoria;

import Model.Categoria.Categoria;
import Model.ConPool;
import Model.Prodotto.Prodotto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriaDAO {
    private static Connection con;

    public List<Integer> doCountCategories() {
        List<Integer> list = new ArrayList<>();
        String query = "SELECT COUNT(pro.id_prodotto) FROM prodotto as pro JOIN categoria as cat ON pro.id_categoria = cat.id_categoria GROUP BY pro.id_categoria";
        try (PreparedStatement stmt = con.prepareStatement(query)) {

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

        try (PreparedStatement stmt = con.prepareStatement(query)) {

            ResultSet set = stmt.executeQuery();

            while (set.next())
                names.add(set.getString(1));

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return names;
    }

    public Categoria doRetrieveByCategory(String name) {
        Categoria cat = new Categoria();
        ArrayList<Prodotto> list = new ArrayList<>();
        String sql = "SELECT p.* FROM categoria AS c, prodotto AS p " +
                "WHERE c.id_categoria=p.id_categoria AND c.nome=?";
        try (Connection connection = ConPool.getConnection();
             PreparedStatement stmt = connection.prepareStatement(sql)) {

            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Prodotto product = new Prodotto();
                product.setId(rs.getInt(1));
                product.setNome(rs.getString(2));
                product.setMarchio(rs.getString(3));
                product.setDescrizione(rs.getString(4));
                product.setUrlImage(rs.getString(5));
                product.setPrezzo(rs.getDouble(7));
                product.setPeso(rs.getDouble(8));
                product.setSconto(rs.getDouble(9));
                System.out.println(product.getId() + "    " + product.getNome());
                list.add(product);
            }
            cat.setProdotti(list);
            return cat;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
