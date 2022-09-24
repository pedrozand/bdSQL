-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Set-2022 às 23:07
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
-- Banco de dados: `bdclinicamedica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `con_numero` int(11) NOT NULL,
  `con_data` date DEFAULT NULL,
  `con_hora` varchar(5) DEFAULT NULL,
  `con_horainicio` varchar(5) DEFAULT NULL,
  `con_horafim` varchar(5) DEFAULT NULL,
  `con_historico` varchar(300) DEFAULT NULL,
  `pac_numero` int(11) DEFAULT NULL,
  `med_crm` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`con_numero`, `con_data`, `con_hora`, `con_horainicio`, `con_horafim`, `con_historico`, `pac_numero`, `med_crm`) VALUES
(1, '2016-08-26', '09:00', NULL, NULL, NULL, 100, '004'),
(2, '2016-05-15', '14:00', NULL, NULL, NULL, 110, '003'),
(3, '2016-08-26', '09:30', NULL, NULL, NULL, 100, '006'),
(4, '2017-02-17', '10:00', NULL, NULL, NULL, 101, '004'),
(5, '2017-02-17', '11:30', NULL, NULL, NULL, 105, '004'),
(6, '2017-02-17', '13:30', NULL, NULL, NULL, 106, '006'),
(7, '2017-02-13', '16:00', NULL, NULL, 'Dores no corpo e febre', 106, '004'),
(8, '2017-02-14', '15:00', NULL, NULL, 'Dificuldade de enxergar de perto', 100, '005'),
(9, '2017-02-14', '12:00', NULL, NULL, NULL, 102, '002'),
(10, '2017-02-15', '15:30', NULL, NULL, 'Dores no corpo, febre, nausea e vômito', 100, '006'),
(11, '2017-04-20', '11:00', NULL, NULL, NULL, 105, '004'),
(12, '2016-12-02', '10:00', NULL, NULL, NULL, 100, '004'),
(13, '2016-12-02', '10:15', NULL, NULL, 'Taquicardia', 103, '001'),
(14, '2016-12-02', '10:30', NULL, NULL, NULL, 104, '004'),
(15, '2017-06-10', '09:00', NULL, NULL, NULL, 100, '004'),
(16, '2017-01-19', '17:00', NULL, NULL, 'Arritimia', 107, '001'),
(17, '2017-02-27', '15:00', NULL, NULL, NULL, 103, '004'),
(18, '2017-04-05', '16:00', NULL, NULL, 'Resfriado', 109, '008'),
(19, '2017-04-20', '11:30', NULL, NULL, 'Taquicardia', 100, '001'),
(20, '2017-05-12', '15:00', NULL, NULL, 'Dor de cabeça aguda', 102, '008');

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `esp_codigo` int(11) NOT NULL,
  `esp_nome` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `especialidade`
--

INSERT INTO `especialidade` (`esp_codigo`, `esp_nome`) VALUES
(1, 'Cardiologia'),
(2, 'Angiologia'),
(3, 'Mastologia'),
(4, 'Neurologia'),
(5, 'Oftalmologia'),
(6, 'Pediatria'),
(7, 'Psiquiatria'),
(8, 'Clinica Médica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE `medico` (
  `med_crm` varchar(10) NOT NULL,
  `med_nome` varchar(60) DEFAULT NULL,
  `med_telefone` varchar(30) DEFAULT NULL,
  `med_email` varchar(60) DEFAULT NULL,
  `med_salario` decimal(9,2) DEFAULT NULL,
  `esp_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`med_crm`, `med_nome`, `med_telefone`, `med_email`, `med_salario`, `esp_codigo`) VALUES
