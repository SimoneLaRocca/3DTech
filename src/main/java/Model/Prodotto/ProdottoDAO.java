package Model.Prodotto;


import Model.ConPool;
import Model.Prodotto.Prodotto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdottoDAO {
    private static Connection con;

    public ProdottoDAO() {
        try {
            con = ConPool.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Prodotto> doRetrieveAll() {
        String sql = "SELECT * FROM Prodotto";
        try (PreparedStatement ps = con.prepareStatement(sql)) {

            ResultSet rs = ps.executeQuery();
            ArrayList<Prodotto> array = new ArrayList<>();
            while (rs.next()) {
                Prodotto p = new Prodotto();
                p.setId(rs.getInt(1));
                p.setNome(rs.getString(2));
                p.setMarchio(rs.getString(3));
                p.setDescrizione(rs.getString(4));
                p.setPrezzo(rs.getDouble(5));
                p.setPeso(rs.getDouble(6));
                p.setSconto(rs.getDouble(7));
                array.add(p);
            }
            return array;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Prodotto> doRetrievebyName(String name) {
        String sql = "SELECT * FROM Prodotto WHERE nome LIKE ? ";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, name + "%");
            ResultSet rs = ps.executeQuery();

            ArrayList<Prodotto> array = new ArrayList<>();
            while (rs.next()) {
                Prodotto p = new Prodotto();
                p.setId(rs.getInt(1));
                p.setNome(rs.getString(2));
                array.add(p);
            }
            return array;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Prodotto doRetrieveById(int id) {

        String sql = "SELECT * FROM Prodotto WHERE id_prodotto=?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            rs.next();

            Prodotto product = new Prodotto();

            product.setId(rs.getInt(1));
            product.setNome(rs.getString(2));
            product.setMarchio(rs.getString(3));
            product.setDescrizione(rs.getString(4));
            product.setUrlImage(rs.getString(5));
            product.getCaratteristiche(rs.getString(6));
            product.setPrezzo(rs.getDouble(7));
            product.setPeso(rs.getDouble(8));
            product.setSconto(rs.getDouble(9));
            return product;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doSave(Prodotto p) {
        try (PreparedStatement ps = con.prepareStatement("INSERT INTO " +
                "Prodotto(id_prodotto, nome, marchio, descrizione, prezzo, peso, sconto)" +
                "VALUES(?,?,?,?,?,?,?)")) {
            ps.setInt(1, p.getId());
            ps.setString(2, p.getNome());
            ps.setString(3, p.getMarchio());
            ps.setString(4, p.getDescrizione());
            ps.setDouble(5, p.getPrezzo());
            ps.setDouble(6, p.getPeso());
            ps.setDouble(7, p.getSconto());
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doUpdateProdottobyId(int id, Prodotto p) {

        try (PreparedStatement ps = con.prepareStatement("UPDATE Prodotto SET " +
                "nome=?, marchio=?, descrizione=?, prezzo=?, peso=?, sconto=?" +
                " WHERE id_prodotto = ?")) {

            ps.setString(1, p.getNome());
            ps.setString(2, p.getMarchio());
            ps.setString(3, p.getDescrizione());
            ps.setDouble(4, p.getPrezzo());
            ps.setDouble(5, p.getPeso());
            ps.setDouble(6, p.getSconto());
            ps.setInt(7, id);

            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("UPDATE error.");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    //TODO implementare metodo
    public String doRetrieveCaratteristiche(int id) {
        try (PreparedStatement ps = con.prepareStatement("SELECT * FROM prodotto" +
                " WHERE id_prodotto = ?")) {
            ps.setInt(1, id);

            ResultSet set = ps.executeQuery();
            if (set.next()) {

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return "";
    }
}