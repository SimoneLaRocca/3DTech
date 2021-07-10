package Model.Utente;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UtenteConstructor {
    public static Utente constructUser(ResultSet set) throws SQLException {
        Utente user = new Utente();
        user.setId(set.getInt("id_utente"));
        user.setEmail(set.getString("email"));
        user.setName(set.getString("nome"));
        user.setSurname(set.getString("cognome"));
        user.setDataNascita(set.getDate("data_di_nascita"));
        user.setPhoneNumber(set.getString("telefono"));
        user.setZIPCode(set.getString("CAP"));
        user.setCity(set.getString("citta"));
        user.setStreet(set.getString("via"));
        user.setAdmin(set.getBoolean("admin"));
        return user;
    }
}