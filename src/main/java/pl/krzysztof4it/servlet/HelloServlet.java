package pl.krzysztof4it.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Krzysztof on 2017-05-23.
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");// ustawienie kodowanie zanków
        response.setCharacterEncoding("UTF-8");

        PrintWriter writer = response.getWriter(); //
        String nameUser = request.getParameter("name");

        request.setAttribute("serwer", "Tomcat 7.0.78");
        request.setAttribute("ide", "InteliJ IDEA 2017.13");
        request.setAttribute("sdk", "SDK 1.8");
        request.setAttribute("browser", "Chrome ver 49");


        RequestDispatcher requestDispatcher = request.getRequestDispatcher("hello.jsp"); // przekierowanie na jsp
        requestDispatcher.forward(request,response);

    }
}
