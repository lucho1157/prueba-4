-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2023 a las 12:36:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `porfolio3_jpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `end` varchar(50) DEFAULT NULL,
  `herramientas` varchar(255) DEFAULT NULL,
  `imglog` varchar(150) DEFAULT NULL,
  `puesto1` varchar(255) DEFAULT NULL,
  `puesto2` varchar(255) DEFAULT NULL,
  `puesto3` varchar(255) DEFAULT NULL,
  `puesto4` varchar(255) DEFAULT NULL,
  `start` varchar(50) DEFAULT NULL,
  `tarea` varchar(255) DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `experiences`
--

INSERT INTO `experiences` (`id`, `empresa`, `end`, `herramientas`, `imglog`, `puesto1`, `puesto2`, `puesto3`, `puesto4`, `start`, `tarea`, `persona_id`) VALUES
(1, 'MECOLUZ Iluminación:', 'Diciembre de 1975', '', './assets/IMG/logoIluminacion1.png', 'Operario de tornería con material aluminio (tulipas).', 'Armado y diseño de artefactos electrolumínicos.', '', '', 'Mayo de 1975', '', 1),
(2, 'Cumbre Coop. Arg. de Seguros Ltda:', 'Octubre de 1999', NULL, './assets/IMG/logoCumbre2.png', 'Auxiliar Contable.', 'Encargado de Tesorería.', 'Subjefe Departamento de Cobranzas.', 'Encargado General Delegación Morón.', 'Diciembre de 1977', NULL, 1),
(3, 'Edición de Video:', 'Diciembre de 2022', 'Manejo de Photoshop, Adobe Premier y Sony Vegas.', './assets/IMG/logoEdicion.png', NULL, NULL, NULL, NULL, 'Abril de 2000', 'Editor de video independiente para eventos empresariales y particulares.', 1),
(11, 'Tucu', 'Diciembre de 2022', NULL, NULL, 'er', NULL, NULL, NULL, 'Diciembre de 2020', NULL, 1),
(12, 'Tucu', 'Diciembre de 2022', NULL, NULL, 'er', NULL, NULL, NULL, 'Diciembre de 2020', NULL, 1),
(13, 'Tucu', 'Diciembre de 2022', NULL, NULL, 'er', NULL, NULL, NULL, 'Diciembre de 2020', NULL, 1),
(14, 'Tucu tucu', 'Diciembre 2021', NULL, NULL, 'er', NULL, NULL, NULL, 'Diciembre de 2020', NULL, 1),
(15, 'Tucu', 'Diciembre de 2022', NULL, NULL, 'er', 'emp', 'jefe', NULL, 'Diciembre de 2020', NULL, 1),
(16, 'Tucu tucu', 'Diciembre de 2022', NULL, NULL, 'er', NULL, NULL, NULL, 'Diciembre de 2020', NULL, 1),
(17, 'Tucu tucu', 'Diciembre 2021', NULL, './assets/IMG/logoUTN(a).png', 'er', NULL, NULL, NULL, 'Diciembre de 2020', NULL, 1),
(18, 'Tucu tucu', 'Diciembre de 2022', 'wedfg', './assets/IMG/imagesCV.jpg', 'er', 'emp', 'jefe', 'ertyu', 'Diciembre de 2020', 'ertg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `about` text DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `profesion` varchar(255) DEFAULT NULL,
  `urlperfil` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `about`, `apellido`, `banner`, `nombre`, `profesion`, `urlperfil`) VALUES
(1, 'Hola, soy un apasionado del conocimiento, mi motor, la curiosidad, me gustan las ciencias, las matematicas , la fisica y tener una cultura general adecuada.  Adentrarme en el mundo del desarrollo web lo considero un desafio personal que estoy dispuesto a asumir, y utilizarlo como herramienta para evolucionar profesionalmente, es mi objetivo.', 'Morello', 'Acerca de Mi', 'Luis José', 'Desarrolador Full Stack Jr', 'https://i.ibb.co/Qms18HX/imagen-EDU.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL,
  `imglog` varchar(150) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `text` text DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `imglog`, `name`, `text`, `persona_id`) VALUES
(1, './assets/IMG/imagesCV.jpg', 'Mi Porfolio', 'Actualmente desarrollando mi curriculum vitae, atravesando todas las tecnologias necesarias para obtener un proyecto final integrador, que me permita sumar experiencia y conocimiento.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `urlred` varchar(150) DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `nombre`, `urlred`, `persona_id`) VALUES
(1, 'instagram', 'https://www.instagram.com/', 1),
(2, 'facebook', 'https://www.facebook.com/', 1),
(3, 'linkedin', 'https://ar.linkedin.com/', 1),
(4, 'github', 'https://github.com/', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) NOT NULL,
  `career` varchar(255) DEFAULT NULL,
  `end` varchar(50) DEFAULT NULL,
  `imglog` varchar(150) DEFAULT NULL,
  `instituto` varchar(255) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `start` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `career`, `end`, `imglog`, `instituto`, `level`, `start`, `title`, `persona_id`) VALUES
(1, 'Comercial', 'Diciembre de 1975', './assets/IMG/logoSecundaria.jpg', 'Escuela de Enseñanza Media 5 \'Dr. José Ingenieros\'', 'Secundario:', 'Marzo de 1971', 'Perito Mercantil', 1),
(2, 'Ingeniería', 'Diciembre de 1982', './assets/IMG/logoUTN(a).png', 'Universidad Tecnológica Nacional Regional BA', 'Universitario:', 'Marzo de 1978', 'Ingeniero Mecánico', 1),
(3, 'Licenciatura en Sistemas', 'Diciembre de 1985', './assets/IMG/logoISMM.jpg', 'Instituto Superior \'Mariano Moreno\'', 'Terciario:', 'Abril de 1983', ' Licenciado en Sistemas Administrativos', 1),
(7, 'Ingeniería', NULL, NULL, 'Universidad Tecnológica Nacional Regional BA', 'Universitario:', NULL, NULL, 1),
(8, 'Ingeniería', 'Diciembre de 1975', './assets/IMG/logoUTN(a).png', 'Universidad Tecnológica Nacional Regional BA', 'Universitario:', 'Marzo de 1971', NULL, 1),
(9, 'Ingeniería', 'Diciembre de 1982', './assets/IMG/logoUTN(a).png', 'Universidad Tecnológica Nacional Regional BA', 'Universitario:', 'Marzo de 1978', 'Ingeniería', 1),
(10, 'Ingeniería', 'Diciembre de 1982', './assets/IMG/logoUTN(a).png', 'Universidad Tecnológica Nacional Regional BA', 'Universitario:', 'Marzo de 1978', 'Ingeniería', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skils`
--

CREATE TABLE `skils` (
  `id` bigint(20) NOT NULL,
  `habilidad` varchar(50) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `persona_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `skils`
--

INSERT INTO `skils` (`id`, `habilidad`, `porcentaje`, `persona_id`) VALUES
(1, 'HTML', 70, 1),
(2, 'CSS3', 55, 1),
(3, 'BS', 55, 1),
(4, 'JS', 30, 1),
(27, 'SB', 32, 1),
(29, 'java', 32, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` tinytext DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`) VALUES
(1, 'luisgigio58@gmail.com', '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `skils`
--
ALTER TABLE `skils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `skils`
--
ALTER TABLE `skils`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `redes`
--
ALTER TABLE `redes`
  ADD CONSTRAINT `redes_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `skils`
--
ALTER TABLE `skils`
  ADD CONSTRAINT `skils_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
