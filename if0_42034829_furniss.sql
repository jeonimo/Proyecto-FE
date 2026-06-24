-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql102.infinityfree.com
-- Tiempo de generación: 23-06-2026 a las 20:49:39
-- Versión del servidor: 11.4.12-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_42034829_furniss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo','egresado','transferido','baja') DEFAULT 'activo',
  `division` varchar(1) DEFAULT NULL,
  `anio_lectivo` varchar(10) DEFAULT '2026'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `apellido`, `dni`, `curso`, `email`, `telefono`, `direccion`, `estado`, `division`, `anio_lectivo`) VALUES
(16, 'Mateo', 'Gomez', '45011001', '3', 'mateo.gomez@email.com', '3854011001', 'Av. Belgrano 101', 'activo', 'A', '2028'),
(17, 'Sof?a', 'Rodriguez', '45011002', '3', 'sofia.rodriguez@email.com', '3854011002', 'Calle San Mart?n 202', 'activo', 'A', '2028'),
(18, 'Santiago', 'Fernandez', '45011003', '3', 'santiago.fernandez@email.com', '3854011003', 'Av. Rivadavia 303', 'activo', 'A', '2028'),
(19, 'Valentina', 'Lopez', '45011004', '3', 'valentina.lopez@email.com', '3854011004', 'Calle Mitre 404', 'activo', 'A', '2028'),
(20, 'Lucas', 'Martinez', '45011005', '3', 'lucas.martinez@email.com', '3854011005', 'Av. Roca 505', 'activo', 'A', '2028'),
(21, 'Camila', 'Diaz', '45011006', '3', 'camila.diaz@email.com', '3854011006', 'Calle Urquiza 606', 'activo', 'A', '2028'),
(22, 'Bautista', 'Perez', '45011007', '3', 'bautista.perez@email.com', '3854011007', 'Av. Moreno 707', 'activo', 'A', '2028'),
(23, 'Isabella', 'Romero', '45011008', '3', 'isabella.romero@email.com', '3854011008', 'Calle Alvear 808', 'activo', 'A', '2028'),
(24, 'Felipe', 'Sanchez', '45011009', '3', 'felipe.sanchez@email.com', '3854011009', 'Av. Colon 909', 'activo', 'A', '2028'),
(25, 'Catalina', 'Garc?a', '45011010', '3', 'catalina.garcia@email.com', '3854011010', 'Calle Arenales 1010', 'activo', 'A', '2028'),
(26, 'Bruno', 'Alvarez', '45012001', '3', 'bruno.alvarez@email.com', '3854012001', 'Av. Belgrano 111', 'activo', 'B', '2028'),
(27, 'Emilia', 'Torres', '45012002', '3', 'emilia.torres@email.com', '3854012002', 'Calle San Mart?n 212', 'activo', 'B', '2028'),
(28, 'Thiago', 'Ramirez', '45012003', '3', 'thiago.ramirez@email.com', '3854012003', 'Av. Rivadavia 313', 'activo', 'B', '2028'),
(29, 'Mia', 'Ruiz', '45012004', '3', 'mia.ruiz@email.com', '3854012004', 'Calle Mitre 414', 'activo', 'B', '2028'),
(30, 'Joaqu?n', 'Flores', '45012005', '3', 'joaquin.flores@email.com', '3854012005', 'Av. Roca 515', 'activo', 'B', '2028'),
(31, 'Victoria', 'Acosta', '45012006', '3', 'victoria.acosta@email.com', '3854012006', 'Calle Urquiza 616', 'activo', 'B', '2028'),
(32, 'Benjam?n', 'Benitez', '45012007', '3', 'benjamin.benitez@email.com', '3854012007', 'Av. Moreno 717', 'activo', 'B', '2028'),
(33, 'Martina', 'Medina', '45012008', '3', 'martina.medina@email.com', '3854012008', 'Calle Alvear 818', 'activo', 'B', '2028'),
(34, 'Samuel', 'Suarez', '45012009', '3', 'samuel.suarez@email.com', '3854012009', 'Av. Colon 919', 'activo', 'B', '2028'),
(35, 'Elena', 'Herrera', '45012010', '3', 'elena.herrera@email.com', '3854012010', 'Calle Arenales 1021', 'activo', 'B', '2028'),
(36, 'Tom?s', 'Aguirre', '45013001', '3', 'tomas.aguirre@email.com', '3854013001', 'Av. Belgrano 121', 'activo', 'C', '2028'),
(37, 'Emma', 'Gimenez', '45013002', '3', 'emma.gimenez@email.com', '3854013002', 'Calle San Mart?n 222', 'activo', 'C', '2028'),
(38, 'Mat?as', 'Gutierrez', '45013003', '3', 'matias.gutierrez@email.com', '3854013003', 'Av. Rivadavia 323', 'activo', 'C', '2028'),
(39, 'Alma', 'Pereira', '45013004', '3', 'alma.pereira@email.com', '3854013004', 'Calle Mitre 424', 'activo', 'C', '2028'),
(40, 'Francisco', 'Rojas', '45013005', '3', 'francisco.rojas@email.com', '3854013005', 'Av. Roca 525', 'activo', 'C', '2028'),
(41, 'Olivia', 'Molina', '45013006', '3', 'olivia.molina@email.com', '3854013006', 'Calle Urquiza 626', 'activo', 'C', '2028'),
(42, 'Agust?n', 'Castro', '45013007', '3', 'agustin.castro@email.com', '3854013007', 'Av. Moreno 727', 'activo', 'C', '2028'),
(43, 'Juana', 'Silva', '45013008', '3', 'juana.silva@email.com', '3854013008', 'Calle Alvear 828', 'activo', 'C', '2028'),
(44, 'Ignacio', 'Ortiz', '45013009', '3', 'ignacio.ortiz@email.com', '3854013009', 'Av. Colon 929', 'activo', 'C', '2028'),
(45, 'Delfina', 'Nu?ez', '45013010', '3', 'delfina.nunez@email.com', '3854013010', 'Calle Arenales 1032', 'activo', 'C', '2028'),
(46, 'Gael', 'Luna', '45014001', '3', 'gael.luna@email.com', '3854014001', 'Av. Belgrano 131', 'activo', 'D', '2028'),
(47, 'Lola', 'Juarez', '45014002', '3', 'lola.juarez@email.com', '3854014002', 'Calle San Mart?n 232', 'activo', 'D', '2028'),
(48, 'Liam', 'Cabrera', '45014003', '3', 'liam.cabrera@email.com', '3854014003', 'Av. Rivadavia 333', 'activo', 'D', '2028'),
(49, 'Zoe', 'Rios', '45014004', '3', 'zoe.rios@email.com', '3854014004', 'Calle Mitre 434', 'activo', 'D', '2028'),
(50, 'Julian', 'Ferreyra', '45014005', '3', 'julian.ferreyra@email.com', '3854014005', 'Av. Roca 535', 'activo', 'D', '2028'),
(51, 'Ludmila', 'Godoy', '45014006', '3', 'ludmila.godoy@email.com', '3854014006', 'Calle Urquiza 636', 'activo', 'D', '2028'),
(52, 'Noah', 'Carrizo', '45014007', '3', 'noah.carrizo@email.com', '3854014007', 'Av. Moreno 737', 'activo', 'D', '2028'),
(53, 'Guadalupe', 'Franco', '45014008', '3', 'guadalupe.franco@email.com', '3854014008', 'Calle Alvear 838', 'activo', 'D', '2028'),
(54, 'Lautaro', 'Morales', '45014009', '3', 'lautaro.morales@email.com', '3854014009', 'Av. Colon 939', 'activo', 'D', '2028'),
(55, 'Malena', 'Caceres', '45014010', '3', 'malena.caceres@email.com', '3854014010', 'Calle Arenales 1043', 'activo', 'D', '2028'),
(56, 'Valentino', 'Soto', '45021001', '4', 'valentino.soto@email.com', '3854021001', 'Av. Belgrano 141', 'activo', 'A', '2028'),
(57, 'Morena', 'Vega', '45021002', '4', 'morena.vega@email.com', '3854021002', 'Calle San Mart?n 242', 'activo', 'A', '2028'),
(58, 'Facundo', 'Correa', '45021003', '4', 'facundo.correa@email.com', '3854021003', 'Av. Rivadavia 343', 'activo', 'A', '2028'),
(59, 'Ambar', 'Peralta', '45021004', '4', 'ambar.peralta@email.com', '3854021004', 'Calle Mitre 444', 'activo', 'A', '2028'),
(60, 'Valentin', 'Ledesma', '45021005', '4', 'valentin.ledesma@email.com', '3854021005', 'Av. Roca 545', 'activo', 'A', '2028'),
(61, 'Pia', 'Maldonado', '45021006', '4', 'pia.maldonado@email.com', '3854021006', 'Calle Urquiza 646', 'activo', 'A', '2028'),
(62, 'Geronimo', 'Cordoba', '45021007', '4', 'geronimo.cordoba@email.com', '3854021007', 'Av. Moreno 747', 'activo', 'A', '2028'),
(63, 'Clara', 'Paz', '45021008', '4', 'clara.paz@email.com', '3854021008', 'Calle Alvear 848', 'activo', 'A', '2028'),
(64, 'Juan', 'Mansilla', '45021009', '4', 'juan.mansilla@email.com', '3854021009', 'Av. Colon 949', 'activo', 'A', '2028'),
(65, 'Jazmin', 'Ponce', '45021010', '4', 'jazmin.ponce@email.com', '3854021010', 'Calle Arenales 1054', 'activo', 'A', '2028'),
(66, 'Gaspar', 'Villalba', '45022001', '4', 'gaspar.villalba@email.com', '3854022001', 'Av. Belgrano 151', 'activo', 'B', '2028'),
(67, 'Bianca', 'Duarte', '45022002', '4', 'bianca.duarte@email.com', '3854022002', 'Calle San Mart?n 252', 'activo', 'B', '2028'),
(68, 'Tiziano', 'Cardozo', '45022003', '4', 'tiziano.cardozo@email.com', '3854022003', 'Av. Rivadavia 353', 'activo', 'B', '2028'),
(69, 'Francesca', 'Marquez', '45022004', '4', 'francesca.marquez@email.com', '3854022004', 'Calle Mitre 454', 'activo', 'B', '2028'),
(70, 'Lorenzo', 'Figueroa', '45022005', '4', 'lorenzo.figueroa@email.com', '3854022005', 'Av. Roca 555', 'activo', 'B', '2028'),
(71, 'Julia', 'Herrero', '45022006', '4', 'julia.herrero@email.com', '3854022006', 'Calle Urquiza 656', 'activo', 'B', '2028'),
(72, 'Ian', 'Vargas', '45022007', '4', 'ian.vargas@email.com', '3854022007', 'Av. Moreno 757', 'activo', 'B', '2028'),
(73, 'Abril', 'Miranda', '45022008', '4', 'abril.miranda@email.com', '3854022008', 'Calle Alvear 858', 'activo', 'B', '2028'),
(74, 'Milo', 'Vera', '45022009', '4', 'milo.vera@email.com', '3854022009', 'Av. Colon 959', 'activo', 'B', '2028'),
(75, 'Lara', 'Bravo', '45022010', '4', 'lara.bravo@email.com', '3854022010', 'Calle Arenales 1065', 'activo', 'B', '2028'),
(76, 'Ciro', 'Mendoza', '45023001', '4', 'ciro.mendoza@email.com', '3854023001', 'Av. Belgrano 161', 'activo', 'C', '2028'),
(77, 'Mia', 'Gallardo', '45023002', '4', 'mia.gallardo@email.com', '3854023002', 'Calle San Mart?n 262', 'activo', 'C', '2028'),
(78, 'Ramiro', 'Ayala', '45023003', '4', 'ramiro.ayala@email.com', '3854023003', 'Av. Rivadavia 363', 'activo', 'C', '2028'),
(79, 'Guillermina', 'Flores', '45023004', '4', 'guillermina.flores@email.com', '3854023004', 'Calle Mitre 464', 'activo', 'C', '2028'),
(80, 'Simon', 'Guzman', '45023005', '4', 'simon.guzman@email.com', '3854023005', 'Av. Roca 565', 'activo', 'C', '2028'),
(81, 'Paula', 'Salar', '45023006', '4', 'paula.salar@email.com', '3854023006', 'Calle Urquiza 666', 'activo', 'C', '2028'),
(82, 'Matias', 'Valenzuela', '45023007', '4', 'matias.valenzuela@email.com', '3854023007', 'Av. Moreno 767', 'activo', 'C', '2028'),
(83, 'Sol', 'Navarro', '45023008', '4', 'sol.navarro@email.com', '3854023008', 'Calle Alvear 868', 'activo', 'C', '2028'),
(84, 'Alejo', 'Cano', '45023009', '4', 'alejo.cano@email.com', '3854023009', 'Av. Colon 969', 'activo', 'C', '2028'),
(85, 'Milagros', 'Crespo', '45023010', '4', 'milagros.crespo@email.com', '3854023010', 'Calle Arenales 1076', 'activo', 'C', '2028'),
(86, 'Dante', 'Romero', '45024001', '4', 'dante.romero@email.com', '3854024001', 'Av. Belgrano 171', 'activo', 'D', '2028'),
(87, 'Constanza', 'Gomez', '45024002', '4', 'constanza.gomez@email.com', '3854024002', 'Calle San Mart?n 272', 'activo', 'D', '2028'),
(88, 'Lisandro', 'Peralta', '45024003', '4', 'lisandro.peralta@email.com', '3854024003', 'Av. Rivadavia 373', 'activo', 'D', '2028'),
(89, 'Martina', 'Garc?a', '45024004', '4', 'martina.garcia@email.com', '3854024004', 'Calle Mitre 474', 'activo', 'D', '2028'),
(90, 'Manuel', 'Rodriguez', '45024005', '4', 'manuel.rodriguez@email.com', '3854024005', 'Av. Roca 575', 'activo', 'D', '2028'),
(91, 'Agustina', 'Fernandez', '45024006', '4', 'agustina.fernandez@email.com', '3854024006', 'Calle Urquiza 676', 'activo', 'D', '2028'),
(92, 'Maximiliano', 'Lopez', '45024007', '4', 'maximiliano.lopez@email.com', '3854024007', 'Av. Moreno 777', 'activo', 'D', '2028'),
(93, 'Emilia', 'Martinez', '45024008', '4', 'emilia.martinez@email.com', '3854024008', 'Calle Alvear 878', 'activo', 'D', '2028'),
(94, 'Leonel', 'Diaz', '45024009', '4', 'leonel.diaz@email.com', '3854024009', 'Av. Colon 979', 'activo', 'D', '2028'),
(95, 'Lucia', 'Perez', '45024010', '4', 'lucia.perez@email.com', '3854024010', 'Calle Arenales 1087', 'activo', 'D', '2028'),
(96, 'Pedro', 'Sanchez', '45031001', '5', 'pedro.sanchez@email.com', '3854031001', 'Av. Belgrano 181', 'activo', 'A', '2028'),
(97, 'Renata', 'Alvarez', '45031002', '5', 'renata.alvarez@email.com', '3854031002', 'Calle San Mart?n 282', 'activo', 'A', '2028'),
(98, 'Marcos', 'Torres', '45031003', '5', 'marcos.torres@email.com', '3854031003', 'Av. Rivadavia 383', 'activo', 'A', '2028'),
(99, 'Camila', 'Ramirez', '45031004', '5', 'camila.ramirez@email.com', '3854031004', 'Calle Mitre 484', 'activo', 'A', '2028'),
(100, 'Jeremias', 'Ruiz', '45031005', '5', 'jeremias.ruiz@email.com', '3854031005', 'Av. Roca 585', 'activo', 'A', '2028'),
(101, 'Aitana', 'Flores', '45031006', '5', 'aitana.flores@email.com', '3854031006', 'Calle Urquiza 686', 'activo', 'A', '2028'),
(102, 'Nicolas', 'Acosta', '45031007', '5', 'nicolas.acosta@email.com', '3854031007', 'Av. Moreno 787', 'activo', 'A', '2028'),
(103, 'Paulina', 'Benitez', '45031008', '5', 'paulina.benitez@email.com', '3854031008', 'Calle Alvear 888', 'activo', 'A', '2028'),
(104, 'Ezequiel', 'Medina', '45031009', '5', 'ezequiel.medina@email.com', '3854031009', 'Av. Colon 989', 'activo', 'D', '2028'),
(105, 'Juana', 'Suarez', '45031010', '5', 'juana.suarez@email.com', '3854031010', 'Calle Arenales 1098', 'activo', 'A', '2028'),
(106, 'Tadeo', 'Herrera', '45032001', '5', 'tadeo.herrera@email.com', '3854032001', 'Av. Belgrano 191', 'activo', 'B', '2028'),
(107, 'Guadalupe', 'Aguirre', '45032002', '5', 'guadalupe.aguirre@email.com', '3854032002', 'Calle San Mart?n 292', 'activo', 'B', '2028'),
(108, 'Fermin', 'Gimenez', '45032003', '5', 'fermin.gimenez@email.com', '3854032003', 'Av. Rivadavia 393', 'activo', 'B', '2028'),
(109, 'Juana', 'Gutierrez', '45032004', '5', 'juana.gutierrez@email.com', '3854032004', 'Calle Mitre 494', 'activo', 'B', '2028'),
(110, 'Gino', 'Pereira', '45032005', '5', 'gino.pereira@email.com', '3854032005', 'Av. Roca 595', 'activo', 'B', '2028'),
(111, 'Delfina', 'Rojas', '45032006', '5', 'delfina.rojas@email.com', '3854032006', 'Calle Urquiza 696', 'activo', 'B', '2028'),
(112, 'Valentin', 'Molina', '45032007', '5', 'valentin.molina@email.com', '3854032007', 'Av. Moreno 797', 'activo', 'B', '2028'),
(114, 'Jonas', 'Silva', '45032009', '5', 'jonas.silva@email.com', '3854032009', 'Av. Colon 999', 'activo', 'B', '2028'),
(115, 'Catalina', 'Ortiz', '45032010', '5', 'catalina.ortiz@email.com', '3854032010', 'Calle Arenales 1109', 'activo', 'B', '2028'),
(116, 'Aaron', 'Nu?ez', '45033001', '5', 'aaron.nunez@email.com', '3854033001', 'Av. Belgrano 201', 'activo', 'C', '2028'),
(117, 'Malena', 'Luna', '45033002', '5', 'malena.luna@email.com', '3854033002', 'Calle San Mart?n 302', 'activo', 'C', '2028'),
(118, 'Bastian', 'Juarez', '45033003', '5', 'bastian.juarez@email.com', '3854033003', 'Av. Rivadavia 403', 'activo', 'C', '2028'),
(119, 'Mora', 'Cabrera', '45033004', '5', 'mora.cabrera@email.com', '3854033004', 'Calle Mitre 504', 'activo', 'C', '2028'),
(120, 'Juan', 'Rios', '45033005', '5', 'juan.rios@email.com', '3854033005', 'Av. Roca 605', 'activo', 'C', '2028'),
(121, 'Isabella', 'Ferreyra', '45033006', '5', 'isabella.ferreyra@email.com', '3854033006', 'Calle Urquiza 706', 'activo', 'C', '2028'),
(122, 'Agustin', 'Godoy', '45033007', '5', 'agustin.godoy@email.com', '3854033007', 'Av. Moreno 807', 'activo', 'C', '2028'),
(123, 'Lola', 'Carrizo', '45033008', '5', 'lola.carrizo@email.com', '3854033008', 'Calle Alvear 908', 'activo', 'C', '2028'),
(124, 'Facundo', 'Franco', '45033009', '5', 'facundo.franco@email.com', '3854033009', 'Av. Colon 1010', 'activo', 'C', '2028'),
(125, 'Ambar', 'Morales', '45033010', '5', 'ambar.morales@email.com', '3854033010', 'Calle Arenales 1120', 'activo', 'C', '2028'),
(126, 'Iker', 'Caceres', '45034001', '5', 'iker.caceres@email.com', '3854034001', 'Av. Belgrano 211', 'activo', 'D', '2028'),
(127, 'Pia', 'Soto', '45034002', '5', 'pia.soto@email.com', '3854034002', 'Calle San Mart?n 312', 'activo', 'D', '2028'),
(128, 'Felipe', 'Vega', '45034003', '5', 'felipe.vega@email.com', '3854034003', 'Av. Rivadavia 413', 'activo', 'D', '2028'),
(129, 'Clara', 'Correa', '45034004', '5', 'clara.correa@email.com', '3854034004', 'Calle Mitre 514', 'activo', 'D', '2028'),
(130, 'Mateo', 'Peralta', '45034005', '5', 'mateo.peralta@email.com', '3854034005', 'Av. Roca 615', 'activo', 'D', '2028'),
(131, 'Sofia', 'Ledesma', '45034006', '5', 'sofia.ledesma@email.com', '3854034006', 'Calle Urquiza 716', 'activo', 'D', '2028'),
(132, 'Santiago', 'Maldonado', '45034007', '5', 'santiago.maldonado@email.com', '3854034007', 'Av. Moreno 817', 'activo', 'D', '2028'),
(133, 'Valentina', 'Cordoba', '45034008', '5', 'valentina.cordoba@email.com', '3854034008', 'Calle Alvear 918', 'activo', 'D', '2028'),
(134, 'Lucas', 'Paz', '45034009', '5', 'lucas.paz@email.com', '3854034009', 'Av. Colon 1021', 'activo', 'D', '2028'),
(135, 'Victoria', 'Mansilla', '45034010', '5', 'victoria.mansilla@email.com', '3854034010', 'Calle Arenales 1131', 'activo', 'D', '2028'),
(136, 'Lucio', 'Ponce', '45041001', '5', 'lucio.ponce@email.com', '3854041001', 'Av. Belgrano 221', 'egresado', 'A', '2027'),
(137, 'Alma', 'Villalba', '45041002', '5', 'alma.villalba@email.com', '3854041002', 'Calle San Mart?n 322', 'egresado', 'A', '2027'),
(138, 'Gael', 'Duarte', '45041003', '5', 'gael.duarte@email.com', '3854041003', 'Av. Rivadavia 423', 'egresado', 'A', '2027'),
(139, 'Emma', 'Cardozo', '45041004', '5', 'emma.cardozo@email.com', '3854041004', 'Calle Mitre 524', 'egresado', 'A', '2027'),
(140, 'Bautista', 'Marquez', '45041005', '5', 'bautista.marquez@email.com', '3854041005', 'Av. Roca 625', 'egresado', 'A', '2027'),
(141, 'Olivia', 'Figueroa', '45041006', '5', 'olivia.figueroa@email.com', '3854041006', 'Calle Urquiza 726', 'egresado', 'A', '2027'),
(142, 'Tomas', 'Herrero', '45041007', '5', 'tomas.herrero@email.com', '3854041007', 'Av. Moreno 827', 'egresado', 'A', '2027'),
(143, 'Martina', 'Vargas', '45041008', '5', 'martina.vargas@email.com', '3854041008', 'Calle Alvear 928', 'egresado', 'A', '2027'),
(144, 'Thiago', 'Miranda', '45041009', '5', 'thiago.miranda@email.com', '3854041009', 'Av. Colon 1032', 'egresado', 'A', '2027'),
(145, 'Mia', 'Vera', '45041010', '5', 'mia.vera@email.com', '3854041010', 'Calle Arenales 1142', 'egresado', 'A', '2027'),
(146, 'Matias', 'Bravo', '45042001', '5', 'matias.bravo@email.com', '3854042001', 'Av. Belgrano 231', 'egresado', 'B', '2027'),
(147, 'Francesca', 'Mendoza', '45042002', '5', 'francesca.mendoza@email.com', '3854042002', 'Calle San Mart?n 332', 'egresado', 'B', '2027'),
(148, 'Benjamin', 'Gallardo', '45042003', '5', 'benjamin.gallardo@email.com', '3854042003', 'Av. Rivadavia 433', 'egresado', 'B', '2027'),
(149, 'Elena', 'Ayala', '45042004', '5', 'elena.ayala@email.com', '3854042004', 'Calle Mitre 534', 'egresado', 'B', '2027'),
(150, 'Joaquin', 'Flores', '45042005', '5', 'joaquin.flores@email.com', '3854042005', 'Av. Roca 635', 'egresado', 'B', '2027'),
(151, 'Abril', 'Guzman', '45042006', '5', 'abril.guzman@email.com', '3854042006', 'Calle Urquiza 736', 'egresado', 'B', '2027'),
(152, 'Lautaro', 'Salar', '45042007', '5', 'lautaro.salar@email.com', '3854042007', 'Av. Moreno 837', 'egresado', 'B', '2027'),
(153, 'Sol', 'Valenzuela', '45042008', '5', 'sol.valenzuela@email.com', '3854042008', 'Calle Alvear 938', 'egresado', 'B', '2027'),
(154, 'Valentino', 'Navarro', '45042009', '5', 'valentino.navarro@email.com', '3854042009', 'Av. Colon 1043', 'egresado', 'B', '2027'),
(155, 'Morena', 'Cano', '45042010', '5', 'morena.cano@email.com', '3854042010', 'Calle Arenales 1153', 'egresado', 'B', '2027'),
(156, 'Ian', 'Crespo', '45043001', '5', 'ian.crespo@email.com', '3854043001', 'Av. Belgrano 241', 'egresado', 'C', '2027'),
(157, 'Julia', 'Romero', '45043002', '5', 'julia.romero@email.com', '3854043002', 'Calle San Mart?n 342', 'egresado', 'C', '2027'),
(158, 'Agustin', 'Gomez', '45043003', '5', 'agustin.gomez@email.com', '3854043003', 'Av. Rivadavia 443', 'egresado', 'C', '2027'),
(159, 'Lara', 'Rodriguez', '45043004', '5', 'lara.rodriguez@email.com', '3854043004', 'Calle Mitre 544', 'egresado', 'C', '2027'),
(160, 'Francisco', 'Fernandez', '45043005', '5', 'francisco.fernandez@email.com', '3854043005', 'Av. Roca 645', 'egresado', 'C', '2027'),
(161, 'Juana', 'Lopez', '45043006', '5', 'juana.lopez@email.com', '3854043006', 'Calle Urquiza 746', 'egresado', 'C', '2027'),
(162, 'Ignacio', 'Martinez', '45043007', '5', 'ignacio.martinez@email.com', '3854043007', 'Av. Moreno 847', 'egresado', 'C', '2027'),
(163, 'Milagros', 'Diaz', '45043008', '5', 'milagros.diaz@email.com', '3854043008', 'Calle Alvear 948', 'egresado', 'C', '2027'),
(164, 'Lorenzo', 'Perez', '45043009', '5', 'lorenzo.perez@email.com', '3854043009', 'Av. Colon 1054', 'egresado', 'C', '2027'),
(165, 'Constanza', 'Garc?a', '45043010', '5', 'constanza.garcia@email.com', '3854043010', 'Calle Arenales 1164', 'egresado', 'C', '2027'),
(166, 'Milo', 'Sanchez', '45044001', '5', 'milo.sanchez@email.com', '3854044001', 'Av. Belgrano 251', 'egresado', 'D', '2027'),
(167, 'Jazmin', 'Alvarez', '45044002', '5', 'jazmin.alvarez@email.com', '3854044002', 'Calle San Mart?n 352', 'egresado', 'D', '2027'),
(168, 'Simon', 'Torres', '45044003', '5', 'simon.torres@email.com', '3854044003', 'Av. Rivadavia 453', 'egresado', 'D', '2027'),
(169, 'Clara', 'Ramirez', '45044004', '5', 'clara.ramirez@email.com', '3854044004', 'Calle Mitre 554', 'egresado', 'D', '2027'),
(170, 'Mateo', 'Ruiz', '45044005', '5', 'mateo.ruiz@email.com', '3854044005', 'Av. Roca 655', 'egresado', 'D', '2027'),
(171, 'Sofia', 'Flores', '45044006', '5', 'sofia.flores@email.com', '3854044006', 'Calle Urquiza 756', 'egresado', 'D', '2027'),
(172, 'Santiago', 'Acosta', '45044007', '5', 'santiago.acosta@email.com', '3854044007', 'Av. Moreno 857', 'egresado', 'D', '2027'),
(173, 'Valentina', 'Benitez', '45044008', '5', 'valentina.benitez@email.com', '3854044008', 'Calle Alvear 958', 'egresado', 'D', '2027'),
(174, 'Lucas', 'Medina', '45044009', '5', 'lucas.medina@email.com', '3854044009', 'Av. Colon 1065', 'egresado', 'D', '2027'),
(175, 'Victoria', 'Suarez', '45044010', '5', 'victoria.suarez@email.com', '3854044010', 'Calle Arenales 1175', 'egresado', 'D', '2027'),
(176, 'Geronimo', 'Herrera', '45051001', '5', 'geronimo.herrera@email.com', '3854051001', 'Av. Belgrano 261', 'egresado', 'A', '2027'),
(177, 'Guadalupe', 'Aguirre', '45051002', '5', 'guadalupe.aguirre@email.com', '3854051002', 'Calle San Mart?n 362', 'egresado', 'A', '2027'),
(178, 'Facundo', 'Gimenez', '45051003', '5', 'facundo.gimenez@email.com', '3854051003', 'Av. Rivadavia 463', 'egresado', 'A', '2027'),
(179, 'Ambar', 'Gutierrez', '45051004', '5', 'ambar.gutierrez@email.com', '3854051004', 'Calle Mitre 564', 'egresado', 'A', '2027'),
(180, 'Valentin', 'Pereira', '45051005', '5', 'valentin.pereira@email.com', '3854051005', 'Av. Roca 665', 'egresado', 'A', '2027'),
(181, 'Paulina', 'Rojas', '45051006', '5', 'paulina.rojas@email.com', '3854051006', 'Calle Urquiza 766', 'egresado', 'A', '2027'),
(182, 'Juan', 'Molina', '45051007', '5', 'juan.molina@email.com', '3854051007', 'Av. Moreno 867', 'egresado', 'A', '2027'),
(183, 'Delfina', 'Castro', '45051008', '5', 'delfina.castro@email.com', '3854051008', 'Calle Alvear 968', 'egresado', 'A', '2027'),
(184, 'Alejo', 'Silva', '45051009', '5', 'alejo.silva@email.com', '3854051009', 'Av. Colon 1076', 'egresado', 'A', '2027'),
(185, 'Catalina', 'Ortiz', '45051010', '5', 'catalina.ortiz@email.com', '3854051010', 'Calle Arenales 1186', 'egresado', 'A', '2027'),
(186, 'Tadeo', 'Nu?ez', '45052001', '5', 'tadeo.nunez@email.com', '3854052001', 'Av. Belgrano 271', 'egresado', 'B', '2027'),
(187, 'Malena', 'Luna', '45052002', '5', 'malena.luna@email.com', '3854052002', 'Calle San Mart?n 372', 'egresado', 'B', '2027'),
(188, 'Bastian', 'Juarez', '45052003', '5', 'bastian.juarez@email.com', '3854052003', 'Av. Rivadavia 473', 'egresado', 'B', '2027'),
(189, 'Mora', 'Cabrera', '45052004', '5', 'mora.cabrera@email.com', '3854052004', 'Calle Mitre 574', 'egresado', 'B', '2027'),
(190, 'Pedro', 'Rios', '45052005', '5', 'pedro.rios@email.com', '3854052005', 'Av. Roca 675', 'egresado', 'B', '2027'),
(191, 'Renata', 'Ferreyra', '45052006', '5', 'renata.ferreyra@email.com', '3854052006', 'Calle Urquiza 776', 'egresado', 'B', '2027'),
(192, 'Marcos', 'Godoy', '45052007', '5', 'marcos.godoy@email.com', '3854052007', 'Av. Moreno 877', 'egresado', 'B', '2027'),
(193, 'Camila', 'Carrizo', '45052008', '5', 'camila.carrizo@email.com', '3854052008', 'Calle Alvear 978', 'egresado', 'B', '2027'),
(194, 'Jeremias', 'Franco', '45052009', '5', 'jeremias.franco@email.com', '3854052009', 'Av. Colon 1087', 'egresado', 'B', '2027'),
(195, 'Aitana', 'Morales', '45052010', '5', 'aitana.morales@email.com', '3854052010', 'Calle Arenales 1197', 'egresado', 'B', '2027'),
(196, 'Nicolas', 'Caceres', '45053001', '5', 'nicolas.caceres@email.com', '3854053001', 'Av. Belgrano 281', 'egresado', 'C', '2027'),
(197, 'Elena', 'Soto', '45053002', '5', 'elena.soto@email.com', '3854053002', 'Calle San Mart?n 382', 'egresado', 'C', '2027'),
(198, 'Ezequiel', 'Vega', '45053003', '5', 'ezequiel.vega@email.com', '3854053003', 'Av. Rivadavia 483', 'egresado', 'C', '2027'),
(199, 'Juana', 'Correa', '45053004', '5', 'juana.correa@email.com', '3854053004', 'Calle Mitre 584', 'egresado', 'C', '2027'),
(200, 'Fermin', 'Peralta', '45053005', '5', 'fermin.peralta@email.com', '3854053005', 'Av. Roca 685', 'egresado', 'C', '2027'),
(201, 'Sol', 'Ledesma', '45053006', '5', 'sol.ledesma@email.com', '3854053006', 'Calle Urquiza 786', 'egresado', 'C', '2027'),
(202, 'Gino', 'Maldonado', '45053007', '5', 'gino.maldonado@email.com', '3854053007', 'Av. Moreno 887', 'egresado', 'C', '2027'),
(203, 'Ludmila', 'Cordoba', '45053008', '5', 'ludmila.cordoba@email.com', '3854053008', 'Calle Alvear 988', 'egresado', 'C', '2027'),
(204, 'Jonas', 'Paz', '45053009', '5', 'jonas.paz@email.com', '3854053009', 'Av. Colon 1098', 'egresado', 'C', '2027'),
(205, 'Noah', 'Mansilla', '45053010', '5', 'noah.mansilla@email.com', '3854053010', 'Calle Arenales 1208', 'egresado', 'C', '2027'),
(206, 'Lautaro', 'Ponce', '45054001', '5', 'lautaro.ponce@email.com', '3854054001', 'Av. Belgrano 291', 'egresado', 'D', '2027'),
(207, 'Olivia', 'Villalba', '45054002', '5', 'olivia.villalba@email.com', '3854054002', 'Calle San Mart?n 392', 'egresado', 'D', '2027'),
(208, 'Aaron', 'Duarte', '45054003', '5', 'aaron.duarte@email.com', '3854054003', 'Av. Rivadavia 493', 'egresado', 'D', '2027'),
(209, 'Emma', 'Cardozo', '45054004', '5', 'emma.cardozo@email.com', '3854054004', 'Calle Mitre 594', 'egresado', 'D', '2027'),
(210, 'Bautista', 'Marquez', '45054005', '5', 'bautista.marquez@email.com', '3854054005', 'Av. Roca 695', 'egresado', 'D', '2027'),
(211, 'Clara', 'Figueroa', '45054006', '5', 'clara.figueroa@email.com', '3854054006', 'Calle Urquiza 796', 'egresado', 'D', '2027'),
(212, 'Tomas', 'Herrero', '45054007', '5', 'tomas.herrero@email.com', '3854054007', 'Av. Moreno 897', 'egresado', 'D', '2027'),
(213, 'Martina', 'Vargas', '45054008', '5', 'martina.vargas@email.com', '3854054008', 'Calle Alvear 999', 'egresado', 'D', '2027'),
(214, 'Thiago', 'Miranda', '45054009', '5', 'thiago.miranda@email.com', '3854054009', 'Av. Colon 1109', 'egresado', 'D', '2027'),
(215, 'Mia', 'Vera', '45054010', '5', 'mia.vera@email.com', '3854054010', 'Calle Arenales 1219', 'egresado', 'D', '2027'),
(216, 'Bautista', 'Herrera', '46011001', '2', 'bautista.herrera@email.com', '3854111001', 'Av. Belgrano Norte 250', 'activo', 'A', '2027'),
(217, 'Mia', 'Cáceres', '46011002', '2', 'mia.caceres@email.com', '3854111002', 'Calle Sáenz Peña 412', 'activo', 'A', '2027'),
(218, 'Felipe', 'Guzmán', '46011003', '2', 'felipe.guzman@email.com', '3854111003', 'Av. Moreno S/N', 'activo', 'A', '2027'),
(219, 'Juana', 'Maldonado', '46011004', '2', 'juana.maldonado@email.com', '3854111004', 'Calle Mitre 890', 'activo', 'A', '2027'),
(220, 'Tomas', 'Villalba', '46011005', '1', 'tomas.villalba@email.com', '3854111005', 'Av. Roca 1234', 'activo', 'A', '2027'),
(221, 'Olivia', 'Soria', '46012001', '2', 'olivia.soria@email.com', '3854112001', 'Calle Urquiza 1540', 'activo', 'B', '2027'),
(222, 'Benjamín', 'Vera', '46012002', '2', 'benjamin.vera@email.com', '3854112002', 'Av. Colón 678', 'activo', 'B', '2027'),
(223, 'Catalina', 'Luna', '46012003', '2', 'catalina.luna@email.com', '3854112003', 'Calle Absalón Ibarra 98', 'activo', 'B', '2027'),
(224, 'Mateo', 'Ríos', '46012004', '2', 'mateo.rios@email.com', '3854112004', 'Av. Rivadavia 1420', 'activo', 'B', '2027'),
(225, 'Elena', 'Bravo', '46012005', '2', 'elena.bravo@email.com', '3854112005', 'Calle San Martín 850', 'activo', 'B', '2027'),
(226, 'Facundo', 'Ponce', '46013001', '2', 'facundo.ponce@email.com', '3854113001', 'Av. Belgrano Sur 3100', 'activo', 'C', '2027'),
(227, 'Emma', 'Díaz', '46013002', '2', 'emma.diaz@email.com', '3854113002', 'Calle Libertad 521', 'activo', 'C', '2027'),
(228, 'Santiago', 'Acosta', '46013003', '2', 'santiago.acosta@email.com', '3854113003', 'Av. Aguirre 740', 'activo', 'C', '2027'),
(229, 'Ambar', 'Vega', '46013004', '2', 'ambar.vega@email.com', '3854113004', 'Calle Pedro León Gallo 112', 'activo', 'C', '2027'),
(230, 'Lucas', 'Paz', '46013005', '2', 'lucas.paz@email.com', '3854113005', 'Av. Solís 2050', 'activo', 'C', '2027'),
(231, 'Delfina', 'Cordoba', '46014001', '2', 'delfina.cordoba@email.com', '3854114001', 'Calle La Plata 365', 'activo', 'D', '2027'),
(232, 'Gael', 'Giménez', '46014002', '2', 'gael.gimenez@email.com', '3854114002', 'Av. Lugones 810', 'activo', 'D', '2027'),
(233, 'Zoe', 'Morales', '46014003', '2', 'zoe.morales@email.com', '3854114003', 'Calle Jujuy 128', 'activo', 'D', '2027'),
(234, 'Ignacio', 'Ledesma', '46014004', '2', 'ignacio.ledesma@email.com', '3854114004', 'Av. Pasteurs 49', 'activo', 'D', '2027'),
(235, 'Martina', 'Suárez', '46014005', '2', 'martina.suarez@email.com', '3854114005', 'Calle Salta 930', 'activo', 'D', '2027'),
(236, 'Agustina', 'Ferreyra', '50123401', '1', 'agustina.ferreyra@test.com', '3815001001', 'Av. Siempre Viva 101', 'activo', 'A', '2026'),
(237, 'Valentina', 'Ponce', '50123402', '1', 'valentina.ponce@test.com', '3815001002', 'San Martin 202', 'activo', 'A', '2026'),
(238, 'Thiago', 'Molina', '50123403', '1', 'thiago.molina@test.com', '3815001003', 'Belgrano 303', 'activo', 'B', '2026'),
(239, 'Camila', 'Navarro', '50123404', '1', 'camila.navarro@test.com', '3815001004', 'Mitre 404', 'activo', 'B', '2026'),
(240, 'Benjamin', 'Sosa', '50123405', '1', 'benjamin.sosa@test.com', '3815001005', 'Roca 505', 'activo', 'C', '2026'),
(241, 'Martina', 'Quiroga', '50123406', '1', 'martina.quiroga@test.com', '3815001006', 'Urquiza 606', 'activo', 'C', '2026'),
(242, 'Mateo', 'Alvarez', '50123407', '1', 'mateo.alvarez@test.com', '3815001007', 'Moreno 707', 'activo', 'D', '2026'),
(243, 'Sofia', 'Coronel', '50123408', '1', 'sofia.coronel@test.com', '3815001008', 'Laprida 808', 'activo', 'D', '2026'),
(244, 'Joaco', 'Campos', '50123409', '1', 'joaquin.campos@test.com', '3815001009', 'Independencia 909', 'activo', 'A', '2026'),
(245, 'Emma', 'Vega', '50123410', '1', 'emma.vega@test.com', '3815001010', 'Sarmiento 111', 'activo', 'B', '2026'),
(246, 'Leo', 'Messi', '60123456', '1', 'leomessi@gmail.com', '1234555555', 'Av. Alsina 10', 'activo', 'B', '2026'),
(247, 'Rodrigo', 'De Paul', '65444444', '1', 'rodri@gmail.com', '7575755575775', 'Rodriguez 245', 'activo', 'B', '2026');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria_login`
--

CREATE TABLE `auditoria_login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `resultado` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auditoria_login`
--

INSERT INTO `auditoria_login` (`id`, `email`, `fecha`, `resultado`) VALUES
(1, 'jeronimorivasperni@gmail.com', '2026-06-08 20:06:04', 'LOGIN_OK'),
(2, 'jeronimorivasperni@gmail.com', '2026-06-08 20:10:01', 'LOGIN_ERROR'),
(3, 'jeronimorivasperni@gmail.com', '2026-06-08 20:10:10', 'LOGIN_ERROR'),
(4, 'jeronimorivasperni@gmail.com', '2026-06-08 20:10:17', 'LOGIN_ERROR'),
(5, 'jeronimorivasperni@gmail.com', '2026-06-08 20:10:26', 'LOGIN_ERROR'),
(6, 'jeronimorivasperni@gmail.com', '2026-06-08 20:10:33', 'CUENTA_BLOQUEADA'),
(7, 'jeronimorivasperni@gmail.com', '2026-06-08 20:10:46', 'LOGIN_OK'),
(8, 'leonel@gmail.com', '2026-06-08 20:13:44', 'LOGIN_OK'),
(9, 'jeronimorivasperni@gmail.com', '2026-06-08 21:40:23', 'LOGIN_ERROR'),
(10, 'jeronimorivasperni@gmail.com', '2026-06-08 21:40:28', 'LOGIN_ERROR'),
(11, 'jeronimorivasperni@gmail.com', '2026-06-08 21:40:32', 'LOGIN_ERROR'),
(12, 'jeronimorivasperni@gmail.com', '2026-06-08 21:40:40', 'LOGIN_ERROR'),
(13, 'jeronimorivasperni@gmail.com', '2026-06-08 21:40:47', 'CUENTA_BLOQUEADA'),
(14, 'leonel@gmail.com', '2026-06-08 21:44:07', 'LOGIN_ERROR'),
(15, 'leonel@gmail.com', '2026-06-08 21:44:13', 'LOGIN_ERROR'),
(16, 'leonel@gmail.com', '2026-06-08 21:44:19', 'LOGIN_ERROR'),
(17, 'leonel@gmail.com', '2026-06-08 21:44:26', 'LOGIN_ERROR'),
(18, 'leonel@gmail.com', '2026-06-08 21:44:33', 'CUENTA_BLOQUEADA'),
(19, 'leonel@gmail.com', '2026-06-08 21:47:07', 'LOGIN_OK'),
(20, 'jeronimorivasperni@gmail.com', '2026-06-08 21:52:59', 'LOGIN_ERROR'),
(21, 'jeronimorivasperni@gmail.com', '2026-06-08 21:53:02', 'LOGIN_ERROR'),
(22, 'jeronimorivasperni@gmail.com', '2026-06-08 21:53:06', 'LOGIN_ERROR'),
(23, 'jeronimorivasperni@gmail.com', '2026-06-08 21:53:11', 'LOGIN_ERROR'),
(24, 'jeronimorivasperni@gmail.com', '2026-06-08 21:53:14', 'CUENTA_BLOQUEADA'),
(25, 'jeronimorivasperni@gmail.com', '2026-06-08 21:54:30', 'CUENTA_BLOQUEADA'),
(26, 'jeronimorivasperni@gmail.com', '2026-06-08 21:54:37', 'LOGIN_OK'),
(27, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:02', 'LOGIN_ERROR'),
(28, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:05', 'LOGIN_ERROR'),
(29, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:09', 'LOGIN_ERROR'),
(30, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:14', 'LOGIN_ERROR'),
(31, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:20', 'CUENTA_BLOQUEADA'),
(32, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:26', 'CUENTA_BLOQUEADA'),
(33, 'jeronimorivasperni@gmail.com', '2026-06-09 06:23:57', 'LOGIN_OK'),
(34, 'jeronimorivasperni@gmail.com', '2026-06-09 07:11:50', 'LOGIN_ERROR'),
(35, 'jeronimorivasperni@gmail.com', '2026-06-09 07:11:56', 'LOGIN_OK'),
(36, 'leonel@gmail.com', '2026-06-09 07:12:08', 'LOGIN_OK'),
(37, 'jeronimorivasperni@gmail.com', '2026-06-09 17:05:15', 'LOGIN_OK'),
(38, 'jeronimorivasperni@gmail.com', '2026-06-10 06:35:16', 'LOGIN_OK'),
(39, 'leonel@gmail.com', '2026-06-10 06:35:48', 'LOGIN_OK'),
(40, 'jeronimorivasperni@gmail.com', '2026-06-10 06:36:26', 'LOGIN_OK'),
(41, 'jeronimorivasperni@gmail.com', '2026-06-17 15:40:53', 'LOGIN_OK'),
(42, 'jeronimorivasperni@gmail.com', '2026-06-22 13:41:02', 'LOGIN_OK'),
(43, 'jeronimorivasperni@gmail.com', '2026-06-22 15:54:49', 'LOGIN_OK'),
(44, 'jeronimorivasperni@gmail.com', '2026-06-22 15:55:20', 'LOGIN_ERROR'),
(45, 'lu@gmail.com', '2026-06-22 15:55:37', 'LOGIN_OK'),
(46, 'jeronimorivasperni@gmail.com', '2026-06-22 16:19:39', 'LOGIN_OK'),
(47, 'leonel@gmail.com', '2026-06-22 16:40:09', 'LOGIN_OK'),
(48, 'jeronimorivasperni@gmail.com', '2026-06-22 16:42:41', 'LOGIN_OK'),
(49, 'leonel@gmail.com', '2026-06-22 16:43:50', 'LOGIN_OK'),
(50, 'jeronimorivasperni@gmail.com', '2026-06-22 16:55:02', 'LOGIN_OK'),
(51, 'leonel@gmail.com', '2026-06-22 16:55:41', 'LOGIN_OK'),
(52, 'leonel@gmail.com', '2026-06-22 17:47:26', 'LOGIN_OK'),
(53, 'jeronimorivasperni@gmail.com', '2026-06-22 18:05:46', 'LOGIN_OK'),
(54, 'jeronimorivasperni@gmail.com', '2026-06-22 18:21:16', 'LOGIN_OK'),
(55, 'leonel@gmail.com', '2026-06-22 18:21:27', 'LOGIN_OK'),
(56, 'jeronimorivasperni@gmail.com', '2026-06-22 18:24:56', 'LOGIN_OK'),
(57, 'jeronimorivasperni@gmail.com', '2026-06-22 18:40:26', 'LOGIN_OK'),
(58, 'messi@gmail.com', '2026-06-22 19:51:52', 'LOGIN_OK'),
(59, 'leonel@gmail.com', '2026-06-22 19:55:03', 'LOGIN_OK'),
(60, 'jeronimorivasperni@gmail.com', '2026-06-22 20:08:12', 'LOGIN_OK'),
(61, 'messi@gmail.com', '2026-06-22 20:09:40', 'LOGIN_OK'),
(62, 'lu@gmail.com', '2026-06-22 20:22:02', 'LOGIN_OK'),
(63, 'messi@gmail.com', '2026-06-22 20:22:49', 'LOGIN_OK'),
(64, 'jeronimorivasperni@gmail.com', '2026-06-23 06:53:29', 'LOGIN_OK'),
(65, 'leonel@gmail.com', '2026-06-23 07:18:22', 'LOGIN_OK'),
(66, 'messi@gmail.com', '2026-06-23 07:31:48', 'LOGIN_OK'),
(67, 'jeronimorivasperni@gmail.com', '2026-06-23 07:32:12', 'LOGIN_OK'),
(68, 'jeronimorivasperni@gmail.com', '2026-06-23 07:33:01', 'LOGIN_OK'),
(69, 'jeronimorivasperni@gmail.com', '2026-06-23 07:42:48', 'LOGIN_OK'),
(70, 'jeronimorivasperni@gmail.com', '2026-06-23 07:45:22', 'LOGIN_OK'),
(71, 'jeronimorivasperni@gmail.com', '2026-06-23 07:51:34', 'LOGIN_OK'),
(72, 'messi@gmail.com', '2026-06-23 07:54:22', 'LOGIN_OK'),
(73, 'leonel@gmail.com', '2026-06-23 08:05:38', 'LOGIN_OK'),
(74, 'jeronimorivasperni@gmail.com', '2026-06-23 08:07:02', 'LOGIN_OK'),
(75, 'jeronimorivasperni@gmail.com', '2026-06-23 08:10:25', 'LOGIN_OK'),
(76, 'jeronimorivasperni@gmail.com', '2026-06-23 08:17:35', 'LOGIN_OK'),
(77, 'jeronimorivasperni@gmail.com', '2026-06-23 08:20:14', 'LOGIN_OK'),
(78, 'jeronimorivasperni@gmail.com', '2026-06-23 08:23:17', 'LOGIN_OK'),
(79, 'jeronimorivasperni@gmail.com', '2026-06-23 08:26:36', 'LOGIN_OK'),
(80, 'jeronimorivasperni@gmail.com', '2026-06-23 08:26:55', 'LOGIN_OK'),
(81, 'messi@gmail.com', '2026-06-23 08:29:02', 'LOGIN_OK'),
(82, 'jeronimorivasperni@gmail.com', '2026-06-23 08:33:35', 'LOGIN_OK'),
(83, 'messi@gmail.com', '2026-06-23 08:50:40', 'LOGIN_OK'),
(84, 'messi@gmail.com', '2026-06-23 08:53:01', 'LOGIN_OK'),
(85, 'jeronimorivasperni@gmail.com', '2026-06-23 08:59:30', 'LOGIN_OK'),
(86, 'jeronimorivasperni@gmail.com', '2026-06-23 09:03:34', 'LOGIN_ERROR'),
(87, 'jeronimorivasperni@gmail.com', '2026-06-23 09:03:48', 'LOGIN_OK'),
(88, 'messi@gmail.com', '2026-06-23 09:05:55', 'LOGIN_OK'),
(89, 'jeronimorivasperni@gmail.com', '2026-06-23 09:08:42', 'LOGIN_OK'),
(90, 'jeronimorivasperni@gmail.com', '2026-06-23 09:10:50', 'LOGIN_OK'),
(91, 'jeronimorivasperni@gmail.com', '2026-06-23 09:27:45', 'LOGIN_OK'),
(92, 'jeronimorivasperni@gmail.com', '2026-06-23 13:31:02', 'LOGIN_OK'),
(93, 'jeronimorivasperni@gmail.com', '2026-06-23 13:54:17', 'LOGIN_OK'),
(94, 'jeronimorivasperni@gmail.com', '2026-06-23 14:16:13', 'LOGIN_OK'),
(95, 'leonel@gmail.com', '2026-06-23 14:30:38', 'LOGIN_OK'),
(96, 'jeronimorivasperni@gmail.com', '2026-06-23 14:32:20', 'LOGIN_OK'),
(97, 'jeronimorivasperni@gmail.com', '2026-06-23 14:49:25', 'LOGIN_OK'),
(98, 'leonel@gmail.com', '2026-06-23 14:50:37', 'LOGIN_OK'),
(99, 'messi@gmail.com', '2026-06-23 15:07:01', 'LOGIN_OK'),
(100, 'jeronimorivasperni@gmail.com', '2026-06-23 16:02:44', 'LOGIN_OK'),
(101, 'jeronimorivasperni@gmail.com', '2026-06-23 16:48:54', 'LOGIN_OK'),
(102, 'messi@gmail.com', '2026-06-23 16:53:28', 'LOGIN_OK'),
(103, 'jeronimorivasperni@gmail.com', '2026-06-23 17:28:55', 'LOGIN_OK'),
(104, 'messi@gmail.com', '2026-06-23 17:36:23', 'LOGIN_OK'),
(105, 'leonel@gmail.com', '2026-06-23 17:36:40', 'LOGIN_OK'),
(106, 'lu@gmail.com', '2026-06-23 17:36:53', 'LOGIN_OK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`) VALUES
(1, '1° A'),
(2, '1° B'),
(3, '1° C'),
(4, '1° D'),
(5, '2° A'),
(6, '2° B'),
(7, '2° C'),
(8, '2° D'),
(9, '3° A'),
(10, '3° B'),
(11, '3° C'),
(12, '3° D'),
(13, '4° A'),
(14, '4° B'),
(15, '4° C'),
(16, '4° D'),
(17, '5° A'),
(18, '5° B'),
(19, '5° C'),
(20, '5° D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_evento` date NOT NULL,
  `cupo` int(11) NOT NULL,
  `estado` enum('pendiente','aprobado','rechazado') DEFAULT 'pendiente',
  `id_usuario` int(11) NOT NULL,
  `motivo_rechazo` text DEFAULT NULL,
  `ubicacion` text DEFAULT NULL,
  `mapa_iframe` text DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `titulo`, `descripcion`, `fecha_evento`, `cupo`, `estado`, `id_usuario`, `motivo_rechazo`, `ubicacion`, `mapa_iframe`, `tipo`) VALUES
