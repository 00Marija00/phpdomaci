-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itehdomaci1`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `todo_id` int(11) NOT NULL,
  `nazivTaska` varchar(150) NOT NULL,
  `datumPocetka` date NOT NULL,
  `datumZavrsetka` date NOT NULL,
  `osobeTaska` varchar(150) NOT NULL,
  `opisTaska` varchar(150) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`todo_id`, `nazivTaska`, `datumPocetka`, `datumZavrsetka`, `osobeTaska`, `opisTaska`, `userid`) VALUES
(1, 'Projekat iz PHP-a', '2023-05-05', '2023-05-23', 'Marija', 'Domaci zadatak.', 1),
(2, 'Milicin task', '2023-05-03', '2023-05-30', 'Milica', 'Potrebno je da zavrsis ovaj task sto pre!', 2),
(3, 'Domaci zadaci iz ostalih predmeta', '2023-04-04', '2023-05-05', 'Marija', 'Za ovo ti treba dosta vremena. Rasporedi obaveze na manje delove kako bi bila sto produktivnija!!!', 1),
(5, 'Kupovina u Maxiju', '2023-05-30', '2023-06-01', 'Marija', 'Uzmi spisak stvari sa frizidera', 1),
(4, 'Milicin drugi task', '2023-06-01', '2023-07-01', 'Milica, Marija', 'Task detalji...', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `ime` varchar(80) NOT NULL,
  `godine` int(11) DEFAULT NULL,
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `ime`, `godine`, `username`, `password`) VALUES
(1, 'marija', NULL, 'marija', 'marija'),
(2, 'milica', NULL, 'milica', 'milica'),
(3, 'nikola', NULL, 'nikola', 'nikola');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
