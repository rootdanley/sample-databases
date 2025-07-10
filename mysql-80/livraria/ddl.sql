-- Criando a base de dados LIVRARIA
CREATE DATABASE IF NOT EXISTS livraria;

USE livraria;

-- Criando tabela cliente
CREATE TABLE IF NOT EXISTS cliente(
    cod_cliente INT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    rua VARCHAR(200) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    complemento VARCHAR(20) NULL,
    cep VARCHAR(9) NOT NULL,
    cidade VARCHAR(50) DEFAULT 'Natal',
    estado VARCHAR(50) DEFAULT 'Rio Grande do Norte',
    PRIMARY KEY (cod_cliente)
);

-- Criando tabela pessoa_fisica
CREATE TABLE IF NOT EXISTS pessoa_fisica(
    cod_cliente INT NOT NULL,
    rg VARCHAR(11) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    PRIMARY KEY (cod_cliente),
    CONSTRAINT fk_cliente_pessoa_fisica FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente)
);

-- Criando tabela pessoa_juridica
CREATE TABLE IF NOT EXISTS pessoa_juridica(
    cod_cliente INT NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    ie VARCHAR(12) NOT NULL,
    PRIMARY KEY (cod_cliente),
    CONSTRAINT fk_cliente_pessoa_juridica FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente)
);

-- Criando tabela pedido
CREATE TABLE IF NOT EXISTS pedido(
    num_pedido INT AUTO_INCREMENT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_pedido DOUBLE NOT NULL,
    cod_cliente INT NOT NULL,
    PRIMARY KEY (num_pedido),
    CONSTRAINT fk_cliente_pedido FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente)
);

-- Criando tabela editora
CREATE TABLE IF NOT EXISTS editora(
    cod_editora INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (cod_editora)
);

-- Criando tabela telefone_editora
CREATE TABLE IF NOT EXISTS telefone_editora(
    telefone VARCHAR(15) NOT NULL,
    cod_editora INT NOT NULL,
    PRIMARY KEY (cod_editora),
    CONSTRAINT fk_editora_contato_editora FOREIGN KEY (cod_editora) REFERENCES editora (cod_editora)
);

-- Criando tabela livro
CREATE TABLE IF NOT EXISTS livro(
    cod_livro INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    autor VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    isbn VARCHAR(25) NOT NULL,
    ano INT NOT NULL,
    preco DOUBLE,
    cod_editora INT NOT NULL,
    PRIMARY KEY (cod_livro),
    CONSTRAINT fk_editora_livro FOREIGN KEY (cod_editora) REFERENCES editora (cod_editora)
);

-- Criando tabela item_pedido
CREATE TABLE IF NOT EXISTS item_pedido(
    cod_livro INT NOT NULL,
    num_pedido INT NOT NULL,
    quantidade_item INT NOT NULL,
    valor_item DOUBLE NOT NULL,
    PRIMARY KEY (cod_livro, num_pedido),
    CONSTRAINT fk_livro_item_pedido FOREIGN KEY (cod_livro) REFERENCES livro (cod_livro),
    CONSTRAINT fk_pedido_item_pedido FOREIGN KEY (num_pedido) REFERENCES pedido (num_pedido)
);

-- Criando tabela estoque
CREATE TABLE IF NOT EXISTS estoque(
    cod_livro INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (cod_livro),
    CONSTRAINT fk_livro_estoque FOREIGN KEY (cod_livro) REFERENCES livro (cod_livro)
);
