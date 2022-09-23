-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Set-2022 às 21:33
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdbiblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acervo`
--

CREATE TABLE `acervo` (
  `ace_isbn` varchar(20) NOT NULL,
  `ace_titulo` varchar(60) NOT NULL,
  `ace_ano` int(11) NOT NULL,
  `are_codigo` int(11) NOT NULL,
  `tip_codigo` int(11) NOT NULL,
  `edi_codigo` int(11) NOT NULL,
  `ace_valor` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `acervo`
--

INSERT INTO `acervo` (`ace_isbn`, `ace_titulo`, `ace_ano`, `are_codigo`, `tip_codigo`, `edi_codigo`, `ace_valor`) VALUES
('0909067898-123412149', 'Album da Copa completo', 2022, 5, 2, 4, '60'),
('0923887568-098137981', 'Planetas e seus Cálcuos', 2022, 2, 5, 4, '250'),
('1234567898-789632149', 'Sebo de Carneiro', 1998, 3, 3, 5, '100'),
('1319309871-580264129', 'Enciclopédia do Banco de Dados', 2020, 1, 1, 4, '120'),
('3234567898-643632149', 'A Trança do Rei Careca', 2021, 3, 4, 2, '390'),
('3689567898-900632149', 'O calculo do 2+2', 2016, 4, 5, 5, '60'),
('6434567898-133632149', 'Java - Peter Jandln', 2011, 1, 1, 1, '74'),
('7654567898-980321490', 'Receitas de Miojo', 2012, 2, 1, 4, '45'),
('8763209876-678540981', 'Histórias de Terro para Crianças Malcriadas\r\n', 2014, 3, 3, 3, '50'),
('8764567898-900632149', 'CD de Samba', 2009, 1, 5, 3, '60');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acervo_assunto`
--

