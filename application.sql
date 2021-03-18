-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 01:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `application`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressId`, `customerId`, `address`, `city`, `state`, `zipcode`, `country`, `type`) VALUES
(1, 1, '73SHKTI SHYAM NAGAR SOCIETY JUNAGADHROAD', 'VISAVADER', 'Gujarat', 362130, 'India', 'Billing'),
(3, 1, 'Shipping', 'VISAVADER', 'Gujarat', 362130, 'India', 'Shipping'),
(4, 2, 'Neelkanth Elegance, Times Of India Press Road, near Vejalpur, Vejalpur, Ahmedabad, Gujarat, India\r\nA-1003', 'Ahmedabad City', 'Gujarat', 380051, 'India', 'Billing'),
(5, 2, 'Shipping', 'VISAVADER', 'Gujarat', 362130, 'India', 'Shipping');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Enable',
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`, `status`, `createdDate`) VALUES
(1, 'rrafaliya14', '8f6c703e75d3c458660644b8478d3476', 'Disable', '2021-02-25 10:26:46'),
(2, 'Ravi.savaliya', '32250170a0dca92d53ec9624f336ca24', 'Enable', '2021-03-10 10:34:00'),
(4, 'itsAk', '0fcb4b2caf0935b60a9dd3d7824233e1', 'Disable', '2021-03-17 01:34:25'),
(5, 'visarg', '1b92ff7d839c7ee76a3d55db23a82402', 'Disable', '2021-03-18 01:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `attributeId` int(11) NOT NULL,
  `entityTypeId` enum('Product','Category') NOT NULL,
  `name` varchar(25) NOT NULL,
  `code` int(20) NOT NULL,
  `inputType` varchar(60) NOT NULL,
  `backendType` varchar(60) NOT NULL,
  `sortOrder` int(4) NOT NULL,
  `backendModel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`attributeId`, `entityTypeId`, `name`, `code`, `inputType`, `backendType`, `sortOrder`, `backendModel`) VALUES
(1, 'Product', 'color', 20, 'text', 'varchar', 1, 'hello'),
(4, 'Product', 'brand', 14, 'text', 'varchar', 2, 'none'),
(5, 'Product', 'size', 14, 'radio', 'int', 3, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option`
--

CREATE TABLE `attribute_option` (
  `optionId` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `attributeId` int(11) NOT NULL,
  `sortOrder` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attribute_option`
--

INSERT INTO `attribute_option` (`optionId`, `name`, `attributeId`, `sortOrder`) VALUES
(1, 'red', 1, 1),
(12, 'raymond', 4, 1),
(13, 'yellow', 1, 2),
(14, 'blue', 1, 3),
(17, 'black', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `pathId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `parentId`, `name`, `status`, `description`, `pathId`) VALUES
(1, 0, 'Bedroom', 'Enable', '', '1'),
(2, 1, 'Bed', 'Enable', '', '1/2'),
(3, 2, 'Panelbed', 'Enable', '', '1/2/3'),
(4, 3, 'header', 'Enable', '', '1/2/3/4'),
(5, 3, 'footer', 'Enable', '', '1/2/3/5'),
(6, 0, 'Sofa', 'Enable', '', '6'),
(7, 6, 'justSofa', 'Enable', '', '6/7'),
(8, 0, 'Livingroom', 'Enable', '', '8');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `pageId` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `indentifier` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`pageId`, `title`, `indentifier`, `content`, `status`, `createdDate`) VALUES
(1, 'Html', '123456', '<p><strong>hello</strong></p>', 0, '2021-03-08 13:25:54'),
(2, 'Php', '452', '<p><strong><em><a href=\"tel:9724881681\">echo</a>&nbsp;</em>&quot;Ronak&quot;</strong></p>', 1, '2021-03-08 13:34:11'),
(3, 'For user', 'About Us', '<p><a href=\"mailto:ronspatel13@gmail.com?subject=Just%20Chill&amp;body=Hello%20Ronak%2C%20Today%20is%20Holiday\"><strong>Hello users, Welcome To RonsCart.</strong></a></p>', 1, '2021-03-10 12:41:09'),
(5, 'AboutUs', '14', '<p><strong>Hey Ronak Finally Done, Now You Can Do it.</strong></p>', 0, '2021-03-17 01:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `customergroup`
--

CREATE TABLE `customergroup` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customergroup`
--

INSERT INTO `customergroup` (`groupId`, `groupName`, `status`, `createdDate`) VALUES
(1, 'Retail', 'Enable', '2021-03-10 20:26:46'),
(2, 'Wholesale', 'Enable', '2021-03-10 22:53:44'),
(5, 'Group 2', 'Disable', '2021-03-11 22:19:32'),
(6, 'Group  3', 'Enable', '2021-03-11 22:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `mobilenu` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(7) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `groupId`, `firstname`, `lastname`, `mobilenu`, `email`, `password`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 1, 'Ronak', 'Rafaliya', '09724881681', 'Ronakrafaliya14@gmail.com', 'dc06698f0e2e75751545455899adccc3', 'Enable', '2021-03-10 23:03:27', '2021-03-10 11:04:02'),
(2, 2, 'Naeem', 'Valiyani', '9878645789', 'NaeemValiyani@gmail.com', 'b4af804009cb036a4ccdc33431ef9ac9', 'Disable', '2021-03-10 23:04:34', '0000-00-00 00:00:00'),
(3, 5, 'Saurabh', 'Tripathi', '78596788496', 'saurabh@gmail.com', 'dea4e2bd0f244d3f84a5347e84d3a3f2', 'Disable', '2021-03-17 00:20:17', '2021-03-17 12:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `methodId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(700) NOT NULL,
  `status` varchar(15) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`methodId`, `name`, `code`, `description`, `status`, `createdDate`) VALUES
