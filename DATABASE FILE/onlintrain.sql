-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 10:24 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlintrain`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `first_name` text CHARACTER SET armscii8 NOT NULL,
  `last_name` text NOT NULL,
  `phone_number` text CHARACTER SET armscii8 NOT NULL,
  `origin` text CHARACTER SET armscii8 NOT NULL,
  `destination` text CHARACTER SET armscii8 NOT NULL,
  `amount` double NOT NULL,
  `seat_number` int(30) NOT NULL,
  `dated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `class` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT 1,
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `payment_id`, `user_id`, `code`, `class`, `no`, `seat`, `date`) VALUES
(15, 5, 12, 4, '2020/005/1324', 'first', 1, 'F01', 'Tue, 11-Aug-2020 11:52:19 AM'),
(17, 5, 15, 3, '2020/005/2645', 'first', 5, 'F02', 'Tue, 11-Aug-2020 12:48:38 PM'),
(18, 6, 16, 3, '2020/006/1655', 'first', 8, 'F001 -F008', 'Tue, 11-Aug-2020 01:08:20 PM'),
(19, 6, 1, 4, '2020/006/9146', 'second', 1, 'S0001', 'Tue, 11-Aug-2020 01:09:22 PM'),
(20, 8, 18, 4, '2020/008/1144', 'second', 8, 'S0001 -S0008', 'Tue, 11-Aug-2020 01:12:58 PM'),
(21, 18, 19, 1, '2020/018/1671', 'first', 8, 'F01 -F08', 'Tue, 11-Aug-2020 04:10:29 PM'),
(22, 20, 20, 5, '2020/020/126', 'first', 30, 'F01 - F30', 'Mon, 31-Aug-2020 11:36:57 PM'),
(23, 20, 21, 6, '2020/020/31816', 'first', 2, 'F31 - F32', 'Fri, 06-Nov-2020 10:10:44 PM'),
(24, 22, 22, 6, '2020/022/1176', 'second', 1, 'S001', 'Sun, 08-Nov-2020 02:08:07 PM'),
(25, 24, 23, 2, '2020/024/197', 'second', 2, 'S001 - S002', 'Sun, 15-Nov-2020 02:25:27 PM'),
(26, 26, 24, 8, '2021/026/1183', 'first', 4, 'F01 - F04', 'Fri, 17-Sep-2021 04:25:09 PM'),
(27, 98, 25, 7, '2021/098/198', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:17:54 AM'),
(28, 99, 26, 7, '2021/099/157', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:28:54 AM'),
(29, 100, 27, 7, '2021/0100/1134', 'second', 1, 'S001', 'Wed, 13-Oct-2021 05:39:18 AM'),
(30, 101, 39, 7, '2021/0101/1116', 'second', 1, 'S001', 'Wed, 13-Oct-2021 06:15:30 AM'),
(31, 102, 40, 7, '2021/0102/1502', 'first', 1, 'F001', 'Wed, 13-Oct-2021 06:18:10 AM'),
(32, 103, 43, 7, '2021/0103/1792', 'second', 2, 'S001 - S002', 'Wed, 13-Oct-2021 11:02:56 AM'),
(33, 103, 44, 8, '2021/0103/3809', 'second', 1, 'S003', 'Wed, 13-Oct-2021 02:21:40 PM'),
(34, 104, 45, 8, '2021/0104/1526', 'first', 2, 'F001 - F002', 'Wed, 13-Oct-2021 05:22:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `booked_train`
--

CREATE TABLE `booked_train` (
  `id` int(30) NOT NULL,
  `train_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked_train`
--

INSERT INTO `booked_train` (`id`, `train_id`, `name`, `address`, `contact`) VALUES
(2, 3, 'Khan Abdi', 'Jomvu', '+254708998778'),
(3, 1, 'Kim', 'Kakamega', '+25478890098');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `response`) VALUES
(3, 6, 'Demo Test - 2', 'Are you sure that this is another test? ');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(1, 'Passenger One', 'pas1o@mail.com', '1f87051e29a6927b2e6651dfb9b66387', '0780100000', 'No. 20 Aiyeteju Street', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(4, 'Passenger Three', 'pass3@mail.com', '1dd76b458af8df200a097c5b061df9b1', '9000001000', 'No. 589 Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(6, 'Test Passenger', 'testpass@mail.com', 'abe1bcf64eb68c39847b962e8caadadf', '0000002000', 'Ilorin', 'f3fc8566140434f0a3f47303c62d5146.jpg', 1),
(8, 'Demo Account', 'demoaccount@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '7800000000', '100 Demo Address', '404a6378027a553d980b99162a5b4ce8.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `passenger_id`, `schedule_id`, `amount`, `ref`, `date`) VALUES
(12, 4, 5, '520', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(14, 4, 6, '23', 'oyki20masb', 'Tue, 11-Aug-2020 11:52:19 AM'),
(15, 3, 5, '1860', '5gtnjnzclw', 'Tue, 11-Aug-2020 12:48:38 PM'),
(16, 3, 6, '680', 'dzwl1488r0', 'Tue, 11-Aug-2020 01:08:20 PM'),
(18, 4, 8, '8080', 'hja9zvtmgk', 'Tue, 11-Aug-2020 01:12:58 PM'),
(19, 1, 18, '1080', '3TVSHVBQII', 'Tue, 11-Aug-2020 04:10:29 PM'),
(20, 5, 20, '120', '84JP4U5LKZ', 'Mon, 31-Aug-2020 11:36:57 PM'),
(21, 6, 20, '8080', 'VXIZSCHMOG', 'Fri, 06-Nov-2020 10:10:44 PM'),
(22, 6, 22, '1410', 'TDHRBZTZOH', 'Sun, 08-Nov-2020 02:08:07 PM'),
(23, 2, 24, '5050', '4TRM9FIFEV', 'Sun, 15-Nov-2020 02:25:27 PM'),
(24, 8, 26, '5260', '1QXPYSUTOI', 'Fri, 17-Sep-2021 04:25:09 PM'),
(25, 7, 98, '303', 'FIPJBLU5LC', 'Wed, 13-Oct-2021 05:17:54 AM'),
(26, 7, 99, '80', 'NKMGVH44QG', 'Wed, 13-Oct-2021 05:28:54 AM'),
(27, 7, 100, '51', 'NS5IEEK1HS', 'Wed, 13-Oct-2021 05:39:18 AM'),
(39, 7, 101, '56', 'OEPPIM6X9H', 'Wed, 13-Oct-2021 06:15:30 AM'),
(40, 7, 102, '107', 'M07FP4QTOV', 'Wed, 13-Oct-2021 06:18:10 AM'),
(43, 7, 103, '152', 'RITK5E5GDM', 'Wed, 13-Oct-2021 11:02:56 AM'),
(44, 8, 103, '76', 'H6CMTHBJUU', 'Wed, 13-Oct-2021 02:21:40 PM'),
(45, 8, 104, '324', 'KH70GOC8KO', 'Wed, 13-Oct-2021 05:22:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `railline_list`
--

CREATE TABLE `railline_list` (
  `id` int(30) NOT NULL,
  `raillines` text CHARACTER SET armscii8 NOT NULL,
  `logopath` text CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `railstation_list`
--

CREATE TABLE `railstation_list` (
  `id` int(100) NOT NULL,
  `rail_station` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `railstation_list`
--

INSERT INTO `railstation_list` (`id`, `rail_station`, `location`) VALUES
(1, 'Thika', 'Kiambu'),
(2, 'Imara', 'Nairobi'),
(3, 'Kakamega', 'Kakamega'),
(4, 'Athi-river', 'Machakos'),
(5, 'Jomvu', 'Mombasa'),
(6, 'Kampala', 'Uganda'),
(7, 'Kondele', 'Kisumu'),
(8, 'Nyamira', 'Kisii');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `start`, `stop`) VALUES
(5, 'Nairobi', 'Thika'),
(8, 'Nairobi', 'Kisumu'),
(9, 'Nairobi', 'Machakos'),
(12, 'Nairobi', 'Mombasa'),
(17, 'Nairobi', 'AthiRiver'),
(18, 'Mlolongo', 'Machakos');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `first_fee` float NOT NULL,
  `second_fee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `first_seat` int(11) NOT NULL,
  `second_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `first_seat`, `second_seat`) VALUES
(1, 'SGR', 1500, 3000),
(3, 'Western Railways', 10, 600),
(9, 'Mombasa R', 400, 850),
(10, 'Thika Express', 500, 1200),
(11, 'Nairobi Express', 200, 500),
(13, 'Kisumu Express', 300, 500);

-- --------------------------------------------------------

--
-- Table structure for table `train_list`
--

CREATE TABLE `train_list` (
  `id` int(30) NOT NULL,
  `railline_id` int(30) NOT NULL,
  `train_no` text NOT NULL,
  `departure_railstation_id` int(30) NOT NULL,
  `arrival_railstation_id` int(30) NOT NULL,
  `departure_datetime` datetime NOT NULL,
  `arrival_datetime` datetime NOT NULL,
  `seats` int(10) NOT NULL,
  `price` double NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_list`
--

INSERT INTO `train_list` (`id`, `railline_id`, `train_no`, `departure_railstation_id`, `arrival_railstation_id`, `departure_datetime`, `arrival_datetime`, `seats`, `price`, `date_created`) VALUES
(1, 1, 'A-101', 1, 1, '2022-11-25 17:26:02', '2022-11-26 17:26:02', 500, 1750, '2022-11-25 17:26:02'),
(2, 2, 'A-102', 2, 2, '2022-12-08 17:28:23', '2022-11-02 17:28:23', 600, 1800, '2022-11-25 15:28:22'),
(3, 3, 'A-103', 3, 3, '2022-11-25 12:10:27', '2022-12-06 17:28:23', 900, 200, '2022-11-25 15:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'D00F5D5217896FB7FD601412CB890830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `booked_train`
--
ALTER TABLE `booked_train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `railline_list`
--
ALTER TABLE `railline_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `railstation_list`
--
ALTER TABLE `railstation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train_list`
--
ALTER TABLE `train_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `booked_train`
--
ALTER TABLE `booked_train`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `railline_list`
--
ALTER TABLE `railline_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `railstation_list`
--
ALTER TABLE `railstation_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `train_list`
--
ALTER TABLE `train_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
