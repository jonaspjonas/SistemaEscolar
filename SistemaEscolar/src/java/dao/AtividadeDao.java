package dao;

import config.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Atividade;

public class AtividadeDao {
    Conexao con = new Conexao();
    Connection cone;
    PreparedStatement ps;
    ResultSet rs;
    
    
    public void adicionar(Atividade atv){
        String sql = "insert into atividades(titulo, autor, descricao, datainicio, datafim, comando)values(?,?,?,?,?,?)";
        try {
            cone = con.Conexao();
            ps = cone.prepareStatement(sql);
            ps.setString(1, atv.getTitulo());
            ps.setString(2, atv.getAutor());
            ps.setString(3, atv.getDescricao());
            ps.setString(4, atv.getDatainicio());
            ps.setString(5, atv.getDatafim());
            //ps.setDate(4, new java.sql.Date(atv.getDatainicio().getTime()));
            //ps.setDate(5, new java.sql.Date(atv.getDatafim().getTime()));
            ps.setString(6, atv.getComando());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            
        }
    }
}
