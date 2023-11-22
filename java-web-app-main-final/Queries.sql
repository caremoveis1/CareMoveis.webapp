CREATE TABLE clientes (
	cpf CHAR(11) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    telefone CHAR(11) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (cpf)
);