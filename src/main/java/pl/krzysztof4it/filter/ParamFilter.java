package pl.krzysztof4it.filter;

import pl.krzysztof4it.beans.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by Krzysztof on 2017-05-24.
 */
@WebFilter("/*") //deklaracja filtra dla wszystkich elementów
public class ParamFilter implements Filter{ // klasa filtra implmentuje Filtr i 3 metody: init, doFilter, destroy
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String nameUser = servletRequest.getParameter("name");
        System.out.println("Filter param " + nameUser);
        System.out.println("Serwer: " + servletRequest.getServerName());
        System.out.println("Content-Type: " + servletRequest.getContentType());

        System.out.println("Local adress: " + servletRequest.getLocalAddr());
        System.out.println("Local Port: " + servletRequest.getLocalPort());
        System.out.println("Remonte port: " + servletRequest.getRemotePort());
        System.out.println("Encoding: " + servletRequest.getCharacterEncoding());


        String username = servletRequest.getParameter("username");
        servletRequest.setAttribute("name1", nameUser);
        servletRequest.setAttribute("username", username);

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
