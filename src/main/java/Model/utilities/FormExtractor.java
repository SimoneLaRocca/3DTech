package Model.utilities;


import Model.Utente.Utente;

import java.sql.Date;
import java.util.Map;

public class FormExtractor {

    public static Utente extractLogin(Map<String, String[]> parameters) {
        Utente user = new Utente();
        user.setEmail(parameters.get("email")[0]);
        user.setPasswordhash(parameters.get("password")[0]);
        return user;
    }

    public static Utente extractRegistration(Map<String, String[]> parameters) {
        Utente user = new Utente();
        user.setEmail(parameters.get("email")[0]);
        user.setName(parameters.get("nome")[0]);
        user.setSurname(parameters.get("cognome")[0]);
        user.setPasswordhash(parameters.get("password")[0]);
        user.setDataNascita(Date.valueOf(parameters.get("data_nascita")[0]));
        user.setPhoneNumber(parameters.get("telefono")[0]);
        user.setZIPCode(parameters.get("cap")[0]);
        user.setCity(parameters.get("citta")[0]);
        user.setStreet(parameters.get("indirizzo")[0]);
        return user;
    }
}
