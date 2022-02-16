DROP DATABASE IF EXISTS `crudcurso`;
CREATE DATABASE `crudcurso`;
USE `crudcurso`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `courses` (
  `idCourse` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `courses`
  ADD KEY `idCourse` (`idCourse`);


ALTER TABLE `courses`
  MODIFY `idCourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
