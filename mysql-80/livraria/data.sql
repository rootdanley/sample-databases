-- Inserindo registros na tabela cliente
INSERT INTO cliente (tipo, nome, email, telefone, rua, numero, complemento, cep, cidade, estado) VALUES
('Pessoa Física', 'Pedro Lucas Lima', 'imelo@bol.com.br', '8189695884', 'Distrito Vitória Moura', '49', NULL, '26101-742', 'Natal', 'Rio Grande do Norte'),
('Pessoa Jurídica', 'Farias Ltda.', 'nascimentothiago@cavalcanti.org', '02166086172', 'Estrada Heloísa Pinto', '52', NULL, '87795-662', 'Natal', 'Rio Grande do Norte'),
('Pessoa Física', 'Isabella Caldeira', 'rda-paz@rocha.org', '01157566057', 'Parque Arthur Ribeiro', '777', NULL, '42012-251', 'Natal', 'Rio Grande do Norte'),
('Pessoa Física', 'Luiz Henrique Lopes', 'sarah44@das.br', '02124888982', 'Viela Maria Cecília da Cruz', '51', NULL, '67005683', 'Natal', 'Rio Grande do Norte'),
('Pessoa Física', 'Ana Beatriz Vieira', 'gabrielly15@silveira.br', '3107249383', 'Condomínio Guilherme Duarte', '15', NULL, '04081515', 'Natal', 'Rio Grande do Norte'),
('Pessoa Física', 'Carlos Eduardo', 'carloseduardo@gmail.com', '8512345678', 'Rua das Flores', '12', NULL, '60000-000', 'Natal', 'Rio Grande do Norte'),
('Pessoa Jurídica', 'Empresa X', 'contato@empresax.com', '011912345678', 'Avenida Brasil', '456', 'Sala 101', '70000-000', 'Natal', 'Rio Grande do Norte'),
('Pessoa Física', 'Fernanda Silva', 'fernandasilva@yahoo.com', '8234567890', 'Praça Central', '789', NULL, '58000-000', 'Natal', 'Rio Grande do Norte'),
('Pessoa Física', 'Juliana Almeida', 'juliana@hotmail.com', '8487654321', 'Rua da Paz', '321', NULL, '59000-000', 'Natal', 'Rio Grande do Norte');

-- Inserindo registros na tabela pessoa_fisica
INSERT INTO pessoa_fisica (cod_cliente, rg, cpf) VALUES
(1, '123456789', '123.456.789-09'),
(3, '987654321', '987.654.321-00'),
(4, '192837465', '192.837.465-12'),
(5, '564738291', '564.738.291-99'),
(6, '654321987', '654.321.987-89'),
(8, '321654987', '321.654.987-78');

-- Inserindo registros na tabela pessoa_juridica
INSERT INTO pessoa_juridica (cod_cliente, cnpj, ie) VALUES
(2, '12.345.678/0001-90', '123456789012'),
(7, '98.765.432/0001-21', '987654321098');

-- Inserindo registros na tabela editora
INSERT INTO editora (nome, contato, email) VALUES
('Editora Alpha', 'Marcos Silva', 'marcos@alphaeditora.com'),
('Beta Books', 'Júlia Andrade', 'julia@betabooks.com'),
('Gamma Editores', 'Carlos Souza', 'carlos@gamma.com'),
('Delta Publicações', 'Fernando Lima', 'fernando@deltapub.com'),
('Epsilon Livros', 'Sofia Andrade', 'sofia@epsilonlivros.com');

-- Inserindo registros na tabela livro
INSERT INTO livro (nome, autor, categoria, isbn, ano, preco, cod_editora) VALUES
('Aprendendo SQL', 'Maria Fernanda', 'Tecnologia', '978-3-16-148410-0', 2020, 59.90, 1),
('Python para Todos', 'João Pedro', 'Tecnologia', '978-1-23-456789-7', 2018, 45.00, 1),
('Histórias de Ficção', 'Ana Clara', 'Ficção', '978-0-19-852663-6', 2021, 75.50, 2),
('Ciência Moderna', 'Lucas Braga', 'Ciência', '978-3-16-148410-1', 2022, 89.90, 3),
('Introdução à Filosofia', 'Clara Medeiros', 'Filosofia', '978-3-16-148410-2', 2020, 69.90, 2);

-- Inserindo registros na tabela estoque
INSERT INTO estoque (cod_livro, quantidade) VALUES
(1, 50),
(2, 30),
(3, 40),
(4, 20),
(5, 15);

-- Inserindo registros na tabela pedido
INSERT INTO pedido (data_pedido, valor_pedido, cod_cliente) VALUES
('2023-01-15 10:30:00', 150.00, 1),
('2023-01-20 14:45:00', 90.00, 2),
('2023-01-25 09:00:00', 200.00, 3),
('2023-02-01 11:30:00', 120.00, 4),
('2023-02-05 16:45:00', 75.00, 5);

-- Inserindo registros na tabela item_pedido
INSERT INTO item_pedido (cod_livro, num_pedido, quantidade_item, valor_item) VALUES
(1, 1, 2, 119.80),
(2, 1, 1, 45.00),
(3, 2, 1, 75.50),
(1, 3, 3, 179.70),
(4, 4, 1, 89.90),
(5, 5, 1, 69.90);
