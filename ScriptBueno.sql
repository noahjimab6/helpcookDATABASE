-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 14:38:18
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `helpcook`
--

create database helpcook;

--
--   Creación usuario y permisos
--


CREATE USER 'admin' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON `helpcook`.* TO 'admin';
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `ID_Favoritos` int(11) NOT NULL,
  `ID_Recetas` int(11) NOT NULL,
  `ID_Usuarios` int(11) NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `ID_Ingredientes` int(11) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_bin NOT NULL,
  `Cantidad` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`ID_Ingredientes`, `Nombre`, `Tipo`) VALUES
(1, 'Pollo', 'Carnes'),
(2, 'Pavo', 'Carnes'),
(3, 'Cerdo', 'Carnes'),
(4, 'Ternera', 'Carnes'),
(5, 'Cordero', 'Carnes'),
(6, 'Bacalao', 'Pescados'),
(7, 'Atún', 'Pescados'),
(8, 'Salmón', 'Pescados'),
(9, 'Merluza', 'Pescados'),
(10, 'Sardinas', 'Pescados'),
(11, 'Rape', 'Pescados'),
(12, 'Ajo', 'Hortalizas y Verduras'),
(13, 'Cebolla', 'Hortalizas y Verduras'),
(14, 'Patata', 'Hortalizas y Verduras'),
(15, 'Calabacín', 'Hortalizas y Verduras'),
(16, 'Tomate', 'Hortalizas y Verduras'),
(17, 'Gambas', 'Mariscos'),
(18, 'Sepia', 'Mariscos'),
(19, 'Almejas', 'Mariscos'),
(20, 'Mejillones', 'Mariscos'),
(21, 'Pulpo', 'Mariscos'),
(22, 'Surimi', 'Mariscos'),
(23, 'Garbanzo', 'Legumbres'),
(24, 'Judias', 'Legumbres'),
(25, 'Habas', 'Legumbres'),
(31, 'Judias verdes', 'Legumbres'),
(32, 'Guisantes', 'Legumbres'),
(33, 'Lentejas', 'Legumbres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasos`
--

CREATE TABLE `pasos` (
  `ID_Pasos` int(11) NOT NULL,
  `Tipo` int(11) NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL,
  `Id_Recetas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `ID_Recetas` int(11) NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL,
  `Tiempo` float NOT NULL,
  `Foto` varchar(255) COLLATE utf8_bin NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_bin NOT NULL,
  `Categoria` varchar(255) COLLATE utf8_bin NOT NULL,
  `Fecha_Alta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ValoracionMedia` float NOT NULL,
  `Comensales` int(11) NOT NULL,
  `ID_Usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas_ingredientes`
--

CREATE TABLE `recetas_ingredientes` (
  `ID_Rec_Ingr` int(11) NOT NULL,
  `ID_Recetas` int(11) NOT NULL,
  `ID_Ingredientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuarios` int(11) NOT NULL,
  `Nick` varchar(255) COLLATE utf8_bin NOT NULL,
  `Contraseña` varchar(10) COLLATE utf8_bin NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `Apellido` varchar(255) COLLATE utf8_bin NOT NULL,
  `Email` varchar(255) COLLATE utf8_bin NOT NULL,
  `Foto` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `ID_Valoraciones` int(11) NOT NULL,
  `ID_Recetas` int(11) NOT NULL,
  `ID_Usuarios` int(11) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`ID_Favoritos`),
  ADD KEY `Favoritos_usuarios` (`ID_Usuarios`),
  ADD KEY `Favoritos_recetas` (`ID_Recetas`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`ID_Ingredientes`);

--
-- Indices de la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD PRIMARY KEY (`ID_Pasos`),
  ADD KEY `Recetas_claveforanea` (`Id_Recetas`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`ID_Recetas`),
  ADD KEY `usuarios_claveforanea` (`ID_Usuarios`);

--
-- Indices de la tabla `recetas_ingredientes`
--
ALTER TABLE `recetas_ingredientes`
  ADD PRIMARY KEY (`ID_Rec_Ingr`),
  ADD KEY `recetas_ingredientes_recetas` (`ID_Recetas`),
  ADD KEY `receta_ingredientes_ingredientes` (`ID_Ingredientes`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuarios`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`ID_Valoraciones`),
  ADD KEY `valoraciones_usuario` (`ID_Usuarios`),
  ADD KEY ` recetas_usuario` (`ID_Recetas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `ID_Favoritos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `ID_Ingredientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pasos`
--
ALTER TABLE `pasos`
  MODIFY `ID_Pasos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `ID_Recetas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas_ingredientes`
--
ALTER TABLE `recetas_ingredientes`
  MODIFY `ID_Rec_Ingr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuarios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `ID_Valoraciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `Favoritos_recetas` FOREIGN KEY (`ID_Recetas`) REFERENCES `recetas` (`ID_Recetas`),
  ADD CONSTRAINT `Favoritos_usuarios` FOREIGN KEY (`ID_Usuarios`) REFERENCES `usuarios` (`ID_Usuarios`);

--
-- Filtros para la tabla `pasos`
--
ALTER TABLE `pasos`
  ADD CONSTRAINT `Recetas_claveforanea` FOREIGN KEY (`Id_Recetas`) REFERENCES `recetas` (`ID_Recetas`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `usuarios_claveforanea` FOREIGN KEY (`ID_Usuarios`) REFERENCES `usuarios` (`ID_Usuarios`);

--
-- Filtros para la tabla `recetas_ingredientes`
--
ALTER TABLE `recetas_ingredientes`
  ADD CONSTRAINT `Receta_ingredientes_ingredientes` FOREIGN KEY (`ID_Ingredientes`) REFERENCES `ingredientes` (`ID_Ingredientes`),
  ADD CONSTRAINT `Recetas_ingredientes_Recetas` FOREIGN KEY (`ID_Recetas`) REFERENCES `recetas` (`ID_Recetas`);

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT ` Recetas_usuario` FOREIGN KEY (`ID_Recetas`) REFERENCES `recetas` (`ID_Recetas`),
  ADD CONSTRAINT `valoraciones_usuario` FOREIGN KEY (`ID_Usuarios`) REFERENCES `usuarios` (`ID_Usuarios`);

ALTER TABLE ingredientes 
  DROP Cantidad;

ALTER TABLE recetas_ingredientes 
  ADD Cantidad VARCHAR (255);
  COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

