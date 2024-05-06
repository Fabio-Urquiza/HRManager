-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 05:24:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hrmanager`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `departamento_codigo` varchar(255) DEFAULT NULL,
  `departamento_nombre` varchar(255) DEFAULT NULL,
  `fecha_hora_crea` datetime DEFAULT NULL,
  `fecha_hora_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento_codigo`, `departamento_nombre`, `fecha_hora_crea`, `fecha_hora_modifica`) VALUES
(1, '91', 'Amazonas', '2024-04-29 09:29:04', '2024-04-29 09:29:04'),
(2, '05', 'Antioquia', '2024-05-03 00:00:00', '2024-05-03 00:00:00'),
(3, '81', 'Arauca', '2024-05-03 00:00:00', '2024-05-03 00:00:00'),
(4, '08', 'Atlántico', '2024-05-03 00:00:00', '2024-05-03 00:00:00'),
(5, '13', 'Bolívar', '2024-05-03 00:00:00', '2024-05-03 00:00:00'),
(6, '15', 'Boyacá', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(7, '17', 'Caldas', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(8, '18', 'Caquetá', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(9, '85', 'Casanare', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(10, '19', 'Cauca ', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(11, ' 20', 'Cesar', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(12, '27', 'Chocó', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(13, '23', 'Córdoba', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(14, '25', 'Cundinamarca', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(15, '94', 'Guainía', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(16, '95', 'Guaviare', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(17, '41', 'Huila', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(18, '44', 'La Guajira', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(19, '47', 'Magdalena', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(20, '50', 'Meta', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(21, '52', 'Nariño', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(22, '54', 'Norte de Santander', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(23, '86', 'Putumayo', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(24, '63', 'Quindío', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(25, '66', 'Risaralda', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(26, '88', 'San Andrés y Providencia', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(27, '68', 'Santander', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(28, '70', 'Sucre', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(29, '73', 'Tolima', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(30, '76', 'Valle del Cauca', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(31, '97', 'Vaupés', '2024-05-05 00:00:00', '2024-05-05 00:00:00'),
(32, '99', 'Vichada', '2024-05-05 00:00:00', '2024-05-05 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `correo_electronico` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `documento_numero` varchar(255) DEFAULT NULL,
  `documento_tipo` varchar(255) DEFAULT NULL,
  `fecha_hora_crea` datetime DEFAULT NULL,
  `fecha_hora_modifica` datetime DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `departamentos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `apellidos`, `ciudad`, `correo_electronico`, `direccion`, `documento_numero`, `documento_tipo`, `fecha_hora_crea`, `fecha_hora_modifica`, `nombres`, `telefono`, `departamentos_id`) VALUES
