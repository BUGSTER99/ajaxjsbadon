-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 12:56 PM
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
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id_email` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `to_users` varchar(200) NOT NULL,
  `email_content` text NOT NULL,
  `email_sender` varchar(200) NOT NULL,
  `status_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id_email`, `subject`, `to_users`, `email_content`, `email_sender`, `status_`) VALUES
(1, 'test', 'admin@mail.com', 'test', 'andi@mail.com', 0),
(2, 'test', 'andi@mail.com', 'test', 'admin@mail.com', 0),
(3, 'test2', 'admin@mail.com', 'test2', 'andi@mail.com', 0),
(4, 'test2', 'andi@mail.com', 'test2', 'admin@mail.com', 0),
(5, 'test2', 'admin@mail.com', 'test2', 'andi@mail.com', 0),
(6, 'admin gans', 'admin@mail.com', 'hai', 'andi@mail.com', 0),
(7, 'testt', 'andi@mail.com', 'testt', 'andi@mail.com', 0),
(8, '123', 'admin@mail.com', '123', 'andi@mail.com', 0),
(9, '123', 'admin@mail.com', '123', 'andi@mail.com', 0),
(10, 'andi', 'andi@mail.com', 'andi', 'admin@mail.com', 0),
(11, 'admin', 'admin@mail.com', '1234', 'andi@mail.com', 0);

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
(2, 'Andi', 'andi@mail.com', 'ce0e5bf55e4f71749eade7a8b95c4e46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id_email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
