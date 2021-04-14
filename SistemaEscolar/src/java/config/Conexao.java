package config;

import java.sql.*;

/**
 *
 * @author jonas
 */
public class Conexao {
    Connection con;
    String url="jdbc:mysql://localhost:3306/bd_sistemaescolar";
    String user="root";
    String pass="";
    public Connection Conexao(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
            System.out.println("sucesso");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("falha na conexao");
        }
        return con;
    }
    
}
