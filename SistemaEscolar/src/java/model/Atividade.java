package model;

public class Atividade {
    private int id;
    private String titulo;
    private String autor;
    private String descricao;
    private String datainicio;
    private String datafim;
    private String comando;

    public Atividade() {
    }

    public Atividade(int id, String titulo, String autor, String descricao, String datainicio, String datafim, String comando) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.descricao = descricao;
        this.datainicio = datainicio;
        this.datafim = datafim;
        this.comando = comando;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDatainicio() {
        return datainicio;
    }

    public void setDatainicio(String datainicio) {
        this.datainicio = datainicio;
    }

    public String getDatafim() {
        return datafim;
    }

    public void setDatafim(String datafim) {
        this.datafim = datafim;
    }

    public String getComando() {
        return comando;
    }

    public void setComando(String comando) {
        this.comando = comando;
    }

    @Override
    public String toString() {
        return super.toString(); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    
}
