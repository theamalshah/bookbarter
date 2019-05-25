-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 06:17 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookbarter`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminreg_table`
--

CREATE TABLE `adminreg_table` (
  `id` int(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminreg_table`
--

INSERT INTO `adminreg_table` (`id`, `uname`, `fname`, `lname`, `email`, `password`, `gender`, `contact`) VALUES
(2, 'amalshah', 'amal', 'shah', 'amal@gmail.com', '123456789', 0, 12345);

-- --------------------------------------------------------

--
-- Table structure for table `area_table`
--

CREATE TABLE `area_table` (
  `id` int(20) NOT NULL,
  `area_name` varchar(20) NOT NULL,
  `city_id` int(20) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_table`
--

INSERT INTO `area_table` (`id`, `area_name`, `city_id`, `is_active`) VALUES
(29, 'kalupur Area', 14, 1),
(30, 'jodhpur', 14, 1),
(31, 'Nehrunagar', 14, 1),
(32, 'Dariyapur', 14, 1),
(33, 'Shahibaugh', 14, 1),
(34, 'Sardarnagar', 14, 2),
(35, 'delhi darwaja', 14, 1),
(36, 'khokhra', 14, 1),
(37, 'maninagar', 14, 1),
(38, 'raipur', 14, 1),
(39, 'shyamal', 14, 1),
(40, 'manekbaugh', 14, 1),
(41, 'jamalpur', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booktype_table`
--

CREATE TABLE `booktype_table` (
  `id` int(20) NOT NULL,
  `booktype_name` varchar(20) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktype_table`
--

INSERT INTO `booktype_table` (`id`, `booktype_name`, `is_active`) VALUES
(6, 'newspapers', 1),
(7, 'Novel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cat_table`
--

CREATE TABLE `cat_table` (
  `id` int(20) NOT NULL,
  `cat_name` varchar(20) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_table`
--

INSERT INTO `cat_table` (`id`, `cat_name`, `is_active`) VALUES
(4, 'novels', 1),
(5, 'new', 1),
(6, 'document', 1),
(7, 'books', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city_table`
--

CREATE TABLE `city_table` (
  `id` int(20) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_table`
--

INSERT INTO `city_table` (`id`, `city_name`, `is_active`) VALUES
(14, 'Ahmedabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `condition_table`
--

CREATE TABLE `condition_table` (
  `id` int(20) NOT NULL,
  `condition_name` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `condition_table`
--

INSERT INTO `condition_table` (`id`, `condition_name`, `is_active`) VALUES
(1, 'excellent', 1),
(2, 'Good', 1),
(3, 'Average', 1),
(4, 'Bad', 1),
(5, 'poor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exchange_table`
--

CREATE TABLE `exchange_table` (
  `eid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `exchange_msg` varchar(50) NOT NULL,
  `contect_u` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exchange_table`
--

INSERT INTO `exchange_table` (`eid`, `uid`, `uuid`, `exchange_msg`, `contect_u`) VALUES
(14, 15, 18, 'You have one book Exchange Request', 22137876),
(15, 16, 18, 'You have one book Exchange Request', 1234567);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

CREATE TABLE `feedback_table` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`id`, `user_id`, `user_name`, `user_email`, `subject`, `msg`, `is_active`) VALUES
(1, 15, 'amalshah64@gmail.com', 'amalshah64@gmail.com', 'exelant', 'good try\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postbook_table`
--

CREATE TABLE `postbook_table` (
  `id` int(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `booktype_id` int(20) NOT NULL,
  `condition_id` int(20) NOT NULL,
  `cat_id` int(20) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `book_dec` varchar(400) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postbook_table`
--

INSERT INTO `postbook_table` (`id`, `uid`, `name`, `booktype_id`, `condition_id`, `cat_id`, `img1`, `img2`, `img3`, `img4`, `book_dec`, `is_active`) VALUES
(31, 18, 'Grid', 6, 1, 4, 'demo.jpg', 'demo2.png', 'demo2.png', '', 'good for read', 0),
(36, 15, 'bath', 7, 4, 5, 'bg.jpg', 'bg.jpg', 'bg.jpg', '', 'adegse', 0),
(37, 15, 'Mahatma gandhi', 6, 2, 4, '41VoEtyAyNL._SX337_BO1_204_203_200_.jpg', 'Untitled-8.jpg', '3.jpg', '', 'dvzv', 0),
(38, 15, 'rush', 6, 3, 5, 'Picture1-17.jpg', 'Untitled.jpg', 'Untitled-8.jpg', '2-2.jpg', 'ssc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `security_table`
--

CREATE TABLE `security_table` (
  `id` int(20) NOT NULL,
  `security_name` varchar(255) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security_table`
--

INSERT INTO `security_table` (`id`, `security_name`, `is_active`) VALUES
(1, 'Who is your best friend?', 1),
(2, 'Who is your roll model?', 1),
(3, 'Which one is your favorite Dish?', 1),
(4, 'Where is your favorite place?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subbook_table`
--

CREATE TABLE `subbook_table` (
  `id` int(20) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `booktype_id` int(20) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subbook_table`
--

INSERT INTO `subbook_table` (`id`, `book_name`, `booktype_id`, `is_active`) VALUES
(1, 'boooooooskksks', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcat_table`
--

CREATE TABLE `subcat_table` (
  `id` int(20) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `cat_id` int(20) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat_table`
--

INSERT INTO `subcat_table` (`id`, `subcat_name`, `cat_id`, `is_active`) VALUES
(1, 'abcd', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `uid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `area` varchar(20) NOT NULL,
  `sq` varchar(30) NOT NULL,
  `sa` varchar(40) NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`uid`, `fname`, `lname`, `email`, `pass`, `gender`, `address`, `contact`, `city`, `area`, `sq`, `sa`, `is_active`) VALUES
(15, 'amal', 'shah', 'amalshah64@gmail.com', '123456789', 0, 'Relief road', 8469571006, 'ahemdabad', 'kalupur', 'Who is your favorite roll mode', 'dhaivat', 1),
(16, 'SHAH', 'DIVYA', 'shahdivu1997@gmail.com', '123456', 0, '786,ramjimandir ni pole', 1234567, 'ahemdabad', 'kalupur', 'Who is your best friend?', 'Amal Shah', 1),
(17, 'mitesh', 'kadivar', 'kadivarmitesh1021@gmail.com', '123456', 0, 'dhrangadhra', 2147483647, 'ahemdabad', 'jodhpur', 'Who is your best friend?', 'Amal', 1),
(18, 'Meet', 'Shah', 'meetshah@gmail.com', '123456', 0, 'Shahpur', 8585858585, 'ahemdabad', 'kalupur', 'Who is your best friend?', 'amal', 1),
(19, 'vinay', 'kumar', 'vinay@gmail.com', '123456', 0, 'east north', 101001010, 'ahemdabad', 'manekbaugh', 'Where is your favorite place?', 'goa', 1),
(23, 'Amal', 'shah', 'amal@gmail.com', '123456', 0, 'RF', 8469696969, 'ahemdabad', 'kalupur', 'Who is your best friend?', 'Rk', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminreg_table`
--
ALTER TABLE `adminreg_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `area_table`
--
ALTER TABLE `area_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booktype_table`
--
ALTER TABLE `booktype_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_table`
--
ALTER TABLE `cat_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_table`
--
ALTER TABLE `city_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_table`
--
ALTER TABLE `condition_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_table`
--
ALTER TABLE `exchange_table`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `feedback_table`
--
ALTER TABLE `feedback_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postbook_table`
--
ALTER TABLE `postbook_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security_table`
--
ALTER TABLE `security_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subbook_table`
--
ALTER TABLE `subbook_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcat_table`
--
ALTER TABLE `subcat_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminreg_table`
--
ALTER TABLE `adminreg_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `area_table`
--
ALTER TABLE `area_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `booktype_table`
--
ALTER TABLE `booktype_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cat_table`
--
ALTER TABLE `cat_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `city_table`
--
ALTER TABLE `city_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `condition_table`
--
ALTER TABLE `condition_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exchange_table`
--
ALTER TABLE `exchange_table`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `feedback_table`
--
ALTER TABLE `feedback_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `postbook_table`
--
ALTER TABLE `postbook_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `security_table`
--
ALTER TABLE `security_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subbook_table`
--
ALTER TABLE `subbook_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subcat_table`
--
ALTER TABLE `subcat_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