(1, 'Ronak Rafaliya', '1418', 'Smart Watches', 'Disable', '2021-02-18 12:13:07'),
(2, 'Ravi Patel', '01485', 'Mobile Phone', 'Enable', '2021-02-24 10:17:49'),
(8, 'Aryan Kanani', '78458', 'Suitcase', 'Disable', '2021-03-10 23:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(50) NOT NULL,
  `discount` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `sku`, `name`, `price`, `discount`, `quantity`, `description`, `status`, `createdDate`, `updatedDate`, `brand`, `color`, `size`) VALUES
(14, '9', 'Laptop', 120000, 1200, 3, 'Dell,Lenovo,Hp,Asus', 'Disable', '2021-02-19 07:01:00', '2021-03-11 07:37:35', NULL, NULL, NULL),
(55, '200', 'Footwear', 12000, 120, 10, 'Nike, Adidas,Puma', 'Enable', '2021-03-09 19:26:26', '2021-03-16 01:56:41', NULL, NULL, NULL),
(57, '10', 'NoteBook', 750, 120, 6, 'amzon ', 'Enable', '2021-03-10 10:30:31', '2021-03-10 04:53:16', NULL, NULL, NULL),
(59, '200', 'Footwear', 15000, 120, 20, 'Nike, Adidas,Puma', 'Disable', '2021-03-16 17:42:13', '0000-00-00 00:00:00', NULL, NULL, NULL),
(60, '200', 'Teddy Bear', 15000, 120, 6, 'Large', 'Disable', '2021-03-16 18:21:30', '0000-00-00 00:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productmedia`
--

CREATE TABLE `productmedia` (
  `imageId` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `small` tinyint(1) NOT NULL,
  `thumb` tinyint(1) NOT NULL,
  `base` tinyint(1) NOT NULL,
  `gallary` tinyint(1) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productmedia`
--

INSERT INTO `productmedia` (`imageId`, `image`, `label`, `small`, `thumb`, `base`, `gallary`, `productId`) VALUES
(7, 'shoes.jfif', 'image1', 1, 0, 0, 1, 14),
(12, 'tshirt.jfif', 'image2', 0, 1, 0, 1, 14),
(13, 'nike.jfif', 'nikeShoes', 1, 1, 0, 1, 55),
(14, 'shoes.jfif', 'pumaShoes', 0, 0, 1, 1, 55),
(21, '1616009937-5463-small.jfif', 'image3', 0, 0, 1, 1, 14),
(22, '1616052784-3831-nike.jfif', '', 0, 0, 0, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_group_price`
--

CREATE TABLE `product_group_price` (
  `entityId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_group_price`
--

INSERT INTO `product_group_price` (`entityId`, `productId`, `customerGroupId`, `price`) VALUES
(1, 14, 1, '1300'),
(2, 14, 2, '850'),
(3, 14, 6, '950'),
(4, 14, 7, '900'),
(5, 55, 1, '950'),
(6, 55, 2, '600'),
(7, 55, 5, '750'),
(8, 55, 7, '0'),
(9, 14, 5, '7890'),
(10, 55, 6, '1100'),
(11, 55, 8, '450');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `methodId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` int(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`methodId`, `name`, `code`, `amount`, `description`, `status`, `createdDate`) VALUES
(1, 'Rons Patel', 15078, 40000, 'Smart Watches', 'Enable', '2021-02-17 11:37:35'),
(2, 'bhargavi', 15748, 54200, 'Laptop', 'Disable', '2021-02-17 11:48:19'),
(4, 'Ravi', 882703, 54200, 'Mobile Phone', 'Enable', '2021-02-18 10:19:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`attributeId`);

--
-- Indexes for table `attribute_option`
--
ALTER TABLE `attribute_option`
  ADD PRIMARY KEY (`optionId`),
  ADD KEY `attributeId` (`attributeId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`pageId`),
  ADD UNIQUE KEY `indentifier` (`indentifier`);

--
-- Indexes for table `customergroup`
--
ALTER TABLE `customergroup`
  ADD PRIMARY KEY (`groupId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`),
  ADD KEY `groupId` (`groupId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`methodId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `productmedia`
--
ALTER TABLE `productmedia`
  ADD PRIMARY KEY (`imageId`);

--
-- Indexes for table `product_group_price`
--
ALTER TABLE `product_group_price`
  ADD PRIMARY KEY (`entityId`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`methodId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `attributeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attribute_option`
--
ALTER TABLE `attribute_option`
  MODIFY `optionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `pageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customergroup`
--
ALTER TABLE `customergroup`
  MODIFY `groupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `productmedia`
--
ALTER TABLE `productmedia`
  MODIFY `imageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_group_price`
--
ALTER TABLE `product_group_price`
  MODIFY `entityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_option`
--
ALTER TABLE `attribute_option`
  ADD CONSTRAINT `attribute_option_ibfk_1` FOREIGN KEY (`attributeId`) REFERENCES `attribute` (`attributeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `customergroup` (`groupId`) ON DELETE CASCADE ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
