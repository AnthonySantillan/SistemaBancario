-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2021 a las 06:03:28
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemabancarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `id_catalogo` int(11) NOT NULL,
  `nombre` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `catalogo`
--

INSERT INTO `catalogo` (`id_catalogo`, `nombre`, `valor`) VALUES
(1, 'retiro', 'ahorro'),
(2, 'deposito', 'corriente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `n_cuenta` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_cuenta` int(11) DEFAULT NULL,
  `cliente` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `ruc_entidad_bancaria` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_apertura` date DEFAULT NULL,
  `saldo` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`n_cuenta`, `tipo_cuenta`, `cliente`, `estado`, `ruc_entidad_bancaria`, `fecha_apertura`, `saldo`) VALUES
('164638724433', 1, '1732933537', 1, '1254879548574', '2007-08-01', '181'),
('278990132601', 1, '1770469784', 1, '1254879548574', '2021-05-20', '441'),
('298552004783', 1, '1746558494', 2, '1254879548574', '2020-01-07', '372'),
('312805528937', 1, '1723124352', 2, '1254879548574', '2018-07-12', '389'),
('345235235251', 1, '4587987787', 1, '1254879548574', '2000-01-01', '279'),
('358989603221', 1, '1736455663', 2, '1254879548574', '2015-12-20', '179'),
('393764065989', 1, '1734966324', 2, '1254879548574', '2014-01-14', '440'),
('432505067037', 1, '1702382284', 2, '1254879548574', '2002-07-24', '247'),
('530098107365', 1, '1758174213', 1, '1254879548574', '2018-01-07', '264'),
('552778522546', 1, '1732839695', 1, '1254879548574', '2006-08-08', '462'),
('705280157938', 1, '1714431469', 2, '1254879548574', '2009-07-28', '363'),
('709944743910', 1, '1715766747', 2, '1254879548574', '2008-10-12', '131'),
('761787916307', 1, '1707841056', 2, '1254879548574', '2013-11-26', '159'),
('828794848810', 1, '1728847477', 2, '1254879548574', '2000-12-06', '147'),
('842070918300', 1, '1717341690', 2, '1254879548574', '2004-11-27', '110'),
('922398054477', 1, '1748099428', 1, '1254879548574', '2008-02-26', '303'),
('940934537446', 1, '1799821834', 2, '1254879548574', '2009-07-03', '385'),
('954915827708', 1, '1738309280', 2, '1254879548574', '2003-11-10', '439');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_transaccion`
--

CREATE TABLE `detalle_transaccion` (
  `id_detalle_transaccion` int(11) NOT NULL,
  `transaccion` int(11) DEFAULT NULL,
  `forma_pago` int(11) DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL,
  `observaciones` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad_bancaria`
--

CREATE TABLE `entidad_bancaria` (
  `ruc` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `entidad_bancaria`
--

INSERT INTO `entidad_bancaria` (`ruc`, `nombre`, `direccion`, `telefono`) VALUES
('\'123213124\'', '\'banco pichincha\'', '\'san roque\'', '\'098729550'),
('1254879548574', 'pichincha', 'naciones unidas y general', '6985424569'),
('1326498756417', 'pichincha', '6 diciembre y los shiris', '3549785624'),
('1798463125697', 'pichincha', 'roldos y marin', '2365487952'),
('9874512578954', 'pichincha', 'Amarunan y rumichacanan', '3215497852');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_cambio`
--

CREATE TABLE `historial_cambio` (
  `id_cambios` int(11) NOT NULL,
  `fecha_cambio` date DEFAULT NULL,
  `nombre_tabla` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_registro` int(11) DEFAULT NULL,
  `nombre_columna` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evento` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor_anterior` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor_nuevo` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_sesion_sesion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interfaces`
--

CREATE TABLE `interfaces` (
  `id_interfaces` int(11) NOT NULL,
  `nombre` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `tipo_permiso` int(11) DEFAULT NULL,
  `id_rol_rol` int(11) DEFAULT NULL,
  `id_interfaces_interfaces` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `tipo_permiso`, `id_rol_rol`, `id_interfaces_interfaces`) VALUES
(1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `cedula` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_rol_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`cedula`, `nombres`, `telefono`, `direccion`, `id_rol_rol`) VALUES
('1702382284', '\"AGUIRRE	GARCÍA	JESÚS\"', '974292712', 'CALLE MATAMOROS NO. 310', 2),
('1707841056', '\"ALONSO	VIVEROS	PATRICIA\"', '947698976', 'AV. 5 DE MAYO NO. 1652', 3),
('1714431469', '\"ALCARAZ	VERDUZCO	MANUEL\"', '976268042', 'CALLE MATAMOROS NO.280', 1),
('1715766747', '\"AGUILAR	SALINAS	CARLOS ALBERTO\"', '956083266', 'AV. 20 DE NOVIEMBRE NO.1024', 2),
('1717341690', 'ANGELA AGUAYO', '946224388', 'CALLE ZARAGOZA NO. 1010', 3),
('1723124352', '\"AGUAYO	GONZÁLEZ	ÁLVARO\"', '973835244', 'AV. INDEPENDENCIA NO. 779', 2),
('1724477402', '\"ALVA	ESPINOSA	CARLOS ALFONSO\"', '960024909', 'AV. INDEPENDENCIA NO. 748', 1),
('1726521140', '\"ALPUCHE	ARANDA	CELIA MERCEDES\"', '988009613', 'AV. 5 DE MAYO NO. 1108', 1),
('1728847477', '\"ACOSTA	TORRES	LAURA SUSANA\"', '900134794', 'AV. INDEPENDENCIA NO. 241', 3),
('1732839695', 'ANDRES ACOSTA', '977314109', 'AV. 20 DE NOVIEMBRE NO. 1060', 1),
('1732933537', '\"ALONSO	VANEGAS	MARIO ARTURO\"', '957747915', 'AV.INDEPENDENCIA NO.1010', 1),
('1734966324', '\"ALBERÚ	GÓMEZ	JOSEFINA MARÍA\"', '944282659', 'AV. 20 DE NOVIEMBRE NO 1053', 1),
('1736455663', '\"ALEXANDERSON	ROSAS	ERICK\"', '914747320', 'AV. INDEPENDENCIA NO. 1282-A', 2),
('1738309280', '\"ALCÁNTAR	CURIEL	MARÍA DOLORES\"', '990867286', 'BLVD. BENITO JUAREZ NO. 1466-A', 1),
('1746558494', '\"AGUIRRE	CRUZ	MARÍA LUCINDA\"', '993818060', 'CARRETERA A LOMA ALTA S/N.', 1),
('1748099428', '\"ALMEDA	VALDÉS	PALOMA\"', '952136147', 'CALLE MATAMOROS NO. 127', 3),
('1758174213', '\"ALCOCER	VARELA	JORGE\"', '988845815', 'AV. INDEPENDENCIA NO. 545', 3),
('1770469784', '\"AGUIRRE	GAS	HÉCTOR GERARDO\"', '943500993', 'AV. 20 DE NOVIEMBRE NO.859-B', 2),
('1799821834', 'ABREU HERNÁNDEZ LUIS FELIPE', '932753284', 'CALLE AGUSTIN LARA NO. 69-B', 2),
('4587987787', 'BDO FRANCIS JUAN MIGUEL', '987452454', 'AV.MARISCAL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`, `estado`) VALUES
(1, 'cliente', 1),
(2, 'cajero', 1),
(3, 'auditor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `id_sesion` int(11) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `ip_origen` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_destino` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datos_dispositivo` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evento` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `id_transaccion` int(11) NOT NULL,
  `tipo_transaccion` int(11) DEFAULT NULL,
  `n_cuenta` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_transaccion` date DEFAULT NULL,
  `monto_total` decimal(10,0) DEFAULT NULL,
  `descripcion` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencia`
--

CREATE TABLE `transferencia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL,
  `nro_cuenta_origen` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nro_cta_destino` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` char(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clave` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_ultima_actualizacion` date DEFAULT NULL,
  `nro_intentos_fallidos` int(11) DEFAULT NULL,
  `persona` char(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`id_catalogo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`n_cuenta`),
  ADD KEY `entidad_bancaria_fk` (`ruc_entidad_bancaria`),
  ADD KEY `fk_estado` (`estado`),
  ADD KEY `fk_tipo_cuenta` (`tipo_cuenta`),
  ADD KEY `usuario_fk` (`cliente`);

--
-- Indices de la tabla `detalle_transaccion`
--
ALTER TABLE `detalle_transaccion`
  ADD PRIMARY KEY (`id_detalle_transaccion`);

--
-- Indices de la tabla `entidad_bancaria`
--
ALTER TABLE `entidad_bancaria`
  ADD PRIMARY KEY (`ruc`);

--
-- Indices de la tabla `historial_cambio`
--
ALTER TABLE `historial_cambio`
  ADD PRIMARY KEY (`id_cambios`);

--
-- Indices de la tabla `interfaces`
--
ALTER TABLE `interfaces`
  ADD PRIMARY KEY (`id_interfaces`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`),
  ADD KEY `catalogo_fk` (`tipo_permiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `rol_fk` (`id_rol_rol`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`id_sesion`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`id_transaccion`),
  ADD KEY `fk_tipo_transaccion` (`tipo_transaccion`),
  ADD KEY `fk_cuenta` (`n_cuenta`);

--
-- Indices de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `entidad_bancaria_fk` FOREIGN KEY (`ruc_entidad_bancaria`) REFERENCES `entidad_bancaria` (`ruc`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estado` FOREIGN KEY (`estado`) REFERENCES `catalogo` (`id_catalogo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_cuenta` FOREIGN KEY (`tipo_cuenta`) REFERENCES `catalogo` (`id_catalogo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_fk` FOREIGN KEY (`cliente`) REFERENCES `persona` (`cedula`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `catalogo_fk` FOREIGN KEY (`tipo_permiso`) REFERENCES `catalogo` (`id_catalogo`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `rol_fk` FOREIGN KEY (`id_rol_rol`) REFERENCES `rol` (`id_rol`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `fk_cuenta` FOREIGN KEY (`n_cuenta`) REFERENCES `cuenta` (`n_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_transaccion` FOREIGN KEY (`tipo_transaccion`) REFERENCES `catalogo` (`id_catalogo`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
