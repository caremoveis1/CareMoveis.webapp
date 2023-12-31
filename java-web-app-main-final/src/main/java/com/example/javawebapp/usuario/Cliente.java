package com.example.javawebapp.usuario;

public class Cliente {
    private String nome;
    private String cpf;
    private String tel;

    private String email;
    private String senha;
    
    public Cliente(String nome, String cpf, String tel, String email, String senha) {
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
