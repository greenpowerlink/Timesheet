-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2019 at 03:59 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teckglobal`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `COL 1` varchar(6) DEFAULT NULL,
  `COL 2` varchar(10) DEFAULT NULL,
  `COL 3` varchar(13) DEFAULT NULL,
  `COL 4` varchar(40) DEFAULT NULL,
  `COL 5` varchar(7) DEFAULT NULL,
  `COL 6` varchar(6) DEFAULT NULL,
  `COL 7` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`) VALUES
('emp_id', 'first_name', 'last_name', 'emailAddress', 'role_id', 'gender', 'super_id'),
('1', 'David', 'Zucaro', 'david@teckglobal.com.au', '14', 'M', ''),
('2', 'Ben', 'Ko', 'ben.ko@teckglobal.com.au', '8', 'M', '1'),
('3', 'Sean', 'Kho', 'Sean.Kho@teckglobal.com.au', '21', 'M', '1'),
('4', 'David', 'Ong', 'david.Ong@teckglobal.com.au', '17', 'M', '1'),
('5', 'John', 'Brockie', 'john.brockie@teckglobal.com.au', '26', 'M', '1'),
('6', 'Jeniffer', 'Pauza', 'jeniffer.pauza@teckglobal.com.au', '9', 'F', '1'),
('7', 'Mary', 'Dao', 'mary.dao@teckglobal.com.au', '1', 'F', '1'),
('8', 'Vivek', 'Pai', 'vivek.pai@teckglobal.com.au', '22', 'M', '2'),
('9', 'Adrian', 'Serang', 'adrian.serang@teckglobal.com.au', '22', 'M', '2'),
('10', 'Jayden', 'Tan', 'jayden.tan@teckglobal.com.au', '11', 'M', '8'),
('11', 'Paolo', 'Domingo', 'paolo.domingo@teckglobal.com.au', '6', 'M', '8'),
('12', 'Francis', 'Dao', 'francis.dao@teckglobal.com.au', '3', 'M', '8'),
('13', 'Namu', 'Herbert-Chatt', 'namugeere.herbertchatt@teckglobal.com.au', '5', 'F', '8'),
('14', 'Arash', 'Baastani', 'arash.baastani@teckglobal.com.au', '6', 'M', '9'),
('15', 'William', 'Ni', '', '6', 'M', '9'),
('16', 'Chamara', 'Tilakaratna', 'chamara.tilakaratna@teckglobal.com.au', '11', 'M', '9'),
('17', 'Terrence', 'Zhao', 'terrence.zhao@teckglobal.com.au', '11', 'M', '9'),
('18', 'Hon', 'Choon Fan', 'hon.fan@teckglobal.com.au', '13', 'M', '9'),
('19', 'Arash', 'Modhej', 'arash.modhej@teckglobal.com.au', '20', 'M', '3'),
('20', 'MC', 'Huang', 'mc.huang@teckglobal.com.au', '6', 'M', '3'),
('21', 'Dulara', 'Peiris', 'dulara.peiris@teckglobal.com.au', '11', 'M', '3'),
('22', 'Ian', 'Visser', 'ian.visser@teckglobal.com.au', '23', 'M', '3'),
('23', 'Dany', 'Caro', 'dany.caro@teckglobal.com.au', '24', 'M', '1'),
('24', 'Grace', 'Tseng', 'grace.tseng@teckglobal.com.au', '18', 'F', '4'),
('25', 'Charlene', 'How', 'charlene.how@teckglobal.com.au', '16', 'F', '24'),
('26', 'Goesta', 'Kumlehn', 'goesta.kumlehn@teckglobal.com.au', '19', 'M', '4'),
('27', 'Venna', 'D`Rozario', 'venna.drozario@teckglobal.com.au', '2', 'F', '26'),
('28', 'Sherwin', 'Umacob', 'sherwin.umacob@teckglobal.com.au', '15', 'M', '4'),
('29', 'Uvin', 'Alwis', 'uvin.alwis@teckglobal.com.au', '12', 'M', '4'),
('30', 'Richard', 'Moore', 'richard.moore@teckglobal.com.au', '10', 'M', '5'),
('31', 'Dominic', 'Zucaro', 'dominic.zucaro@teckglobal.com.au', '25', 'M', '5'),
('32', 'Callum', 'Warn', 'callum.warn@teckglobal.com.au', '25', 'M', '5'),
('33', 'Michael', 'Arcaro', 'michael.arcaro@teckglobal.com.au', '7', 'M', '5'),
('34', 'Simonn', 'Lei', 'simon.lei@teckglobal.com.au', '4', 'M', '5'),
('35', 'Daniel', 'Black', 'daniel.black@teckglobal.com.au', '7', 'M', '5'),
('36', 'Damon', 'Greisbach', 'damon.greisbach@teckglobal.com.au', '4', 'M', '5'),
('37', 'Liam', 'Hawley', 'liam.hawley@teckglobal.com.au', '7', 'M', '5');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `COL 1` varchar(7) DEFAULT NULL,
  `COL 2` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`COL 1`, `COL 2`) VALUES
('role_id', 'position'),
('1', 'Accounts Manager'),
('2', 'Assistant Project & Cost Controller'),
('3', 'Designer'),
('4', 'Electrical Apprentice'),
('5', 'Electrical Designer'),
('6', 'Electrical Engineer'),
('7', 'Electrician'),
('8', 'Engineering Manager'),
('9', 'Executive Assistant'),
('10', 'Fabricator'),
('11', 'Graduate Electrical Engineer'),
('12', 'Gratuate Mechanical Engineer'),
('13', 'Intern'),
('14', 'Managing Director'),
('15', 'Mechanical Designer & Coordinator'),
('16', 'Office Administrator'),
('17', 'Operation Manager'),
('18', 'Procurement Officer'),
('19', 'Project & Cost Controller'),
('20', 'Project Engineer'),
('21', 'Project Manager'),
('22', 'Senior Electrical Engineer'),
('23', 'Senior Electrical Designer'),
('24', 'Software Engineer'),
('25', 'Trade assistant'),
('26', 'Workshop Manager');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
