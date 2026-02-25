-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Tempo de geração: 25-Fev-2026 às 10:25
-- Versão do servidor: 12.2.2-MariaDB-ubu2404
-- versão do PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dados: `pp-bpalma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ingrediente`
--

CREATE TABLE `ingrediente` (
  `id_ingrediente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `ingrediente`
--

INSERT INTO `ingrediente` (`id_ingrediente`, `nome`) VALUES
(1, 'Bacalhau'),
(2, 'Batata'),
(3, 'Batata Doce'),
(4, 'Frango (Peito/Pernas)'),
(5, 'Cenoura'),
(6, 'Esparguete'),
(7, 'Grão de Bico'),
(8, 'Natas'),
(9, 'Batata Palha'),
(10, 'Arroz'),
(11, 'Ervilhas'),
(12, 'Ovos'),
(13, 'Alho Francês'),
(14, 'Moelas'),
(15, 'Tomate'),
(16, 'Espinafres'),
(17, 'Massa'),
(18, 'Douradinhos'),
(19, 'Leite de coco'),
(20, 'Chouriço Vegetariano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_receita`
--

CREATE TABLE `item_receita` (
  `id_receita` int(11) NOT NULL,
  `id_ingrediente` int(11) NOT NULL,
  `quantidade` decimal(10,2) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `planeamento`
--

CREATE TABLE `planeamento` (
  `id_planeamento` int(11) NOT NULL,
  `data` date NOT NULL,
  `refeicao` varchar(50) DEFAULT NULL,
  `id_receita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita`
--

CREATE TABLE `receita` (
  `id_receita` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `receita`
--

INSERT INTO `receita` (`id_receita`, `nome`, `categoria`) VALUES
(1, 'Bacalhau assado com batatas', 'Peixe'),
(2, 'Frango estufado com cenoura e esparguete', 'Carne'),
(3, 'Massa gratinada com espinafres e frango', 'Carne'),
(4, 'Curry de grão com batata doce', 'Vegetariano'),
(5, 'Fritada de batata doce', 'Vegetariano'),
(6, 'Strogonoff de frango com massa', 'Carne'),
(7, 'Bacalhau com natas e batata palha', 'Peixe'),
(8, 'Douradinhos com arroz de cenoura', 'Peixe'),
(9, 'Alho francês à brás', 'Vegetariano'),
(10, 'Moelas com batata frita', 'Carne'),
(11, 'Panados de frango com arroz de ervilhas', 'Carne'),
(12, 'Ervilhas com ovos escalfados', 'Vegetariano');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id_ingrediente`);

--
-- Índices para tabela `item_receita`
--
ALTER TABLE `item_receita`
  ADD PRIMARY KEY (`id_receita`,`id_ingrediente`),
  ADD KEY `id_ingrediente` (`id_ingrediente`);

--
-- Índices para tabela `planeamento`
--
ALTER TABLE `planeamento`
  ADD PRIMARY KEY (`id_planeamento`),
  ADD KEY `id_receita` (`id_receita`);

--
-- Índices para tabela `receita`
--
ALTER TABLE `receita`
  ADD PRIMARY KEY (`id_receita`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `id_ingrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `planeamento`
--
ALTER TABLE `planeamento`
  MODIFY `id_planeamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `receita`
--
ALTER TABLE `receita`
  MODIFY `id_receita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_receita`
--
ALTER TABLE `item_receita`
  ADD CONSTRAINT `1` FOREIGN KEY (`id_receita`) REFERENCES `receita` (`id_receita`) ON DELETE CASCADE,
  ADD CONSTRAINT `2` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingrediente` (`id_ingrediente`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `planeamento`
--
ALTER TABLE `planeamento`
  ADD CONSTRAINT `1` FOREIGN KEY (`id_receita`) REFERENCES `receita` (`id_receita`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
