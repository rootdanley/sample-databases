CREATE DATABASE carga_teste;
USE carga_teste;

CREATE TABLE dados_clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(150),
    documento VARCHAR(50),
    observacoes TEXT,
    criado_em DATETIME DEFAULT NOW()
);
