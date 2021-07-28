package Model.utilities;

import Model.Utente.Utente;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class RequestValidator {
    private final HttpServletRequest request;
    private final List<String> list;

    private static final Pattern INT_PATTERN = Pattern.compile("^\\d*$");
    private static final Pattern DOUBLE_PATTERN = Pattern.compile("^(-)?(\\d+)(\\.\\d+)?$");
    // ^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+){1,2}$ <- email senza troppi caratteri speciali
    private static final Pattern EMAIL_PATTERN = Pattern.compile("^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$");
    private static final Pattern PASSW_PATTERN = Pattern.compile("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[._-])[A-Za-z\\d._-]{8,16}$");
    private static final Pattern NAME_PATTERN = Pattern.compile("^([a-zA-Z\\s]){3,25}$");
    private static final Pattern SURNAME_PATTERN = Pattern.compile("^([a-zA-Z\\s]){3,25}$");
    // Solo per numeri di telefonia mobile italiani
    private static final Pattern PHONE_PATTERN = Pattern.compile("^(\\d){10}$");
    private static final Pattern ZIP_CODE_PATTERN = Pattern.compile("^(\\d){5}$");

    public RequestValidator(HttpServletRequest request) {
        this.request = request;
        this.list = new ArrayList<>();
    }

    public static void authenticate(HttpSession session, String attribute) {
        if (session == null || session.getAttribute(attribute) == null)
            throw new RequestNotValidException(HttpServletResponse.SC_BAD_REQUEST, "Utente non autenticato");
    }

    public static void authorize(HttpSession session, String attribute) {
        authenticate(session, attribute);
        Utente user = (Utente) session.getAttribute(attribute);
        if (!user.isAdmin())
            throw new RequestNotValidException(HttpServletResponse.SC_UNAUTHORIZED, "Utente non autorizzato");
    }

    private boolean required(String value) {
        return value != null && !value.isBlank();
    }

    public boolean assertMatch(String parameter, Pattern exp, String errorMessage) {
        String paramValue = request.getParameter(parameter);
        boolean flag = required(paramValue) && exp.matcher(paramValue).matches();

        if (!flag) {
            list.add(errorMessage);
            return false;
        } else {
            return true;
        }
    }

    public boolean assertPhoneNumber(String param, String msg) {
        return assertMatch(param, PHONE_PATTERN, msg);
    }

    public boolean assertEmail(String param, String msg) {
        return assertMatch(param, EMAIL_PATTERN, msg);
    }

    public boolean assertPassword(String param, String msg) {
        return assertMatch(param, PASSW_PATTERN, msg);
    }

    public boolean assertInt(String param, String msg) {
        return assertMatch(param, INT_PATTERN, msg);
    }

    public boolean assertDouble(String param, String msg) {
        return assertMatch(param, DOUBLE_PATTERN, msg);
    }

    public boolean assertName(String param, String msg) {
        return assertMatch(param, NAME_PATTERN, msg);
    }

    public boolean assertSurname(String param, String msg) {
        return assertMatch(param, SURNAME_PATTERN, msg);
    }

    public boolean assertZIPCode(String param, String msg) {
        return assertMatch(param, ZIP_CODE_PATTERN, msg);
    }

    public List<String> getList() {
        return list;
    }

    public void hasErrors() {
        if (!list.isEmpty())
            throw new RequestNotValidException(getList(), HttpServletResponse.SC_BAD_REQUEST);
    }
}