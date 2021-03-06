-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2021 a las 03:45:23
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `establecimientos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Restaurante', 'restaurantes', '2021-02-17 09:51:25', '2021-02-17 09:51:25'),
(2, 'Café', 'cafes', '2021-02-17 09:51:25', '2021-02-17 09:51:25'),
(3, 'Hotel', 'hoteles', '2021-02-17 09:51:25', '2021-02-17 09:51:25'),
(4, 'Bar', 'bares', '2021-02-17 09:51:25', '2021-02-17 09:51:25'),
(5, 'Hospital', 'hospitales', '2021-02-17 09:51:26', '2021-02-17 09:51:26'),
(6, 'Doctor', 'doctores', '2021-02-17 09:51:26', '2021-02-17 09:51:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimientos`
--

CREATE TABLE `establecimientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_principal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apertura` time NOT NULL,
  `cierre` time NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `establecimientos`
--

INSERT INTO `establecimientos` (`id`, `categoria_id`, `user_id`, `nombre`, `img_principal`, `direccion`, `colonia`, `lat`, `lng`, `telefono`, `descripcion`, `apertura`, `cierre`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Hotel Hotson', 'principales/VqDH6RRI8HxmVeYdSP2JLAME2DHcoyNkM4XdMiT6.jpg', 'calle la mascota #899', 'Escalon', '13.703885605824542', '-89.18383598327638', '78968996', 'cualquiera se puede hospedar en esta merga jajajajajajxddddddd', '05:00:00', '23:00:00', 'b2b5c438-9872-4561-bfad-5792db08ef92', '2021-02-17 21:37:49', '2021-02-17 21:37:49'),
(2, 2, 3, 'café kinfly', 'principales/cZjWOQDfxl0JhuhTSLBJnLyr80D0SmMup1Nwf12L.jpg', 'barrio santa anita', 'santa julia', '13.693858062943841', '-89.19954299926759', '888897894', 'se vende cafe rico, muy rico, tambien pan dulce y diferentes antojos tipicos salvadoreños', '15:00:00', '20:00:00', 'ede4b609-84c6-4a54-8fb4-1dafcf78d504', '2021-02-17 21:47:53', '2021-02-17 21:47:53'),
(3, 1, 1, 'Comedor mama lolita', 'principales/hAF8tKtsuu3A0KXGN34DNd7jNtS37AnzIZrdtVuJ.jpg', 'bulevar del hipodromo #88', 'san benito', '13.693920606116873', '-89.15553331375122', '74859636', 'es un restaurante bastante barato, en una zona centrica y con un horario amplio para que puedan visitarnos', '06:30:00', '22:00:00', '69682fe7-866f-41a2-9156-d07e3d864394', '2021-02-17 21:51:16', '2021-03-06 08:02:49'),
(4, 1, 4, 'asados el chelle', 'principales/a1PvmxCAi59EqAkhYXiJHvGhUzakLmLoPq2IYida.jpg', 'final calle el pedregral, santa tecla', 'miel de aveja', '13.7001748394024', '-89.17615413665773', '78787474', 'contamos con ricos platos de carne con chorizo xddd, cervezas y gaseosas para matar gente', '16:00:00', '23:00:00', '2a33525a-d8ef-4135-90a7-9d829f505ca5', '2021-02-18 07:24:30', '2021-02-18 07:24:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagens`
--

CREATE TABLE `imagens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_establecimiento` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `imagens`
--

INSERT INTO `imagens` (`id`, `id_establecimiento`, `ruta`) VALUES
(1, 'b516eab1-f9fa-41a6-a435-32333ab95eb5', 'establecimientos/P3qPlqmozouOioVDsx238qglUuzjHeELKqoJnR97.jpg'),
(2, 'b2b5c438-9872-4561-bfad-5792db08ef92', 'establecimientos/KtJl4ipTjDTXhKnFZN6jDCkJX0XQzM1FjrgYh09F.jpg'),
(3, 'ede4b609-84c6-4a54-8fb4-1dafcf78d504', 'establecimientos/f07hVscuSA7PAlF1cKbWMsqePq74PAocj7CZsRpB.jpg'),
(4, 'ede4b609-84c6-4a54-8fb4-1dafcf78d504', 'establecimientos/VG3aSrJTWnJbMwPnQXUF6oKOrQwh8P9ZM1N7G0sj.jpg'),
(6, '69682fe7-866f-41a2-9156-d07e3d864394', 'establecimientos/ZlLw9RpudLTFRuxE2L1QnbS3xnYd5CcKOe1SAFit.jpg'),
(7, '69682fe7-866f-41a2-9156-d07e3d864394', 'establecimientos/UdkxswUXb1k0blu7GOfnwyUmpXhXJiAHYt7XxHNk.jpg'),
(8, 'bdb1a684-ee7c-48a8-acec-95ecef596a82', 'establecimientos/oBQg2mKkhNbcHsJYwoI3zzEJEsf5Ydt4AfbDqlSA.jpg'),
(9, 'bdb1a684-ee7c-48a8-acec-95ecef596a82', 'establecimientos/uan9RUTCijgTPAQBlcFH7K8oYQAERMdyE3DTFEbS.jpg'),
(10, 'bdb1a684-ee7c-48a8-acec-95ecef596a82', 'establecimientos/FFqMIbi2dBklqOKLnoVk27W2ceWN8gOBMvPHdFuT.jpg'),
(12, '69682fe7-866f-41a2-9156-d07e3d864394', 'establecimientos/pPNiaiBvPgHSWiFIeq3NYAyPEIL87IzDXRTPgr5q.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_12_031054_create_establecimientos_table', 1),
(5, '2021_02_14_030128_create_imagens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jorge', 'correo@correo.com', '2021-02-17 09:51:18', '$2y$10$14qq50t5JMez0H.0.n2EwueshshDFRp.53PBOKjlk38BFPi66CB/i', NULL, '2021-02-17 09:51:19', '2021-02-17 09:51:19'),
(2, 'Alberto', 'correo2@correo.com', '2021-02-17 09:51:20', '$2y$10$Vj7BgTM2gRtze.f8kUVxXubfQOMHGd6/H4zu3NTiGIVwFkfmx5hq6', NULL, '2021-02-17 09:51:20', '2021-02-17 09:51:20'),
(3, 'Doral', 'correo3@correo.com', '2021-02-17 09:51:21', '$2y$10$cT.7uBM7lmcj6Hc3A6plheium/1szCaX6N53lu/QAGgtU3qTQ9kv6', NULL, '2021-02-17 09:51:21', '2021-02-17 09:51:21'),
(4, 'Isidro', 'correo4@correo.com', '2021-02-17 09:51:24', '$2y$10$g6CjHpmMvP/E/Q5RbrGPZOKNf/ga7Xt5EAtC0410FwqHLBxjBEkly', NULL, '2021-02-17 09:51:24', '2021-02-17 09:51:24'),
(5, 'Condorado', 'correo5@correo.com', '2021-02-17 09:51:24', '$2y$10$YSS0Jx3GI3DUTx74dhsz3O9JAAMhnEa5FOMJdoXxAvdbJEO8gMHjm', NULL, '2021-02-17 09:51:25', '2021-02-17 09:51:25'),
(6, 'composer', 'c@correo.com', '2021-02-19 22:53:00', '$2y$10$wmnzQ.fQjy3TgH4kt1m/GeP9w4fLBUDZ0mxbMh6IbJH79UijufUlC', NULL, '2021-02-19 22:49:09', '2021-02-19 22:53:00'),
(7, 'loreto', 'loreto@correo.com', NULL, '$2y$10$VrkG5lBP4RrDSXFpbazJeuNAAgjbUQD2/ilDAbiLp/l4eSDp9f0CC', NULL, '2021-02-22 23:13:23', '2021-02-22 23:13:23'),
(8, 'nuevo', 'nuevo@correo.com', '2021-02-22 23:33:32', '$2y$10$QUDme98prIfJoBG2oH9iIuZmhKw8nAIseGy7U8byrojXA3YFqsq/G', NULL, '2021-02-22 23:32:59', '2021-02-22 23:33:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `establecimientos`
--
ALTER TABLE `establecimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `establecimientos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `establecimientos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `establecimientos`
--
ALTER TABLE `establecimientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `establecimientos`
--
ALTER TABLE `establecimientos`
  ADD CONSTRAINT `establecimientos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `establecimientos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
