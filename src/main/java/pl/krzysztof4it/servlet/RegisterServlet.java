package pl.krzysztof4it.servlet;

import com.sun.org.apache.regexp.internal.RE;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

/**
 * Created by Krzysztof on 2017-05-23.
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");// ustawienie kodowanie zanków
        response.setCharacterEncoding("UTF-8");

        /*Pobranie wartości z formularza */
        HelloServlet nameUser = new HelloServlet();
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

/*Ustawienie wartości */

        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
        request.setAttribute("email", email);
        request.setAttribute("username", username);
        request.setAttribute("password", password);

/*        RequestDispatcher requestDispatcher = request.getRequestDispatcher("register.jsp?name="+name);
        requestDispatcher.forward(request, response);*/

        validateForm(request, response);
    }

    //walidacja - sprawdzenie czy pola nie są puste
    private void validateForm(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{

        if (Objects.isNull(request.getParameter("name"))
                ||Objects.isNull(request.getParameter("surname"))
                ||Objects.isNull(request.getParameter("email"))
                ||Objects.isNull(request.getParameter("username"))
                ||Objects.isNull(request.getParameter("password"))){

            RequestDispatcher errorDispatcher = request.getRequestDispatcher("register.jsp?error=true");
            errorDispatcher.forward(request, response);
        }else {
            RequestDispatcher successDispatcher = request.getRequestDispatcher("register-success.jsp");
            successDispatcher.forward(request, response);
        }
    }
}
