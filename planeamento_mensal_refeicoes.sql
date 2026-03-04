-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Tempo de geração: 04-Mar-2026 às 12:13
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
(43, 'Abacate'),
(13, 'Alho Francês'),
(10, 'Arroz'),
(26, 'Asinhas de frango'),
(46, 'Atum'),
(1, 'Bacalhau'),
(2, 'Batata'),
(3, 'Batata Doce'),
(9, 'Batata Palha'),
(31, 'Brócolos'),
(33, 'Camarões'),
(21, 'Carne picada'),
(5, 'Cenoura'),
(20, 'Chouriço Vegetariano'),
(29, 'Couve-flor'),
(41, 'Croquetes vegetais'),
(18, 'Douradinhos'),
(11, 'Ervilhas'),
(37, 'Espargos'),
(6, 'Esparguete'),
(16, 'Espinafres'),
(34, 'Feijão branco'),
(44, 'Feijão encarnado'),
(4, 'Frango (Peito/Pernas)'),
(7, 'Grão de Bico'),
(40, 'Hortelã'),
(19, 'Leite de coco'),
(28, 'Lentilhas'),
(30, 'Lombo de Salmão'),
(25, 'Maçã'),
(38, 'Manjericão'),
(17, 'Massa'),
(14, 'Moelas'),
(8, 'Natas'),
(32, 'Nozes'),
(12, 'Ovos'),
(42, 'Pão de hambúrguer'),
(35, 'Pato'),
(36, 'Perna de Peru'),
(39, 'Pescada'),
(23, 'Pimento'),
(24, 'Queijo'),
(15, 'Tomate'),
(27, 'Tomate seco'),
(22, 'Tortilhas');

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

--
-- Extraindo dados da tabela `item_receita`
--

INSERT INTO `item_receita` (`id_receita`, `id_ingrediente`, `quantidade`, `unidade`) VALUES
(1, 1, 400.00, 'g'),
(1, 2, 500.00, 'g'),
(2, 4, 500.00, 'g'),
(2, 5, 2.00, 'un'),
(2, 6, 250.00, 'g'),
(3, 4, 300.00, 'g'),
(3, 16, 100.00, 'g'),
(3, 17, 300.00, 'g'),
(4, 3, 300.00, 'g'),
(4, 7, 400.00, 'g'),
(4, 19, 200.00, 'ml'),
(5, 3, 400.00, 'g'),
(5, 12, 4.00, 'un'),
(6, 4, 500.00, 'g'),
(6, 8, 200.00, 'ml'),
(6, 17, 250.00, 'g'),
(7, 1, 400.00, 'g'),
(7, 8, 200.00, 'ml'),
(7, 9, 200.00, 'g'),
(8, 5, 1.00, 'un'),
(8, 10, 200.00, 'g'),
(8, 18, 10.00, 'un'),
(9, 9, 200.00, 'g'),
(9, 12, 3.00, 'un'),
(9, 13, 2.00, 'un'),
(10, 2, 400.00, 'g'),
(10, 14, 500.00, 'g'),
(10, 15, 2.00, 'un'),
(11, 4, 400.00, 'g'),
(11, 10, 200.00, 'g'),
(11, 11, 100.00, 'g'),
(12, 11, 400.00, 'g'),
(12, 12, 4.00, 'un'),
(13, 17, 250.00, 'g'),
(13, 21, 500.00, 'g'),
(13, 24, 200.00, 'g'),
(14, 21, 300.00, 'g'),
(14, 22, 4.00, 'un'),
(14, 23, 1.00, 'un'),
(15, 10, 150.00, 'g'),
(15, 25, 2.00, 'un'),
(15, 36, 400.00, 'g'),
(16, 10, 150.00, 'g'),
(16, 26, 500.00, 'g'),
(17, 17, 250.00, 'g'),
(17, 27, 50.00, 'g'),
(17, 46, 2.00, 'latas'),
(18, 12, 4.00, 'un'),
(19, 10, 150.00, 'g'),
(19, 28, 200.00, 'g'),
(19, 29, 1.00, 'un'),
(20, 33, 100.00, 'g'),
(20, 39, 300.00, 'g'),
(21, 10, 150.00, 'g'),
(21, 30, 2.00, 'un'),
(22, 31, 300.00, 'g'),
(22, 32, 50.00, 'g'),
(23, 34, 400.00, 'g'),
(23, 46, 2.00, 'latas'),
(24, 35, 500.00, 'g'),
(25, 36, 800.00, 'g'),
(26, 34, 400.00, 'g'),
(27, 10, 200.00, 'g'),
(27, 37, 1.00, 'molho'),
(28, 39, 4.00, 'un'),
(29, 42, 2.00, 'un'),
(29, 43, 1.00, 'un'),
(30, 20, 1.00, 'un'),
(30, 44, 400.00, 'g'),
(32, 17, 250.00, 'g'),
(32, 46, 1.00, 'latas');

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

--
-- Extraindo dados da tabela `planeamento`
--

INSERT INTO `planeamento` (`id_planeamento`, `data`, `refeicao`, `id_receita`) VALUES
(1, '2026-02-26', NULL, 2),
(2, '2026-02-27', NULL, 7),
(3, '2026-02-28', NULL, 4),
(4, '2026-03-01', NULL, 1),
(6, '2026-03-04', NULL, 32);

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
(12, 'Ervilhas com ovos escalfados', 'Vegetariano'),
(13, 'Lasanha de tacho', 'Carne'),
(14, 'Espetadas de tortilha com carne picada, pimento e queijo', 'Carne'),
(15, 'Peitos de peru c/ maçã na airfryer com arroz', 'Carne'),
(16, 'Asinhas de frango tipo kfc com arroz de cenoura', 'Carne'),
(17, 'Massa com atum e tomate seco', 'Peixe'),
(18, 'Legumes assados com ovos abertos', 'Vegetariano'),
(19, 'Caril de lentilhas e couve flor com arroz branco', 'Vegetariano'),
(20, 'Massada de peixe', 'Peixe'),
(21, 'Salmão de frigideira com arroz', 'Peixe'),
(22, 'Quiche de brócolos e nozes', 'Vegetariano'),
(23, 'Feijão branco com atum e camarões', 'Peixe'),
(24, 'Arroz de pato', 'Carne'),
(25, 'Perna de Peru assada com puré de batata', 'Carne'),
(26, 'Sopa de feijão branco e hortelã com croquetes de vegetais', 'Vegetariano'),
(27, 'Risoto de espargos, tomate seco e manjericão', 'Vegetariano'),
(28, 'Filetes de pescada no forno com batatas e brócolos', 'Peixe'),
(29, 'Hamburguer de peru no pão com guacamole', 'Carne'),
(30, 'Feijão encarnado com chouriço vegetariano e ovos abertos', 'Vegetariano'),
(32, 'Teste de Massa', 'Peixe');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id_ingrediente`),
  ADD UNIQUE KEY `nome` (`nome`);

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
  MODIFY `id_ingrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de tabela `planeamento`
--
ALTER TABLE `planeamento`
  MODIFY `id_planeamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `receita`
--
ALTER TABLE `receita`
  MODIFY `id_receita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
