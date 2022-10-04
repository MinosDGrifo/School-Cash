-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2022 a las 02:33:18
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
-- Base de datos: `schoolcash`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` varchar(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `descripcion`, `cantidad`) VALUES
('C01', 'PAPAS MARGARITA POLLO', 50),
('C02', 'PAPAS MARGARITA NATURAL', 50),
('C03', 'PAPAS MARGARITA BBQ', 50),
('C04', 'TODORICO NATURAL', 50),
('C05', 'TODORICO BBQ', 50),
('C06', 'TODORICO CRIOLLO', 50),
('C07', 'CHEETOS HORNEADOS', 50),
('C08', 'CHEETOS HORNEADOS PICANTES', 50),
('C09', 'DORITOS NACHO CHEESE', 50),
('C10', 'DORITOS FLAMIN . HOT', 50),
('C11', 'CHEETOS BOLIQUESO', 50),
('C12', 'CHOCLITOS LIMON', 50),
('C13', 'CHOCLITOS PICANTES', 50),
('C14', 'DE TODITO NATURAL', 50),
('C15', 'DE TODITO BBQ', 50),
('C16', 'DE TODITO LIMON', 50),
('C17', 'DE TODITO MIX', 50),
('C18', 'PAPAS MARGARITA TOMATE', 50),
('C19', 'PAPAS MARGARITA RIZADAS', 50),
('C20', 'PAPAS MARGARITA MAYONESA', 50),
('C21', 'TROCITOS', 50),
('C22', 'TOCINETAS YUPI FRED', 50),
('C23', 'PAPAS RIZADAS MAYONESA', 50),
('C24', 'PAPAS RIZADAS NATURAL', 50),
('C25', 'PAPAS RIZADAS LIMON', 50),
('C26', 'PAPAS RIZADAS POLLO', 50),
('C27', 'PALOMITAS YUPI CARAMELO', 50),
('C28', 'CHEESE TRIS', 50),
('C29', 'GALLETAS FESTIVAL VAINILA', 50),
('C30', 'GALLETAS FESTIVAL LIMON', 50),
('C31', 'GALLETAS FESTIVAL FRESA', 50),
('C32', 'GALLETAS FESTIVAL CHOCOLATE', 50),
('C33', 'PONQUE CHOCORAMO', 50),
('C34', 'PONQUE GALA VAINILLA', 50),
('C35', 'PONQUE GALA VINO', 50),
('C36', 'PONQUE GALA LIMON', 50),
('C37', 'GANSITO', 50),
('C38', 'BARRA DE CHOCOLATE', 50),
('C39', 'TORTA CASERA DE VAINILLA', 50),
('C40', 'EMPANADA POLLO', 50),
('C41', 'EMPANADA CARNE', 50),
('C42', 'PASTEL YUCA', 50),
('C43', 'SALCHI PAPAS', 50),
('C44', 'PERRO CALIENTE', 50),
('C45', 'HAMBURGUESA', 50),
('C46', 'ALITAS BBQ', 0),
('C47', 'PAPAS CHORRIADAS', 50),
('C48', 'SANDWICH', 50),
('C49', 'FRUTA PICADA', 50),
('C50', 'ARROZ DE LECHE ', 50),
('C51', 'TINTO', 50),
('C52', 'AROMATICA', 50),
('C53', 'CAFÉ', 50),
('C54', 'GASEOSA VASO', 50),
('C55', 'GASEOSA 350ML', 50),
('C56', 'AGUA BOTELLA', 50),
('C57', 'JUGO 350ML', 50),
('C58', 'TE LIMON', 50),
('C59', 'PONY MALTA', 50),
('C60', 'TE DURAZNO', 50),
('C61', 'SALPICON', 50),
('C62', 'BOMBOMBUM', 50),
('C63', 'MENTAS', 50),
('C64', 'CHICLETS', 50),
('C65', 'PIRULITO', 50),
('C66', 'PIRULITO CHOCOLATE', 50),
('C67', 'CHOCOLATINAS JET', 50),
('C68', 'LOKILLOS', 50),
('C69', 'WAFER VAINILLA', 50),
('C70', 'CHOCOLATINA DE MANI', 50),
('C71', 'GALLETAS MINI CHIPS', 50),
('C72', 'GALLETAS COCOSETTE', 50),
('C73', 'NUCITA', 50),
('C74', 'NUCITA GALLETA', 50),
('C75', 'GALLETAS CLUB SOCIAL', 50),
('C76', 'GALLETAS CLUB SOCIAL INTEGRAL', 50),
('C77', 'GALLETAS TOSH', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(20) NOT NULL,
  `tipo_rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `tipo_rol`) VALUES
