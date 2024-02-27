-- Base de datos: almacen
-- Proyecto: Buscar datos en tiempo real con PHP, MySQL y AJAX
-- Autor: mroblesdev
-- https://github.com/mroblesdev/server-side-php


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--
CREATE DATABASE IF NOT EXISTS `almacen` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `almacen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `no_emp` int NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nombre` varchar(14) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(16) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `genero` enum('M','F') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`no_emp`, `fecha_nacimiento`, `nombre`, `apellido`, `genero`, `fecha_ingreso`) VALUES
(10001, '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26'),
(10002, '1964-06-02', 'Bezalel', 'Simmel', 'F', '1985-11-21'),
(10003, '1959-12-03', 'Parto', 'Bamford', 'M', '1986-08-28'),
(10004, '1954-05-01', 'Chirstian', 'Koblick', 'M', '1986-12-01'),
(10005, '1955-01-21', 'Kyoichi', 'Maliniak', 'M', '1989-09-12'),
(10006, '1953-04-20', 'Anneke', 'Preusig', 'F', '1989-06-02'),
(10007, '1957-05-23', 'Tzvetan', 'Zielinski', 'F', '1989-02-10'),
(10008, '1958-02-19', 'Saniya', 'Kalloufi', 'M', '1994-09-15'),
(10009, '1952-04-19', 'Sumant', 'Peac', 'F', '1985-02-18'),
(10010, '1963-06-01', 'Duangkaew', 'Piveteau', 'F', '1989-08-24'),
(10011, '1953-11-07', 'Mary', 'Sluis', 'F', '1990-01-22'),
(10012, '1960-10-04', 'Patricio', 'Bridgland', 'M', '1992-12-18'),
(10013, '1963-06-07', 'Eberhardt', 'Terkki', 'M', '1985-10-20'),
(10014, '1956-02-12', 'Berni', 'Genin', 'M', '1987-03-11'),
(10015, '1959-08-19', 'Guoxiang', 'Nooteboom', 'M', '1987-07-02'),
(10016, '1961-05-02', 'Kazuhito', 'Cappelletti', 'M', '1995-01-27'),
(10017, '1958-07-06', 'Cristinel', 'Bouloucos', 'F', '1993-08-03'),
(10018, '1954-06-19', 'Kazuhide', 'Peha', 'F', '1987-04-03'),
(10019, '1953-01-23', 'Lillian', 'Haddadi', 'M', '1999-04-30'),
(10020, '1952-12-24', 'Mayuko', 'Warwick', 'M', '1991-01-26'),
(10021, '1960-02-20', 'Ramzi', 'Erde', 'M', '1988-02-10'),
(10022, '1952-07-08', 'Shahaf', 'Famili', 'M', '1995-08-22'),
(10023, '1953-09-29', 'Bojan', 'Montemayor', 'F', '1989-12-17'),
(10024, '1958-09-05', 'Suzette', 'Pettey', 'F', '1997-05-19'),
(10025, '1958-10-31', 'Prasadram', 'Heyers', 'M', '1987-08-17'),
(10026, '1953-04-03', 'Yongqiao', 'Berztiss', 'M', '1995-03-20'),
(10027, '1962-07-10', 'Divier', 'Reistad', 'F', '1989-07-07'),
(10028, '1963-11-26', 'Domenick', 'Tempesti', 'M', '1991-10-22'),
(10029, '1956-12-13', 'Otmar', 'Herbst', 'M', '1985-11-20'),
(10030, '1958-07-14', 'Elvis', 'Demeyer', 'M', '1994-02-17'),
(10031, '1959-01-27', 'Karsten', 'Joslin', 'M', '1991-09-01'),
(10032, '1960-08-09', 'Jeong', 'Reistad', 'F', '1990-06-20'),
(10033, '1956-11-14', 'Arif', 'Merlo', 'M', '1987-03-18'),
(10034, '1962-12-29', 'Bader', 'Swan', 'M', '1988-09-21'),
(10035, '1953-02-08', 'Alain', 'Chappelet', 'M', '1988-09-05'),
(10036, '1959-08-10', 'Adamantios', 'Portugali', 'M', '1992-01-03'),
(10037, '1963-07-22', 'Pradeep', 'Makrucki', 'M', '1990-12-05'),
(10038, '1960-07-20', 'Huan', 'Lortz', 'M', '1989-09-20'),
(10039, '1959-10-01', 'Alejandro', 'Brender', 'M', '1988-01-19'),
(10040, '1959-09-13', 'Weiyi', 'Meriste', 'F', '1993-02-14'),
(10041, '1959-08-27', 'Uri', 'Lenart', 'F', '1989-11-12'),
(10042, '1956-02-26', 'Magy', 'Stamatiou', 'F', '1993-03-21'),
(10043, '1960-09-19', 'Yishay', 'Tzvieli', 'M', '1990-10-20'),
(10044, '1961-09-21', 'Mingsen', 'Casley', 'F', '1994-05-21'),
(10045, '1957-08-14', 'Moss', 'Shanbhogue', 'M', '1989-09-02'),
(10046, '1960-07-23', 'Lucien', 'Rosenbaum', 'M', '1992-06-20'),
(10047, '1952-06-29', 'Zvonko', 'Nyanchama', 'M', '1989-03-31'),
(10048, '1963-07-11', 'Florian', 'Syrotiuk', 'M', '1985-02-24'),
(10049, '1961-04-24', 'Basil', 'Tramer', 'F', '1992-05-04'),
(10050, '1958-05-21', 'Yinghua', 'Dredge', 'M', '1990-12-25'),
(10051, '1953-07-28', 'Hidefumi', 'Caine', 'M', '1992-10-15'),
(10052, '1961-02-26', 'Heping', 'Nitsch', 'M', '1988-05-21'),
(10053, '1954-09-13', 'Sanjiv', 'Zschoche', 'F', '1986-02-04'),
(10054, '1957-04-04', 'Mayumi', 'Schueller', 'M', '1995-03-13'),
(10055, '1956-06-06', 'Georgy', 'Dredge', 'M', '1992-04-27'),
(10056, '1961-09-01', 'Brendon', 'Bernini', 'F', '1990-02-01'),
(10057, '1954-05-30', 'Ebbe', 'Callaway', 'F', '1992-01-15'),
(10058, '1954-10-01', 'Berhard', 'McFarlin', 'M', '1987-04-13'),
(10059, '1953-09-19', 'Alejandro', 'McAlpine', 'F', '1991-06-26'),
(10060, '1961-10-15', 'Breannda', 'Billingsley', 'M', '1987-11-02'),
(10061, '1962-10-19', 'Tse', 'Herber', 'M', '1985-09-17'),
(10062, '1961-11-02', 'Anoosh', 'Peyn', 'M', '1991-08-30'),
(10063, '1952-08-06', 'Gino', 'Leonhardt', 'F', '1989-04-08'),
(10064, '1959-04-07', 'Udi', 'Jansch', 'M', '1985-11-20'),
(10065, '1963-04-14', 'Satosi', 'Awdeh', 'M', '1988-05-18'),
(10066, '1952-11-13', 'Kwee', 'Schusler', 'M', '1986-02-26'),
(10067, '1953-01-07', 'Claudi', 'Stavenow', 'M', '1987-03-04'),
(10068, '1962-11-26', 'Charlene', 'Brattka', 'M', '1987-08-07'),
(10069, '1960-09-06', 'Margareta', 'Bierman', 'F', '1989-11-05'),
(10070, '1955-08-20', 'Reuven', 'Garigliano', 'M', '1985-10-14'),
(10071, '1958-01-21', 'Hisao', 'Lipner', 'M', '1987-10-01'),
(10072, '1952-05-15', 'Hironoby', 'Sidou', 'F', '1988-07-21'),
(10073, '1954-02-23', 'Shir', 'McClurg', 'M', '1991-12-01'),
(10074, '1955-08-28', 'Mokhtar', 'Bernatsky', 'F', '1990-08-13'),
(10075, '1960-03-09', 'Gao', 'Dolinsky', 'F', '1987-03-19'),
(10076, '1952-06-13', 'Erez', 'Ritzmann', 'F', '1985-07-09'),
(10077, '1964-04-18', 'Mona', 'Azuma', 'M', '1990-03-02'),
(10078, '1959-12-25', 'Danel', 'Mondadori', 'F', '1987-05-26'),
(10079, '1961-10-05', 'Kshitij', 'Gils', 'F', '1986-03-27'),
(10080, '1957-12-03', 'Premal', 'Baek', 'M', '1985-11-19'),
(10081, '1960-12-17', 'Zhongwei', 'Rosen', 'M', '1986-10-30'),
(10082, '1963-09-09', 'Parviz', 'Lortz', 'M', '1990-01-03'),
(10083, '1959-07-23', 'Vishv', 'Zockler', 'M', '1987-03-31'),
(10084, '1960-05-25', 'Tuval', 'Kalloufi', 'M', '1995-12-15'),
(10085, '1962-11-07', 'Kenroku', 'Malabarba', 'M', '1994-04-09'),
(10086, '1962-11-19', 'Somnath', 'Foote', 'M', '1990-02-16'),
(10087, '1959-07-23', 'Xinglin', 'Eugenio', 'F', '1986-09-08'),
(10088, '1954-02-25', 'Jungsoon', 'Syrzycki', 'F', '1988-09-02'),
(10089, '1963-03-21', 'Sudharsan', 'Flasterstein', 'F', '1986-08-12'),
(10090, '1961-05-30', 'Kendra', 'Hofting', 'M', '1986-03-14'),
(10091, '1955-10-04', 'Amabile', 'Gomatam', 'M', '1992-11-18'),
(10092, '1964-10-18', 'Valdiodio', 'Niizuma', 'F', '1989-09-22'),
(10093, '1964-06-11', 'Sailaja', 'Desikan', 'M', '1996-11-05'),
(10094, '1957-05-25', 'Arumugam', 'Ossenbruggen', 'F', '1987-04-18'),
(10095, '1965-01-03', 'Hilari', 'Morton', 'M', '1986-07-15'),
(10096, '1954-09-16', 'Jayson', 'Mandell', 'M', '1990-01-14'),
(10097, '1952-02-27', 'Remzi', 'Waschkowski', 'M', '1990-09-15'),
(10098, '1961-09-23', 'Sreekrishna', 'Servieres', 'F', '1985-05-13'),
(10099, '1956-05-25', 'Valter', 'Sullins', 'F', '1988-10-18'),
(10100, '1953-04-21', 'Hironobu', 'Haraldson', 'F', '1987-09-21'),
(10101, '1952-04-15', 'Perla', 'Heyers', 'F', '1992-12-28'),
(10102, '1959-11-04', 'Paraskevi', 'Luby', 'F', '1994-01-26'),
(10103, '1953-11-26', 'Akemi', 'Birch', 'M', '1986-12-02'),
(10104, '1961-11-19', 'Xinyu', 'Warwick', 'M', '1987-04-16'),
(10105, '1962-02-05', 'Hironoby', 'Piveteau', 'M', '1999-03-23'),
(10106, '1952-08-29', 'Eben', 'Aingworth', 'M', '1990-12-19'),
(10107, '1956-06-13', 'Dung', 'Baca', 'F', '1994-03-22'),
(10108, '1952-04-07', 'Lunjin', 'Giveon', 'M', '1986-10-02'),
(10109, '1958-11-25', 'Mariusz', 'Prampolini', 'F', '1993-06-16'),
(10110, '1957-03-07', 'Xuejia', 'Ullian', 'F', '1986-08-22'),
(10111, '1963-08-29', 'Hugo', 'Rosis', 'F', '1988-06-19'),
(10112, '1963-08-13', 'Yuichiro', 'Swick', 'F', '1985-10-08'),
(10113, '1963-11-13', 'Jaewon', 'Syrzycki', 'M', '1989-12-24'),
(10114, '1957-02-16', 'Munir', 'Demeyer', 'F', '1992-07-17'),
(10115, '1964-12-25', 'Chikara', 'Rissland', 'M', '1986-01-23'),
(10116, '1955-08-26', 'Dayanand', 'Czap', 'F', '1985-05-28'),
(10117, '1961-10-24', 'Kiyotoshi', 'Blokdijk', 'F', '1990-05-28'),
(10118, '1957-03-29', 'Zhonghui', 'Zyda', 'F', '1990-09-13'),
(10119, '1960-12-01', 'Domenick', 'Peltason', 'M', '1986-03-14'),
(10120, '1960-03-26', 'Armond', 'Fairtlough', 'F', '1996-07-06'),
(10121, '1962-07-14', 'Guoxiang', 'Ramsay', 'M', '1989-05-03'),
(10122, '1965-01-19', 'Ohad', 'Esposito', 'M', '1992-12-23'),
(10123, '1962-05-12', 'Hinrich', 'Randi', 'M', '1993-01-15'),
(10124, '1962-05-23', 'Geraldo', 'Marwedel', 'M', '1991-09-05'),
(10125, '1957-09-13', 'Syozo', 'Hiltgen', 'F', '1990-10-26'),
(10126, '1954-08-07', 'Kayoko', 'Valtorta', 'M', '1985-09-08'),
(10127, '1952-02-24', 'Subir', 'Baja', 'F', '1989-01-14'),
(10128, '1958-02-15', 'Babette', 'Lamba', 'F', '1988-06-06'),
(10129, '1955-12-02', 'Armond', 'Peir', 'M', '1985-12-10'),
(10130, '1955-04-27', 'Nishit', 'Casperson', 'M', '1988-06-21'),
(10131, '1952-02-19', 'Magdalena', 'Eldridge', 'M', '1994-11-17'),
(10132, '1956-12-15', 'Ayakannu', 'Skrikant', 'M', '1994-10-30'),
(10133, '1963-12-12', 'Giri', 'Isaak', 'M', '1985-12-15'),
(10134, '1953-04-15', 'Diederik', 'Siprelle', 'M', '1987-12-12'),
(10135, '1956-12-23', 'Nathan', 'Monkewich', 'M', '1988-02-19'),
(10136, '1961-09-14', 'Zissis', 'Pintelas', 'M', '1986-02-11'),
(10137, '1959-07-30', 'Maren', 'Hutton', 'M', '1985-02-18'),
(10138, '1955-04-24', 'Perry', 'Shimshoni', 'M', '1986-09-18'),
(10139, '1963-03-03', 'Ewing', 'Foong', 'F', '1998-03-15'),
(10140, '1957-03-11', 'Yucel', 'Auria', 'F', '1991-03-14'),
(10141, '1960-01-17', 'Shahaf', 'Ishibashi', 'F', '1993-05-06'),
(10142, '1956-08-29', 'Tzvetan', 'Hettesheimer', 'M', '1993-10-28'),
(10143, '1961-07-16', 'Sakthirel', 'Bakhtari', 'M', '1988-09-30'),
(10144, '1959-06-17', 'Marla', 'Brendel', 'M', '1985-10-14'),
(10145, '1956-03-30', 'Akemi', 'Esposito', 'F', '1987-08-01'),
(10146, '1959-01-12', 'Chenyi', 'Syang', 'M', '1988-06-28'),
(10147, '1964-10-13', 'Kazuhito', 'Encarnacion', 'M', '1986-08-21'),
(10148, '1957-10-04', 'Douadi', 'Azumi', 'M', '1995-10-10'),
(10149, '1953-05-20', 'Xiadong', 'Perry', 'F', '1986-11-05'),
(10150, '1955-01-29', 'Zhenbing', 'Perng', 'F', '1986-11-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`no_emp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
