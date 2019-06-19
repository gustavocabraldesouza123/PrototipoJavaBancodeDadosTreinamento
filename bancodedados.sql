-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Abr-2018 às 23:58
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas_fisicas`
--

CREATE TABLE `pessoas_fisicas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(80) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `sexo` set('F','M') NOT NULL,
  `cep` varchar(9) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `celular` varchar(14) NOT NULL,
  `cpf` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoas_fisicas`
--

INSERT INTO `pessoas_fisicas` (`id`, `nome`, `endereco`, `cidade`, `bairro`, `telefone`, `rg`, `sexo`, `cep`, `estado`, `celular`, `cpf`) VALUES
(1, 'José Silva e Silva', 'Rua dos Maracujás, 27', 'São Paulo', 'Vila dos Limões', '(11)6514-6448', '24.724.597-4', 'M', '08190-555', 'SP', '(15)61515-6151', '504.695.409-40'),
(2, 'Marta Rodrigues Souza', 'Rua Nove, 25', 'São Paulo', 'Jardim Helena', '(11)6554-6846', '98.524.858-9', 'F', '62140-214', 'SP', '(11)95454-3247', '141.424.114-41'),
(3, 'Júlio Nogueira Brito', 'Rua Flor do Rio, 27', 'São Paulo', 'Limoeiro', '(11)2372-4720', '10.102.420-3', 'M', '44890-565', 'SP', '(11)95463-5246', '105.412.144-41'),
(4, 'Maria da Cruz Nascimento', 'Rua do Engenho, 28', 'São Paulo', 'Cida A.E. Carvalho', '(11)6954-8981', '40.409.774-7', 'F', '48940-948', 'SP', '(11)95012-6530', '210.053.640-86');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoas_fisicas`
--
ALTER TABLE `pessoas_fisicas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pessoas_fisicas`
--
ALTER TABLE `pessoas_fisicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;