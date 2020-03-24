-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2019 at 08:13 AM
-- Server version: 8.0.15
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodexploria`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `first_name`, `middle_name`, `last_name`, `email`, `contact`, `address`, `password`) VALUES
('Cocosp', 'Coco', 'Rick', 'Spencer', 'coco.spencer@gmail.com', '1234567890', 'Pune', 'cocosp'),
('dikshita069', 'Dikshita', 'Rakesh', 'Patel', 'dikshitapatel99@hotmail.com', '5432895432', 'Mumbai', 'dikshita'),
('janice048', 'Janice', 'Prakash', 'Shah', 'janice.shah@soit.ac.in', '8932458762', 'Chennai', 'janice'),
('jsc2412', 'Jignasa', 'Shailesh', 'Chhatbar', 'jignasa.chhatbar76@gmail.com', '4567823456', 'Mumbai', '123vidhi'),
('nidha', 'trsss', 'rsdjd', 'Khan', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('niti050', 'Niti', 'Bhavesh', 'Shah', 'niti.shah@spit.ac.in', '4367894321', 'Mumbai', 'niti'),
('Rakesh79', 'Rajesh', 'Nakul', 'Shah', 'rakesh.nshah@gmail.com', '5478903215', 'Delhi', 'rakesh'),
('Ram200', 'Ram', 'Deepak', 'Khan', 'ram.khan@gmail.com', '1234567890', 'Hyderabad', 'ram200'),
('riya99', 'Riya', 'Abhay', 'Bhagat', 'riya.bhagat@spit.ac.in', '2942111345', 'Mumbai', 'riya'),
('shailesh', 'shailesh', 'harkishan', 'chhatbar', 'shailesh.hc@rediffmail.com', '9870248304', 'malad', 'sha0909'),
('shailesh.hc', 'shailesh', 'harkishan', 'chhatbar', 'shailesh.hc@rediffmail.com', '9870248304', 'malad', 'shc0909'),
('vidhi001', 'Vidhi', 'Shailesh', 'Chhatbar', 'vidhi.chhatbar@gmail.com', '8124456577', 'Mumbai', 'vidhi'),
('vrinda002', 'Vrinda', 'Kanchan', 'Bhatu', 'vrindabhatu@gmail.com', '4576326824', 'Mumbai', 'vrinda'),
('yashvi010', 'Yashvi', 'Kunal', 'Desai', 'yashvi.desai@spit.ac.in', '8943245678', 'Pune', 'yashvi');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `offer_price` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `offer_price`, `description`, `R_ID`, `images_path`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 40, 40, 'Juicy Masala Paneer Kathi Roll loaded with Masala Paneer chunks, onion & Mayo.', 1, 'images/Masala_Paneer_Kathi_Roll.jpg'),
(59, 'Meurig Fish', 60, 60, 'Try Meurig - A whole Pomfret fish grilled with tangy marination & served with grilled onions and tomatoes.', 2, 'images/Meurig.jpg'),
(60, 'Chocolate', 230, 200, 'chocolate yummy tasty healthy..............loving having hersheys ,nutella and sugar free cake', 3, 'images/Chocolate_Hazelnut_Truffle.jpg'),
(61, 'Happy Happy Choco Chip Shake', 80, 60, 'Happy Happy Choco Chip Shake - a perfect party sweet treat.', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg'),
(62, 'Spring Rolls', 65, 60, 'Delicious Spring Rolls by Dragon Hut, Delhi. Order now!!!', 2, 'images/Spring_Rolls.jpg'),
(86, 'Baahubali Thali', 200, 170, 'Baahubali Thali is accompanied by Kattapa Biriyani, Devasena Paratha, Bhalladeva Patiala Lassi', 3, 'images/Baahubali_Thali.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `offer_price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `offer_price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 60, 'Chocolate Hazelnut Truffle', 200, 1, '2019-03-30', 'Cocosp', 3),
(2, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-30', 'Cocosp', 1),
(3, 60, 'Chocolate Hazelnut Truffle', 200, 1, '2019-03-30', 'Cocosp', 3),
(4, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2019-03-30', 'Cocosp', 1),
(5, 59, 'Meurig Fish', 60, 1, '2019-04-02', 'Cocosp', 2),
(6, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-02', 'Cocosp', 1),
(7, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2019-04-09', 'Cocosp', 1),
(8, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(9, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(10, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(11, 59, 'Meurig Fish', 60, 1, '2019-04-09', 'Cocosp', 2),
(12, 60, 'Chocolate', 200, 1, '2019-04-09', 'Cocosp', 3),
(13, 59, 'Meurig Fish', 60, 1, '2019-04-09', 'Cocosp', 2),
(14, 59, 'Meurig Fish', 60, 1, '2019-04-09', 'Cocosp', 2),
(15, 59, 'Meurig Fish', 60, 1, '2019-04-09', 'nidha', 2),
(16, 62, 'Spring Rolls', 60, 1, '2019-04-09', 'Cocosp', 2),
(17, 59, 'Meurig Fish', 60, 1, '2019-04-09', 'nidha', 2),
(18, 62, 'Spring Rolls', 60, 1, '2019-04-09', 'nidha', 2),
(19, 62, 'Spring Rolls', 60, 1, '2019-04-09', 'Ram200', 2),
(20, 86, 'Baahubali Thali', 170, 1, '2019-04-09', 'Ram200', 3),
(21, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'jsc2412', 1),
(22, 60, 'Chocolate', 200, 1, '2019-04-12', 'jsc2412', 3),
(23, 62, 'Spring Rolls', 60, 1, '2019-04-12', 'shailesh', 2),
(24, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'Cocosp', 1),
(25, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'Cocosp', 1),
(26, 61, 'Happy Happy Choco Chip Shake', 60, 1, '2019-04-12', 'Cocosp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