CREATE TABLE `acervo_assunto` (
  `ass_codigo` int(11) NOT NULL,
  `ace_isbn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `acervo_assunto`
--

INSERT INTO `acervo_assunto` (`ass_codigo`, `ace_isbn`) VALUES
(2, '1234567898-789632149'),
(4, '6434567898-133632149'),
(2, '3234567898-643632149'),
(5, '7654567898-980321490'),
(3, '3689567898-900632149'),
(1, '0909067898-123412149'),
(1, '8764567898-900632149'),
(3, '8763209876-678540981'),
(5, '0923887568-098137981'),
(4, '1319309871-580264129');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acervo_autor`
--

CREATE TABLE `acervo_autor` (
  `aut_cpf` varchar(14) NOT NULL,
  `ace_isbn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `acervo_autor`
--

INSERT INTO `acervo_autor` (`aut_cpf`, `ace_isbn`) VALUES
('78.651.41-8', '1234567898-789632149'),
('12.564.57-8', '6434567898-133632149'),
('87.588.98-1', '3234567898-643632149'),
('63.425.78-5', '7654567898-980321490'),
('36.032.47-9', '3689567898-900632149'),
('12.788.46-8', '0909067898-123412149'),
('25.987.79-7', '8764567898-900632149'),
('78.654.78-2', '0923887568-098137981'),
('65.214.89-3', '1319309871-580264129'),
('99.235.89-4', '8763209876-678540981');

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `are_codigo` int(11) NOT NULL,
  `are_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`are_codigo`, `are_nome`) VALUES
(1, 'Informática'),
(2, 'Ciência'),
(3, 'História'),
(4, 'Exatas'),
(5, 'Humanas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assunto`
--

CREATE TABLE `assunto` (
  `ass_codigo` int(11) NOT NULL,
  `ass_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `assunto`
--

INSERT INTO `assunto` (`ass_codigo`, `ass_nome`) VALUES
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Terror'),
(4, 'Ficção'),
(5, 'História');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `aut_cpf` varchar(14) NOT NULL,
  `aut_email` varchar(60) NOT NULL,
  `aut_nome` varchar(60) NOT NULL,
  `aut_celular` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`aut_cpf`, `aut_email`, `aut_nome`, `aut_celular`) VALUES
('12.564.57-8', 'henriqr@gmail.com', 'Henrique Santana', '(11) 98745-8795'),
('12.788.46-8', 'ruan@gmail.com', 'Raun Martins', '(11) 95645-2145'),
('25.987.79-7', 'giovannicrooco@gmail.com', 'Giovanni Crooco', '(11) 99663-8754'),
('36.032.47-9', 'annaplagasf@gmail.com', 'Anna Plagiarine', '(11) 98745-2356'),
('63.425.78-5', 'carlos@gmail.com', 'Carlos Pereira', '(11) 96352-4521'),
('65.214.89-3', 'juanmartins@gmail.com', 'Juan Martins', '(11) 99965-8745'),
('78.651.41-8', 'pedrooliver@gmail.com', 'Pedro Oliveira', '(11) 91057-4709'),
('78.654.78-2', 'fabiomario@gmail.com', 'Fabio Mario', '(11) 99985-6548'),
('87.588.98-1', 'adrielr@gmail.com', 'Adriel Gonçalves', '(11) 98975-8974'),
('99.235.89-4', 'alfredo@gmail.com', 'Alfredo Oliveira', '(11) 98542-5478');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `edi_codigo` int(11) NOT NULL,
  `edi_nome` varchar(30) NOT NULL,
  `edi_email` varchar(60) NOT NULL,
  `edi_representante` varchar(60) NOT NULL,
  `edi_site` varchar(60) NOT NULL,
  `edi_telefone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`edi_codigo`, `edi_nome`, `edi_email`, `edi_representante`, `edi_site`, `edi_telefone`) VALUES
(1, 'Cucamonga', 'cucamonga@gmail.com', 'Charlles Henrique Pédia', 'www.cucamonga.com.br', '(12) 90879-0987'),
(2, 'Tozindosalgado', 'tiozin@gmail.com', 'Tio do Salgado', 'www.tiodosalgado.com.br', '(34) 98765-1231'),
(3, 'Maquinadeguerra', 'maquina@gmail.com', 'Maquina de Guerra', 'www.maqunino.com.br', '(13) 99242-1213'),
(4, 'CR7-INDUSTRY', 'omirror@gmail.com', 'Cristiano Ronaldo', 'www.cris07.com.br', '(11) 91213-0345'),
(5, 'XANGAIXENGO', 'xinxon@gmail.com', 'Xina', 'www.xinadopastel.com.br', '(12) 92432-1231');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `emp_numero` int(11) NOT NULL,
  `emp_datasaida` varchar(50) NOT NULL,
  `emp_dataprevista` varchar(50) NOT NULL,
  `emp_dataretorno` varchar(50) NOT NULL,
  `ace_isbn` varchar(20) NOT NULL,
  `usu_codigo` int(11) NOT NULL,
  `fun_re` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`emp_numero`, `emp_datasaida`, `emp_dataprevista`, `emp_dataretorno`, `ace_isbn`, `usu_codigo`, `fun_re`) VALUES
(1, '2022-02-03', '2022-03-03', '', '0909067898-123412149', 1, 1),
(2, '2022-06-12', '2022-07-12', '2022-07-03', '0923887568-098137981', 2, 2),
(3, '2022-12-25', '2023-01-25', '', '1234567898-789632149', 3, 3),
(4, '2022-06-26', '2022-07-26', '2022-06-27', '1319309871-580264129', 4, 4),
(5, '2022-10-03', '2022-11-03', '2022-11-03', '3234567898-643632149', 5, 5),
(6, '2022-04-15', '2022-05-15', '2022-05-2', '3689567898-900632149', 6, 6),
(7, '2022-01-08', '2022-02-08', '2022-03-15', '6434567898-133632149', 7, 7),
(8, '2022-09-09', '2022-10-09', '2022-10-05', '7654567898-980321490', 8, 8),
(9, '2022-02-29', '2022-03-29', '', '8763209876-678540981', 9, 9),
(10, '2022-11-25', '2022-12-25', '2022-12-15', '8764567898-900632149', 10, 10),
(11, '2022-10-03', '2022-11-03', '2022-11-03', '3234567898-643632149', 5, 5),
(12, '', '', '', '3234567898-643632149', 4, 9),
(13, '2021-01-23', '2021-02-23', '2021-06-17', '6434567898-133632149', 10, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `fun_re` int(11) NOT NULL,
  `fun_nome` varchar(60) NOT NULL,
  `fun_datanasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`fun_re`, `fun_nome`, `fun_datanasc`) VALUES
(1, 'Leonardo', '2002-02-13'),
(2, 'Raphael', '2003-07-23'),
(3, 'Donatelo', '2000-06-06'),
(4, 'Michelango', '1999-04-26'),
(5, 'Ash', '2002-01-12'),
(6, 'Goku', '2003-12-19'),
(7, 'Naruto', '2004-10-30'),
(8, 'Seiya', '1998-09-13'),
(9, 'Luffy', '2000-08-31'),
(10, 'Eren', '2003-06-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `func_email`
--

CREATE TABLE `func_email` (
  `fun_re` int(11) NOT NULL,
  `fce_email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `func_email`
--

INSERT INTO `func_email` (`fun_re`, `fce_email`) VALUES
(1, 'func01@empresa.com'),
(2, 'func02@empresa.com'),
(3, 'func03@empresa.com'),
(4, 'func04@empresa.com'),
(5, 'func05@empresa.com'),
(6, 'func06@empresa.com'),
(7, 'func07@empresa.com'),
(8, 'func08@empresa.com'),
(9, 'func09@empresa.com'),
(10, 'func10@empresa.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `func_tel`
--

CREATE TABLE `func_tel` (
  `fun_re` int(11) NOT NULL,
  `fct_numero` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `func_tel`
--

INSERT INTO `func_tel` (`fun_re`, `fct_numero`) VALUES
(1, '(11) 4032-8965'),
(2, '(11) 4034-9812'),
(3, '(11) 4035-9874'),
(4, '(11) 4002-8922'),
(5, '(11) 4032-7489'),
(6, '(11) 4012-8796'),
(7, '(11) 4056-9874'),
(8, '(11) 4031-9856'),
(9, '(11) 4005-9874'),
(10, '(11) 4036-8963');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `tip_codigo` int(11) NOT NULL,
  `tip_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`tip_codigo`, `tip_nome`) VALUES
(1, 'Livro'),
(2, 'Jornal'),
(3, 'Revista'),
(4, 'Vídeo'),
(5, 'Disco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipousuario`
--

CREATE TABLE `tipousuario` (
  `tpu_codigo` int(11) NOT NULL,
  `tpu_descricao` varchar(30) NOT NULL,
  `tpu_quantidade` int(11) NOT NULL,
  `tpu_prazo` int(11) NOT NULL,
  `tpu_renovacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipousuario`
--

INSERT INTO `tipousuario` (`tpu_codigo`, `tpu_descricao`, `tpu_quantidade`, `tpu_prazo`, `tpu_renovacao`) VALUES
(0, 'Graduação', 5, 256, 5),
(1, 'Doutorado', 5, 256, 1),
(2, 'Fundamental', 5, 24, 2),
(3, 'Médio', 5, 48, 3),
(4, 'Mestrado', 20, 256, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `usu_codigo` int(11) NOT NULL,
  `usu_nome` varchar(60) NOT NULL,
  `usu_email` varchar(60) NOT NULL,
  `usu_celular` varchar(30) NOT NULL,
  `usu_numerodoc` varchar(30) NOT NULL,
  `usu_cidade` varchar(30) NOT NULL,
  `usu_documento` varchar(30) NOT NULL,
  `usu_estado` varchar(2) NOT NULL,
  `tpu_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`usu_codigo`, `usu_nome`, `usu_email`, `usu_celular`, `usu_numerodoc`, `usu_cidade`, `usu_documento`, `usu_estado`, `tpu_codigo`) VALUES
(1, 'Erick', 'erick@gmail.com', '(11) 98240-1233', '789.456.789-98', 'Sudão do Sul', '78.985.98-9', 'SP', 1),
(2, 'Adriel', 'adriel@gmail.com', '(11) 98741-5386', '987.654.321.00', 'No seu coração bb', '56.325.69-8', 'PE', 4),
(3, 'Henrique', 'ricksant@gmail.com', '(11) 95122-7901', '458.826.468-04', 'Bragança Paulista', '87.546.98-9', 'SP', 2),
(4, 'La-Salvia', 'lasalvia@gmail.com', '(11) 98745-6585', '987.489.257-89', 'Haiti', '65.325.87-7', 'BH', 0),
(5, 'Heloyse', 'heloyse@gmail.com', '(11) 97459-9321', '321.587.987-06', 'Polonia', '98.654.23-1', 'PA', 4),
(6, 'Messi', 'messi@gmail.com', '(11) 98523-9654', '123.654.897-10', 'Marrocos', '14.654.98-8', 'RJ', 1),
(7, 'Carlos', 'carlosbff@gmail.com', '(11) 98121-8765', '098.7654.129-01', 'Atibaia', '98.123.12-1', 'MG', 1),
(8, 'Amanda', 'amandafatec@gmail.com', '(11) 99872-0921', '123.123.131-00', 'Belem', '87.654.23-9', 'PA', 3),
(9, 'Raphael', 'raphacapivara@gmail.com', '(11) 98764-1231', '134.634.997-09', 'Bahia', '98.123.42-9', 'BA', 4),
(10, 'Anna', 'annaplag@gmail.com', '(11) 91345-2542', '093.134.745-78', 'Bragança Paulista', '13.134.12-8', 'SP', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acervo`
--
ALTER TABLE `acervo`
  ADD PRIMARY KEY (`ace_isbn`),
  ADD KEY `edi_codigo` (`edi_codigo`),
  ADD KEY `are_codigo` (`are_codigo`),
  ADD KEY `tip_codigo` (`tip_codigo`);

--
-- Índices para tabela `acervo_assunto`
--
ALTER TABLE `acervo_assunto`
  ADD KEY `ass_codigo` (`ass_codigo`),
  ADD KEY `ace_isbn` (`ace_isbn`);

--
-- Índices para tabela `acervo_autor`
--
ALTER TABLE `acervo_autor`
  ADD KEY `aut_cpf` (`aut_cpf`),
  ADD KEY `ace_isbn` (`ace_isbn`);

--
-- Índices para tabela `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`are_codigo`);

--
-- Índices para tabela `assunto`
--
ALTER TABLE `assunto`
  ADD PRIMARY KEY (`ass_codigo`);

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`aut_cpf`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`edi_codigo`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`emp_numero`),
  ADD KEY `ace_isbn` (`ace_isbn`),
  ADD KEY `usu_codigo` (`usu_codigo`),
  ADD KEY `fun_re` (`fun_re`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`fun_re`);

--
-- Índices para tabela `func_email`
--
ALTER TABLE `func_email`
  ADD KEY `fun_re` (`fun_re`);

--
-- Índices para tabela `func_tel`
--
ALTER TABLE `func_tel`
  ADD KEY `fun_re` (`fun_re`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`tip_codigo`);

--
-- Índices para tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`tpu_codigo`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_codigo`),
  ADD KEY `tpu_codigo` (`tpu_codigo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acervo`
--
ALTER TABLE `acervo`
  ADD CONSTRAINT `acervo_ibfk_1` FOREIGN KEY (`edi_codigo`) REFERENCES `editora` (`edi_codigo`),
  ADD CONSTRAINT `acervo_ibfk_2` FOREIGN KEY (`are_codigo`) REFERENCES `area` (`are_codigo`),
  ADD CONSTRAINT `acervo_ibfk_3` FOREIGN KEY (`tip_codigo`) REFERENCES `tipo` (`tip_codigo`);

--
-- Limitadores para a tabela `acervo_assunto`
--
ALTER TABLE `acervo_assunto`
  ADD CONSTRAINT `acervo_assunto_ibfk_1` FOREIGN KEY (`ass_codigo`) REFERENCES `assunto` (`ass_codigo`),
  ADD CONSTRAINT `acervo_assunto_ibfk_2` FOREIGN KEY (`ace_isbn`) REFERENCES `acervo` (`ace_isbn`);

--
-- Limitadores para a tabela `acervo_autor`
--
ALTER TABLE `acervo_autor`
  ADD CONSTRAINT `acervo_autor_ibfk_1` FOREIGN KEY (`aut_cpf`) REFERENCES `autor` (`aut_cpf`),
  ADD CONSTRAINT `acervo_autor_ibfk_2` FOREIGN KEY (`ace_isbn`) REFERENCES `acervo` (`ace_isbn`);

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`ace_isbn`) REFERENCES `acervo` (`ace_isbn`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`usu_codigo`) REFERENCES `usuario` (`usu_codigo`),
  ADD CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`fun_re`) REFERENCES `funcionario` (`fun_re`);

--
-- Limitadores para a tabela `func_email`
--
ALTER TABLE `func_email`
  ADD CONSTRAINT `func_email_ibfk_1` FOREIGN KEY (`fun_re`) REFERENCES `funcionario` (`fun_re`);

--
-- Limitadores para a tabela `func_tel`
--
ALTER TABLE `func_tel`
  ADD CONSTRAINT `func_tel_ibfk_1` FOREIGN KEY (`fun_re`) REFERENCES `funcionario` (`fun_re`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tpu_codigo`) REFERENCES `tipousuario` (`tpu_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
