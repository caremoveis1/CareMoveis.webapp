package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "redefinirSenha", value = "/redefinirSenha")
public class RedefinirSenhaServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        String email = req.getParameter("email");
        String cod = req.getParameter("codigo");
        String senha = req.getParameter("senha");
        String confirma = req.getParameter("confirmaSenha");
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
        System.out.println("Email: " + email);
        System.out.println("Codigo: " + cod);
        System.out.println("Senha: " + senha);
        System.out.println("Confirmacao da Senha: " + confirma);
    }
}
