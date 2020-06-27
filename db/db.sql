-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-06-2020 a las 16:05:02
-- Versión del servidor: 8.0.13-4
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `C7er2ONqwh`
--
CREATE DATABASE IF NOT EXISTS `C7er2ONqwh` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `C7er2ONqwh`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderedProducts`
--

CREATE TABLE `orderedProducts` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ProdictId` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orderedProducts`
--

INSERT INTO `orderedProducts` (`createdAt`, `updatedAt`, `ProdictId`, `OrderId`) VALUES
('2020-06-27 00:26:14', '2020-06-27 00:26:14', 1, 1),
('2020-06-27 00:26:14', '2020-06-27 00:26:14', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `quantity`, `product`, `amount`, `userId`, `payment`, `status`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, 1, NULL, 'cash', 'en preparacion', '2020-06-27 00:26:11', '2020-06-27 00:26:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `createdAt`, `updatedAt`) VALUES
(1, NULL, '250', '2020-06-27 00:25:31', '2020-06-27 00:25:31'),
(2, NULL, '150', '2020-06-27 00:25:51', '2020-06-27 00:25:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'user',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `firstname`, `lastname`, `phone_number`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'tonystark', 'tonystark@gmail.com', '$2a$10$nxn8lmgnVYWMxL4wBTNZ5.EyRlvy4xHTdouKIVnMto10CMcpU8rcO', 'Antonny', 'Stark', '12345678', 'admin', '2020-06-27 00:28:33', '2020-06-27 00:28:33'),
(2, 'tonystark', 'tonystark@gmail.com', '$2a$10$IverAHQGqK.HJEvDvblJVOx5PB/38bEqWBd8bJCdBJMUqEZNO28by', 'Antonny', 'Stark', '12345678', 'admin', '2020-06-27 15:04:41', '2020-06-27 15:04:41'),
(3, 'tonystark', 'tonystark@gmail.com', '$2a$10$UK9EqdHLj8nV4HOTiWg0E.UQREjOdxv0IntzdeNO/xh37MIWBxfse', 'Antonny', 'Stark', '12345678', 'admin', '2020-06-27 15:06:55', '2020-06-27 15:06:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `orderedProducts`
--
ALTER TABLE `orderedProducts`
  ADD PRIMARY KEY (`ProdictId`,`OrderId`),
  ADD KEY `OrderId` (`OrderId`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orderedProducts`
--
ALTER TABLE `orderedProducts`
  ADD CONSTRAINT `orderedProducts_ibfk_1` FOREIGN KEY (`ProdictId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderedProducts_ibfk_2` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
