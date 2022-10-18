-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 04:02:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_patitasfelices_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id_category`, `category_name`) VALUES
(1, 'Accesorios'),
(2, 'Librería'),
(3, 'Bazar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `category_fk` int(11) NOT NULL,
  `type_fk` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id_product`, `name`, `description`, `color`, `size`, `price`, `stock`, `category_fk`, `type_fk`, `image`) VALUES
(1, 'Bandana NO AL MALTRATO ANIMAL', NULL, 'Fucsia', 'Medium', 500, 25, 1, 1, 'images/products/bandana-fucsia.jpg'),
(2, 'Cartuchera con patitas', NULL, 'Beige', NULL, 600, 10, 2, 2, 'images/products/cartuchera.jpg'),
(3, 'Llavero huella casita', NULL, 'Fucsia', NULL, 300, 120, 1, 3, 'images/products/llavero-casita.jpg'),
(4, 'Pizarra con imán', 'Incluye un fibrón borrable!', NULL, NULL, 850, 30, 2, 4, 'images/products/pizarra.jpg'),
(5, 'Últimos calendarios del 2022!', NULL, NULL, NULL, 300, 5, 2, 5, 'images/products/calendario.jpg'),
(6, 'Cuaderno rayado', NULL, NULL, NULL, NULL, 35, 2, 6, 'images/products/cuaderno.jpg'),
(7, 'Lápiz con grabado láser', NULL, NULL, NULL, 200, 60, 2, 7, 'images/products/lapices.jpg'),
(8, 'Lapicera con grabado láser', NULL, NULL, NULL, 300, 75, 2, 8, 'images/products/lapicera.jpg'),
(9, 'Neceser', NULL, NULL, NULL, 800, 15, 1, 9, 'images/products/neceser.jpg'),
(10, 'Mini morral', NULL, NULL, NULL, 2000, 10, 1, 9, 'images/products/minimorral.jpg'),
(12, 'Llavero amor peludo', NULL, NULL, NULL, 450, 80, 1, 3, 'images/products/llaveropeludo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type`
--

INSERT INTO `type` (`id_type`, `type_name`) VALUES
(1, 'Bandanas'),
(2, 'Cartucheras'),
(3, 'Llaveros'),
(4, 'Anotadores'),
(5, 'Calendarios'),
(6, 'Cuadernos'),
(7, 'Lápices'),
(8, 'Lapiceras'),
(9, 'Bolsos'),
(10, 'Tazas'),
(11, 'Remeras'),
(12, 'Billeteras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `user_name`, `password`) VALUES
(1, 'Melisa', '$2a$12$FTUssWQCZQIP6L/.lIm.q.OxEgcxpAOK7hRIJfDUAq2lXaTZGxc7e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `category_fk` (`category_fk`),
  ADD KEY `type_fk` (`type_fk`);

--
-- Indices de la tabla `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_fk`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`type_fk`) REFERENCES `type` (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
