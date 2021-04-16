package dao;

import config.Conexao;
import java.sql.*;
import model.Professor;

public class ProfessorDao {
    
    Conexao con = new Conexao();
    Connection cone;
    PreparedStatement ps;
    ResultSet rs;
    
    public Professor validar(String email, String senha){
        Professor prof = new Professor();
        String sql="select * from professores where email=? and senha=?";
        
        cone = con.Conexao();
        
        try {
        ps = cone.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, senha);
        rs = ps.executeQuery();
        while(rs.next()){
            prof.setId(rs.getInt("id"));
            prof.setEmail(rs.getString("email"));
            prof.setSenha(rs.getString("senha"));
            prof.setNome(rs.getString("nome"));
        }
        } catch (SQLException e) {
        }
        return prof;
    }

    
    public void adicionar(Professor prof){
        String sql = "insert into professores(nome, email, telefone, disciplina, senha)values(?,?,?,?,?)";
        try {
            cone = con.Conexao();
            ps = cone.prepareStatement(sql);
            ps.setString(1, prof.getNome());
            ps.setString(2, prof.getEmail());
            ps.setString(3, prof.getTelefone());
            ps.setString(4, prof.getDisciplina());
            ps.setString(5, prof.getSenha());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            
        }
    }
    
}