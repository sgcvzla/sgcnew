-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-12-2018 a las 16:28:49
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgcconsu_sgcvzla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultores`
--

CREATE TABLE `consultores` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `funcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `consultores`
--

INSERT INTO `consultores` (`id`, `nombre`, `email`, `telefono`, `funcion`) VALUES
(1, 'Luis Rodríguez', 'soluciones2000@gmail.com', '+584144802725', 'supervisor'),
(2, 'David Fernández', 'luisrodriguezestrada@hotmail.com', '+584244248797', 'senior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` bigint(20) NOT NULL,
  `ticket` int(11) NOT NULL,
  `detalles` varchar(250) DEFAULT NULL,
  `fechastatus` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `ticket`, `detalles`, `fechastatus`) VALUES
(1, 1, 'Respuesta: ', '2018-08-20 19:10:27'),
(2, 3, 'Apertura: no abre', '2018-08-20 19:21:51'),
(3, 3, 'Respuesta: ', '2018-08-20 19:24:08'),
(4, 4, 'Apertura: N abre', '2018-08-20 19:27:27'),
(5, 5, 'Apertura: No abre', '2018-08-20 19:37:37'),
(6, 5, 'Respuesta: No abre', '2018-08-20 19:38:15'),
(7, 6, 'Apertura: No abre', '2018-08-21 00:31:33'),
(8, 6, 'Respuesta: No abre', '2018-08-21 00:33:52'),
(9, 7, 'Apertura: Ã¡Ã©Ã­', '2018-08-22 17:06:10'),
(10, 8, 'Apertura: Ã¡Ã©Ã­Ã³u', '2018-08-22 17:08:07'),
(11, 9, 'Apertura: Ã¡Ã©Ã³', '2018-08-22 17:22:05'),
(12, 10, 'Apertura: Ã¡Ã©Ã³', '2018-08-22 17:25:26'),
(13, 10, 'Respuesta: Ã¡Ã©Ã³', '2018-08-22 17:25:26'),
(14, 11, 'Apertura: asdasd', '2018-08-22 17:31:16'),
(15, 11, 'Respuesta: asdasd', '2018-08-22 17:31:16'),
(16, 12, 'Apertura: Ã¡Ã©Ã³', '2018-08-22 17:34:16'),
(17, 12, 'Respuesta: Ã¡Ã©Ã³', '2018-08-22 17:34:16'),
(18, 13, 'Apertura: Ã¡Ã©Ã­Ã³Ãº', '2018-08-22 17:38:14'),
(19, 13, 'Respuesta: Ã¡Ã©Ã­Ã³Ãº', '2018-08-22 17:38:14'),
(20, 14, 'Apertura: Ã¡Ã©Ã­Ã³Ãº', '2018-08-22 19:53:56'),
(21, 14, 'Respuesta: Ã¡Ã©Ã­Ã³Ãº', '2018-08-22 19:53:56'),
(22, 15, 'Apertura: Ã¡Ã©Ã­Ã³Ãº', '2018-08-22 21:46:08'),
(23, 15, 'Respuesta: Ã¡Ã©Ã­Ã³Ãº', '2018-08-22 21:46:08'),
(24, 16, 'Apertura: No abre', '2018-08-22 22:05:59'),
(25, 16, 'Respuesta: No abre', '2018-08-22 22:05:59'),
(26, 17, 'Apertura: No me permite colocar nÃºmeros de mas de dos digitos', '2018-12-12 12:44:43'),
(27, 17, 'Respuesta: No me permite colocar nÃºmeros de mas de dos digitos', '2018-12-12 12:44:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `empresa` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`empresa`, `email`) VALUES
('SGC Consultores C.A.', 'sgcvzla@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `ticket` int(11) NOT NULL,
  `cliente` varchar(150) DEFAULT NULL,
  `sistema` varchar(150) DEFAULT NULL,
  `modulo` varchar(150) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  `detalles` varchar(250) DEFAULT NULL,
  `impacto` varchar(5) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `fechaticket` datetime DEFAULT NULL,
  `fechastatus` datetime DEFAULT NULL,
  `fechacierre` datetime DEFAULT NULL,
  `severidad` int(1) DEFAULT NULL,
  `prioridad` int(3) DEFAULT NULL,
  `asignado` varchar(100) DEFAULT NULL,
  `plandeaccion` varchar(250) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`ticket`, `cliente`, `sistema`, `modulo`, `tipo`, `detalles`, `impacto`, `nombre`, `email`, `telefono`, `fechaticket`, `fechastatus`, `fechacierre`, `severidad`, `prioridad`, `asignado`, `plandeaccion`, `status`) VALUES
(1, 'a', 'a', 'a', 'nuevo', 'a', 'bajo', 'a', 'ajdkajsd@sdsdsd.dsd', '2', '2018-08-15 20:06:55', '2018-08-20 19:10:27', NULL, 3, 1, 'Luis Rodríguez', 'hfjhshdjfhsdljfhls', 'Asignado'),
(2, 'b', 'b', 'b', 'falla', 'w', 'alto', 'w', 'soluciones2000@gmail.com', '3', '2018-08-15 20:07:42', NULL, NULL, 1, NULL, NULL, NULL, 'Pendiente'),
(3, 'Yo', 'El mio ', 'todos', 'falla', 'no abre', 'medio', 'Luis', 'soluciones2000@gmail.com', '0414', '2018-08-20 19:21:51', '2018-08-20 19:24:08', NULL, 1, 2, 'Luis Rodríguez', 'se asignará un tecnico que le llamará', 'Asignado'),
(4, 'Yo', 'Manna', 'Todos', 'falla', 'N abre', 'medio', 'Luis', 'soluciones2000@gmail.com', '04545', '2018-08-20 19:27:27', NULL, NULL, 1, NULL, NULL, NULL, 'Pendiente'),
(5, 'Yo', 'uno', 'dos', 'falla', 'No abre', 'medio', 'Luis', 'soluciones2000@gmail.com', '4546', '2018-08-20 19:37:37', '2018-08-20 19:38:15', NULL, 1, 3, 'Luis Rodríguez', 'Trabajar', 'Asignado'),
(6, 'yo', 'nexrsoft', 'ventas', 'falla', 'No abre', 'medio', 'Luis RodrÃ­guez', 'soluciones2000@gmail.com', '04144802725', '2018-08-21 00:31:33', '2018-08-21 00:33:52', NULL, 1, 11, 'Luis Rodríguez', 'ReposiciÃ³n del error', 'Asignado'),
(7, 'Ã¡Ã©Ã­', 'Ã¡Ã©Ã­', 'Ã¡Ã©Ã­', 'mejor', 'Ã¡Ã©Ã­', 'medio', 'Ã¡Ã©', 'soluciones2000@gmail.com', '041', '2018-08-22 17:06:10', NULL, NULL, 3, NULL, NULL, NULL, 'Pendiente'),
(8, 'Ã¡Ã©Ã­Ã³u', 'Ã¡Ã©Ã­Ã³u', 'Ã¡Ã©Ã­Ã³u', 'falla', 'Ã¡Ã©Ã­Ã³u', 'medio', 'Ã¡Ã©Ã­Ã³u', 'soluciones2000@gmail.com', '04', '2018-08-22 17:08:07', NULL, NULL, 1, NULL, NULL, NULL, 'Pendiente'),
(9, 'Ã¡Ã©Ã³', 'Ã¡Ã©Ã³', 'Ã¡Ã©Ã³', 'falla', 'Ã¡Ã©Ã³', 'medio', 'Ã¡Ã©Ã³', 'soluciones2000@gmail.com', '04', '2018-08-22 17:22:05', NULL, NULL, 1, NULL, NULL, NULL, 'Pendiente'),
(10, 'Ã¡Ã©Ã³', 'Ã¡Ã©Ã³', 'Ã¡Ã©Ã³', 'falla', 'Ã¡Ã©Ã³', 'medio', 'Ã¡Ã©Ã³', 'soluciones2000@gmail.com', '01', '2018-08-22 17:25:26', '2018-08-22 17:26:30', NULL, 1, 1, 'Luis Rodr?guez', 'Ã¡Ã©Ã³', 'Asignado'),
(11, 'Ã¡Ã©Ã³', 'asdasd', 'asdad', 'falla', 'asdasd', 'medio', 'sdadasd', 'soluciones2000@gmail.com', '045', '2018-08-22 17:31:16', '2018-08-22 17:32:21', NULL, 1, 2, 'Luis Rodríguez', 'Ã¡Ã©Ã³', 'Asignado'),
(12, 'Ã¡Ã©Ã³', 'Ã¡Ã©Ã³', 'Ã¡Ã©Ã³', 'nuevo', 'Ã¡Ã©Ã³', 'bajo', 'Ã¡Ã©Ã³', 'soluciones2000@gmail.com', '045566', '2018-08-22 17:34:16', '2018-08-22 17:35:00', NULL, 3, 1, 'Luis Rodríguez', 'Ã¡Ã©Ã³', 'Asignado'),
(13, 'Ã¡Ã©Ã­Ã³Ãº', 'Ã¡Ã©Ã­Ã³Ãº', 'Ã¡Ã©Ã­Ã³Ãº', 'nuevo', 'Ã¡Ã©Ã­Ã³Ãº', 'bajo', 'Ã¡Ã©Ã­Ã³Ãº', 'soluciones2000@gmail.com', '045', '2018-08-22 17:38:14', '2018-08-22 17:38:55', NULL, 3, 2, 'Luis Rodríguez', 'Ã¡Ã©Ã­Ã³Ãº', 'Asignado'),
(14, 'Ã¡Ã©Ã­Ã³Ãº', 'Ã¡Ã©Ã­Ã³Ãº', 'Ã¡Ã©Ã­Ã³Ãº', 'nuevo', 'Ã¡Ã©Ã­Ã³Ãº', 'bajo', 'Ã¡Ã©Ã­Ã³Ãº', 'soluciones2000@gmail.com', '0424', '2018-08-22 19:53:56', '2018-08-22 19:57:52', NULL, 3, 1, 'Luis Rodríguez', 'Ã¡Ã©Ã­Ã³Ãº', 'Asignado'),
(15, 'Ã¡Ã©Ã­Ã³Ãº', 'Ã¡Ã©Ã­Ã³Ãº', 'Ã¡Ã©Ã­Ã³Ãº', 'nuevo', 'Ã¡Ã©Ã­Ã³Ãº', 'bajo', 'Ã¡Ã©Ã­Ã³Ãº', 'soluciones2000@gmail.com', '0425', '2018-08-22 21:46:08', '2018-08-22 21:49:28', NULL, 3, 1, 'Luis Rodríguez', 'Ã¡Ã©Ã­Ã³Ãº', 'Asignado'),
(16, 'Luis', 'Manna', 'Oficina', 'nuevo', 'No abre', 'bajo', 'Luis', 'soluciones2000@gmail.com', '04144802725', '2018-08-22 22:05:59', '2018-08-22 22:06:56', NULL, 3, 1, 'Luis Rodríguez', 'Se va a revisar', 'Asignado'),
(17, 'Julio Riera', 'FacturaciÃ³n', 'EmisiÃ³n de factura', 'falla', 'No me permite colocar nÃºmeros de mas de dos digitos', 'alto', 'Julio Riera', 'sgcvzla@gmail.com', '04244071820', '2018-12-12 12:44:43', '2018-12-12 12:56:29', NULL, 1, 3, 'Luis Rodríguez', 'Se realizarÃ¡ el ajuste respectivo', 'Asignado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultores`
--
ALTER TABLE `consultores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultores`
--
ALTER TABLE `consultores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
