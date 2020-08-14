-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 04:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdg`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `C_ID` int(11) NOT NULL,
  `content` varchar(400) NOT NULL,
  `author` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `Post_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Post_ID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `featured` varchar(200) NOT NULL,
  `category` varchar(30) NOT NULL,
  `author` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  `visitors` int(5) NOT NULL,
  `scheduledate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Post_ID`, `title`, `description`, `featured`, `category`, `author`, `date`, `status`, `visitors`, `scheduledate`) VALUES
(31, 'Use of Organic Manure', 'We need to apply manure instead of fertilizers', 'IMG_20131225_070850329.jpg', 'Sports', 'george@gmail.com', '2020-08-13 19:51:59', 'publish', 17, '0000-00-00'),
(32, 'Go Green', 't s All About Family\r\n\r\nGo Green was founded in 2009 in Pierre Jr. s dorm room. Inspired by his dad to become an entrepreneur and by a professor working with NASA to grow food in space  Pierre set out on a mission to combine technology and agriculture to solve industry challenges. Our culture is founded on family  fun and excellence through innovation!', 'shimla.jpg', 'Health', 'george@gmail.com', '2020-08-14 14:02:23', 'publish', 4, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `Name`, `Email`, `Password`, `Created`) VALUES
(1, 'George', 'george@gmail.com', '1824e8e0307cbfdd1993511ab040075c', '2020-08-12'),
(2, 'Kimani John', 'kimani@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2020-08-12'),
(3, 'Abigael', 'abbie@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-08-28'),
(4, 'Grace Wanjiru', 'gracewanjiru@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2020-08-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Post_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
