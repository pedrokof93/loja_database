CREATE DATABASE loja_database;

USE loja_database;

CREATE TABLE Vendedores(
	id_vendedores INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(45),
    contato VARCHAR(20)
);

CREATE TABLE Tipo_produto(
	id_tipo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(20) NOT NULL
);

CREATE TABLE Produtos(
	id_produtos INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    decricao VARCHAR(200) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tipo_id INT NOT NULL,
    FOREIGN KEY (tipo_id) REFERENCES Tipo_produto(id_tipo)
);

CREATE TABLE Clientes(
	id_cliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    contato VARCHAR(20) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    ramo VARCHAR(50) NOT NULL
);

CREATE TABLE Vendas (
	produto_id INT NOT NULL,
    vendedor_id INT NOT NULL,
    cliente_id INT NULL,
    data_compra DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    cod_vendas VARCHAR(15) NOT NULL,
    comicao DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY(produto_id) REFERENCES Produtos(id_produtos),
    FOREIGN KEY(vendedor_id) REFERENCES Vendedores(id_vendedores),
    FOREIGN KEY(cliente_id) REFERENCES Clientes(id_cliente)
);
