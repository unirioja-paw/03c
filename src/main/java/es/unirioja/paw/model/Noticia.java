package es.unirioja.paw.model;

public class Noticia {

    private String autor;
    private String texto;

    public Noticia(String autor, String texto) {
        this.autor = autor;
        this.texto = texto;
    }

    public Noticia() {
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

}
