
-- Criação do DATABASE bdbiblioteca

CREATE DATABASE bdbiblioteca;
USE bdbiblioteca;


-- Criação da Tabela ACERVO

CREATE TABLE acervo(
	ace_isbn varchar(30) not null,
    ace_titulo varchar(60) not null,
    ace_ano integer not null,
    are_codigo integer not null,
    tip_codigo integer not null,
    edi_codigo integer not null,
    ace_valor numeric not null,
    PRIMARY KEY(ace_isbn)
);


-- Criação da Tabela EDITORA

CREATE TABLE editora(
	edi_codigo integer NOT NULL,
    edi_nome varchar(30) NOT NULL,
    edi_email varchar(60) NOT NULL,
    edi_representante varchar(60) NOT NULL,
    edi_site varchar(60) NOT NULL,
    edi_telefone varchar(30) NOT NULL,
    PRIMARY KEY(edi_codigo)
);


-- Criação da Tabela ASSUNTO

CREATE TABLE assunto(
	ass_codigo integer NOT NULL,
    ass_nome varchar(50) NOT NULL,
    PRIMARY KEY(ass_codigo)
);


-- Criação da Tabela ACERVO_ASSUNTO

CREATE TABLE acervo_assunto(
	ass_codigo integer NOT NULL,
    ace_isbn varchar(30) NOT NULL,
    FOREIGN KEY(ass_codigo) REFERENCES assunto(ass_codigo),
    FOREIGN KEY(ace_isbn) REFERENCES acervo(ace_isbn)
);


-- Criação da Tabela TIPO

CREATE TABLE tipo(
	tip_codigo integer NOT NULL,
    tip_nome varchar(50) NOT NULL,
    PRIMARY KEY(tip_codigo)
);


-- Criação da Tabela AREA

CREATE TABLE area(
	are_codigo integer NOT NULL,
    are_nome varchar(50) NOT NULL,
    PRIMARY KEY(are_codigo)
);


-- Criação da Tabela EMPRESTIMO

CREATE TABLE emprestimo(
	emp_numero integer NOT NULL,
   	emp_datasaida varchar(50) NOT NULL,
    emp_dataprevista varchar(50) NOT NULL,
    emp_dataretorno varchar(50) NOT NULL,
    ace_isbn varchar(30) NOT NULL,
    usu_codigo integer NOT NULL,
    fun_re integer NOT NULL,
    PRIMARY KEY(emp_numero)
);


-- Criação da Tabela AUTOR

CREATE TABLE autor(
	aut_cpf varchar(14) NOT NULL,
   	aut_email varchar(60) NOT NULL,
    aut_nome varchar(60) NOT NULL,
    aut_celular varchar(30) NOT NULL,
    PRIMARY KEY(aut_cpf)
);


-- Criação da Tabela ACERVO_AUTOR

CREATE TABLE acervo_autor(
	aut_cpf varchar(14) NOT NULL,
   	ace_isbn varchar(30) NOT NULL,
   	FOREIGN KEY(aut_cpf) REFERENCES autor(aut_cpf),
    FOREIGN KEY(ace_isbn) REFERENCES acervo(ace_isbn)
);


-- Criação da Tabela USUARIO

CREATE TABLE usuario(
	usu_codigo integer NOT NULL,
   	usu_nome varchar(60) NOT NULL,
    usu_email varchar(60) NOT NULL,
    usu_celular varchar(30) NOT NULL,
    usu_numerodoc varchar(30) NOT NULL,
    usu_cidade varchar(30) NOT NULL,
    usu_documento varchar(30) NOT NULL,
    usu_estado varchar(02) NOT NULL,
    tpu_codigo integer NOT NULL,
   	PRIMARY KEY(usu_codigo)
);


-- Criação da Tabela TIPOUSUARIO

CREATE TABLE tipousuario(
	tpu_codigo integer NOT NULL,
    tpu_descricao varchar(30) NOT NULL,
    tpu_quantidade integer NOT NULL,
   	tpu_prazo integer NOT NULL,
    tpu_renovacao integer NOT NULL,
   	PRIMARY KEY(tpu_codigo)
);


-- Criação da Tabela FUNCIONARIO

CREATE TABLE funcionario(
	fun_re integer NOT NULL,
    fun_nome varchar(60) NOT NULL,
    fun_datanasc date NOT NULL,
   	PRIMARY KEY(fun_re)
);


-- Criação da Tabela FUN_TEL

