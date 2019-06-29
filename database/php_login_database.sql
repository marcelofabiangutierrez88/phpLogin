-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2019 a las 17:29:31
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_login_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'dato1@mail.com', '$2y$10$c1ckww/NFdmz4kyhWJaCnuva2VBlgR6tYJJcfGWUlclZx7fkmIsti'),
(2, 'dato2@mail.com', '$2y$10$xIvryNrTcJFmA8lDU0loPeXBoFv5vhRX5nwUC9Sf/xNZ9oM4./a7G'),
(3, 'uno@mail.com', '$2y$10$Um3sYxM8Eq4S4oehUNClouOtCDFe/roUHNGYFcpK.bPMzJlcIhM0K'),
(4, 'marcelo@mail.com', '$2y$10$ZeVHx5uS09Cnc4wsQ.lgE.YI6um4QcfMaeRc9AQOWOaaF/GHfbvuy'),
(5, 'suggar@mail.com', '$2y$10$gAPyI81ycpv.yT2fWbB6U.9xCfZ2SVQL6uu3ccktaOgHj4Lx8zFLC'),
(7, 'suggarapp@mail.com', '$2y$10$3cd27dKJlqlTBmYkW/pBdukm0QH9yFLvCTEldMvZSpCx8PF/u3ZRu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
