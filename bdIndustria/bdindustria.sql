-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Out-2022 às 22:03
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
-- Banco de dados: `bdindustria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `dep_Nome` varchar(50) DEFAULT NULL,
  `dep_Numero` int(11) NOT NULL,
  `dep_Cpf_gerente` int(11) DEFAULT NULL,
  `dep_Data_inicio_gerente` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`dep_Nome`, `dep_Numero`, `dep_Cpf_gerente`, `dep_Data_inicio_gerente`) VALUES
('Vendas', 1, 214748364, '2015-06-01'),
('Finceiro', 2, 999888777, '2010-10-10'),
('RH', 3, 111200300, '2000-08-25'),
('Produção', 4, 180190170, '2000-01-16'),
('Administrativo', 5, 401402403, '2000-01-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente`
--

CREATE TABLE `dependente` (
  `depe_Nome_Depe` varchar(50) NOT NULL,
  `depe_Datanasc` date DEFAULT NULL,
  `depe_Parentesco` varchar(20) DEFAULT NULL,
  `sex_Cod` int(11) DEFAULT NULL,
  `fun_Cpf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dependente`
--

INSERT INTO `dependente` (`depe_Nome_Depe`, `depe_Datanasc`, `depe_Parentesco`, `sex_Cod`, `fun_Cpf`) VALUES
('Carlos Pitta', '1990-09-01', 'Esposo', 1, 999888777),
('Debora Cristina Oliveira', '1968-01-15', 'Mãe', 2, 753159951),
('Geromel Sabela Cardozo', '1955-01-25', 'Avô', 1, 569321478),
('Juan Espedito Cardozo', '1957-11-26', 'Avô', 1, 789321456),
('Lourdes Miriam Bianchi', '1960-07-19', 'Avó', 2, 879546213),
('Lucas Santana Silva', '2015-05-06', 'Filho', 1, 100100100),
('Maria Julia Oliveira', '2019-02-16', 'Filho', 2, 777888999),
('Pablo Luiz Ferreira', '2009-10-02', 'Filho', 1, 333555777),
('Simone Claudia Yorishima ', '1964-03-15', 'Mâe', 2, 111555999),
('Wander Junior Pedrozo ', '2010-10-10', 'Filho', 1, 777555333);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `fun_Pnome` varchar(20) DEFAULT NULL,
  `fun_Minicial` varchar(1) DEFAULT NULL,
  `fun_Unome` varchar(20) DEFAULT NULL,
  `fun_Cpf` int(11) NOT NULL,
  `fun_Datanasc` date DEFAULT NULL,
  `fun_Endereco` varchar(50) DEFAULT NULL,
  `fun_Salario` int(11) DEFAULT NULL,
  `fun_Cpf_supervisor` int(11) DEFAULT NULL,
  `sex_Cod` int(11) DEFAULT NULL,
  `dep_Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`fun_Pnome`, `fun_Minicial`, `fun_Unome`, `fun_Cpf`, `fun_Datanasc`, `fun_Endereco`, `fun_Salario`, `fun_Cpf_supervisor`, `sex_Cod`, `dep_Numero`) VALUES
('Henrique', 'S', 'Silva', 100100100, '2003-10-10', 'Rua 02, Bairro 02, Número 02', 5600, 789789789, 1, 4),
('Amanda', 'J', 'Yorishima', 111555999, '1996-06-01', 'Rua 04, Barrio 04, Número 04', 8000, 999666333, 2, 2),
('Leticia', 'J', 'Ferreira', 333555777, '1992-12-25', 'Rua 10, Bairro 10, Número 10', 6000, 101010101, 2, 5),
('Isabella', 'S', 'Cardozo', 569321478, '2000-08-19', 'Rua 07, Bairro 07, Número 07', 10000, 852963741, 1, 3),
('Pedro', 'H', 'Oliveira', 753159951, '2003-06-26', 'Rua 01, Bairro 01, Número 01', 5600, 789789789, 1, 4),
('Wander', 'L', 'Pedrozo', 777555333, '1992-04-28', 'Rua 09, Bairro 09, Número 09', 6000, 101010101, 1, 5),
('Julio', 'C', 'Oliveira', 777888999, '1995-03-16', 'Rua 05, Bairro 05, Número 05', 4000, 999666333, 1, 1),
('Carla', 'B', 'Cardpsp', 789321456, '2000-09-14', 'Rua 03, Barrio 03, Número 03', 7000, 999666333, 2, 2),
('Fernanda', 'M', 'Bianchi', 879546213, '1999-07-01', 'Rua 08, Bairro 08, Número 08', 10000, 852963741, 1, 3),
('Maria', 'C', 'Pitta', 999888777, '1993-10-09', 'Rua 06, Bairro 06, Número 06', 4000, 999666333, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacoes_dep`
--

CREATE TABLE `localizacoes_dep` (
  `locDep_Local` varchar(80) NOT NULL,
  `dep_Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `localizacoes_dep`
--

INSERT INTO `localizacoes_dep` (`locDep_Local`, `dep_Numero`) VALUES
('Edificio New York, Andar 01, Ala-A', 1),
('Edificio New York, Andar 01, Ala-B', 2),
('Edificio New York, Andar 03, Ala-A', 3),
('Edificio New York, Andar 13, Ala toda', 4),
('Edificio New York, Andar 02, Ala toda', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `proj_Nome` varchar(50) DEFAULT NULL,
  `proj_Numero` int(11) NOT NULL,
  `proj_Local` varchar(50) DEFAULT NULL,
  `dep_Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projeto`
--

INSERT INTO `projeto` (`proj_Nome`, `proj_Numero`, `proj_Local`, `dep_Numero`) VALUES
('Facebook', 1, 'Menlo Park, Califórnia, EUA', 4),
('Coleta de Dados', 2, 'São Paulo', 5),
('Feedback', 3, 'São Paulo', 3),
('Análise de CRM', 4, 'São Paulo', 1),
('Captação financeira', 5, 'São Paulo', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

CREATE TABLE `sexo` (
  `sex_Cod` int(11) NOT NULL,
  `sex_Descricao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sexo`
--

INSERT INTO `sexo` (`sex_Cod`, `sex_Descricao`) VALUES
(1, 'Maculino'),
(2, 'Feminino'),
(3, 'Indefinido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trabalha_em`
--

CREATE TABLE `trabalha_em` (
  `trab_Em_Horas` varchar(10) DEFAULT NULL,
  `fun_Cpf` int(11) DEFAULT NULL,
  `proj_Numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `trabalha_em`
--

INSERT INTO `trabalha_em` (`trab_Em_Horas`, `fun_Cpf`, `proj_Numero`) VALUES
('8h00/dia', 100100100, 1),
('8h00/dia', 753159951, 1),
('8h00/dia', 777555333, 2),
('8h00/dia', 333555777, 2),
('8h00/dia', 569321478, 3),
('8h00/dia', 879546213, 3),
('8h00/dia', 999888777, 4),
('8h00/dia', 777888999, 4),
('8h00/dia', 789321456, 5),
('8h00/dia', 111555999, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`dep_Numero`);

--
-- Índices para tabela `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`depe_Nome_Depe`),
  ADD KEY `sex_Cod` (`sex_Cod`),
  ADD KEY `fun_Cpf` (`fun_Cpf`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`fun_Cpf`),
  ADD KEY `sex_Cod` (`sex_Cod`),
  ADD KEY `dep_Numero` (`dep_Numero`);

--
-- Índices para tabela `localizacoes_dep`
--
ALTER TABLE `localizacoes_dep`
  ADD PRIMARY KEY (`locDep_Local`),
  ADD KEY `dep_Numero` (`dep_Numero`);

--
-- Índices para tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`proj_Numero`),
  ADD KEY `dep_Numero` (`dep_Numero`);

--
-- Índices para tabela `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`sex_Cod`);

--
-- Índices para tabela `trabalha_em`
--
ALTER TABLE `trabalha_em`
  ADD KEY `fun_Cpf` (`fun_Cpf`),
  ADD KEY `proj_Numero` (`proj_Numero`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `dependente`
--
ALTER TABLE `dependente`
  ADD CONSTRAINT `dependente_ibfk_1` FOREIGN KEY (`sex_Cod`) REFERENCES `sexo` (`sex_Cod`) ON DELETE CASCADE,
  ADD CONSTRAINT `dependente_ibfk_2` FOREIGN KEY (`fun_Cpf`) REFERENCES `funcionario` (`fun_Cpf`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`sex_Cod`) REFERENCES `sexo` (`sex_Cod`) ON DELETE CASCADE,
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`dep_Numero`) REFERENCES `departamento` (`dep_Numero`);

--
-- Limitadores para a tabela `localizacoes_dep`
--
ALTER TABLE `localizacoes_dep`
  ADD CONSTRAINT `localizacoes_dep_ibfk_1` FOREIGN KEY (`dep_Numero`) REFERENCES `departamento` (`dep_Numero`);

--
-- Limitadores para a tabela `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`dep_Numero`) REFERENCES `departamento` (`dep_Numero`);

--
-- Limitadores para a tabela `trabalha_em`
--
ALTER TABLE `trabalha_em`
  ADD CONSTRAINT `trabalha_em_ibfk_1` FOREIGN KEY (`fun_Cpf`) REFERENCES `funcionario` (`fun_Cpf`),
  ADD CONSTRAINT `trabalha_em_ibfk_2` FOREIGN KEY (`proj_Numero`) REFERENCES `projeto` (`proj_Numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
