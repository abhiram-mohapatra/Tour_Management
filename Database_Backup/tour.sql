-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 06:44 AM
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
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `Book_Id` int(15) NOT NULL,
  `Traveller_Name` varchar(256) NOT NULL,
  `Mail_id` varchar(256) NOT NULL,
  `Ph_No` bigint(15) NOT NULL,
  `Customer_id` int(15) NOT NULL,
  `Address` varchar(256) NOT NULL,
  `Adhaar_id` bigint(25) NOT NULL,
  `Guest_No` int(15) NOT NULL,
  `Pkg_id` int(15) NOT NULL,
  `Book_Date` date NOT NULL,
  `Checkin_Date` date NOT NULL,
  `Checkout_Date` date NOT NULL,
  `total_price` int(20) NOT NULL,
  `Payment_Status` int(15) NOT NULL DEFAULT 0,
  `Status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`Book_Id`, `Traveller_Name`, `Mail_id`, `Ph_No`, `Customer_id`, `Address`, `Adhaar_id`, `Guest_No`, `Pkg_id`, `Book_Date`, `Checkin_Date`, `Checkout_Date`, `total_price`, `Payment_Status`, `Status`) VALUES
(1, 'Abhiram', 'kanhamohapatra12@gmail.com', 8260354208, 2, 'Bhubaneswar', 317004719512, 5, 15, '2023-04-25', '2023-04-30', '2023-05-10', 229995, 1, 1),
(2, 'Abhiram', 'kanhamohapatra12@gmail.com', 8260354208, 2, 'Bhubaneswar', 317004719512, 3, 5, '2023-05-08', '2023-05-13', '2023-05-21', 107997, 1, 0),
(3, 'Abhiram', 'kanhamohapatra12@gmail.com', 8260354208, 2, 'Bhubaneswar', 317004719512, 4, 9, '2023-05-09', '2023-05-13', '2023-05-23', 179996, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `Customer_id` int(15) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Contact_Number` bigint(12) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`Customer_id`, `Name`, `Contact_Number`, `Email`, `Password`, `token`, `status`) VALUES
(1, 'satyasuman', 9040831911, 'satyavssatya12@gmail.com', '$2y$10$/IFtRq5qzZwApEAqU5kSxOJ.5DZDZFlpleOMWqxldDzFY7tz0p.Oq', '1445dbc83f8ad046ac5adbaeedb401', 'active'),
(2, 'Abhiram', 8260354208, 'kanhamohapatra12@gmail.com', '$2y$10$2djD18LbHnfJCjqtiJl9.ux7LCt7j7JEpEyCPOG/ZKxW.ArLAwBSK', '4a6b7b146c79dad5b1099031e20c48', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_details`
--

CREATE TABLE `enquiry_details` (
  `Enquiry_id` int(15) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Query` varchar(256) NOT NULL,
  `Status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry_details`
--

INSERT INTO `enquiry_details` (`Enquiry_id`, `Name`, `Email`, `Query`, `Status`) VALUES
(1, 'Abhiram', 'kanhamohapatra12@gmail.com', 'Will I get pickup and drop facility?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

CREATE TABLE `feedback_details` (
  `Feedback_id` int(15) NOT NULL,
  `Book_id` int(15) NOT NULL,
  `Feedback` varchar(256) NOT NULL,
  `Ratings` int(10) NOT NULL,
  `Status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_details`
--

INSERT INTO `feedback_details` (`Feedback_id`, `Book_id`, `Feedback`, `Ratings`, `Status`) VALUES
(1, 1, 'Amazing Experience', 4, 1),
(2, 2, 'Amazing Experience', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `Pkg_id` int(15) NOT NULL,
  `Place_id` int(15) NOT NULL,
  `Pkg_Name` varchar(256) NOT NULL,
  `Pkg_Price` int(10) NOT NULL,
  `Details` varchar(256) NOT NULL,
  `P_Photo` varchar(8000) NOT NULL,
  `P_Photo1` varchar(50) NOT NULL,
  `P_Photo2` varchar(50) NOT NULL,
  `P_Photo3` varchar(50) NOT NULL,
  `P_days` int(10) NOT NULL,
  `Status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`Pkg_id`, `Place_id`, `Pkg_Name`, `Pkg_Price`, `Details`, `P_Photo`, `P_Photo1`, `P_Photo2`, `P_Photo3`, `P_days`, `Status`) VALUES
(1, 1, 'Ladakh Silver ', 27999, 'Sightseeing,\r\nTrekking,\r\nOffroad', 'ladakh1.jpg', 'ladakh2.jpeg', 'ladakhtrekking.jpg', 'ladakhoffroad1.jpeg', 4, 1),
(2, 1, 'Ladakh Gold', 32999, 'Sightseeing,\r\nTrekking,\r\nOffroad,\r\nCampfire', 'ladakh5.jpg', 'ladakh7.jpeg', 'ladakhcampfire2.jpg', 'ladakhoffroad2.jpg', 6, 1),
(3, 1, 'Ladakh Diamond', 39999, 'Sightseeing,\r\nTrekking,\r\nCampfire,\r\nOffroad,\r\nGokart,\r\nJeep Safari', 'ladakh4.jpg', 'ladakhgokart.jpeg', 'ladakhsafari.jpg', 'ladakhtrekking3.jpg', 8, 1),
(4, 2, 'Uttarakhanda Silver', 29999, 'Sightseeing,\r\nTrekking,\r\nCamping,\r\nOffroad,\r\nRiver Rafting\r\n\r\n', 'UT16.jpg', 'UTKAND4.jpeg.jpg', 'utarakhand3.jpeg.jpg', 'UT9.jpg', 6, 1),
(5, 2, 'Uttarakhanda Gold', 35999, 'Sightseeing,\r\nTrekking,\r\nCamping,\r\nCampfire,\r\nOffroad,\r\nParagliding,\r\nRiver Rafting\r\n', 'UT13.jpg', 'UT12.jpeg.jpg', 'UT10.jpeg.jpg', 'UT6.jpg', 8, 1),
(6, 2, 'Uttarakhand Diamond', 44999, 'Sightseeing,\r\nTrekking,\r\nCamping,\r\nOffroad,\r\nParagliding,\r\nBungeejumping,\r\nCampfire,\r\nHelicopter Ride,\r\nRiver Raftting', 'UT12.jpg', 'UT10.jpeg.jpg', 'UT15.jpg', 'UT8.jpg', 10, 1),
(7, 3, 'Kerala Silver', 28999, 'Sightseeing,\r\nTrekking,  \r\nCampfire,\r\nParasailing', 'K4.jpeg.jpg', 'K7.jpg', 'K2.jpg', 'K6.jpg', 6, 1),
(8, 3, 'Kerala Gold', 35999, 'Sightseeing,\r\nTrekking,\r\nCampfire,\r\nParagliding,\r\nParasailing,\r\nScuba Diving', 'K7.jpg', 'K8.jpg', 'K9.jpg', 'K1.jpg', 8, 1),
(9, 3, 'Kerala Diamond', 44999, 'Sightseeing,\r\nTrekking,\r\nBamboo Rafting,\r\nParagliding,\r\nParasailing,\r\nWildlife Safari,\r\nMountain Climbing,\r\nScuba Diving', 'K2.jpg', 'K4.jpeg.jpg', 'K6.jpg', 'K11.jpg', 10, 1),
(10, 4, 'Rajastan Silver', 27999, 'Campfire, \r\nSightseeing,\r\nHotair Balloon,\r\nDesert Safari', 'RAJ7.jpg', 'Raj3.jpg', 'RAJ4.jpg', 'RAJ2.jpg', 6, 1),
(11, 4, 'Rajastan Gold', 31999, 'Campfire,\r\nSightseeing,\r\nHotair Balloon,\r\nDesert Safari,\r\nJungle Safari', 'RAJ9.jpg', 'rajjj.jpg', 'RAJ8.jpg', 'Raj3.jpg', 8, 1),
(12, 4, 'Rajastan Diamond', 39999, 'Campfire,\r\nSightseeing,\r\nHotair Balloon,\r\nDesert Safari,\r\nJungle Safari,\r\nParagliding,\r\nZip Line,\r\nHelicopter Ride', 'RAJ4.jpg', 'RAJ2.jpg', 'RAJ6.jpg', 'rajjj.jpg', 10, 1),
(13, 5, 'Goa Silver', 29999, 'Bungee Jumping,\r\nHot Air Balloon,\r\nScuba Diving,\r\nFlyboarding,\r\nNature Tour,\r\nIsland Safari', 'g1.jpg', 'g4.jpg', 'g3.jpg', 'g2.jpg', 6, 1),
(14, 5, 'Goa Gold', 35999, 'Bungee Jumping,\r\nHot Air Balloon,\r\nScuba Diving,\r\nFlyboarding,\r\nIsland Safari,\r\nWhite water Rafting,\r\nNature Tour,\r\nSightseeing', 'g6.jpg', 'g5.jpg', 'g8.jpg', 'g3.jpg', 8, 1),
(15, 5, 'Goa Diamond', 45999, 'Bungee Jumping,\r\nHot Air Balloon,\r\nScuba Diving ,\r\nFlyboarding,\r\nIsland Safari,\r\nWhite water Rafting,\r\nNature Tour,\r\nWater Sports,\r\nSight Seeing\r\nFree Drinks', 'g3.jpg', 'g1.jpg', 'g8.jpg', 'g5.jpg', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `place_details`
--

CREATE TABLE `place_details` (
  `Place_id` int(15) NOT NULL,
  `Place_Name` varchar(256) NOT NULL,
  `Pic` varchar(8000) NOT NULL,
  `Details` varchar(256) NOT NULL,
  `Status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `place_details`
--

INSERT INTO `place_details` (`Place_id`, `Place_Name`, `Pic`, `Details`, `Status`) VALUES
(1, 'Ladakh', 'ladakh4.jpg', 'Ladakh is a paradise on Earth and boasts of unparalleled beauty. It is a ‘Land of high passes’ and dotted with high altitude lakes and lofty mountains.', 1),
(2, 'Uttarakhand ', 'UT11.jpg', 'It has snow-clad peaks like Kedarnath, Nanda Devi and Dunagiri.\r\nit has rivers like Ganga, Bhagirathi and Alaknanda flowing through it and Rishikesh which is a spiritual center and an adventure lover’s dream.\r\n', 1),
(3, 'Kerala ', 'K1.jpg', 'Kerala has an endless list of tourist destinations that will interest any traveller. Renowned for its scenic locations and natural beauty, Kerala is sure to enchant any nature lover with its hills, backwaters, beaches, waterfalls and wildlife. ', 1),
(4, 'Rajasthan ', 'RAJ8.jpg', 'Rajasthan is one of the most popular tourist destinations in India, for both domestic and international tourists. Rajasthan attracts tourists for its historical forts, palaces, art and culture with its slogan \"Padharo Mhare Desh\".', 1),
(5, 'Goa', 'g7.jpg', 'The state of Goa, in India, is famous for its beaches and places of worship. Tourism is its primary industry, and is generally focused on the coastal areas of Goa, with decreased tourist activity inland.\r\n\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `User_id` int(15) NOT NULL,
  `Username` varchar(256) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Usertype` varchar(256) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `mailid` varchar(50) NOT NULL,
  `contact_no` bigint(15) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`User_id`, `Username`, `Password`, `Usertype`, `Name`, `mailid`, `contact_no`, `Address`, `Status`) VALUES
(1, 'Owner', 'admin', 'Admin', 'Satyasuman Sahoo', 'satyavssatya12@gmail.com', 9040831911, 'FR-39/10,Sailashree Vihar,C.S Pur,BBSR-751021', 1),
(3, 'Aswini', 'aswini', 'Guide', 'Aswini', 'Aswini12@gmail.com', 8762354158, 'Puri', 0),
(4, 'Bikash', 'Bikash', 'General', 'Bikash', 'bikash123@gmail.com', 6370046633, 'Puri', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`Book_Id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `enquiry_details`
--
ALTER TABLE `enquiry_details`
  ADD PRIMARY KEY (`Enquiry_id`);

--
-- Indexes for table `feedback_details`
--
ALTER TABLE `feedback_details`
  ADD PRIMARY KEY (`Feedback_id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`Pkg_id`);

--
-- Indexes for table `place_details`
--
ALTER TABLE `place_details`
  ADD PRIMARY KEY (`Place_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `Book_Id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `Customer_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry_details`
--
ALTER TABLE `enquiry_details`
  MODIFY `Enquiry_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback_details`
--
ALTER TABLE `feedback_details`
  MODIFY `Feedback_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `Pkg_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `place_details`
--
ALTER TABLE `place_details`
  MODIFY `Place_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `User_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
