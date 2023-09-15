package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "transporte", value = "/transporte")
public class TransporteServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String cep = req.getParameter("cep");
        String rua = req.getParameter("rua");
        String num = req.getParameter("num");
        String cidade = req.getParameter("cidade");
        String uf = req.getParameter("uf");
     
        String cep2 = req.getParameter("cep2");
        String rua2 = req.getParameter("rua2");
        String num2 = req.getParameter("num2");
        String cidade2 = req.getParameter("cidade2");
        String uf2 = req.getParameter("uf2");

        String categ = req.getParameter("categ");
        String alt = req.getParameter("alt");
        String larg = req.getParameter("larg");
        String peso = req.getParameter("peso");
        String material = req.getParameter("material");

        // salvar no banco de dados
        // enviar um email para o admin com a mensagem

        System.out.println("CEP da Retirada: " + cep);
        System.out.println("Rua da Retirada: " + rua);
        System.out.println("Numero da Retirada: " + num);
        System.out.println("Cidade da Retirada: " + cidade);
        System.out.println("UF da Retirada: " + uf);

        System.out.println("CEP da Entrega: " + cep2);
        System.out.println("Rua da Entrega: " + rua2);
        System.out.println("Numero da Entrega: "+ num2);
        System.out.println("Cidade da Entrega: " + cidade2);
        System.out.println("UF da Entrega: " + uf2);

        System.out.println("Categoria do Móvel: " + categ);
        System.out.println("Altura do móvel: " + alt);
        System.out.println("Largura do Móvel: " + larg);
        System.out.println("Peso Aproximado: " + peso);
        System.out.println("Material do Móvel: " + material);
    }
}