(3, 'hola es mi primer evento', 'ggygyfygyhgyhigig', '2026-04-29', 55, 'aprobado', 2, NULL, NULL, NULL, 'General'),
(5, 'hola es mi segundo evento', 'nndnjdnjdjdndjdjnd', '2026-05-05', 12839, 'aprobado', 2, NULL, NULL, NULL, 'General'),
(6, 'hola es mi tercer evento', 'djjjdjdjdjdjd', '2026-04-01', 1, 'aprobado', 2, NULL, 'iglesia', '', 'Religioso'),
(8, 'PRIMER EVENTO CON IMAGENES', 'primer event con foto', '2026-04-16', 1, 'aprobado', 2, NULL, NULL, NULL, 'General'),
(9, 'SE ACERCA EL MUNDIAAAL!!', 'Lionel Messi disputará la Copa del Mundo 2026 formando parte de la lista preliminar de la Selección Argentina. El capitán reconoce que selecciones como Francia, España y Brasil llegan mejor posicionadas, pero advierte que el equipo competirá al máximo y buscará defender el título histórico.El Contexto y Opinión de MessiLionel Messi palpitó el certamen dejando claro que Argentina no se cuelga el cartel de favorito principal. En sus recientes declaraciones, el astro rosarino fue muy realista:Los candidatos: Destaca el gran nivel de potencias europeas como Francia y España, además de Brasil.La mentalidad: A pesar de reconocer que otros equipos llegan mejor, remarcó que el equipo argentino irá a competir como siempre y pide mantener la ilusión.Récords y ExpectativasSi Messi tiene minutos en el torneo de Estados Unidos, México y Canadá, batirá marcas históricas impresionantes:Único en la historia: Se convertirá en el primer futbolista en disputar seis Copas del Mundo (2006, 2010, 2014, 2018, 2022 y 2026).La tabla de goleadores: Está a solo tres goles de alcanzar la histórica marca de Miroslav Klose (16 goles) en Mundiales.Leyenda absoluta: Ampliará su récord como el jugador con más partidos en la historia de los Mundiales (superando los 26 encuentros).', '2026-06-15', 10000, 'aprobado', 2, NULL, 'Copa del mundo (Estados Unidos, Mexico, Canada)', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3592.360636613929!2d-80.2622785256014!3d25.791673807367875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88d9b786ddf0b5d1%3A0x37e3f6374ec24283!2sLeo%20Messi%20Stadiim!5e0!3m2!1ses!2sar!4v1778638695253!5m2!1ses!2sar\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Deportivo'),
(10, 'Messi supera a Klose y se convierte en el máximo goleador histórico de la Copa Mundial', 'Lionel Messi se ha convertido en el máximo goleador histórico de la Copa Mundial de la FIFA después de marcar un doblete ante Austria este 22 de junio de 2026 en el partido correspondiente a la segunda fecha de la zona de grupos. El argentino sumó su cuarto y quinto tanto en lo que va de Copa Mundial de la FIFA 2026™ y se sitúa con 18 goles en total desde que marcase el primero en 2006 ante Serbia y Montenegro.\r\n\r\nEn el minuto 38 de partido, después de haber fallado un penal en los primeros minutos de encuentro, Messi logró el gol con el que obtuvo el récord al recibir un pase de desde la izquierda de Facundo Medina y pegarle de primeras con su pie izquierdo y lograr batir al guardameta austriaco. Y con el partido ya casi cerrado, en una de las últimas acciones del duelo, logró hacer el segundo tras una serie de rechaces.\r\n\r\nCon estos dos goles, Messi ha superado a Miroslav Klose, delantero alemán que ostentaba el récord desde la Copa Mundial 2014 con 16 goles, al cual empató el pasado martes cuando realizó un hat-trick ante Argelia, y ya es en solitario el futbolista que más goles ha hecho en el torneo futbolístico más prestigioso del planeta.\r\n\r\nEl propio Miroslav Klose, en declaraciones en exclusiva a FIFA, se refirió a Messi y el récord. \"Messi es simplemente Messi. Siempre he admirado la forma en que resolvía los problemas y la manera en que se comportaba como persona, incluso dentro del campo. Siempre daba vida a su equipo. En 2006 estaba en el banquillo y jugaba Riquelme, hasta que le dieron esa confianza a Messi. Lo que luego hizo con el fútbol y la forma en que lo hizo… me quito el sombrero. ¡Un enorme cumplido! Siempre he sido fan de Messi, y ahora que lo tengo delante, tengo que decir: ¡tampoco está nada mal!\".', '2026-06-24', 500, 'aprobado', 2, NULL, 'Spotify Camp Nou, Barcelona', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.6864752467936!2d2.1228198!3d41.380896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a498f576297baf%3A0x44f65330fe1b04b9!2sSpotify%20Camp%20Nou!5e0!3m2!1ses!2sar!4v1782251843416!5m2!1ses!2sar\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"strict-origin-when-cross-origin\"></iframe>', 'Deportivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_eventos`
--

CREATE TABLE `imagenes_eventos` (
  `id_imagen` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `ruta_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes_eventos`
--

INSERT INTO `imagenes_eventos` (`id_imagen`, `id_evento`, `ruta_imagen`) VALUES
(1, 8, '1776203647_Caso de Uso 1.drawio.png'),
(2, 8, '1776203647_Caso de Uso 2.drawio.png'),
(3, 8, '1776203647_Colegio Evangélico Alfredo Furniss_Eventos.png'),
(4, 8, '1776203647_Colegio Evangélico Alfredo Furniss_Inicio.png'),
(5, 8, '1776203647_h.png'),
(6, 8, '1776203647_LOGO_FE-removebg-preview.png'),
(7, 9, '1778638807_descarga (1).jpg'),
(8, 9, '1778638807_descarga (2).jpg'),
(9, 9, '1778638807_descarga (3).jpg'),
(10, 9, '1778638807_descarga.jpg'),
(11, 10, '1782252002_images (1).jpg'),
(12, 10, '1782252002_images (2).jpg'),
(13, 10, '1782252002_images.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_noticias`
--

CREATE TABLE `imagenes_noticias` (
  `id_imagen` int(11) NOT NULL,
  `id_noticia` int(11) NOT NULL,
  `ruta_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes_noticias`
--

INSERT INTO `imagenes_noticias` (`id_imagen`, `id_noticia`, `ruta_imagen`) VALUES
(1, 5, '1782171733_1778638807_descarga (1).jpg'),
(2, 6, '1782172478_inicon2.png'),
(3, 7, '1782252392_descarga.jpg'),
(4, 7, '1782252392_images (3).jpg'),
(5, 7, '1782252392_images (4).jpg'),
(6, 7, '1782252392_images (5).jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones_eventos`
--

CREATE TABLE `inscripciones_eventos` (
  `id_inscripcion` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `nombre_inscripto` varchar(100) NOT NULL,
  `email_inscripto` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `fecha_inscripcion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripciones_eventos`
--

INSERT INTO `inscripciones_eventos` (`id_inscripcion`, `id_evento`, `nombre_inscripto`, `email_inscripto`, `dni`, `fecha_inscripcion`) VALUES
(1, 3, 'Martin Rodriguez', 'martincito@gmail.com', '45709162', '2026-04-06 20:37:13'),
(2, 3, 'paola argento', 'paola@gmail.com', '1234567', '2026-04-06 21:04:40'),
(4, 9, 'laseleccion', 'arg@gmail.com', '10101010', '2026-05-12 23:43:48'),
(5, 8, 'ultimocupo', 'ult@gmail.com', '000000', '2026-05-12 23:46:37'),
(6, 10, 'Julian Alvarez', 'julianalvares@gmail.com', '09090909', '2026-06-23 16:02:13'),
(7, 10, 'Enzo Perez', 'Enzito@gmail.com', '84857384', '2026-06-23 16:13:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones_examenes`
--

CREATE TABLE `inscripciones_examenes` (
  `id_inscripcion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipo_examen` varchar(100) DEFAULT NULL,
  `anio` varchar(10) DEFAULT NULL,
  `modalidad` varchar(100) DEFAULT NULL,
  `materia` varchar(150) DEFAULT NULL,
  `fecha_inscripcion` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `inscripciones_examenes`
--

INSERT INTO `inscripciones_examenes` (`id_inscripcion`, `nombre`, `apellido`, `dni`, `telefono`, `email`, `tipo_examen`, `anio`, `modalidad`, `materia`, `fecha_inscripcion`) VALUES
(1, 'Mateo', 'Gomez', '45011001', '3854011001', 'mateo.gomez@email.com', 'PREVIO', '2', '', 'Tecnología', '2026-06-23 16:51:15'),
(2, 'hola', 'hola', '45044007', '3815001009', 'djdjjd@gmg.com', 'FINALIZACIÓN DE CARRERA', '5', 'Ciencias Naturales', 'Orientación Bíblica', '2026-06-23 16:53:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_modalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidades`
--

CREATE TABLE `modalidades` (
  `id_modalidad` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modalidades`
--

INSERT INTO `modalidades` (`id_modalidad`, `nombre`) VALUES
(1, 'GENERAL'),
(2, 'ECONOMIA Y GESTION DE LAS ORGANIZACIONES'),
(3, 'CIENCIAS NATURALES CON ENFASIS EN SALUD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` text NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `estado` enum('pendiente','aprobado','rechazado') DEFAULT 'pendiente',
  `id_usuario` int(11) NOT NULL,
  `motivo_rechazo` text DEFAULT NULL,
  `tipo` varchar(50) NOT NULL DEFAULT 'General'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `contenido`, `fecha_publicacion`, `estado`, `id_usuario`, `motivo_rechazo`, `tipo`) VALUES
(4, 'jjjjj', 'jjjjjjj', '2025-12-25', 'aprobado', 2, NULL, 'Otro'),
(5, 'Argentina 2-0 Austria', 'Doblete de messi!!', '2026-06-22', 'aprobado', 2, NULL, 'General'),
(6, 'hola', 'holaaa', '2026-06-22', 'aprobado', 2, NULL, 'Deportivo'),
(7, 'Cabo Verde, la inesperada revelación del Mundial que sorprendió en la cancha y puso en el mapa a un pequeño archipiélago', 'El seleccionado africano se convirtió en una de las grandes historias del torneo.\r\na irrupción de Cabo Verde como una de las grandes sorpresas del Mundial no solo dejó dos resultados con gusto a hazaña, sino que también puso en el mapa a un país pequeño y hasta hace poco desconocido para gran parte del público global. En su debut absoluto en la máxima cita del fútbol, el conjunto africano no solo compitió, sino que sorprendió, resistió y alimentó la ilusión de que su historia recién empieza.\r\nEl equipo caboverdiano, que nunca antes había participado en un Mundial, llegó al torneo con el peso de la inexperiencia, pero también con el impulso de una generación que creció mirando el certamen como un sueño lejano. Los dos empates que conquistó en la fase de grupos, rápidamente lo convirtieron en una de las narrativas más atractivas del campeonato.\r\nDetrás de esa irrupción deportiva hay un país con características singulares. Cabo Verde es un archipiélago volcánico ubicado en el océano Atlántico, a más de 500 kilómetros de la costa de Senegal. Está formado por diez islas y ocho islotes, de los cuales nueve están habitados, en un territorio total de apenas 4000 kilómetros cuadrados. Su geografía combina playas de aguas cristalinas, montañas abruptas y paisajes áridos moldeados por la actividad volcánica.', '2026-06-18', 'aprobado', 2, NULL, 'Cultural');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','editor') NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `puede_eventos` tinyint(1) DEFAULT 1,
  `puede_noticias` tinyint(1) DEFAULT 1,
  `estado` enum('activo','suspendido') DEFAULT 'activo',
  `ultimo_acceso` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `email`, `password`, `rol`, `fecha_creacion`, `puede_eventos`, `puede_noticias`, `estado`, `ultimo_acceso`) VALUES
(1, 'jeronimo rivas', 'jeronimorivasperni@gmail.com', '$2y$10$yrDqOzubW9RlLlqgL1e7kuO6Bt4zXuQpvNlH7qPPTLYmKcdS0nTs.', 'admin', '2026-04-06 00:04:17', 0, 0, 'activo', '2026-06-09 06:23:57'),
(2, 'leonel', 'leonel@gmail.com', '$2y$10$Figp1FKiJIGYbJhYpmg0reS9KpVBz9tRgfKL8jQxR5y9iA1WPX.Q.', 'editor', '2026-04-06 00:06:40', 1, 1, 'activo', '2026-06-08 21:47:07'),
(6, 'lu', 'lu@gmail.com', '$2y$10$WF0QJcg92rLeJIHcP2bM0Ot/6Opi9YBIETQGfL1BSWQT.vSYNWoL6', 'editor', '2026-04-15 00:11:53', 1, 1, 'activo', NULL),
(7, 'messi', 'messi@gmail.com', '$2y$10$a7YTF4cuPhPlbMOHvJYO3ucpCSCJxI39TNg6D/7kq4LH8z0fx1gP6', 'admin', '2026-05-13 01:37:08', 1, 1, 'activo', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `auditoria_login`
--
ALTER TABLE `auditoria_login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `imagenes_eventos`
--
ALTER TABLE `imagenes_eventos`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `imagenes_noticias`
--
ALTER TABLE `imagenes_noticias`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `id_noticia` (`id_noticia`);

--
-- Indices de la tabla `inscripciones_eventos`
--
ALTER TABLE `inscripciones_eventos`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `inscripciones_examenes`
--
ALTER TABLE `inscripciones_examenes`
  ADD PRIMARY KEY (`id_inscripcion`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_modalidad` (`id_modalidad`);

--
-- Indices de la tabla `modalidades`
--
ALTER TABLE `modalidades`
  ADD PRIMARY KEY (`id_modalidad`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de la tabla `auditoria_login`
--
ALTER TABLE `auditoria_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `imagenes_eventos`
--
ALTER TABLE `imagenes_eventos`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `imagenes_noticias`
--
ALTER TABLE `imagenes_noticias`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inscripciones_eventos`
--
ALTER TABLE `inscripciones_eventos`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `inscripciones_examenes`
--
ALTER TABLE `inscripciones_examenes`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modalidades`
--
ALTER TABLE `modalidades`
  MODIFY `id_modalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes_eventos`
--
ALTER TABLE `imagenes_eventos`
  ADD CONSTRAINT `imagenes_eventos_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes_noticias`
--
ALTER TABLE `imagenes_noticias`
  ADD CONSTRAINT `imagenes_noticias_ibfk_1` FOREIGN KEY (`id_noticia`) REFERENCES `noticias` (`id_noticia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscripciones_eventos`
--
ALTER TABLE `inscripciones_eventos`
  ADD CONSTRAINT `inscripciones_eventos_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`),
  ADD CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidades` (`id_modalidad`);

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
