-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Abr-2020 às 21:28
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbconsultorio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anamnese`
--

CREATE TABLE `anamnese` (
  `idAnamnese` int(10) UNSIGNED NOT NULL,
  `queixas` text DEFAULT NULL,
  `sintomas` text DEFAULT NULL,
  `tratamentos_anteriores` text DEFAULT NULL,
  `medicamentos` text DEFAULT NULL,
  `infancia` text DEFAULT NULL,
  `rotina` text DEFAULT NULL,
  `vicios` text DEFAULT NULL,
  `trabalho` text DEFAULT NULL,
  `historico_familiar` text DEFAULT NULL,
  `comportamento` text DEFAULT NULL,
  `linguagem` text DEFAULT NULL,
  `humor` text DEFAULT NULL,
  `hipotese_diagnostica` text DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `numero_sessoes` int(11) DEFAULT NULL,
  `valor_sessao` decimal(10,0) DEFAULT NULL,
  `periodicidade` varchar(20) DEFAULT NULL,
  `idPaciente` int(11) NOT NULL,
  `idPsicologo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anamnese`
--

INSERT INTO `anamnese` (`idAnamnese`, `queixas`, `sintomas`, `tratamentos_anteriores`, `medicamentos`, `infancia`, `rotina`, `vicios`, `trabalho`, `historico_familiar`, `comportamento`, `linguagem`, `humor`, `hipotese_diagnostica`, `observacoes`, `numero_sessoes`, `valor_sessao`, `periodicidade`, `idPaciente`, `idPsicologo`) VALUES
(4, 'alucinado de droga', 'aaaaaaaaa', 'abbbbbbbbbbb', 'ccccccccccc', 'eeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeee', 'ffffffffffffffffffg', 'hhhhhhhhhhhhhh', 'iiiiiiiiiiiiiii', 'qqqqqqqqqqq', 'wwwwwwwwwwwww', 'weeeeeeeeeeeeeeeee', 'rrrrrrrrrrrrrrrrrr', 'efadfasda', 10, '10', 'Quinzenal', 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `idPaciente` int(10) UNSIGNED NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `plano_saude` varchar(50) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`idPaciente`, `nome`, `cpf`, `data_nascimento`, `sexo`, `endereco`, `telefone`, `foto`, `plano_saude`, `observacoes`, `data_cadastro`) VALUES
(1, 'Gerundio Salve', '122.323.123-12', '2022-01-12', 'M', 'sasadsad', '(  )    -    ', 'C:\\Users\\aryel.sa\\Desktop\\assddassad786010179.png', 'Amil Saúde', '123123123', '2020-04-05'),
(2, 'Adamastor Silva', '112.123.123-12', '1212-01-21', 'M', 'aaaaa', '(21)2222-1212', 'C:\\Users\\aryel.sa\\Desktop\\AAAAAAAAAAAAAAAAAAAaa1310835457.png', 'Amil Saúde', 'ssadda', '2020-04-13'),
(10, 'AAAAAAAAAAAAAAAA', '   .   .   -  ', '1212-01-12', NULL, '', '(  )    -    ', NULL, 'Amil Saúde', '', '2020-04-24'),
(9, 'Joao', '111.111.111-11', '1111-01-11', 'M', 'aaaaaaaa', '(11)1111-1111', 'C:\\Users\\aryel.sa\\Desktop\\Joao2314323.png', 'Caixa Seguro Saúde', 'aaaaa', '2020-04-16'),
(8, 'FEIJOR', '111.111.111-11', '1111-01-11', 'M', 'fghjjk', '(12)1111-1111', NULL, 'Bradesco Seguro Saúde', 'muito zuado', '2020-04-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `psicologo`
--

CREATE TABLE `psicologo` (
  `idPsicologo` int(10) UNSIGNED NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `crp` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `psicologo`
--

INSERT INTO `psicologo` (`idPsicologo`, `nome`, `cpf`, `crp`, `telefone`, `login`, `senha`) VALUES
(1, 'Psicologo1', '12345678912', '123456', '(21)12345678', 'user', 'user123'),
(4, 'ternario', '111.111.111-11', '111111111111', '(11)1111-1111', 'ternario', '123'),
(3, 'Jetulho Silva', '111.111.111-11', '11221212', '(11)2222-2222', 'jetulho', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessao`
--

CREATE TABLE `sessao` (
  `idSessao` int(10) UNSIGNED NOT NULL,
  `data` datetime DEFAULT NULL,
  `queixas_paciente` text DEFAULT NULL,
  `plano_tratamento` text DEFAULT NULL,
  `diagnostico_final` text DEFAULT NULL,
  `evolucao` int(11) DEFAULT NULL,
  `pago` bit(1) DEFAULT NULL,
  `idAnamnese` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sessao`
--

INSERT INTO `sessao` (`idSessao`, `data`, `queixas_paciente`, `plano_tratamento`, `diagnostico_final`, `evolucao`, `pago`, `idAnamnese`) VALUES
(1, '1111-01-11 00:00:00', 'aaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 3, b'1', 4),
(2, '1111-01-11 00:00:00', '11212', '12121', '121212', 1, b'0', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anamnese`
--
ALTER TABLE `anamnese`
  ADD PRIMARY KEY (`idAnamnese`),
  ADD KEY `idPaciente` (`idPaciente`),
  ADD KEY `idPsicologo` (`idPsicologo`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idPaciente`);

--
-- Índices para tabela `psicologo`
--
ALTER TABLE `psicologo`
  ADD PRIMARY KEY (`idPsicologo`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Índices para tabela `sessao`
--
ALTER TABLE `sessao`
  ADD PRIMARY KEY (`idSessao`),
  ADD KEY `idAnamnese` (`idAnamnese`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anamnese`
--
ALTER TABLE `anamnese`
  MODIFY `idAnamnese` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idPaciente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `psicologo`
--
ALTER TABLE `psicologo`
  MODIFY `idPsicologo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sessao`
--
ALTER TABLE `sessao`
  MODIFY `idSessao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
