-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2023 a las 04:11:26
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth`
--

CREATE TABLE `auth` (
  `id` int(10) NOT NULL,
  `usuario` varchar(22) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth`
--

INSERT INTO `auth` (`id`, `usuario`, `password`) VALUES
(1, 'admin', '$2b$05$Okctq0VvK2R0fAjYu3zur.VccwJE9I5K1IvIyKBpj/Ra5hB2e2B76'),
(2, 'root', '$2b$05$C1/GcbBaKoO9FV4d6uHKYu5QYjiYz.WYFIhzwV7hY5FqRChu1ppfG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(22) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `precio`) VALUES
(1, 'Smartphone XYZ', 'Electrónica', 299.99),
(2, 'Camiseta Casual', 'Ropa', 49.99),
(3, 'Juego de Sábanas', 'Hogar', 79.99),
(4, 'Cafetera Automática', 'Electrónica', 199.99),
(5, 'Zapatillas Deportivas', 'Ropa', 129.99),
(6, 'Lámpara de Escritorio', 'Hogar', 19.99),
(7, 'Alimentos Básicos (Pack)', 'Alimentación', 5.99),
(8, 'Kit de Maquillaje', 'Belleza', 39.99),
(9, 'Libro Bestseller', 'Libros', 14.99),
(10, 'Sofá de Cuero', 'Muebles', 249.99),
(11, 'Laptop Ultradelgada', 'Electrónica', 899.99),
(12, 'Abrigo de Invierno', 'Ropa', 79.99),
(13, 'Robot Aspirador Inteligente', 'Electrodomésticos', 249.99),
(14, 'Bicicleta de Montaña', 'Deportes', 349.99),
(15, 'Set de Cuchillos de Cocina', 'Hogar', 59.99),
(16, 'Pelota de Fútbol Profesional', 'Deportes', 29.99),
(17, 'Caja de Herramientas Completa', 'Hogar', 129.99),
(18, 'Perfume de Lujo', 'Belleza', 89.99),
(19, 'Tablet con Pantalla Retina', 'Electrónica', 499.99),
(20, 'Silla Ergonómica de Oficina', 'Muebles', 169.99),
(21, 'Auriculares Inalámbricos', 'Electrónica', 129.99),
(22, 'Vestido de Noche Elegante', 'Ropa', 119.99),
(23, 'Máquina de Café Espresso', 'Electrodomésticos', 179.99),
(24, 'Balón de Baloncesto Profesional', 'Deportes', 24.99),
(25, 'Juego de Toallas de Lujo', 'Hogar', 39.99),
(26, 'Secador de Pelo de Alta Potencia', 'Belleza', 49.99),
(27, 'Kit de Herramientas para Jardín', 'Hogar', 89.99),
(28, 'Smartwatch con Monitor de Ritmo Cardíaco', 'Electrónica', 199.99),
(29, 'Silla Gaming Ergonómica', 'Muebles', 229.99),
(30, 'Colchón Ortopédico de Espuma Viscoelástica', 'Muebles', 399.99),
(31, 'Cámara DSLR Profesional', 'Electrónica', 699.99),
(32, 'Chaqueta Deportiva Cortaviento', 'Ropa', 54.99),
(33, 'Licuadora de Alta Potencia', 'Electrodomésticos', 89.99),
(34, 'Mochila Resistente al Agua', 'Accesorios', 34.99),
(35, 'Juego de Sartenes Antiadherentes', 'Hogar', 69.99),
(36, 'Bicicleta Estática Plegable', 'Deportes', 149.99),
(37, 'Reloj de Pulsera Elegante', 'Accesorios', 129.99),
(38, 'Aspiradora Robot con Sistema de Navegación', 'Electrodomésticos', 299.99),
(39, 'Maleta de Viaje con Ruedas', 'Accesorios', 79.99),
(40, 'Lápiz Labial de Larga Duración', 'Belleza', 19.99),
(41, 'Altavoz Bluetooth Portátil', 'Electrónica', 59.99),
(42, 'Set de Utensilios de Cocina de Acero Inoxidable', 'Hogar', 44.99),
(43, 'Zapatillas para Correr con Amortiguación', 'Deportes', 89.99),
(44, 'Perfume Floral Exclusivo', 'Belleza', 74.99),
(45, 'Espejo de Maquillaje con Luces LED', 'Belleza', 29.99),
(46, 'Impresora Multifunción WiFi', 'Electrónica', 129.99),
(47, 'Camisa Casual de Manga Larga', 'Ropa', 39.99),
(48, 'Juego de Cama Satinado', 'Hogar', 69.99),
(49, 'Hervidor Eléctrico de Agua', 'Electrodomésticos', 34.99),
(50, 'Silla de Comedor Moderna', 'Muebles', 119.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(22) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `activo`) VALUES
(1, 'admin', 1),
(2, 'root', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
