package com.example.javawebapp;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name="cadastro", value="/cadastro")
public class CadastroServlet extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        //Dados Pessoais Cliente
        String nome = req.getParameter("nome");
        String cpf = req.getParameter("cpf");
        String tel = req.getParameter("tel");

        //Dados de Acesso Cliente
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        String confirmar_senha = req.getParameter("confirmar_senha");

        //Dados Pessoais Motorista
        String nomeMoto = req.getParameter("nomeMoto");
        String cpfMoto = req.getParameter("cpfMoto");
        String telMoto = req.getParameter("telMoto");

        //Dados de Acesso Motorista
        String emailMoto = req.getParameter("emailMoto");
        String senhaMoto = req.getParameter("senhaMoto");
        String confirmar_senhaMoto = req.getParameter("confirmar_senhaMoto");

        //Dados Bancários
        String numero_conta = req.getParameter("numero_conta");
        String agencia = req.getParameter("agencia");
        String nome_titular = req.getParameter("nome_titular");
        String cpf_titular = req.getParameter("cpf_titular");
        
        //Dados da CNH
        String numero_cnh = req.getParameter("numero_cnh");
        String categoria_cnh = req.getParameter("categoria_cnh");
        String data_emissao_cnh = req.getParameter("data_emissao_cnh");
        // Date data_emissao_cnh =  new Date(req.getParameter("data_emissao_cnh"));
        String data_validade_cnh = req.getParameter("data_validade_cnh");
        //Date data_validade_cnh = new Date(req.getParameter("data_validade_cnh"));

        //Dados do Caminhão
        String marca_caminhao = req.getParameter("marca_caminhao");
        String modelo_caminhao = req.getParameter("modelo_caminhao");
        String ano_caminhao = req.getParameter("ano_caminhao");
        String placa_camihao = req.getParameter("placa_camihao");
        String chassi = req.getParameter("chassi");

        // salvar no banco de dados
        // enviar um email para o admin com a mensagem

        System.out.println(nome);
        System.out.println(cpf);
        System.out.println(tel);

        System.out.println(email);
        System.out.println(senha);
        System.out.println(confirmar_senha);

        System.out.println(nomeMoto);
        System.out.println(cpfMoto);
        System.out.println(telMoto);

        System.out.println(emailMoto);
        System.out.println(senhaMoto);
        System.out.println(confirmar_senhaMoto);

        System.out.println(numero_conta);
        System.out.println(agencia);
        System.out.println(nome_titular);
        System.out.println(cpf_titular);

        System.out.println(numero_cnh);
        System.out.println(categoria_cnh);
        System.out.println(data_emissao_cnh);
        System.out.println(data_validade_cnh);

        System.out.println(marca_caminhao);
        System.out.println(modelo_caminhao);
        System.out.println(ano_caminhao);
        System.out.println(placa_camihao);
        System.out.println(chassi);

    }
    
}