('001', 'Valter Santos', '(11) 9 9890 0102', 'valter.santos@clinicamedica.com.br', '4350.89', 8),
('002', 'Silvio', '(11) 9 9890 0301', 'Silvio@clinicamedica.com.br', '3600.00', 5),
('003', 'Alexandre', '(11) 9 9890 0302', 'Alexandre@clinicamedica.com.br', '5000.00', 3),
('004', 'Carlos', '(11) 9 9890 0507', 'Carlos@clinicamedica.com.br', '3600.00', 5),
('005', 'Antonio', '(11) 9 9890 0509', 'Antonio@clinicamedica.com.br', '4000.00', 8),
('006', 'Osvaldo', '(11) 9 9890 0708', 'Osvaldo@clinicamedica.com.br', '6200.00', 6),
('007', 'Humberto', '(11) 9 9890 0705', 'Humberto@clinicamedica.com.br', '5000.00', 3),
('008', 'Valdir', '(11) 9 9890 0809', 'Valdir@clinicamedica.com.br', '3600.00', 4),
('009', 'Mariana', '(11) 9 9890 0108', 'Mariana@clinicamedica.com.br', '6200.00', 6),
('010', 'Marcia', '(11) 9 9890 0806', 'Marcia@clinicamedica.com.br', '2800.00', 1),
('011', 'Monica', '(11) 9 9890 0112', 'Monica@clinicamedica.com.br', '2800.00', 2),
('012', 'Solange', '(11) 9 9890 0115', 'Solange@clinicamedica.com.br', '4000.00', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `pac_numero` int(11) NOT NULL,
  `pac_nome` varchar(60) DEFAULT NULL,
  `pac_telefone` varchar(20) DEFAULT NULL,
  `pac_telefone1` varchar(20) DEFAULT NULL,
  `pac_telefone2` varchar(20) DEFAULT NULL,
  `pac_rua` varchar(60) DEFAULT NULL,
  `pac_complemento` varchar(30) DEFAULT NULL,
  `pac_end_num` int(11) DEFAULT NULL,
  `pac_cep` varchar(9) DEFAULT NULL,
  `pac_bairro` varchar(30) DEFAULT NULL,
  `pac_cidade` varchar(30) DEFAULT NULL,
  `pac_uf` varchar(2) DEFAULT NULL,
  `pac_pais` varchar(40) DEFAULT NULL,
  `tip_codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`pac_numero`, `pac_nome`, `pac_telefone`, `pac_telefone1`, `pac_telefone2`, `pac_rua`, `pac_complemento`, `pac_end_num`, `pac_cep`, `pac_bairro`, `pac_cidade`, `pac_uf`, `pac_pais`, `tip_codigo`) VALUES
(100, 'Flavia', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Paraiso', 'Santo André', 'SP', 'Brasil', 1),
(101, 'Marli', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 315, 'cep', 'Barra Funda', 'São Paulo', '', 'Brasil', 3),
(102, 'Ana', 'tel', 'tel1', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Higianólolis', 'Sao Paulo', 'SP', 'Brasil', 3),
(103, 'Bruno', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Centro', 'São Bernardo do Campo', 'SP', 'Brasil', 1),
(104, 'Rafael', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Ponte Seca', 'Ribeirao Pires', 'SP', 'Brasil', 1),
(105, 'Wagner', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Centro', 'Araguaína', 'TO', 'Brasil', 3),
(106, 'Tereza', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Centro', 'Ontário', 'ON', 'Canadá', 2),
(107, 'Silvia', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Ouro Fino', 'Ribeirão Pires', 'SP', 'Brasil', 3),
(108, 'Sueli', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Campestre', 'Santo André', 'SP', 'Brasil', 1),
(109, 'Angela', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 100, 'cep', 'Vila Helena', 'Santo André', 'SP', 'Brasil', 3),
(110, 'Amanda', 'tel', 'tel', 'tel2', 'Rua', 'complemento', 315, 'cep', '', 'Buenos Aires', '', 'Argentina', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoatendimento`
--

CREATE TABLE `tipoatendimento` (
  `tip_codigo` int(11) NOT NULL,
  `tip_nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipoatendimento`
--

INSERT INTO `tipoatendimento` (`tip_codigo`, `tip_nome`) VALUES
(1, 'Particular'),
(2, 'Plano de saúde'),
(3, 'SUS');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`con_numero`);

--
-- Índices para tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`esp_codigo`);

--
-- Índices para tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`med_crm`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`pac_numero`);

--
-- Índices para tabela `tipoatendimento`
--
ALTER TABLE `tipoatendimento`
  ADD PRIMARY KEY (`tip_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
