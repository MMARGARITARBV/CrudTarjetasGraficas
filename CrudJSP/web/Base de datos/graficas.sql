-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-06-2017 a las 23:54:33
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tgraficas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graficas`
--

CREATE TABLE `graficas` (
  `id` varchar(4) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `marca` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipoGrafica` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipoMemoria` varchar(100) COLLATE utf8_bin NOT NULL,
  `tamano` varchar(100) COLLATE utf8_bin NOT NULL,
  `estado` varchar(100) COLLATE utf8_bin NOT NULL,
  `precio` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `graficas`
--

INSERT INTO `graficas` (`id`, `nombre`, `marca`, `tipoGrafica`, `tipoMemoria`, `tamano`, `estado`, `precio`) VALUES
('1', 'Asus ROG Strix Radeon RX 470 Gaming OC', 'Asus', 'AMD', 'GDDR5', '4', 'Nuevo', '199'),
('2', 'Asus ROG Strix Radeon RX 480 Gaming', 'Asus', 'AMD', 'GDDR5', '8', 'Nuevo', '215'),
('3', 'Gigabyte Radeon RX 480 G1 Gaming', 'Gigabyte', 'AMD', 'GDDR5', '4', 'Nuevo', '580'),
('4', 'MSI Radeon R9 290X Lightning', 'MSI', 'AMD', 'GDDR5', '4', 'Reacondicionado', '156'),
('5', 'Asus Dual GTX 1060 OC', 'Asus', 'Nvidia', 'GDDR5', '6', 'Nuevo', '280'),
('6', 'EVGA GeForce GTX 1060 Gaming', 'EVGA', 'Nvidia', 'GDDR5', '3', 'Nuevo', '199');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `graficas`
--
ALTER TABLE `graficas`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
