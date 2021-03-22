-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 09:11 PM
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
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`, `status`, `createdDate`) VALUES
(1, 'rrafaliya14', '8f6c703e75d3c458660644b8478d3476', 0, '2021-02-25 10:26:46'),
(2, 'Ravi.savaliya', '32250170a0dca92d53ec9624f336ca24', 1, '2021-03-10 10:34:00'),
(4, 'itsAk', '0fcb4b2caf0935b60a9dd3d7824233e1', 1, '2021-03-17 01:34:25'),
(5, 'visarg', '1b92ff7d839c7ee76a3d55db23a82402', 0, '2021-03-18 01:41:46');

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
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL,
  `brandImage` varchar(255) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`, `brandImage`, `sortOrder`, `status`, `createdDate`) VALUES
(1, 'Godrej Interio', '1616258949-3759-godrej.jfif', 1, 0, '2021-03-20 22:27:15'),
(2, 'Usha', '1616258987-3326-usha.png', 2, 0, '2021-03-20 22:27:15'),
(3, 'Ikea', '1616259063-4734-ikea.png', 3, 0, '2021-03-20 22:27:15'),
(4, 'Raymond', '1616319794-3149-raymond.png', 4, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `pathId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `parentId`, `name`, `status`, `description`, `pathId`) VALUES
(1, 0, 'Bedroom', 1, '', '1'),
(2, 1, 'Bed', 0, '', '1/2'),
(3, 2, 'Panelbed', 1, '', '1/2/3'),
(4, 3, 'header', 0, '', '1/2/3/4'),
(5, 3, 'footer', 1, '', '1/2/3/5'),
(6, 0, 'Sofa', 0, '', '6'),
(8, 0, 'Livingroom', 1, '', '8');

-- --------------------------------------------------------

--
-- Table structure for table `categorymedia`
--

CREATE TABLE `categorymedia` (
  `imageId` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `label` varchar(70) NOT NULL,
  `icon` tinyint(1) NOT NULL,
  `base` tinyint(1) NOT NULL,
  `banner` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorymedia`
--

INSERT INTO `categorymedia` (`imageId`, `image`, `label`, `icon`, `base`, `banner`, `status`, `categoryId`) VALUES
(1, '1616395798-1256-royalbed.jfif', 'Royal Bed', 1, 0, 1, 0, 1),
(2, '1616395859-2394-bed.jfif', '', 0, 0, 0, 1, 2),
(3, '1616396779-2658-bed.jfif', 'Simple Bed', 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `pageId` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `indentifier` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`pageId`, `title`, `indentifier`, `content`, `status`, `createdDate`) VALUES
(1, 'Html', '123456', '<p><strong>hello</strong></p>', 0, '2021-03-08 13:25:54'),
(2, 'Php', '452', '<p><strong><em><a href=\"tel:9724881681\">echo</a>&nbsp;</em>&quot;Ronak&quot;</strong></p>', 1, '2021-03-08 13:34:11'),
(3, 'For user', 'About Us', '<p><a href=\"mailto:vaibhav98patel@gmail.com?subject=Welcome&amp;body=Hello%20Vaibhav%2C%20Thanks%20For%20choosing%20Us.\"><strong>Hello users, Welcome To RonsCart.</strong></a></p>', 1, '2021-03-10 12:41:09'),
(5, 'AboutUs', '14', '<p><strong>Hey Ronak Finally Done, Now You Can Do it.</strong></p>', 0, '2021-03-17 01:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `customergroup`
--

CREATE TABLE `customergroup` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customergroup`
--

INSERT INTO `customergroup` (`groupId`, `groupName`, `status`, `createdDate`) VALUES
(1, 'Retail', 1, '2021-03-10 20:26:46'),
(2, 'Wholesale', 0, '2021-03-10 22:53:44'),
(5, 'Group 2', 0, '2021-03-11 22:19:32'),
(6, 'Group  3', 1, '2021-03-11 22:19:35'),
(21, 'group4', 0, '2021-03-21 15:15:19');

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
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `groupId`, `firstname`, `lastname`, `mobilenu`, `email`, `password`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 1, 'Ronak', 'Rafaliya', '09724881681', 'Ronakrafaliya14@gmail.com', 'dc06698f0e2e75751545455899adccc3', 1, '2021-03-10 23:03:27', '2021-03-10 11:04:02'),
(2, 2, 'Naeem', 'Valiyani', '9878645789', 'NaeemValiyani@gmail.com', 'b4af804009cb036a4ccdc33431ef9ac9', 0, '2021-03-10 23:04:34', '0000-00-00 00:00:00'),
(3, 5, 'Saurabh', 'Tripathi', '78596788496', 'saurabh@gmail.com', 'dea4e2bd0f244d3f84a5347e84d3a3f2', 1, '2021-03-17 00:20:17', '2021-03-17 12:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `methodId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(700) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`methodId`, `name`, `code`, `description`, `status`, `createdDate`) VALUES
(1, 'Ronak', '1418', 'Smart Watches', 0, '2021-02-18 12:13:07'),
(2, 'Ravi Patel', '01485', 'Mobile Phone', 1, '2021-02-24 10:17:49'),
(8, 'Aryan Kanani', '78458', 'Suitcase', 1, '2021-03-10 23:33:42'),
(9, 'Keval', '1245', 'tables', 0, '2021-03-20 12:18:24'),
(10, 'Ronak', '45862', 'Apple Iphon 12', 0, '2021-03-23 01:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(50) NOT NULL,
  `discount` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `brandId`, `sku`, `name`, `price`, `discount`, `quantity`, `description`, `status`, `createdDate`, `updatedDate`, `brand`, `color`, `size`) VALUES
(61, 1, '10', 'NoteBook', 750, 20, 5, 'flipcart', 1, '2021-03-19 18:32:37', '0000-00-00 00:00:00', '', '', 0),
(62, 3, '11', 'laptop', 75000, 1500, 2, 'all can buy this laptop', 0, '2021-03-18 19:24:59', '0000-00-00 00:00:00', '', '', 0),
(63, 2, '11', 'laptop', 75000, 1500, 2, 'all can buy this laptop', 1, '2021-03-18 19:24:59', '0000-00-00 00:00:00', '', '', 0),
(64, 3, '11', 'laptop', 1410000, 1500, 2, 'all can buy this laptop', 0, '2021-03-18 19:24:59', '2021-03-20 11:17:34', '', '', 0),
(68, 1, '78', 'Footwear', 1200, 20, 5, 'Nike, Adidas,Puma', 1, '2021-03-19 23:35:12', '0000-00-00 00:00:00', '', '', 0);

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
(1, '1616268449-4987-small.jfif', 'T-shirt', 1, 1, 1, 1, 62),
(2, '1616319690-9654-small.jfif', '', 0, 0, 0, 0, 61),
(3, '1616395640-1127-royalbed.jfif', '', 0, 0, 0, 0, 1),
(4, '1616395645-1057-royalbed.jfif', '', 0, 0, 0, 0, 1);

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
(11, 55, 8, '450'),
(12, 61, 1, '950'),
(13, 61, 2, '850'),
(14, 61, 5, '1100'),
(15, 61, 6, '1200');

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
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`methodId`, `name`, `code`, `amount`, `description`, `status`, `createdDate`) VALUES
(1, 'Rons Patel', 15078, 40000, 'Smart Watches', 0, '2021-02-17 11:37:35'),
(2, 'bhargavi', 15748, 54200, 'Laptop', 1, '2021-02-17 11:48:19'),
(4, 'Ravi', 882703, 54200, 'Mobile Phone', 0, '2021-02-18 10:19:37');

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
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `categorymedia`
--
ALTER TABLE `categorymedia`
  ADD PRIMARY KEY (`imageId`);

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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categorymedia`
--
ALTER TABLE `categorymedia`
  MODIFY `imageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `pageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customergroup`
--
ALTER TABLE `customergroup`
  MODIFY `groupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `productmedia`
--
ALTER TABLE `productmedia`
  MODIFY `imageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_group_price`
--
ALTER TABLE `product_group_price`
  MODIFY `entityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
