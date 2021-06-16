package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UtenteDAO {
    private static Connection connection;

    public UtenteDAO() {
        try {
            connection = ConPool.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void doUpdate(Utente user) {
        try (PreparedStatement ps = connection.prepareStatement("UPDATE utente SET telefono = ?")) {

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Utente> doRetrieveAll() {
        try (PreparedStatement ps = connection.prepareStatement("select * from utente")) {
            List<Utente> list = new ArrayList<>();

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Utente user = new Utente();
                user.setId(rs.getInt("id_utente"));
                user.setEmail(rs.getString("Email"));
                user.setPasswordhash(rs.getString("Passwordhash"));
                user.setName(rs.getString("Nome"));
                user.setSurname(rs.getString("Cognome"));
                user.setPhoneNumber(rs.getString("telefono"));
                user.setZIPCode(rs.getString("CAP"));
                user.setCity(rs.getString("Citta"));
                user.setStreet(rs.getString("Via"));
                user.setAdmin(rs.getBoolean("admin"));
                list.add(user);
            }
            return list;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Ordine> doRetrieveOrders(int id) {
        List<Ordine> ordini = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement("SELECT * FROM ordine WHERE id_utente = ?")) {
            ps.setInt(1, id);

            ResultSet set = ps.executeQuery();

            while (set.next()) {
                Ordine order = new Ordine();
                order.setId(set.getInt("id_ordine"));
                order.setQuantita(set.getInt("quantita"));
                order.setDataOrdine(set.getDate("data_ordine"));
                //TODO aggiungere setUser()
               // order.setUser(user);
                ordini.add(order);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return ordini;
    }

    public Utente doRetrieveByEmailPassword(Utente user) {
        try (PreparedStatement ps = connection.prepareStatement("SELECT * FROM utente" +
                " WHERE email = ? AND passwordHash = ?")) {

            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPasswordhash());
            ResultSet set = ps.executeQuery();

            if (set.next()) {
                Utente utente = new Utente();
                utente.setEmail(set.getString("email"));
                utente.setName(set.getString("nome"));
                utente.setSurname(set.getString("cognome"));
                utente.setPhoneNumber(set.getString("telefono"));
                utente.setId(set.getInt("id_utente"));
                utente.setCity(set.getString("citta"));
                utente.setZIPCode(set.getString("CAP"));
                utente.setStreet(set.getString("via"));
                return utente;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return null;
    }

    public Utente doRetrieveByEmail(Utente user) {
        try (PreparedStatement ps = connection.prepareStatement("SELECT * FROM utente" +
                " WHERE email = ?")) {

            ps.setString(1, user.getEmail());
            ResultSet set = ps.executeQuery();

            if (set.next()) {
                Utente utente = new Utente();
                utente.setEmail(set.getString("email"));
                utente.setName(set.getString("nome"));
                utente.setSurname(set.getString("cognome"));
                utente.setPhoneNumber(set.getString("telefono"));
                utente.setId(set.getInt("id_utente"));
                utente.setCity(set.getString("citta"));
                utente.setZIPCode(set.getString("CAP"));
                utente.setStreet(set.getString("via"));
                return utente;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return null;
    }

    public void doSave(Utente user) {
        if (user == null) return;

        try {
            PreparedStatement ps = connection.prepareStatement("insert into utente " +
                    "(email, passwordhash, nome, cognome," +
                    " telefono, cap, citta, via, admin)" +
                    "values (?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);

            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPasswordhash());
            ps.setString(3, user.getName());
            ps.setString(4, user.getSurname());
            ps.setString(5, user.getPhoneNumber());
            ps.setString(6, user.getZIPCode());
            ps.setString(7, user.getCity());
            ps.setString(8, user.getStreet());
            ps.setBoolean(9, user.isAdmin());

            if (ps.executeUpdate() != 1) throw new RuntimeException();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