(31, 'Urquiza', 'Bogotá', 'dimetrix1883@hotmail.com', 'Dg 45 sur #20-36', '80119962', 'CC', '2024-05-05 03:16:57', '2024-05-05 22:14:26', 'Fabio', '3133966943', 14),
(33, 'López', 'Medellín', 'ana.lopez@example.com', 'Avenida 456', '987654321', 'CC', NULL, NULL, 'Ana', '9876543210', 2),
(34, 'González', 'Cali', 'carlos.gonzalez@example.com', 'Carrera 789', '456789123', 'TI', NULL, NULL, 'Carlos', '4567891230', 3),
(35, 'Martínez', 'Barranquilla', 'maria.martinez@example.com', 'Calle 456', '987123456', 'CC', NULL, NULL, 'María', '9871234560', 4),
(36, 'Rodríguez', 'Cartagena', 'luis.rodriguez@example.com', 'Avenida 789', '321987654', 'CE', NULL, NULL, 'Luis', '3219876540', 5),
(37, 'Sánchez', 'Cúcuta', 'patricia.sanchez@example.com', 'Carrera 789', '654321987', 'CC', NULL, NULL, 'Patricia', '6543219870', 6),
(38, 'Gómez', 'Soledad', 'diego.gomez@example.com', 'Calle 789', '789654321', 'TI', NULL, NULL, 'Diego', '7896543210', 7),
(39, 'Díaz', 'Ibagué', 'laura.diaz@example.com', 'Carrera 123', '321789654', 'CC', NULL, NULL, 'Laura', '3217896540', 8),
(40, 'Hernández', 'Bucaramanga', 'juan.hernandez@example.com', 'Calle 456', '456123789', 'CE', NULL, NULL, 'Juan', '4561237890', 9),
(41, 'Torres', 'Santa Marta', 'carolina.torres@example.com', 'Avenida 123', '123789456', 'CC', NULL, NULL, 'Carolina', '1237894560', 10),
(42, 'Vargas', 'Valledupar', 'sergio.vargas@example.com', 'Carrera 456', '789321654', 'TI', NULL, NULL, 'Sergio', '7893216540', 11),
(43, 'Ruiz', 'Montería', 'natalia.ruiz@example.com', 'Calle 789', '654987321', 'CC', NULL, NULL, 'Natalia', '6549873210', 12),
(44, 'Molina', 'Pasto', 'jorge.molina@example.com', 'Avenida 456', '987321654', 'CE', NULL, NULL, 'Jorge', '9873216540', 13),
(45, 'Giraldo', 'Manizales', 'claudia.giraldo@example.com', 'Carrera 789', '321654987', 'CC', NULL, NULL, 'Claudia', '3216549870', 14),
(46, 'Rojas', 'Neiva', 'javier.rojas@example.com', 'Calle 123', '123987654', 'TI', NULL, NULL, 'Javier', '1239876540', 15),
(47, 'Gutiérrez', 'Bogotá', 'marco.gutierrez@example.com', 'Calle 123', '123456789', 'CC', NULL, NULL, 'Marco', '1234567890', 16),
(48, 'Ortiz', 'Medellín', 'andrea.ortiz@example.com', 'Avenida 456', '987654321', 'CC', NULL, NULL, 'Andrea', '9876543210', 17),
(49, 'Fernández', 'Cali', 'daniel.fernandez@example.com', 'Carrera 789', '456789123', 'TI', NULL, NULL, 'Daniel', '4567891230', 18),
(50, 'Soto', 'Barranquilla', 'natalia.soto@example.com', 'Calle 456', '987123456', 'CC', NULL, NULL, 'Natalia', '9871234560', 19),
(51, 'Moreno', 'Cartagena', 'juan.moreno@example.com', 'Avenida 789', '321987654', 'CE', NULL, NULL, 'Juan', '3219876540', 20),
(52, 'Castaño', 'Cúcuta', 'luis.castaño@example.com', 'Carrera 789', '654321987', 'CC', NULL, NULL, 'Luis', '6543219870', 21),
(53, 'Mendoza', 'Soledad', 'laura.mendoza@example.com', 'Calle 789', '789654321', 'TI', NULL, NULL, 'Laura', '7896543210', 22),
(54, 'Ramírez', 'Ibagué', 'pedro.ramirez@example.com', 'Carrera 123', '321789654', 'CC', NULL, NULL, 'Pedro', '3217896540', 23),
(55, 'Vega', 'Bucaramanga', 'carolina.vega@example.com', 'Calle 456', '456123789', 'CE', NULL, NULL, 'Carolina', '4561237890', 24),
(56, 'Perez', 'Santa Marta', 'eduardo.perez@example.com', 'Avenida 123', '123789456', 'CC', NULL, NULL, 'Eduardo', '1237894560', 25),
(57, 'Lopez', 'Valledupar', 'marta.lopez@example.com', 'Carrera 456', '789321654', 'TI', NULL, NULL, 'Marta', '7893216540', 26),
(58, 'Gonzalez', 'Montería', 'carlos.gonzalez@example.com', 'Calle 789', '654987321', 'CC', NULL, NULL, 'Carlos', '6549873210', 27),
(59, 'Torres', 'Pasto', 'juliana.torres@example.com', 'Avenida 456', '987321654', 'CE', NULL, NULL, 'Juliana', '9873216540', 28),
(60, 'Díaz', 'Manizales', 'david.diaz@example.com', 'Carrera 789', '321654987', 'CC', NULL, NULL, 'David', '3216549870', 29),
(62, 'Duque', 'Bogotá', 'julianaduque39@hotmail.com', 'Dg 45 sur #20-36', '53040241', 'CC', '2024-05-05 03:37:58', '2024-05-05 03:40:12', 'Juliana', '3204393525', 14);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_empleados_departamentos_id` (`departamentos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_empleados_departamentos_id` FOREIGN KEY (`departamentos_id`) REFERENCES `departamentos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
