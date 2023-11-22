package com.example.javawebapp.forms;

import org.hibernate.validator.constraints.br.CPF;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class CadastroClienteForm {
    @NotNull 
    @NotBlank
    private String nome;
    @CPF
    @NotNull 
    @NotBlank
    private String cpf;
    @NotNull 
    @NotBlank
    private String tel;
    @NotNull 
    @NotBlank 
    @Email
    private String email;
    @NotNull 
    @NotBlank 
    @Size(min = 3, max = 20)
    private String senha;

    public CadastroClienteForm(String nome, String cpf, String tel, String email, String senha) {
        this.nome = nome;
        this.cpf = cpf;
        this.tel = tel;
        this.email = email;
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