CREATE TABLE func_tel(
	fun_re integer NOT NULL,
    fct_numero varchar(15) NOT NULL,
   	FOREIGN KEY(fun_re) REFERENCES funcionario(fun_re)
);


-- Criação da Tabela FUN_EMAIL

CREATE TABLE func_email(
	fun_re integer NOT NULL,
    fce_email varchar(60) NOT NULL,
   	FOREIGN KEY(fun_re) REFERENCES funcionario(fun_re)
);


-- Alter Table de  ACERVO

ALTER TABLE acervo ADD FOREIGN KEY(edi_codigo) REFERENCES editora(edi_codigo);
ALTER TABLE acervo ADD FOREIGN KEY(are_codigo) REFERENCES area(are_codigo);
ALTER TABLE acervo ADD FOREIGN KEY(tip_codigo) REFERENCES tipo(tip_codigo);

-- Alter Table de EMPRESTIMO 

ALTER TABLE emprestimo ADD FOREIGN KEY(ace_isbn) REFERENCES acervo(ace_isbn);
ALTER TABLE emprestimo ADD FOREIGN KEY(usu_codigo) REFERENCES usuario(usu_codigo);
ALTER TABLE emprestimo ADD FOREIGN KEY(fun_re) REFERENCES funcionario(fun_re);

-- Alter Table de USUARIO
ALTER TABLE usuario ADD FOREIGN KEY(tpu_codigo) REFERENCES tipousuario(tpu_codigo);


-- Insert Into ASSUNTO
INSERT INTO assunto(ass_codigo, ass_nome) VALUES (1, "Ação");
INSERT INTO assunto(ass_codigo, ass_nome) VALUES (2, "Comédia");
INSERT INTO assunto(ass_codigo, ass_nome) VALUES (3, "Terror");
INSERT INTO assunto(ass_codigo, ass_nome) VALUES (4, "Ficção");
INSERT INTO assunto(ass_codigo, ass_nome) VALUES (5, "História");


-- Insert Into TIPO
INSERT INTO tipo(tip_codigo, tip_nome) VALUES (1, "Livro");
INSERT INTO tipo(tip_codigo, tip_nome) VALUES (2, "Jornal");
INSERT INTO tipo(tip_codigo, tip_nome) VALUES (3, "Revista");
INSERT INTO tipo(tip_codigo, tip_nome) VALUES (4, "Vídeo");
INSERT INTO tipo(tip_codigo, tip_nome) VALUES (5, "Disco");


-- Insert Into AREA
INSERT INTO area (are_codigo, are_nome) VALUES(1, "Informática");
INSERT INTO area (are_codigo, are_nome) VALUES(2, "Ciência");
INSERT INTO area (are_codigo, are_nome) VALUES(3, "História");
INSERT INTO area (are_codigo, are_nome) VALUES(4, "Exatas");
INSERT INTO area (are_codigo, are_nome) VALUES(5, "Humanas");


-- Insert Into EDITORA
INSERT INTO editora (edi_codigo, edi_nome, edi_email, edi_representante, edi_site, edi_telefone) 
VALUES(1, "Cucamonga", "cucamonga@gmail.com", "Charlles Henrique Pédia", "www.cucamonga.com.br", "(12) 90879-0987");
INSERT INTO editora (edi_codigo, edi_nome, edi_email, edi_representante, edi_site, edi_telefone) 
VALUES(2, "Tozindosalgado", "tiozin@gmail.com", "Tio do Salgado", "www.tiodosalgado.com.br", "(34) 98765-1231");
INSERT INTO editora (edi_codigo, edi_nome, edi_email, edi_representante, edi_site, edi_telefone) 
VALUES(3, "Maquinadeguerra", "maquina@gmail.com", "Maquina de Guerra", "www.maqunino.com.br", "(13) 99242-1213");
INSERT INTO editora (edi_codigo, edi_nome, edi_email, edi_representante, edi_site, edi_telefone) 
VALUES(4, "CR7-INDUSTRY", "omirror@gmail.com", "Cristiano Ronaldo", "www.cris07.com.br", "(11) 91213-0345");
INSERT INTO editora (edi_codigo, edi_nome, edi_email, edi_representante, edi_site, edi_telefone) 
VALUES(5, "XANGAIXENGO", "xinxon@gmail.com", "Xina", "www.xinadopastel.com.br", "(12) 92432-1231");


