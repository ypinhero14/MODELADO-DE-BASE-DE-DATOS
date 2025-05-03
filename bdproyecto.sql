-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2024 a las 01:39:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atleta`
--

CREATE TABLE `atleta` (
  `id` int(11) NOT NULL,
  `fecha de nacimiento` date NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `peso` varchar(50) NOT NULL,
  `estatura` varchar(50) NOT NULL,
  `posicion` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `dirrecion` varchar(50) NOT NULL,
  `edad` int(50) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atleta`
--

INSERT INTO `atleta` (`id`, `fecha de nacimiento`, `telefono`, `peso`, `estatura`, `posicion`, `sexo`, `dirrecion`, `edad`, `iduser`) VALUES
(35, '1997-09-27', '414819340', ' 80', ' 1,80', ' Alero', ' Masculino', ' Urb Parque Florida Calle I Casa 52', 26, 52),
(36, '1989-12-29', '2147483647', ' 60', ' 1,50', ' Base', ' Masculino', ' MILAGROS DE DIOS', 34, 53),
(37, '1997-12-14', '2147483647', ' 70', ' 1,57', ' Base', ' Femenino', ' Urb los Mangos Edificio Luna Style', 26, 54),
(45, '1970-04-07', '2147483647', ' 70', ' 2', ' Pivot', ' Masculino', ' Los Caobos', 54, 62),
(57, '1969-12-01', '04144819340', '80', '1,62', 'Escolta', 'Masculino', 'llano verde', 54, 74),
(58, '1979-09-09', '04144819340', '100', '2', 'Pivot', 'Masculino', 'Santa Rosa', 44, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombrecategoria` varchar(50) NOT NULL,
  `edadmin` int(50) NOT NULL,
  `edadmax` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombrecategoria`, `edadmin`, `edadmax`) VALUES
(1, 'LIBRE', 18, 39),
(2, 'MASTER', 40, 49),
(3, 'SUPER MASTER', 50, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo`
--

CREATE TABLE `recibo` (
  `id` int(11) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `estatus` varchar(50) NOT NULL,
  `fecharecibo` date NOT NULL,
  `fechapago` date NOT NULL,
  `mes` varchar(50) NOT NULL,
  `monto` int(50) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recibo`
--

INSERT INTO `recibo` (`id`, `referencia`, `estatus`, `fecharecibo`, `fechapago`, `mes`, `monto`, `iduser`) VALUES
(29, ' 444444', 'COBRADO', '2024-04-20', '2024-04-19', ' Julio', 5, 52),
(30, ' 546464', 'ACTIVO', '2024-04-21', '2024-04-21', ' Diciembre', 5, 52),
(31, ' 666666', 'COBRADO', '2024-04-22', '2024-04-22', ' Octubre', 5, 52),
(32, ' 214412', 'COBRADO ', '2024-04-22', '2024-04-21', ' Enero', 5, 52),
(42, '434323', 'COBRADO', '2024-04-22', '2024-04-22', 'Abril', 5, 52),
(45, '414231', 'COBRADO', '2024-04-22', '2024-04-21', 'Marzo', 5, 54),
(46, '323214', 'COBRADO', '2024-04-23', '2024-04-23', 'Abril', 5, 53),
(47, ' 421421', 'ACTIVO', '2024-04-23', '2024-04-23', 'Mayo', 5, 53),
(48, ' 123222', 'ACTIVO', '2024-04-23', '2024-04-23', 'Agosto', 5, 52),
(49, '422424', 'COBRADO', '2024-04-23', '2024-04-15', 'Abril', 5, 74),
(50, '442142', 'COBRADO', '2024-04-23', '2024-04-19', 'Abril', 5, 75),
(51, ' 412421', 'ACTIVO', '2024-04-23', '2024-04-23', 'Mayo', 5, 74),
(52, ' 533235', 'ACTIVO', '2024-04-23', '2024-04-23', 'Mayo', 5, 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `cedula` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `cedula`, `nombre`, `apellido`, `clave`, `email`, `rol`) VALUES
(44, 23419744, ' Marielen del Carmen', ' Rosales Mendoza', '12345', ' guerrerosdeldomo@gmail.com', 1),
(52, 25521796, ' Leonardo Andres', ' Gonzalez Torres', 'Leon2024', 'leonaxandrex27@gmail.com', 2),
(53, 22738598, ' ESTEBAN EDUARDO', ' GONZALEZ BAUTE', 'Este2024', ' egonzalezbaute@gmail.com', 2),
(54, 25971701, ' Yolanda Maygre', ' Piñero Trejo', 'Yola14', ' marieetsh@gmail.com', 2),
(74, 9822244, 'Jesus Antonio', 'Torres Perez', 'jesus1', 'britomartinezcarloshumberto@gmail.com', 2),
(75, 19544899, 'Mario ', 'Sanchez', 'Mara', 'leogonzalezvzla2019@gmail.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recibo`
--
ALTER TABLE `recibo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atleta`
--
ALTER TABLE `atleta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `recibo`
--
ALTER TABLE `recibo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
