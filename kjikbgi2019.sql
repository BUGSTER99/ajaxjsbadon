-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 11:58 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kjikbgi2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@mail.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, '', '[\'admin@mail.com\',\'admin\']', ''),
(3, '', '\"[\'admin@mail.com\',\'admin\']\"', ''),
(4, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(5, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(6, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(7, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(8, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(9, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(10, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(11, '', '{\"email\":\"A\",\"pass\":\"B\"}', ''),
(12, 'andi', 'andi@mail.com', '123\r\n'),
(13, 'kona', '123', '123\r\n'),
(14, 'ibnu', '12', '12'),
(15, 'kol', 'kol', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