-- Insert Into ACERVO
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("1234567898-7896321497", "Sebo de Carneiro", 1998, 3, 3, 5, 100.00);
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("6434567898-1336321497", "Java - Peter Jandln", 2011, 1, 1, 1, 74);
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("3234567898-6436321490", "A Trança do Rei Careca", 2021, 3, 4, 2, 390);
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("7654567898-980321490", "Receitas de Miojo", 2012, 2, 1, 4, 45);
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("3689567898-9006321490", "O calculo do 2+2", 2016, 4, 5, 5, 60);
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("0909067898-1234121490", "Album da Copa completo", 2022, 5, 2, 4, 60);
INSERT INTO acervo (ace_isbn, ace_titulo, ace_ano, are_codigo, tip_codigo, edi_codigo, ace_valor) 
VALUES ("8764567898-9006321490", "CD de Samba", 2009, 1, 5, 3, 60);


-- Insert Into ACERVO_ASSUNTO
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(2, "1234567898-7896321497");
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(4, "6434567898-1336321497");
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(2, "3234567898-6436321490");
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(5, "7654567898-980321490");
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(3, "3689567898-9006321490");
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(1, "0909067898-1234121490");
INSERT INTO acervo_assunto (ass_codigo, ace_isbn) VALUES(1, "8764567898-9006321490");


-- Insert Into TIPOUSUARIO 
INSERT INTO tipousuario (tpu_codigo, tpu_descricao, tpu_quantidade, tpu_prazo, tpu_renovacao) 
VALUES(00, "Graduação", 5, 256, 5);
INSERT INTO tipousuario (tpu_codigo, tpu_descricao, tpu_quantidade, tpu_prazo, tpu_renovacao) 
VALUES(01, "Doutorado", 5, 256, 1);
INSERT INTO tipousuario (tpu_codigo, tpu_descricao, tpu_quantidade, tpu_prazo, tpu_renovacao) 
VALUES(02, "Fundamental", 5, 24, 2);
INSERT INTO tipousuario (tpu_codigo, tpu_descricao, tpu_quantidade, tpu_prazo, tpu_renovacao) 
VALUES(03, "Médio", 5, 48, 3);
INSERT INTO tipousuario (tpu_codigo, tpu_descricao, tpu_quantidade, tpu_prazo, tpu_renovacao) 
VALUES(04, "Mestrado", 20, 256, 4);


-- Insert Into USUARIO 
INSERT INTO usuario (usu_codigo, usu_nome, usu_email, usu_celular, usu_numerodoc, usu_cidade, usu_documento, usu_estado, tpu_codigo)
VALUES (01, "Erick", "erick@gmail.com", "(11) 98240-1233", "789.456.789-98", "Sudão do Sul", "78.985.98-9", "SP", 01);
INSERT INTO usuario (usu_codigo, usu_nome, usu_email, usu_celular, usu_numerodoc, usu_cidade, usu_documento, usu_estado, tpu_codigo)
VALUES (02, "Adriel", "adriel@gmail.com", "(11) 98741-5386", "987.654.321.00", "No seu coração bb", "56.325.69-8", "PE", 04);
INSERT INTO usuario (usu_codigo, usu_nome, usu_email, usu_celular, usu_numerodoc, usu_cidade, usu_documento, usu_estado, tpu_codigo)
VALUES (03, "Henrique", "ricksant@gmail.com", "(11) 95122-7901", "458.826.468-04", "Bragança Paulista", "87.546.98-9", "SP", 02);
INSERT INTO usuario (usu_codigo, usu_nome, usu_email, usu_celular, usu_numerodoc, usu_cidade, usu_documento, usu_estado, tpu_codigo)
VALUES (04, "La-Salvia", "lasalvia@gmail.com", "(11) 98745-6585", "987.489.257-89", "Haiti", "65.325.87-7", "BH", 00);
INSERT INTO usuario (usu_codigo, usu_nome, usu_email, usu_celular, usu_numerodoc, usu_cidade, usu_documento, usu_estado, tpu_codigo)
VALUES (05, "Heloyse", "heloyse@gmail.com", "(11) 97459-9321", "321.587.987-06", "Polonia", "98.654.23-1", "PA", 04);
INSERT INTO usuario (usu_codigo, usu_nome, usu_email, usu_celular, usu_numerodoc, usu_cidade, usu_documento, usu_estado, tpu_codigo)
VALUES (06, "Messi", "messi@gmail.com", "(11) 98523-9654", "123.654.897-10", "Marrocos", "14.654.98-8", "RJ", 01);












