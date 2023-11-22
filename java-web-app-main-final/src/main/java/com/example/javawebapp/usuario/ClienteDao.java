package com.example.javawebapp.usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import at.favre.lib.crypto.bcrypt.BCrypt;
import com.example.javawebapp.database.Conexao;

public class ClienteDao {
    public static Cliente cadastrar(String nome, String cpf, String tel, String email, String senha) {
        Cliente cliente = null;
        String hashSenha = BCrypt.withDefaults().hashToString(12, senha.toCharArray());
        String sql = "INSERT INTO clientes (cpf, nome, telefone, email, senha) VALUES (?, ?, ?, ?, ?);";
        
        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        ) {
            statement.setString(1, cpf);
            statement.setString(2, nome);
            statement.setString(3, tel);
            statement.setString(4, email);
            statement.setString(5, hashSenha);
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();

            if(rs.next()) {
                cliente = new Cliente(nome, cpf, tel, email, hashSenha);
            }

            rs.close();

            return cliente;  
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // public static List<Cliente> listarTodos() {
    //     String sql = "SELECT * FROM clientes;";
    //     List<Cliente> clientes = new ArrayList<>();

    //     try (
    //         Connection connection = Conexao.getConnection();
    //         Statement statement = connection.createStatement();
    //         ResultSet rs = statement.executeQuery(sql);
    //     ) {
    //         while(rs.next()) {
    //             clientes.add(
    //                 new Cliente(
    //                     rs.getString("cpf"),
    //                     rs.getString("nome"), 
    //                     rs.getString("telefone"),
    //                     rs.getString("email"), 
    //                     rs.getString("senha")
    //                 )
    //             );
    //         }
    //     } catch (Exception e) {
    //         e.printStackTrace();
    //         return clientes;
    //     } 
    //     return clientes;
    // }

    public static Cliente buscarPorCpf(String cpf) {
        String sql = "SELECT * FROM clientes WHERE cpf = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, cpf);;
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Cliente(
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("tel"),
                    rs.getString("email"),
                    rs.getString("senha")
                );
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    public static Cliente buscarPorEmail(String email) {
        String sql = "SELECT * FROM clientes WHERE email = ?;";
        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Cliente(
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("tel"),
                    rs.getString("email"),
                    rs.getString("senha")
                );
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    public static Boolean login(String email, String senha) {
        Cliente cliente = buscarPorEmail(email);
        if (cliente != null) {
            BCrypt.Result result = BCrypt.verifyer().verify(senha.toCharArray(), cliente.getSenha());
            return result.verified;
        }
        return false;
    }

    public static Boolean existeComEmail(String email) {
        return buscarPorEmail(email) != null;
    }
}
