package es.unirioja.servlet;

import com.github.javafaker.Faker;
import es.unirioja.paw.model.Persona;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

    private Faker faker = new Faker(new Locale("es"));

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("persona", mockPersona());

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/hello.jsp");
        rd.forward(request, response);
    }

    private Persona mockPersona() {
        Persona p = new Persona();
        p.setNombre(faker.gameOfThrones().character());
        p.setSexo(faker.letterify("?", true));

        Set<String> deportes = new HashSet<>();
        for (int i = 0; i < 5; i++) {
            deportes.add(faker.esports().game());
        }
        p.setDeportes(new ArrayList<>(deportes));
        return p;
    }

}
