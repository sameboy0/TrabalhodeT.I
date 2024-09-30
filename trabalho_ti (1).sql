-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/09/2024 às 23:17
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trabalho_ti`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastros`
--

CREATE TABLE `cadastros` (
  `id` int(250) NOT NULL,
  `Nome` varchar(250) NOT NULL,
  `Sobrenome` varchar(250) NOT NULL,
  `Data_nascimento` varchar(250) NOT NULL,
  `Celular` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Senha` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastros`
--

INSERT INTO `cadastros` (`id`, `Nome`, `Sobrenome`, `Data_nascimento`, `Celular`, `Email`, `Senha`) VALUES
(1, 'Ryan', 'Dias', '11/10/1990', '11942104060', 'ryan@gmail.com', '1234');

--
-- Acionadores `cadastros`
--
DELIMITER $$
CREATE TRIGGER `monstro` BEFORE INSERT ON `cadastros` FOR EACH ROW BEGIN
    -- Ações a serem realizadas
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `feedback`
--

CREATE TABLE `feedback` (
  `id` int(250) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  `opiniao` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `feedback`
--

INSERT INTO `feedback` (`id`, `nome`, `senha`, `opiniao`) VALUES
(1, 'Arthur ', '123456', 'kithifgkipmkbpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta1`
--

CREATE TABLE `pergunta1` (
  `id` int(250) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  `resposta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pergunta1`
--

INSERT INTO `pergunta1` (`id`, `nome`, `senha`, `resposta`) VALUES
(1, 'Arthur', '123456', 'Alzaimer'),
(2, 'Arthur', '123456', 'gfgbddf'),
(3, 'fdff', 'fddsffsd', 'sdffsd');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pergunta2`
--

CREATE TABLE `pergunta2` (
  `id` int(250) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  `resposta` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pergunta2`
--

INSERT INTO `pergunta2` (`id`, `nome`, `senha`, `resposta`) VALUES
(1, 'bbf', 'gfgf', 'gffgf');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastros`
--
ALTER TABLE `cadastros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Celular` (`Celular`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Índices de tabela `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pergunta1`
--
ALTER TABLE `pergunta1`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pergunta2`
--
ALTER TABLE `pergunta2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastros`
--
ALTER TABLE `cadastros`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pergunta1`
--
ALTER TABLE `pergunta1`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pergunta2`
--
ALTER TABLE `pergunta2`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
