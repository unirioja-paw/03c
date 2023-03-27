package es.unirioja.servlet;

import com.github.javafaker.Faker;
import es.unirioja.paw.model.Noticia;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NoticiasServlet extends HttpServlet {
    
    private final Faker faker = new Faker(new Locale("es"));
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setAttribute("noticias", mockNoticiaCollection(8));
        
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/noticias.jsp");
        rd.forward(request, response);
    }
    
    private List<Noticia> mockNoticiaCollection(int count) {
        List<Noticia> result = new ArrayList<>();
        for (int i = 0; i < count; i++) {
            Noticia n = mockNoticia();
            result.add(n);
        }
        return result;
    }
    
    private Noticia mockNoticia() {
        Noticia entity = new Noticia();
        entity.setAutor(faker.lebowski().character());
        entity.setTexto(faker.lebowski().quote());
        return entity;
    }
    
}
