package com.example.javawebapp;

import java.io.IOException;
import java.util.Set;

import com.example.javawebapp.forms.CadastroClienteForm;
import com.example.javawebapp.validators.ValidatorUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.ConstraintViolation;

@WebServlet(name = "cadastroClienteServlet", value = "/cadastroCliente")
public class CadastroClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.sendRedirect("cadastroCliente.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String cpf = req.getParameter("cpf");
        String tel = req.getParameter("tel");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        CadastroClienteForm cadastroForm = new CadastroClienteForm(nome, cpf, tel, email, senha);
        
        Set<ConstraintViolation<CadastroClienteForm>> violations = ValidatorUtil.validateObject(cadastroForm);
        
        if (violations.isEmpty()) {
            res.sendRedirect("login.jsp");
        } else {
            req.setAttribute("cadastroForm", cadastroForm);
            req.setAttribute("violations", violations);
            req.getRequestDispatcher("cadastroCliente.jsp").forward(req, res);
        }
    }
    
   
}
