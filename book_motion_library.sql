-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 07:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_motion_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(3) NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `author_name`, `creation_date`) VALUES
(2, 'bell charley', '2023-09-12'),
(6, 'maria monila', '2023-09-12'),
(9, 'mona lisa', '2023-10-03'),
(10, 'clone carry', '2023-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `catid` int(3) NOT NULL,
  `authorid` int(3) NOT NULL,
  `isbnno` int(4) NOT NULL,
  `price` int(4) NOT NULL,
  `image` varchar(400) NOT NULL,
  `isissue` tinyint(1) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `catid`, `authorid`, `isbnno`, `price`, `image`, `isissue`, `reg_date`) VALUES
(10, 'elite', 6, 2, 10003, 20, './books/book7.jpg', 0, '2023-09-12'),
(14, 'grand purshuit', 9, 10, 5800, 250, './books/book2.jpg', 0, '2023-10-03'),
(17, 'rich dad poor dad ', 7, 6, 12345, 255, './books/newsimg2.jpg', 1, '2023-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `c_name` varchar(25) NOT NULL,
  `creation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `creation_date`) VALUES
(5, 'romance', '2023-09-12'),
(6, 'business', '2023-09-12'),
(7, 'management', '2023-09-15'),
(8, 'food', '2023-10-01'),
(9, 'advanture', '2023-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `id` int(3) NOT NULL,
  `bookid` int(3) NOT NULL,
  `sid` int(3) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL,
  `returnstatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`id`, `bookid`, `sid`, `issuedate`, `returndate`, `returnstatus`) VALUES
(16, 10003, 8, '2023-10-01', '2023-10-04', 1),
(17, 10003, 8, '2023-10-01', '2023-10-04', 1),
(18, 100025, 10, '2023-10-01', '2023-10-04', 1),
(19, 10003, 8, '2023-10-04', '2023-10-04', 1),
(20, 12345, 10, '2023-10-04', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register_student`
--

CREATE TABLE `register_student` (
  `id` int(3) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_student`
--

INSERT INTO `register_student` (`id`, `fname`, `lname`, `gender`, `dob`, `email`, `contact`, `address`, `password`, `status`) VALUES
(8, 'nicxx', 'cherry', 'male', '2023-08-29', 'mnhgnm@text', '823845399', '46 rehgnekm madhubala', '1', 1),
(10, 'mantha', 'katariya', 'female', '2011-02-12', 'mantha@temp', '7654321', '46 rehgnekm ejbce', '2', 1),
(14, 'test', 'temp', 'female', '2023-10-03', '123@temp', '12345', '23 eevds fvd', '12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thought`
--

CREATE TABLE `thought` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thought`
--

INSERT INTO `thought` (`id`, `image`, `title`, `description`, `user_id`) VALUES
(14, './bookimg/newsimg1.jpeg', 'admin test', 'i wish its success', 8),
(23, './bookimg/book1.jpg', 'my secret of success', 'read this book for your suggetion for success', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`authorid`),
  ADD KEY `cat` (`catid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `register_student`
--
ALTER TABLE `register_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thought`
--
ALTER TABLE `thought`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thought` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `register_student`
--
ALTER TABLE `register_student`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `thought`
--
ALTER TABLE `thought`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `register_student` (`id`);

--
-- Constraints for table `thought`
--
ALTER TABLE `thought`
  ADD CONSTRAINT `thought` FOREIGN KEY (`user_id`) REFERENCES `register_student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
