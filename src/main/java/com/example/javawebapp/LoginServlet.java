package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
       
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
        System.out.println("Email: " + email);
        System.out.println("Senha: " + senha);
    }
}
