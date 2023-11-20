-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2023 a las 00:08:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'lapices', '2023-09-30 21:52:30'),
(2, 'crayones', '2023-09-30 21:53:11'),
(3, 'colores', '2023-09-30 21:55:35'),
(4, 'boligrafos', '2023-09-30 21:55:42'),
(5, 'libros', '2023-09-30 21:55:52'),
(6, 'hojas', '2023-09-30 21:56:02'),
(7, 'cuadernos', '2023-09-30 21:56:28'),
(8, 'cartulinas', '2023-09-30 21:56:51'),
(9, 'tajadores', '2023-09-30 21:57:35'),
(10, 'borradores', '2023-09-30 21:57:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `telefono` text NOT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'michelle mattinen', 5866237, 'michellemattinen@gmail.com', '(591) 609-33944', 'cristobal de mendoza 756', '1994-08-28', 3, '2023-11-06 10:18:44', '2023-11-06 15:18:44'),
(2, 'carlos aguirre', 45410241, 'carlos@gmail.com', '(591) 760-32981', 'humberto roca', '1993-04-02', 1, '2023-11-04 09:08:01', '2023-11-04 14:08:01'),
(3, 'anonimo', 11111111, 'libreriasergio@gmail.com', '(591) 760-32981', 'km9 doble via la guardia', '2015-05-04', 10, '2023-11-16 19:41:42', '2023-11-17 00:41:42'),
(4, 'Jorge Velasco', 5866244, 'jorge@gmail.com', '(591) 760-57842', 'comercio', '1993-04-08', 5, '2023-11-14 19:56:56', '2023-11-15 00:56:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'lapiz faber castell', 'vistas/img/productos/101/932.jpg', 20, 1, 2, 0, '2023-11-06 15:08:08'),
(2, 1, '102', 'lapiz chino', 'vistas/img/productos/102/813.jpg', 20, 0.5, 1, 0, '2023-11-06 15:08:35'),
(3, 1, '103', 'lapiz rojo', 'vistas/img/productos/103/249.png', 20, 1, 2, 0, '2023-11-06 15:09:02'),
(4, 1, '104', 'lapiz primera calidad', 'vistas/img/productos/104/309.jpg', 20, 1.5, 3, 0, '2023-11-06 15:09:28'),
(5, 2, '201', 'crayones faber castell', 'vistas/img/productos/201/778.jpg', 20, 10, 15, 0, '2023-11-06 15:10:14'),
(6, 2, '202', 'crayones chinos', 'vistas/img/productos/202/130.jpg', 20, 5, 10, 0, '2023-11-06 15:11:02'),
(7, 2, '203', 'crayones primera calidad', 'vistas/img/productos/203/901.jpg', 20, 15, 20, 0, '2023-11-06 15:11:32'),
(8, 3, '301', 'colores faber castell', 'vistas/img/productos/301/361.jpg', 20, 10, 15, 0, '2023-11-06 15:12:59'),
(9, 3, '302', 'colores chino', 'vistas/img/productos/302/828.jpg', 20, 5, 10, 0, '2023-11-06 15:13:59'),
(10, 3, '303', 'colores primera calidad', 'vistas/img/productos/303/807.jpg', 20, 15, 20, 0, '2023-11-06 15:14:34'),
(11, 4, '401', 'lapicero pilot', 'vistas/img/productos/401/523.jpg', 20, 3, 5, 0, '2023-11-06 15:15:52'),
(12, 4, '402', 'lapicero chino', 'vistas/img/productos/402/570.jpg', 20, 1, 2, 0, '2023-11-06 15:16:35'),
(13, 4, '403', 'lapicero primera calidad', 'vistas/img/productos/403/619.jpg', 20, 5, 8, 0, '2023-11-06 15:07:36'),
(14, 4, '404', 'grafo', 'vistas/img/productos/404/751.jpg', 20, 7, 10, 0, '2023-11-06 15:06:36'),
(15, 5, '501', 'libro el principito', 'vistas/img/productos/501/857.jpg', 20, 10, 20, 0, '2023-11-06 15:03:25'),
(16, 5, '502', 'libro harry potter la piedra filosofal', 'vistas/img/productos/502/727.jpg', 20, 50, 80, 0, '2023-11-06 14:59:24'),
(17, 5, '503', 'libro harry potter la camara secreta', 'vistas/img/productos/503/590.jpg', 20, 50, 80, 0, '2023-11-06 14:58:53'),
(18, 5, '504', 'libro harry potter el prisionero de azkaban', 'vistas/img/productos/504/338.jpg', 20, 50, 80, 0, '2023-11-06 14:58:13'),
(19, 6, '601', 'hoja oficio', 'vistas/img/productos/601/839.jpg', 20, 0.1, 0.2, 0, '2023-11-06 14:57:20'),
(20, 6, '602', 'hoja carta', 'vistas/img/productos/602/229.jpg', 20, 0.1, 0.2, 0, '2023-11-06 14:57:00'),
(21, 6, '603', 'hoja a4', 'vistas/img/productos/603/922.jpg', 20, 0.1, 0.2, 0, '2023-11-06 14:56:33'),
(22, 6, '604', 'hoja oficio paquete', 'vistas/img/productos/604/405.jpg', 20, 20, 30, 0, '2023-11-06 14:55:59'),
(23, 6, '605', 'hoja carta paquete', 'vistas/img/productos/605/870.jpg', 20, 20, 30, 0, '2023-11-06 14:54:41'),
(24, 6, '606', 'hoja a4 paquete', 'vistas/img/productos/606/527.jpg', 20, 20, 30, 0, '2023-11-06 14:54:08'),
(25, 7, '701', 'cuaderno empastado 100 hojas', 'vistas/img/productos/701/256.jpg', 20, 10, 15, 0, '2023-11-06 14:53:01'),
(26, 7, '702', 'cuaderno empastado 200 hojas', 'vistas/img/productos/702/982.jpg', 20, 15, 20, 0, '2023-11-06 14:52:17'),
(27, 7, '703', 'cuaderno anillado 100 hojas', 'vistas/img/productos/703/290.jpg', 20, 10, 15, 0, '2023-11-06 14:51:47'),
(28, 7, '704', 'cuaderno anillado 200 hojas', 'vistas/img/productos/704/757.jpg', 20, 15, 20, 0, '2023-11-06 14:50:35'),
(29, 8, '801', 'cartulina blanca', 'vistas/img/productos/801/701.png', 20, 5, 8, 0, '2023-11-06 14:49:53'),
(30, 8, '802', 'cartulina color', 'vistas/img/productos/802/138.jpg', 19, 6, 10, 1, '2023-11-06 14:49:15'),
(31, 8, '803', 'cartulina texturizada', 'vistas/img/productos/803/639.jpg', 20, 10, 15, 0, '2023-11-06 14:48:47'),
(32, 9, '901', 'tajador faber castell', 'vistas/img/productos/901/335.jpg', 20, 1, 2, 0, '2023-11-06 14:48:09'),
(33, 9, '902', 'tajador chino', 'vistas/img/productos/902/104.jpg', 19, 0.5, 1, 1, '2023-11-06 14:45:34'),
(34, 9, '903', 'tajador primera calidad', 'vistas/img/productos/903/761.jpg', 19, 2, 3, 1, '2023-11-06 14:44:49'),
(35, 10, '1001', 'borrador faber castell', 'vistas/img/productos/1001/207.jpg', 19, 1, 2, 1, '2023-11-06 14:41:18'),
(36, 10, '1002', 'borrador chino', 'vistas/img/productos/1002/668.jpg', 19, 0.5, 1, 1, '2023-11-06 14:39:57'),
(37, 10, '1003', 'borrador primera calidad', 'vistas/img/productos/1003/772.jpg', 19, 2, 3, 1, '2023-11-06 14:42:45'),
(38, 8, '804', 'cartulina negra brillosa', 'vistas/img/productos/804/216.jpg', 29, 10, 14, 1, '2023-11-07 22:05:33'),
(39, 5, '505', 'harry potter y el caliz de fuego', 'vistas/img/productos/505/126.jpg', 49, 50, 75, 1, '2023-11-07 22:05:33'),
(40, 5, '506', 'harry potter y la orden del fenix', 'vistas/img/productos/506/673.jpg', 48, 50, 75, 2, '2023-11-07 22:05:33'),
(41, 5, '507', 'harry potter y el misterio del principe mestizo', 'vistas/img/productos/507/204.jpg', 47, 50, 75, 3, '2023-11-17 00:41:42'),
(42, 5, '508', 'harry potter y las reliquias de la muerte', 'vistas/img/productos/508/168.jpg', 44, 70, 98, 6, '2023-11-15 00:56:56'),
(45, 5, '9781936975204', 'Archie Comics book two', 'vistas/img/productos/9781936975204/550.jpg', 100, 50, 70, NULL, '2023-11-19 15:11:37'),
(46, 5, '9781936975617', 'Archie Comics book three', 'vistas/img/productos/9781936975617/844.jpg', 100, 100, 140, NULL, '2023-11-19 16:05:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'usuario Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', '', 1, '2023-11-19 09:32:25', '2023-11-19 14:32:25'),
(4, 'mauricio mattinen', 'mauricio', '$2a$07$asxx54ahjppf45sd87a5auAI0/zcfsCDG10tt1wHSXuOm.bY80U4G', 'Administrador', 'vistas/img/usuarios/mauricio/217.jpg', 1, '2023-11-16 19:32:23', '2023-11-17 00:32:23'),
(5, 'michelle mattinen', 'michelle', '$2a$07$asxx54ahjppf45sd87a5auAI0/zcfsCDG10tt1wHSXuOm.bY80U4G', 'Especial', 'vistas/img/usuarios/michelle/499.jpg', 1, '2023-10-05 09:26:08', '2023-10-05 14:26:08'),
(6, 'sthefanie mattinen', 'sthefanie', '$2a$07$asxx54ahjppf45sd87a5auAI0/zcfsCDG10tt1wHSXuOm.bY80U4G', 'Vendedor', 'vistas/img/usuarios/sthefanie/298.png', 1, '2023-10-05 09:26:42', '2023-10-05 14:26:42'),
(7, 'marco antelo', 'marco', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Especial', '', 1, '0000-00-00 00:00:00', '2023-11-05 18:28:44'),
(8, 'prueba 2 usuario', 'prueba', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'Vendedor', '', NULL, '0000-00-00 00:00:00', '2023-11-05 18:29:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(6, 10001, 3, 1, '[{\"id\":\"37\",\"descripcion\":\"borrador primera calidad\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3\",\"total\":\"3\"},{\"id\":\"36\",\"descripcion\":\"borrador chino\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1\",\"total\":\"1\"},{\"id\":\"35\",\"descripcion\":\"borrador faber castell\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2\",\"total\":\"2\"}]', 0, 6, 6, 'Efectivo', '2023-11-04 13:57:34'),
(8, 10002, 2, 1, '[{\"id\":\"30\",\"descripcion\":\"cartulina color\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"10\",\"total\":\"10\"}]', 0, 10, 10, 'Efectivo', '2023-11-04 14:08:01'),
(9, 10003, 3, 1, '[{\"id\":\"33\",\"descripcion\":\"tajador chino\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1\",\"total\":\"1\"},{\"id\":\"34\",\"descripcion\":\"tajador primera calidad\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3\",\"total\":\"3\"}]', 0, 4, 4, 'Efectivo', '2023-11-04 14:19:22'),
(10, 10004, 1, 4, '[{\"id\":\"42\",\"descripcion\":\"harry potter y las reliquias de la muerte\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"98\",\"total\":\"98\"},{\"id\":\"41\",\"descripcion\":\"harry potter y el misterio del principe mestizo\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"75\",\"total\":\"75\"},{\"id\":\"40\",\"descripcion\":\"harry potter y la orden del fenix\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 248, 248, 'Efectivo', '2023-11-06 15:18:44'),
(11, 10005, 3, 1, '[{\"id\":\"39\",\"descripcion\":\"harry potter y el caliz de fuego\",\"cantidad\":\"1\",\"stock\":\"49\",\"precio\":\"75\",\"total\":\"75\"},{\"id\":\"40\",\"descripcion\":\"harry potter y la orden del fenix\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"75\",\"total\":\"75\"},{\"id\":\"38\",\"descripcion\":\"cartulina negra brillosa\",\"cantidad\":\"1\",\"stock\":\"29\",\"precio\":\"14\",\"total\":\"14\"}]', 0, 164, 164, 'Efectivo', '2023-11-07 22:05:33'),
(12, 10006, 3, 1, '[{\"id\":\"42\",\"descripcion\":\"harry potter y las reliquias de la muerte\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"98\",\"total\":\"98\"}]', 0, 98, 98, 'Efectivo', '2023-11-09 23:38:56'),
(13, 10007, 4, 4, '[{\"id\":\"42\",\"descripcion\":\"harry potter y las reliquias de la muerte\",\"cantidad\":\"4\",\"stock\":\"44\",\"precio\":\"98\",\"total\":\"392\"},{\"id\":\"41\",\"descripcion\":\"harry potter y el misterio del principe mestizo\",\"cantidad\":\"1\",\"stock\":\"48\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 467, 467, 'Efectivo', '2023-11-15 00:56:56'),
(14, 10008, 3, 4, '[{\"id\":\"41\",\"descripcion\":\"harry potter y el misterio del principe mestizo\",\"cantidad\":\"1\",\"stock\":\"47\",\"precio\":\"75\",\"total\":\"75\"}]', 0, 75, 75, 'Efectivo', '2023-11-17 00:41:42');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
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
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
