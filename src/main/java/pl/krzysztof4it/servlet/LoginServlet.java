package pl.krzysztof4it.servlet;

import pl.krzysztof4it.beans.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.UnavailableException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Krzysztof on 2017-05-23.
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final String USER = "root";
    private static final String PASS = "root123";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        throw new UnavailableException("Method GET is not avaible, try other");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");// ustawienie kodowanie zanków
        response.setCharacterEncoding("UTF-8");

        String login = request.getParameter("username");
        String pass = request.getParameter("password");

        if (USER.equals(login) && PASS.equals(pass)){
            //OK
            HttpSession session = request.getSession(true);// tworzy sesje
            // tworzę nowego użytkownika i przekazuję login
            User user = new User(login);
            session.setAttribute("user", login); // ustawia w sesji użytkownika
            response.sendRedirect("logged.jsp");

        }else {
            // NOT OK
            response.sendRedirect("login.jsp?login=false");// przekierowanie do JSP z parametrem false
        }


        /*RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
        requestDispatcher.forward(request, response);*/
    }
}
