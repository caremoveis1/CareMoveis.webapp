package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "contato", value = "/contato")
public class ContatoServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String mensagem = req.getParameter("msg");
        String telefone = req.getParameter("telefone");
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem
        System.out.println("Nome: " + nome);
        System.out.println("Email: " + email);
        System.out.println("Mensagem: " + mensagem);
        System.out.println("Telefone: " + telefone);
    }
}