(1, 'Administrativo'),
(2, 'Docente'),
(3, 'Estudiante'),
(4, 'Externos'),
(5, 'Servicios Generales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(30) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `id_rol` int(20) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `saldo` varchar(20) NOT NULL COMMENT 'Saldo inicial'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `id_rol`, `correo`, `contraseña`, `saldo`) VALUES
(79245325, 'Frederick', 'Bartoldiest', 1, 'freder@schoolcash.com', '123456', '$ 50.000'),
(1075222003, 'Juan Carlos', 'Quintero', 3, 'juan.quintero@schoolcash.com', '123456789', '$ 30.000'),
(1075222004, 'David', 'Riaño Segura', 3, 'david.segura@schoolcash.com', '1234567810', '$ 30.000'),
(1075222005, 'Johana', 'Lopez Ochoa', 3, 'johana.ochoa@schoolcash.com', '1234567811', '$ 50.000'),
(1075222006, 'Camila', 'Sandoval Urueña', 3, 'camila.urueña@schoolcash.com', '1975308492', '$ 25.000'),
(1075222007, 'Stefani', 'Gomez Rodriguez', 3, 'stefani.rodriguez@schoolcash.com', '2530864003', '$ 30.000'),
(1075222008, 'Nicolas', 'Forero Gaitan', 3, 'nicolas.gaitan@schoolcash.com', '3086419514', '$ 28.000'),
(1075222009, 'Andres ', 'Calamaro Giraldo', 3, 'andres.giraldo@schoolcash.com', '3641975025', '$ 50.000'),
(1075222010, 'Robinson', 'Diaz Ulloa', 3, 'robinson.ulloa@schoolcash.com', '4197530536', '$ 20.000'),
(1075222011, 'Amparo ', 'Grisales Cardenaz', 3, 'amparo.cardenaz@schoolcash.com', '4753086047', '$ 15.000'),
(1075222012, 'Michael Jackson', 'Jackson Buritica', 3, 'michael.buritica@schoolcash.com', '5308641558', '$ 10.000'),
(1075222013, 'Tito ', 'Pabon Higuera', 2, 'tito.higuera@schoolcash.com', '5864197069', '$ 5.000'),
(1075222014, 'Jaime', 'Alarcon Zapata', 2, 'jaime.zapata@schoolcash.com', '6419752580', '$ 2.500'),
(1075222015, 'Gladys', 'Tirano Porras', 2, 'gladys.porras@schoolcash.com', '6975308091', '$ 25.000'),
(1075222016, 'Deyanira', 'Torres Diaz', 2, 'deyanira.diaz@schoolcash.com', '7530863602', '$ 5.000'),
(1075222017, 'Claudia ', 'Cortez Lopez', 2, 'claudia.lopez@schoolcash.com', '8086419113', '$ 7.000'),
(1075222018, 'Fabian ', 'Fernandez Mariño', 2, 'fabian.mariño@schoolcash.com', '8641974624', '$ 8.000'),
(1075222019, 'Alexander', 'Chacon Cruz', 2, 'alexander.cruz@schoolcash.com', '9197530135', '$ 11.000'),
(1075222020, 'María Noelia ', 'Calderón', 2, 'maría.calderón@schoolcash.com', '9753085646', '$ 13.000'),
(1075222021, 'Claudia ', 'Hernández', 2, 'claudia.@schoolcash.com', '10308641157', '$ 12.000'),
(1075222022, 'Elizabet', 'Cortés', 2, 'elizabeth.@schoolcash.com', '10864196668', '$ 18.000'),
(1075222023, 'Ana victoria ', 'Tamayo', 1, 'ana.tamayo@schoolcash.com', '11419752179', '$ 10.000'),
(1075222024, 'Luz Myriam ', 'Hernández', 1, 'luz.hernández@schoolcash.com', '11975307690', '$ 10.000'),
(1075222025, 'Luz Marina ', 'Ocampo', 1, 'luz.ocampo@schoolcash.com', '12530863201', '$ 15.000'),
(1075222026, 'Edwar Emilio ', 'Ortiz', 1, 'edwar.ortiz@schoolcash.com', '13086418712', '$ 50.000'),
(1075222027, 'Natalia ', 'Henao Callejas', 1, 'natalia.callejas@schoolcash.com', '13641974223', ''),
(1075222028, 'Adriana Patricia', 'Patricia Arroyave', 1, 'adriana.arroyave@schoolcash.com', '14197529734', ''),
(1075222029, 'Jaime', 'Tirano Porras', 1, 'jaime.porras@schoolcash.com', '14753085245', ''),
(1075222030, 'Aida ', 'Zapata Perilla', 1, 'aida.perilla@schoolcash.com', '15308640756', ''),
(1075222031, 'Carlos', 'Cortez Polania', 1, 'carlos.polania@schoolcash.com', '15864196267', ''),
(1075222032, 'Jimmy', 'Rodriguez Torres', 1, 'jimmy.torres@schoolcash.com', '16419751778', ''),
(1075222039, 'Lina ', 'Marulanda Gomez', 4, 'lina.gomez@schoolcash.com', '16975307289', ''),
(1075222040, 'Edilia ', 'Franco Torres', 4, 'edilia.torres@schoolcash.com', '17530862800', ''),
(1075222041, 'Gilma', 'Arrechea Lopez', 4, 'gilma.lopez@schoolcash.com', '18086418311', ''),
(1075222042, 'Manuel ', 'Beltran Cordoba', 4, 'manuel.cordoba@schoolcash.com', '18641973822', ''),
(1075222043, 'Invitado 1', '', 5, 'invitado.@schoolcash.com', '19197529333', ''),
(1075222044, 'Invitado 2', '', 5, 'invitado.@schoolcash.com', '19753084844', ''),
(1075222045, 'Invitado 3', '', 5, 'invitado.@schoolcash.com', '20308640355', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` varchar(20) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unidad` varchar(20) DEFAULT NULL,
  `total_venta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fecha`, `id_usuario`, `id_producto`, `descripcion`, `cantidad`, `precio_unidad`, `total_venta`) VALUES
(11, '2030-09-22', 1075222003, 'C03', 'PAPAS MARGARITA BBQ', 2, '$ 2.500', '$ 5.000'),
(12, '2022-10-30', 1075222013, 'C04', 'TODORICO NATURAL', 1, '$ 3.000', '$ 3.000'),
(13, '2022-10-03', 1075222006, 'C23', 'PAPAS RIZADAS MAYONESA', 3, '$ 2.500', '$ 7.500'),
(14, '2022-10-04', 1075222009, 'C50', 'ARROZ DE LECHE ', 1, '$ 3.000', '$ 3.000'),
(15, '2022-10-03', 1075222007, 'C57', 'JUGO 350ML', 1, '$ 2.500', '$ 2.500'),
(16, '2022-10-03', 79245325, 'C55', 'GASEOSA 350ML', 2, '$ 2.500', '$ 5.000'),
(17, '2022-10-03', 79245325, 'C48', 'SANDWICH', 1, '$ 4.000', '$ 4.000'),
(18, '2022-10-03', 79245325, 'C45', 'HAMBURGUESA', 1, '$ 4.000', '$ 4.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_producto`
--

CREATE TABLE `venta_producto` (
  `id_venta` int(11) NOT NULL,
  `id_producto` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unidad` varchar(20) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `saldo_final` varchar(20) NOT NULL COMMENT 'Saldo despues de compras'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta_producto`
--

INSERT INTO `venta_producto` (`id_venta`, `id_producto`, `cantidad`, `precio_unidad`, `total_venta`, `saldo_final`) VALUES
(11, 'C03', 2, '$ 2.500', '$ 5.000', '$ 25.000'),
(12, 'C04', 1, '$ 3.000', '$ 3.000', '$ 2.000'),
(13, 'C23', 3, '$ 2.500', '$ 7.500', '$ 17.500'),
(14, 'C50', 1, '$ 3.000', '$ 3.000', '$ 47.000'),
(15, 'C57', 1, '$ 2.500', '$ 2.500', '$ 27.500'),
(16, 'C55', 2, '$ 2.500', '$ 5.000', '$ 37.000'),
(17, 'C48', 1, '$ 4.000', '$ 4.000', '$ 44.000'),
(18, 'C45', 1, '$ 4.000', '$ 4.000', '$ 42.000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD UNIQUE KEY `id_rol` (`id_rol`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_usuario` (`id_usuario`,`id_producto`),
  ADD KEY `venta_ibfk_2` (`id_producto`);

--
-- Indices de la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD CONSTRAINT `venta_producto_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
