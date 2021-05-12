-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 10:25 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sab_sudhrega`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Blue', 2),
(6, 'White', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Green', 2),
(10, 'Black', 2),
(12, 'Grey', 2),
(13, 'S', 3);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`) VALUES
(1, 'a.png'),
(2, 'a.png');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(4, 'LG', 1),
(5, 'MI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logo.png',
  `icon` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `img`, `icon`, `active`) VALUES
(4, 'Electrician', 'motor.jpg', 'fas fa-plug', 1),
(5, 'Plumber', 'plumber.jpg', 'fas fa-bath', 1),
(6, 'Car painter', 'car.jpg', 'fas fa-ruler-combined', 1),
(7, 'Wall painter', 'wall.jpg', 'fas fa-campground', 1),
(8, 'Mobile repairing', 'mobile.jpg', 'fas fa-mobile-alt', 1),
(9, 'Tv repairing', 'logo.png', 'fas fa-tv', 1),
(10, 'AC repairing', 'ac.jpg', 'fas fa-microchip', 1),
(11, 'Fan repairing', 'fan.jpg', 'fas fa-mitten', 1),
(12, 'Laptop repairing', 'laptop.jpg', 'fas fa-laptop', 1),
(13, 'Computer repairing', 'pc.jpg', 'fas fa-keyboard', 1),
(14, 'washing machine repairing', 'c9.jpg', 'fas fa-wind', 1),
(15, 'nal fitting', 'plumber.jpg', 'fas fa-wrench', 1),
(16, 'fridge repair', 'fridge.jpg', 'fas fa-door-closed', 1),
(17, 'Bijli fitting', 'fan.jpg', 'fas fa-bolt', 1),
(18, 'POP work', 'pop.jpg', 'fas fa-mitten', 1),
(19, 'Gas chulha repairing', 'gas.jpg', 'fas fa-th', 1),
(20, 'DTH installation', 'dish.jpg', 'fas fa-radiation-alt', 1),
(21, 'DJ repairing', 'logo.png', 'fas fa-blog', 1),
(22, 'False ceiling', 'pop.jpg', 'fas fa-solar-panel', 1),
(23, 'Motor winding', 'motor.jpg', 'fas fa-th', 1),
(24, 'Aluminium work', 'alum.jpg', 'fas fa-laptop-house', 1),
(25, 'Home theatre  repairing', 'logo.png', 'fas fa-plug', 1),
(26, 'Induction repairing', 'induction.jpg', 'fas fa-ruler-horizontal', 1),
(27, 'Bike mechanic', 'logo.png', '	fas fa-motorcycle', 1),
(28, '4 wheeler mechanic', 'logo.png', 'fas fa-campground', 1),
(29, 'Mistri', 'mistri.jpg', '', 1),
(30, 'Welder', 'welder.jpg', '', 1),
(31, 'Tiles work', 'tiles.jpg', '', 1),
(32, 'House Designing civil engineers', 'home.jpg', '', 1),
(33, 'Key maker', 'logo.png', '', 1),
(34, 'CCTV Camera Repairing', 'logo.png', '', 1),
(35, 'software update', 'logo.png', '', 1),
(36, 'pc format', 'logo.png', '', 1),
(37, 'Networking Engineers', 'logo.png', '', 1),
(38, 'Pest control', 'logo.png', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_charge_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat_charge_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Sab Sudhrega', '', '10', 'Madrid', '758676851', 'India', 'hello everyone one', 'INR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permission` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(2, 'admin', 'a:8:{i:0;s:10:\"createTech\";i:1;s:10:\"updateTech\";i:2;s:8:\"viewTech\";i:3;s:14:\"createCategory\";i:4;s:14:\"updateCategory\";i:5;s:12:\"viewCategory\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}'),
(3, 'Employees', 'a:3:{i:0;s:10:\"createTech\";i:1;s:14:\"createCategory\";i:2;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gross_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_charge_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_charge` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat_charge_rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat_charge` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `net_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `attribute_value_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` text COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(2, 'My product', '1', '1', '1', '<p>You did not select a file to upload.</p>', '<p>This is test.</p>', 'null', '[\"4\",\"5\"]', '[\"4\",\"5\"]', 3, 1),
(3, '55', '5', '5', '5', '<p>You did not select a file to upload.</p>', '<p>5    </p>', 'null', '[\"4\"]', '[\"5\"]', 3, 1),
(4, '32', '2', '32', '323', 'assets/images/product_image/5ed958d6de542.jpg', '<p>3232</p>', 'null', '[\"4\"]', '[\"4\"]', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sab_categories`
--

CREATE TABLE `sab_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sab_categories`
--

INSERT INTO `sab_categories` (`id`, `name`, `pid`, `pname`, `created_at`) VALUES
(2, 'Bijli Fitting', 4, 'Electrician', '2020-06-19 19:18:45'),
(3, 'Motor winding', 4, 'Electrician', '2020-06-19 19:19:43'),
(4, 'Wiring work', 4, 'Electrician', '2020-06-19 19:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(3, 'Radios', 1);

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `basefare` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `invitecode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `inviteby` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `category` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `experience` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shopname` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `amobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL,
  `created_at` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`id`, `name`, `mobile`, `email`, `state`, `address`, `latitude`, `rating`, `longitude`, `city`, `basefare`, `invitecode`, `inviteby`, `dob`, `image`, `category`, `description`, `experience`, `shopname`, `amobile`, `active`, `created_at`) VALUES
(2, 'Wall painter', '9600053682', 'not available', 'Madhya Pradesh', 'Tamilnadu Andhrpredesh', NULL, NULL, NULL, 'Betul', '', 'tHZCGh', '', '0000-00-00', '<p>You did not select a file to upload.</p>', 'Electrician, Wall painter, Bijli fitting, DTH installation, Home theatre  repairing', '', 'null', 'null', '', 0, NULL),
(4, 'Kunal', '8982694094', 'kunalchadokar@gmail.com', 'Madhya Pradesh', 'Vinoba nagar betul', NULL, NULL, NULL, 'Betul ', '', 'uQUL4F', '', '0000-00-00', 'assets/images/product_image/5eddceea40850.jpg', 'DTH installation', '<p><b>Verified Technician</b><br></p>', 'null', 'null', '', 0, NULL),
(8, 'Sunilpawar khapre', '6266854550', 'Sunilpawar383@gmail.com', 'Madhya Pradesh', 'Hamlapur, Betul, Madhya Pradesh, India', NULL, NULL, NULL, 'Betul', '', 'Lx2Sfn', '', '0000-00-00', '<p>You did not select a file to upload.</p>', 'Electrician, Plumber, Mobile repairing, nal fitting', '<p><b>Verified Technician</b><br></p>', 'null', 'null', '', 0, NULL),
(10, 'Shriram Pawar', '9165236556', 'shrirambzu1@gmail.com', 'Madhya Pradesh', 'Kadla kila', NULL, NULL, NULL, 'Betul', '', 'jWhNqe', '', '0000-00-00', '<p>You did not select a file to upload.</p>', 'Electrician, Fan repairing, Bijli fitting, Gas chulha repairing, Motor winding', '<p>Verified Technician</p>', 'null', 'null', '', 0, NULL),
(11, 'Nitesh kodle', '8989639679', 'kodlenitesh@gmail.com', 'Madhya Pradesh', 'khedla kila somwari paith', NULL, NULL, NULL, 'Betul', '', 'gy9Yqz', '', '0000-00-00', 'assets/images/product_image/5edde05ed1210.jpg', 'Electrician, Mobile repairing, Tv repairing, Fan repairing, Bijli fitting, DTH installation', '<p><b>Verified Technician</b><br></p>', 'null', 'null', '', 0, NULL),
(13, 'Rahul pawar', '7879917544', 'rahulpawar86.rp@gmail.com', 'Madhya Pradesh', 'At rathipur post.khandara dist betul', NULL, NULL, NULL, 'Betul', '', 'YJXCFP', '', '0000-00-00', 'assets/images/product_image/5ede056a1cf98.jpg', 'Electrician, Plumber', '<p><b>verified Technician</b><br></p>', 'null', 'null', '', 0, NULL),
(14, 'Nitesh kumre', '8770300037', 'nittukumre2580@gmail.com', 'Madhya Pradesh', 'Near railway stadion bagratawa mohgon Dist hoshangabad', NULL, NULL, NULL, 'Hoshangabad', '', 'JjBMVg', '', '0000-00-00', 'assets/images/product_image/5ede42fc4ad67.jpg', 'Mobile repairing', '', 'null', 'null', '', 0, NULL),
(15, 'hemant prajapati', '7000973627', 'hemant21091992@gmail.com', 'Maharashtra', 'Betul tikari chakkar road', NULL, NULL, NULL, 'talodhi', '', 'hCk6Vx', '', '0000-00-00', 'assets/images/product_image/5edefa6ec2b9f.jpg', 'Laptop repairing, Computer repairing', '<p>\r\n\r\nVerified Technician<br></p>', 'null', 'null', '', 0, NULL),
(16, 'Anup pawar', '8989639693', 'anuppawar80@gmail.com', 'Madhya Pradesh', 'Betul ganj', NULL, NULL, NULL, 'Betul', '', 'SLiEHq', '', '0000-00-00', 'assets/images/product_image/5edefce9ac6e2.jpg', 'Car painter', '<p>\r\n\r\nVerified Technician<br></p>', 'null', 'null', '', 0, NULL),
(17, 'Rahul harode', '9399130734', 'rahulharode5@gmail.com', 'Madhya Pradesh', 'Bas stand athner', NULL, NULL, NULL, 'Athner', '', '4J8DfP', 'gy9Yqz', '0000-00-00', 'assets/images/product_image/5edf018767c4d.jpg', 'Mobile repairing, Laptop repairing, Computer repairing, Bijli fitting, Home theatre  repairing', '<p>\r\n\r\nVerified Technician<br></p>', 'null', 'null', '', 0, NULL),
(19, 'Nitin Pawar', '+919407250309', 'ntnkodle@gmail.com', 'Madhya Pradesh', '2/290 Tulsi Nager Kalapatha Arjun Ward-02', NULL, NULL, NULL, 'Betul', '', 'y0Oovh', '', '0000-00-00', '<p>The filetype you are attempting to upload is not allowed.</p>', 'Electrician', '', 'null', 'null', '', 0, NULL),
(21, 'Pushp malvi', '8989026011', 'pushpmalvi@gmail.com', 'Madhya Pradesh', 'Hamlapur, Madhya Pradesh, India', NULL, NULL, NULL, 'Betul', '', 'gaT0Xv', '', '0000-00-00', 'assets/images/product_image/5edf9d641c201.jpg', 'Car painter', '', 'null', 'null', '', 0, NULL),
(22, 'Aman madhu', '9174360170', 'madhuamanmadhu@gmail.com', 'Madhya Pradesh', 'Sona sawari naka itarsi', NULL, NULL, NULL, 'Itarsi', '', 'NDoyvl', '461111', '0000-00-00', 'assets/images/product_image/5ee0b8da51645.jpg', 'Electrician', '', 'null', 'null', '', 0, NULL),
(23, 'Devendra chourasiya', '6263534371', 'devendrakumar181995@gmail.com', 'Madhya Pradesh', 'Galti ki sanjay  nagar vard no 33 makan no 634', NULL, NULL, NULL, 'Hoshangabad', '', 'NaY8AR', '', '0000-00-00', 'assets/images/product_image/5ee0dd46694cf.jpg', 'Mobile repairing', '', 'null', 'null', '', 0, NULL),
(24, 'Ghanshyam Gawande', '8770229012', 'gsg2408@gmail.com', 'Madhya Pradesh', 'At Post - Jogali, Block- Chicholi, Distt.- Betul', NULL, NULL, NULL, 'Betul', '', '4KycIl', '', '0000-00-00', 'assets/images/product_image/5ee1182004332.jpg', 'Computer repairing', '', 'null', 'null', '', 0, NULL),
(26, 'Rajendra Singh Thakur', '8770316422', 'thakur9292raj@gmail.com', 'Madhya Pradesh', 'Central jila jail Hoshangabad', NULL, NULL, NULL, 'Hoshangabad', '', '2Bj0i4', 'gy9Yqz', '0000-00-00', 'assets/images/product_image/5ee375fc1e487.jpg', 'Laptop repairing, Computer repairing', '', 'null', 'null', '', 0, NULL),
(29, 'Jainedra Bathree', '6260185639', 'jainendrabathree12345@gmail.com', 'Madhya Pradesh', 'At post yenkheda th Multai district betul', NULL, NULL, NULL, 'Amla', '', 'IRKr1A', '', '0000-00-00', '<p>The filetype you are attempting to upload is not allowed.</p>', 'Electrician, Bijli fitting, Induction repairing', '', 'null', 'null', '', 0, NULL),
(30, 'Chetan pawar', '9770995990', 'pawarchetan751@gmail.com', 'Madhya Pradesh', 'Tulshi nagar betul', NULL, NULL, NULL, 'Betul', '', '2hbrAG', '', '0000-00-00', 'assets/images/product_image/5ee63305e8a30.jpg', 'Electrician, Fan repairing, False ceiling, Home theatre  repairing, Induction repairing', '', 'null', 'null', '', 0, NULL),
(31, 'Anil pawar', '9907470958', 'anilpawar9907@gmal.com', 'Madhya Pradesh', 'Khedla kila', NULL, NULL, NULL, 'Betul', '', 'WcVxNa', '460001', '0000-00-00', 'assets/images/product_image/5ee637dbc83f6.jpg', 'Electrician', '', 'null', 'null', '', 0, NULL),
(32, 'Shivshankar kakodiya', '8463868739', 'shivkakodiya75@ghail.com', 'Madhya Pradesh', 'Naya malni post malothr th. Itarsi', NULL, NULL, NULL, 'Hoshangabad', '', 'NyUIlY', '', '0000-00-00', 'assets/images/product_image/5ee669f542dd3.jpg', 'Mobile repairing, DTH installation, DJ repairing', '', 'null', 'null', '', 0, NULL),
(33, 'Ravi sunariya', '7879327774', 'ravisunariya786@gmail.com', 'Madhya Pradesh', 'Kalapatha betul', NULL, NULL, NULL, 'Betul', '', '6mgfk0', '101993', '0000-00-00', 'assets/images/product_image/5ee77c6961730.jpg', 'Electrician, Plumber, AC repairing, Fan repairing, washing machine repairing, nal fitting, fridge repair, Bijli fitting, Motor winding, Aluminium work, Induction repairing', '', 'null', 'null', '', 0, NULL),
(34, 'Hariom Naditod', '8839557611', 'hariompawar120@gmail.com', 'Madhya Pradesh', 'Hamlapur', NULL, NULL, NULL, 'Betul', '', 'leTjh6', '1993', '0000-00-00', 'assets/images/product_image/5ee78295547f4.jpg', 'Wall painter, Laptop repairing, POP work', '', 'null', 'null', '', 0, NULL),
(35, 'Kamal Tekam', '9179016015', 'kamaltekam51@gmail.com', 'Madhya Pradesh', 'Hamlapur', NULL, NULL, NULL, 'Betul', '', 'qOhTAk', '', '0000-00-00', 'assets/images/product_image/5ee833d735a01.jpg', 'Welder', '<p>Verified Technician</p>', 'null', 'null', '', 0, NULL),
(37, 'Sheikh Hashim', '8839026604', '', 'Madhya Pradesh', 'vvm collage betul', NULL, NULL, NULL, 'Betul', '', 't6bzMy', '', '0000-00-00', 'assets/images/product_image/5eeb9180af5d3.jpg', '4 wheeler mechanic', '<p>Verified technician&nbsp;<b>car</b></p>', 'null', 'null', '', 0, NULL),
(38, 'Bhojraj pawar', '9981452608', '', 'Madhya Pradesh', 'Betul', NULL, NULL, NULL, 'Betul', '', 'w97jas', '', '0000-00-00', 'assets/images/product_image/5eec30599c55b.jpg', 'Tiles work', '', 'null', 'null', '', 0, NULL),
(39, 'Anil dhote', '+919755861718', 'pratikrathore831@gmail.com', 'Madhya Pradesh', 'Mangal bhawan Khanapur road,ward no.1 amla district betul (m.p)', NULL, NULL, NULL, 'Amla', '', '2iTK1V', '', '0000-00-00', 'assets/images/product_image/5eeca518da88a.jpg', 'Wall painter', '', 'null', 'null', '', 0, NULL),
(40, 'Suraj pawar', '9630641270', 'sp831351@gmail.com', 'Madhya Pradesh', 'Betul', NULL, NULL, NULL, 'Betul', '200', 'wFa836', '', '0000-00-00', 'assets/images/product_image/5eece29e489f9.jpg', 'Electrician, Plumber, Bijli fitting', '', '', '', '7089551320', 0, NULL),
(41, 'Ankit pawar', '7828751041', 'ap2511548@gmail.com', 'Madhya Pradesh', 'Palakhed mokhed  Madhya Pradesh India', NULL, NULL, NULL, 'chhindwara', '500', '0YwSad', '12345678', '0000-00-00', 'assets/images/product_image/5eece8fe14a82.jpg', 'Plumber', '', '', '', '7828751041', 0, NULL),
(42, 'Navin Kumar  malvi', '7415513804', 'navinkumar190899@gmail.com', 'Madhya Pradesh', 'Rasulia Pratap Nagar Atul Kirana Ke Samne', NULL, NULL, NULL, 'Hoshangabad', '150', 'dEhFN7', '', '0000-00-00', 'assets/images/product_image/5eee0d9665e7d.JPG', 'Car painter, Wall painter, Mobile repairing, nal fitting, Gas chulha repairing', '', '', '', '7415513804', 0, NULL),
(43, 'Rahul kumar', '9691003914', 'shubham76104@gmail.com', 'Madhya Pradesh', '12 bhopal choraha hoshangabad', NULL, NULL, NULL, 'Hoshangabad', '100', '0kICVa', '', '0000-00-00', 'assets/images/product_image/5eee182967cc2.jpg', 'Electrician', '', '', '', '7610484813', 0, NULL),
(44, 'Rakesh Kushwaha', '8770351294', '24rakeshkushwaha@gmail.com', 'Madhya Pradesh', 'In front of hp petrol pump smraddhi nagar hoshangabad', NULL, NULL, NULL, 'Hoshangabad', '150', 'LEIg3K', '', '0000-00-00', 'assets/images/product_image/5eee4505e856f.jpg', 'Computer repairing', '', '', '', '', 0, NULL),
(45, 'Rohit Kumar', '7697571923', 'rohit46286@gmail.com', 'Madhya Pradesh', 'Hoshangabad gwaltoli Laskar chok', NULL, NULL, NULL, 'Hoshangabad', '150', 'RGnQbT', '', '0000-00-00', 'assets/images/product_image/5eee478a7e492.jpg', 'Mobile repairing', '', '', '', '7697571923', 0, NULL),
(46, 'Rupendra rajput ', '7649871683', 'rupendrarajput@gimel.com', 'Madhya Pradesh', 'Iti housing bord colony Hoshngabad madhay prdesh', NULL, NULL, NULL, 'Hoshngabad ', '500     se  700   rs', 'mR9veq', '786786', '0000-00-00', 'assets/images/product_image/5eee4c9627350.jpg', 'Electrician, Plumber, Car painter, Wall painter, nal fitting, fridge repair, Bijli fitting, POP work, Mistri, Welder, Tiles work', '', '', '', '7649871683', 0, NULL),
(48, 'Rahul Farkade', '09770662886', 'pawarrahul362@gmail.com', 'Madhya Pradesh', 'Rathipure', NULL, NULL, NULL, 'Betul', '150', '0gX5pr', '', '0000-00-00', 'assets/images/product_image/5eef0dd5a8b62.jpg', 'Welder', '', '', '', '09770662886', 0, NULL),
(49, 'Rahul pawar', '6261005363', 'rahulkeslekar2307@gmail.com', 'Madhya Pradesh', 'Betul all', NULL, NULL, NULL, 'Betul', '', 'Qvhb56', '', '0000-00-00', 'assets/images/product_image/5ef0934366462.jpg', 'Electrician, Plumber', '', 'null', 'null', '', 0, NULL),
(50, 'Raman Gawande', '6263708093', '', 'Madhya Pradesh', 'At+Post- Jogali, Block- Chicholi, Distt. - Betul', NULL, NULL, NULL, 'Betul', '150', 'eM1pUZ', '', '0000-00-00', 'assets/images/product_image/5ef0cdba67eb0.jpg', 'Welder', '', '', '', '9753997935', 0, NULL),
(51, 'Delight Computers', '+918356908110', 'delightcsol@gmail.com', 'Maharashtra', 'B-104,Plot-24,Sec-11,Kalamboli', NULL, NULL, NULL, 'Navi Mumbai', '300', 'ObJyLM', '', '0000-00-00', 'assets/images/product_image/5ef2158ce71dc.png', 'Laptop repairing, Computer repairing', '', '', '', '+918356908110', 0, NULL),
(52, 'Vijay Ahirwar ', '7024934386', 'svijayjay2124@gmail.com', 'Madhya Pradesh', 'Choti pahadiya hoshangabad near of tiles factory ', NULL, NULL, NULL, 'Hoshangabad ', '160', 'fga1PX', '', '0000-00-00', 'assets/images/product_image/5ef2fd3673d16.jpg', 'Electrician, Plumber, Wall painter, Mobile repairing, AC repairing, Fan repairing, nal fitting, Bijli fitting, Gas chulha repairing, Motor winding, Home theatre  repairing, Tiles work, House Designing civil engineers, Key maker', '', '', '', '7024934386', 0, NULL),
(53, 'Prakash', '8518053476', '', 'Madhya Pradesh', 'Betul bazar', NULL, NULL, NULL, 'Betul', '150', 'M0iFGx', '', '0000-00-00', 'assets/images/product_image/5ef33c71afbbd.jpg', 'Electrician, POP work, Mistri, Tiles work, House Designing civil engineers, CCTV Camera Repairing', '', '', '', '8518053476', 0, NULL),
(54, 'Ranjit sinotiya', '8982557071', 'ranjitsinotiya@gmail.com', 'Madhya Pradesh', 'Near 8 shop new basti bagmugaliya bhopal', NULL, NULL, NULL, 'Bhopal', '200', 'luCUkM', '', '0000-00-00', 'assets/images/product_image/5ef38b5f898b8.jpg', 'DTH installation', '', '', '', '8982557071', 0, NULL),
(55, 'PRAVIN YADAV', '7024724490', 'Pravinyadav0786@gmail.com', 'Madhya Pradesh', 'Betul', NULL, NULL, NULL, 'Betul', '100', '2a9EYr', 'PravinYada', '0000-00-00', 'assets/images/product_image/5ef4a81b22510.jpg', 'Electrician', '', '', '', '7024724490', 0, NULL),
(56, 'Udit chouhan', '8817928471', 'uditchouhanbd@gimal.com', 'Madhya Pradesh', 'Narmada iti ke samne gawaltoli', NULL, NULL, NULL, 'Hoshangabad', 'Mobail ripering', 'cOuGM8', 'gy9Yqz', '0000-00-00', '<p>The filetype you are attempting to upload is not allowed.</p>', '', '', '', '', '8817928471', 0, NULL),
(57, 'Pratik kalambe', '9098405866', 'pratik.kalambe13@gmail.com', 'Madhya Pradesh', 'At post mohgaon ward no 08', NULL, NULL, NULL, 'Sausar', '150', '8B76Kf', '', '0000-00-00', 'assets/images/product_image/5efeb2ff1f077.jpg', 'Electrician, Plumber, nal fitting, Bijli fitting, Gas chulha repairing', '', '', '', '9098405866', 0, NULL),
(58, 'Rupesh pawar', '9039424100', 'pawarrupesh937@gmail.com', 'Madhya Pradesh', 'kothi bazar betul ', NULL, NULL, NULL, 'betul', '500', 'UOwurX', '', '0000-00-00', 'assets/images/product_image/5f0170af865ea.jpg', 'House Designing civil engineers', '', '', '', '9039424100', 0, NULL),
(59, 'shivraj singh', '9340820924', 'chouhanshivraj52@gmail.com', 'Madhya Pradesh', 'sankheda naka old itarsi ', NULL, NULL, NULL, 'Itarsi ', '300', 'lvqNu7', '', '0000-00-00', 'assets/images/product_image/5f05457388a64.jpg', 'Electrician', '', '', '', '9340820924', 0, NULL),
(60, '', '', '', '', '', NULL, NULL, NULL, '', '', 'W86bLq', '', '0000-00-00', '<p>You did not select a file to upload.</p>', '', '', '', '', '', 0, NULL),
(62, 'Latesh pawar', '6261051575', 'lateshpaw@gmail.com', 'Madhya Pradesh', 'Kothi bajar betul', NULL, NULL, NULL, 'Betul', '300', 'q8YafZ', '8878', '0000-00-00', 'assets/images/product_image/5f09c282c9201.jpg', 'Wall painter', '', '', '', '6261051575', 0, NULL),
(63, '', '', '', '', '', NULL, NULL, NULL, '', '', 'dfSkp2', '', '0000-00-00', '<p>You did not select a file to upload.</p>', '', '', '', '', '', 0, NULL),
(64, 'Nitin sahu', '9522111124', 'nitinsahu121197@gmail.com', 'Madhya Pradesh', 'नितिन इलेक्ट्रिकल्स बिहारी चौक सोहागपुर जिला होशंगाबाद मध्य प्रदेश', NULL, NULL, NULL, 'Sohagpur', '150', 'bM05gK', 'Monu1212', '0000-00-00', 'assets/images/product_image/5f0ddeaec4998.jpg', 'Electrician, Plumber, Tv repairing, AC repairing, Fan repairing, nal fitting, fridge repair, DTH installation, DJ repairing, False ceiling, Motor winding, Home theatre  repairing, Mistri, CCTV Camera Repairing', '', '', '', '9522111124', 0, NULL),
(65, 'Dashrath Singh', '8003100275', 'cho.dashrath@gmail.com', 'Rajasthan', 'New Bus Stend Malakhera, Alwar 301406', NULL, NULL, NULL, 'Mala khera Alwar', '200/-', 'RerB1Q', '', '0000-00-00', 'assets/images/product_image/5f2e2d6806c1c.jpg', 'Bike mechanic, 4 wheeler mechanic', '', '', '', '8003100275', 0, NULL),
(66, 'Siddi pest', '7264839851', 'siddipest@gmail.com', 'Maharashtra', 'Kandivali, dadar, malad', NULL, NULL, NULL, 'Mumbai', '500', 'dDmcOz', '', '0000-00-00', 'assets/images/product_image/5f31001f56fee.jpg', 'Pest control', '', '', '', '7264839851', 0, NULL),
(67, 'Pestache Pest Control Services', ' 022 2410 5280', '', 'Maharashtra', ' 3, Ground Floor, Pestache Pest Control, G. D. Ambekar marg, Naigaon, Dadar East, Mumbai, Maharashtra 400014', NULL, NULL, NULL, 'Mumbai', '500', '', '', '0000-00-00', 'assets/images/product_image/pest1.png', 'Pest control', '', '', '', '', 0, NULL),
(68, 'Vishal Pest Control Services', ' 098219 24950', '', 'Maharastra', '31 Ground floor Tukaram Smruti, Jambhekar Maharaj Path Shivaji park, Dadar, Mumbai, Maharashtra 400028', NULL, NULL, NULL, 'Mumbai', '', '', '', '0000-00-00', 'assets/images/product_image/pest2.png', 'Pest control', '', '', '', '098219 24950', 0, NULL),
(69, 'Alfa Pest Control Services Dadar', '084520 76804', '', 'Maharastra', ' 5, yudhishthir CHS, Off N.C. Kelkar Road,, Dadar West, Mumbai, Maharashtra 400028', NULL, NULL, NULL, 'Mumbai', '', '', '', '0000-00-00', 'assets/images/product_image/pest3.png', 'Pest control', '', '', '', '084520 76804', 0, NULL),
(70, 'HERBAL PEST CONTROL SERVICES IN KAMOTHE', '08097996509', '', 'Maharashtra', 'Jui-Kamothe Sector - 36, Sector 36, Kamothe, Panvel, Navi Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'Kamothe', '500', 'qKjXMl', '', '0000-00-00', 'assets/images/product_image/5f3a80857e99d.jpg', 'Pest control', '', '', '', '', 0, NULL),
(71, 'Termite Cockroach Pest Control Kamothe 4.2 (23)', '08795742087', '', 'Maharashtra', 'Kamothe', NULL, NULL, NULL, 'Kamothe', '500', 'Hp7eQs', '', '0000-00-00', 'assets/images/product_image/5f3a812c07f7b.jpg', 'Pest control', '', '', '', '', 0, NULL),
(72, 'Solution pest control services', '08108551155', '', 'Maharashtra', 'Shri Mahalaxmi Mall, Shop no118, Sector 35, Kamothe, Navi Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'Kamothe', '400', 'G9WEqI', '', '0000-00-00', 'assets/images/product_image/5f3a824b44eaa.jpg', 'Pest control', '', '', '', '', 0, NULL),
(73, 'Mayur pawar', '9131564027', '', 'Madhya Pradesh', 'Betul', NULL, NULL, NULL, 'Betul', '250', 'jtzfUx', '', '0000-00-00', 'assets/images/product_image/5f3bc9b432b9e.jpg', 'Car painter, Mistri', '', '', '', '9131564027', 0, NULL),
(74, 'Mohanlal vishwakarma', '8109406453', 'vishwakarmapramod440@gmail.com', 'Madhya Pradesh', 'Hamlapur kalapatha betul', NULL, NULL, NULL, 'Betul', '500', 'TqbQax', '', '0000-00-00', 'assets/images/product_image/5f3e5366c9740.jpg', 'Welder', '', '', '', '7999749185', 0, NULL),
(75, 'Vijay pawar', '6260110554', '', 'Madhya Pradesh', 'Hamlapur betul', NULL, NULL, NULL, 'Betul', '250', 'cUvBYP', '', '0000-00-00', 'assets/images/product_image/5f3e56ec84bfa.jpg', 'Aluminium work', '', '', '', '6260110554', 0, NULL),
(76, 'Vishal Vishwakarma', '8269125905', 'vishalvishwakarma101@gmail.com', 'Madhya Pradesh', 'Betul', NULL, NULL, NULL, 'Arjun Nagar', '300', 'zpVJfe', '', '0000-00-00', 'assets/images/product_image/5f3ff27b8dce5.jpg', 'Welder', '', '', '', '8269125905', 0, NULL),
(77, 'SHIVAM BARMASE', '9340615540', 'Shivambarmase001@gmail.com', 'Madhya Pradesh', 'behinde pol fectory athaner road badora betul m.p', NULL, NULL, NULL, 'Betul,bhopal', 'accourding to servic', 'vN4sQb', '', '0000-00-00', 'assets/images/product_image/5f4484e5ce941.jpg', 'Pest control', '', '', '', '7898717067', 0, NULL),
(79, 'Sai Penterier', '9987712899', 'saipenterier@gmail.com', 'Maharashtra', 'Navi mumbai', NULL, NULL, NULL, 'Panvel Navi Mumbai ', '1', '9B5GlF', '', '0000-00-00', 'assets/images/product_image/5f7c38d9b79d5.jpg', 'Plumber, Car painter, Wall painter, Bijli fitting, POP work, Tiles work, House Designing civil engineers, CCTV Camera Repairing', '', '', '', '07738030078', 0, NULL),
(80, 'YOGESH', '9664068692', '', 'Maharashtra', 'MANKHURD WEST', NULL, NULL, NULL, 'Mumbai', '150', 'cOgwJW', '', '0000-00-00', 'assets/images/product_image/5f84844cf1c09.jpg', 'Electrician, Mobile repairing, Fan repairing, Laptop repairing, Computer repairing, Bijli fitting, Gas chulha repairing, Motor winding, Mistri, House Designing civil engineers, CCTV Camera Repairing, software update, pc format', '', '', '', '9664068692', 0, NULL),
(81, 'Rajkumar Barde', '9691796384', 'rajbarderaj@gmail.com', 'Madhya Pradesh', 'Near SBI civil lines betul', NULL, NULL, NULL, 'Betul', '1500', 'q0a9fh', '', '0000-00-00', 'assets/images/product_image/5f8515dd00d1c.JPG', 'Electrician, Plumber, Wall painter, POP work, False ceiling, Mistri, Tiles work, House Designing civil engineers', '', '', '', '9691796384', 0, NULL),
(82, 'Santosh Gupta', '8452999560', 'sg214657@gmail.com', 'Maharashtra', 'Shivneri Chs room no 14, sec 15, plot no A2, near Dmart, Kalamboli', NULL, NULL, NULL, 'Navi Mumbai', '450', 'HwSg2y', '', '0000-00-00', '<p>The filetype you are attempting to upload is not allowed.</p>', 'Laptop repairing, Computer repairing, CCTV Camera Repairing, software update, pc format, Networking Engineers', '', '', '', '', 0, NULL),
(83, 'Umesh Waghmare', '+91 83190 99022', 'umeshwagmare@gmail.com', 'Madhya Pradesh', 'Betul, sarar betul', NULL, NULL, NULL, 'Betul', '20', 'qdyrjA', '', '0000-00-00', 'assets/images/product_image/5f86a7a3c8148.jpg', 'Bike mechanic', '', '', '', '+91 83190 99022', 0, NULL),
(84, 'Om Sai Electrical', '9323779561', '', 'Maharashtra', 'Sector 16, plot no.6, channel corner, Kamothe 410209', NULL, NULL, NULL, 'Navi mumbai', '300', 'JxoWOK', '', '0000-00-00', 'assets/images/product_image/5f86a9db65fb7.jpg', 'Motor winding', '', '', '', '9323779561', 0, NULL),
(85, 'STAR ELECTRICAL SERVICES', '095464 94431', '', 'Maharashtra', ' Narmada Co Operative Housing Society Ltd, Sector 19, Kamothe, Panvel, Navi Mumbai, Maharashtra 410206', NULL, NULL, NULL, 'kamothe', '150', 'IxFMjD', '', '0000-00-00', 'assets/images/product_image/5f8c598bce914.jpg', 'Electrician', '', '', '', '095464 94431', 0, NULL),
(86, 'Farhan Electrical Solutions', '097688 56332', '', 'Maharashtra', 'Sector 34, Kamothe, Panvel, Navi Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'kamothe', '150', 'fn5ARl', '', '0000-00-00', 'assets/images/product_image/5f8c5a3729f0f.jpg', 'Electrician', '', '', '', '097688 56332', 0, NULL),
(87, 'Raza Electricals', '098197 06231', '', 'Maharashtra', 'Sector 1E, Kalamboli, Panvel, Navi Mumbai, Maharashtra 410218', NULL, NULL, NULL, 'kamothe', '150', 'W1sIti', '', '0000-00-00', 'assets/images/product_image/5f8c5aae5eaab.jpg', 'Electrician', '', '', '', '098197 06231', 0, NULL),
(88, 'omelectricals', '097680 04333', '', 'Maharashtra', '16, Kamothe, Sector 19, Kamothe, Panvel, Navi Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'kamothe', '150', 'D4TZft', '', '0000-00-00', 'assets/images/product_image/5f8c5b15931cf.jpg', 'Electrician', '', '', '', '097680 04333', 0, NULL),
(89, 'Shree Ganesh Service Center', '090291 53442', '', 'Maharashtra', 'Shop No 3 Plot No 40 Sector 11 Kamothe Navi Mumbai, Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'kamothe', '150', '2VfMCb', '', '0000-00-00', 'assets/images/product_image/5f8c5bb3ea996.jpg', 'Electrician', '', '', '', '090291 53442', 0, NULL),
(90, 'Shailesh Electrical works', '097681 98410', '', 'Maharashtra', 'near fire brigade, Sector-3E/B, Sector 3E, Kalamboli, Panvel, Navi Mumbai, Maharashtra 410218', NULL, NULL, NULL, 'kamothe', '150', 'I2rv30', '', '0000-00-00', 'assets/images/product_image/5f8c5c82a8afb.jpg', 'Electrician', '', '', '', '097681 98410', 0, NULL),
(91, 'Raju Electrical Works', '097690 49289', '', 'Maharashtra', 'Shop No.301,Om Sai Darshan CHS,Plot No.141,145,-,, Sector 34, Kamothe, Navi Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'kamothe', '150', '0Kzom9', '', '0000-00-00', 'assets/images/product_image/5f8c5d24b41bd.jpg', 'Electrician', '', '', '', '097690 49289', 0, NULL),
(92, 'Roshan Electronics', '086553 49438', '', 'Maharashtra', 'Shop No 3 Plot No 195 Sector 21 Kamothe Navi Mumbai, Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'kamothe', '150', '0NfVL3', '', '0000-00-00', 'assets/images/product_image/5f8c5e5ec39d9.jpg', 'Electrician', '', '', '', '086553 49438', 0, NULL),
(93, 'Aditya Electricals', '097698 72977', '', 'Maharashtra', 'Shop No 14 Shivam Apartment Plot 48 Navi Mumbai, Sector 18, Kamothe, Panvel, Mumbai, Maharashtra 410209', NULL, NULL, NULL, 'kamothe', '150', 'haW6iH', '', '0000-00-00', 'assets/images/product_image/5f8c641cb13ac.jpg', 'Electrician', '', '', '', '097698 72977', 0, NULL),
(94, 'ABHISHEK Ahirwar', '09098141510', 'abhishek9752293874@gemil.com', 'Madhya Pradesh', 'Karod Bhopal berasia Road Pipal Chauraha', NULL, NULL, NULL, 'Bhopal', '200', '6IHeq7', '', '0000-00-00', 'assets/images/product_image/5f8eb1a1b47c2.jpg', 'DTH installation', '', '', '', '09098141510', 0, NULL),
(95, '', '', '', '', '', NULL, NULL, NULL, '', '', 'kvuqWL', '', '0000-00-00', '<p>You did not select a file to upload.</p>', '', '', '', '', '', 0, NULL),
(96, 'Santosh kahar', '7724994004 ', 'deepakkahar281@gmail.com', 'Madhya Pradesh', 'Koro ghat, hoshangabad ', NULL, NULL, NULL, 'Hoshangabad ', '300', 'y6spDP', '9669448568', '0000-00-00', 'assets/images/product_image/5f8fdb61996d0.jpg', 'Electrician, Bijli fitting', '', '', '', '9669448568', 0, NULL),
(97, 'Sanju bisone (Gulshan bisone)', '7879135644', 'gulshanbisone19@gmail.com', 'Madhya Pradesh', 'Hamlapur..maajinegar', NULL, NULL, NULL, 'Betul', '50', 'x4wdKn', '', '0000-00-00', 'assets/images/product_image/5f986716b9b8c.jpg', 'Aluminium work', '', '', '', '7879135644', 0, NULL),
(98, 'Pankaj Tiwari', '7987799760', '', 'Madhya Pradesh', 'Desha bandhu wad betul', NULL, NULL, NULL, 'Betul', '450', 'jimERA', 'GUNGUN', '0000-00-00', 'assets/images/product_image/5fce76389678a.jpg', 'Plumber, nal fitting, Bijli fitting', '', '', '', '7987799760', 0, NULL),
(100, 'KingBird Consultancy', '07987497838', '', 'OFFICE NO.- 18/19, CHANNEL CORNER CHS,\nSECTOR NO.- 16, PLOT NO.- 6A, KAMOTHE,', '', NULL, NULL, NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', 'MAHARASTRA', 0, NULL),
(101, 'KingBird Consultancy', '8787545', '', 'OFFICE NO.- 18/19, CHANNEL CORNER CHS,\nSECTOR NO.- 16, PLOT NO.- 6A, KAMOTHE,', '', NULL, NULL, NULL, '', '', '', '', '0000-00-00', '', '', '', '', '', 'MAHARASTRA', 0, NULL),
(102, 'KingBird Consultancy', '85785645', '', 'MAHARASTRAf', 'OFFICE NO.- 18/19, CHANNEL CORNER CHS,\nSECTOR NO.- 16, PLOT NO.- 6A, KAMOTHE,', NULL, NULL, NULL, 'NAVI MUMBAIv', '5', '', '', '0000-00-00', '', '', '', '4', '', '123457878', 0, '1'),
(103, 'KingBird Consultancy', '857856455', '', 'MAHARASTRAf', 'OFFICE NO.- 18/19, CHANNEL CORNER CHS,\nSECTOR NO.- 16, PLOT NO.- 6A, KAMOTHE,', NULL, NULL, NULL, 'NAVI MUMBAIv', '5', '', '', '0000-00-00', '', '', '', '4', '', '123457878', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `techratings`
--

CREATE TABLE `techratings` (
  `id` int(11) NOT NULL,
  `tid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `userid` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userclicks`
--

CREATE TABLE `userclicks` (
  `id` int(11) NOT NULL,
  `tid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `created_at` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userclicks`
--

INSERT INTO `userclicks` (`id`, `tid`, `type`, `created_at`) VALUES
(1, '65', 0, '15332321'),
(2, '34', 1, '1592467353'),
(3, '27', 3, '1592468786'),
(4, '27', 1, '1592468787'),
(5, '11', 2, '1592469956'),
(6, '13', 2, '1592469969'),
(7, '10', 2, '1592469982'),
(8, '30', 2, '1592470063'),
(9, '30', 1, '1592470076'),
(10, '31', 2, '1592470097'),
(11, '31', 1, '1592470103'),
(12, '34', 2, '1592470212'),
(13, '33', 2, '1592470218'),
(14, '31', 2, '1592470222'),
(15, '11', 1, '1592470332'),
(16, '23', 2, '1592470380'),
(17, '23', 1, '1592470386'),
(18, '23', 1, '1592470389'),
(19, '23', 3, '1592470397'),
(20, '23', 3, '1592470403'),
(21, '23', 1, '1592470404'),
(22, '17', 2, '1592470424'),
(23, '17', 1, '1592470426'),
(24, '17', 1, '1592470443'),
(25, '34', 1, '1592470485'),
(26, '24', 1, '1592470497'),
(27, '19', 1, '1592470507'),
(28, '16', 1, '1592470511'),
(29, '34', 2, '1592470522'),
(30, '33', 3, '1592470526'),
(31, '33', 3, '1592470529'),
(32, '34', 3, '1592470530'),
(33, '31', 3, '1592470532'),
(34, '30', 3, '1592470534'),
(35, '4', 3, '1592470538'),
(36, '2', 3, '1592470544'),
(37, '22', 2, '1592470553'),
(38, '2', 3, '1592470562'),
(39, '2', 1, '1592470565'),
(40, '34', 3, '1592470625'),
(41, '33', 3, '1592470627'),
(42, '16', 3, '1592470631'),
(43, '11', 3, '1592470633'),
(44, '4', 3, '1592470634'),
(45, '11', 1, '1592470681'),
(46, '4', 1, '1592470705'),
(47, '4', 1, '1592470712'),
(48, '10', 1, '1592470717'),
(49, '11', 1, '1592470723'),
(50, '13', 1, '1592470728'),
(51, '30', 1, '1592470734'),
(52, '31', 1, '1592470736'),
(53, '34', 1, '1592470832'),
(54, '34', 3, '1592470837'),
(55, '30', 3, '1592470845'),
(56, '19', 3, '1592470848'),
(57, '13', 3, '1592470851'),
(58, '10', 3, '1592470853'),
(59, '4', 3, '1592470855'),
(60, '11', 3, '1592470861'),
(61, '16', 3, '1592470863'),
(62, '24', 1, '1592470867'),
(63, '24', 3, '1592470869'),
(64, '31', 3, '1592470872'),
(65, '34', 2, '1592470882'),
(66, '33', 2, '1592470885'),
(67, '33', 2, '1592470924'),
(68, '34', 1, '1592471071'),
(69, '29', 3, '1592471229'),
(70, '29', 2, '1592471241'),
(71, '29', 2, '1592471266'),
(72, '29', 2, '1592471515'),
(73, '33', 2, '1592471811'),
(74, '33', 1, '1592471839'),
(75, '33', 1, '1592471865'),
(76, '21', 1, '1592472026'),
(77, '29', 1, '1592472087'),
(78, '29', 1, '1592472090'),
(79, '29', 1, '1592472092'),
(80, '29', 1, '1592472094'),
(81, '29', 1, '1592472117'),
(82, '29', 1, '1592472243'),
(83, '29', 1, '1592472277'),
(84, '29', 1, '1592472280'),
(85, '29', 1, '1592472292'),
(86, '29', 1, '1592472294'),
(87, '29', 1, '1592472297'),
(88, '29', 1, '1592472299'),
(89, '21', 1, '1592472308'),
(90, '21', 1, '1592472310'),
(91, '21', 1, '1592472311'),
(92, '21', 1, '1592472313'),
(93, '21', 1, '1592472315'),
(94, '21', 1, '1592472316'),
(95, '21', 1, '1592472318'),
(96, '21', 1, '1592472319'),
(97, '21', 1, '1592472322'),
(98, '21', 1, '1592472344'),
(99, '21', 1, '1592472396'),
(100, '21', 1, '1592472469'),
(101, '21', 1, '1592472568'),
(102, '21', 1, '1592472747'),
(103, '11', 2, '1592476894'),
(104, '11', 1, '1592476900'),
(105, '8', 2, '1592493527'),
(106, '8', 1, '1592493550'),
(107, '16', 2, '1592495411'),
(108, '16', 3, '1592495416'),
(109, '21', 3, '1592495426'),
(110, '16', 3, '1592495430'),
(111, '33', 3, '1592495448'),
(112, '33', 2, '1592495451'),
(113, '31', 2, '1592495454'),
(114, '17', 2, '1592495805'),
(115, '17', 3, '1592495808'),
(116, '17', 3, '1592495811'),
(117, '17', 2, '1592495811'),
(118, '21', 2, '1592496161'),
(119, '37', 2, '1592496770'),
(120, '11', 2, '1592496774'),
(121, '11', 3, '1592496807'),
(122, '33', 3, '1592499738'),
(123, '31', 3, '1592499744'),
(124, '33', 2, '1592499769'),
(125, '13', 2, '1592499769'),
(126, '33', 2, '1592499778'),
(127, '31', 2, '1592499784'),
(128, '11', 2, '1592499792'),
(129, '31', 1, '1592499809'),
(130, '33', 1, '1592499817'),
(131, '37', 1, '1592511314'),
(132, '19', 1, '1592530425'),
(133, '11', 1, '1592530440'),
(134, '11', 1, '1592530566'),
(135, '11', 1, '1592530766'),
(136, '13', 1, '1592530771'),
(137, '19', 1, '1592530779'),
(138, '11', 1, '1592531648'),
(139, '13', 2, '1592536759'),
(140, '37', 2, '1592536823'),
(141, '38', 2, '1592537330'),
(142, '38', 1, '1592537342'),
(143, '38', 3, '1592542836'),
(144, '37', 1, '1592561044'),
(145, '17', 1, '1592566741'),
(146, '11', 1, '1592566778'),
(147, '8', 1, '1592566788'),
(148, '34', 1, '1592566825'),
(149, '2', 1, '1592566834'),
(150, '21', 2, '1592568264'),
(151, '21', 1, '1592568268'),
(152, '10', 1, '1592571022'),
(153, '39', 1, '1592571032'),
(154, '34', 1, '1592571041'),
(155, '11', 1, '1592571061'),
(156, '13', 1, '1592571086'),
(157, '40', 2, '1592584095'),
(158, '40', 1, '1592584210'),
(159, '4', 1, '1592636304'),
(160, '40', 2, '1592637311'),
(161, '2', 2, '1592641310'),
(162, '8', 1, '1592647303'),
(163, '8', 1, '1592647523'),
(164, '8', 3, '1592647531'),
(165, '8', 1, '1592647539'),
(166, '44', 1, '1592673737'),
(167, '26', 1, '1592673756'),
(168, '24', 1, '1592673780'),
(169, '38', 1, '1592673854'),
(170, '35', 1, '1592674087'),
(171, '4', 1, '1592721768'),
(172, '4', 2, '1592721773'),
(173, '47', 2, '1592724775'),
(174, '47', 1, '1592724800'),
(175, '48', 2, '1592725044'),
(176, '35', 2, '1592741326'),
(177, '35', 1, '1592741335'),
(178, '46', 1, '1592741509'),
(179, '47', 1, '1592751652'),
(180, '24', 1, '1592791159'),
(181, '47', 1, '1592814023'),
(182, '49', 1, '1592827006'),
(183, '47', 1, '1592828294'),
(184, '35', 1, '1592828342'),
(185, '44', 1, '1592839872'),
(186, '26', 1, '1592839899'),
(187, '24', 1, '1592839909'),
(188, '17', 1, '1592839922'),
(189, '15', 1, '1592839939'),
(190, '50', 1, '1592839975'),
(191, '48', 1, '1592840003'),
(192, '46', 1, '1592840055'),
(193, '30', 1, '1592877129'),
(194, '14', 1, '1592890125'),
(195, '34', 1, '1592923369'),
(196, '26', 1, '1592923373'),
(197, '17', 1, '1592923378'),
(198, '33', 2, '1592929672'),
(199, '51', 1, '1592933091'),
(200, '51', 1, '1592965305'),
(201, '38', 2, '1592998696'),
(202, '13', 1, '1592998790'),
(203, '53', 1, '1592999183'),
(204, '53', 2, '1592999197'),
(205, '55', 1, '1593250356'),
(206, '31', 2, '1593250380'),
(207, '30', 2, '1593250397'),
(208, '11', 1, '1593250407'),
(209, '55', 1, '1593330588'),
(210, '40', 1, '1593359930'),
(211, '41', 1, '1593495455'),
(212, '52', 1, '1593716027'),
(213, '11', 1, '1593749782'),
(214, '52', 2, '1593749795'),
(215, '55', 1, '1593749839'),
(216, '57', 1, '1593763078'),
(217, '8', 2, '1593799086'),
(218, '55', 2, '1593837190'),
(219, '57', 1, '1593851780'),
(220, '55', 2, '1593851804'),
(221, '13', 2, '1593851850'),
(222, '13', 2, '1593851850'),
(223, '13', 2, '1593851850'),
(224, '13', 1, '1593851855'),
(225, '38', 1, '1593851914'),
(226, '21', 1, '1593865887'),
(227, '16', 1, '1593865894'),
(228, '13', 1, '1593865899'),
(229, '30', 1, '1593865939'),
(230, '53', 1, '1593866005'),
(231, '53', 1, '1593866008'),
(232, '48', 1, '1593866217'),
(233, '48', 1, '1593866396'),
(234, '38', 1, '1593866403'),
(235, '21', 1, '1593866425'),
(236, '13', 1, '1593895763'),
(237, '42', 1, '1593930132'),
(238, '58', 1, '1593950675'),
(239, '', 0, '1593995656'),
(240, '', 0, '1593995657'),
(241, '15', 1, '1594015152'),
(242, '44', 1, '1594015177'),
(243, '51', 1, '1594015198'),
(244, '26', 1, '1594015214'),
(245, '24', 1, '1594015218'),
(246, '17', 1, '1594015227'),
(247, '15', 1, '1594015243'),
(248, '46', 1, '1594015359'),
(249, '53', 1, '1594015367'),
(250, '46', 1, '1594015373'),
(251, '52', 1, '1594015407'),
(252, '33', 1, '1594015417'),
(253, '30', 1, '1594015425'),
(254, '11', 1, '1594015430'),
(255, '10', 1, '1594015437'),
(256, '51', 1, '1594015485'),
(257, '44', 1, '1594015491'),
(258, '34', 1, '1594015535'),
(259, '53', 1, '1594015590'),
(260, '52', 2, '1594050180'),
(261, '59', 1, '1594181480'),
(262, '57', 1, '1594181531'),
(263, '55', 1, '1594181574'),
(264, '53', 1, '1594181587'),
(265, '52', 1, '1594181599'),
(266, '49', 1, '1594181621'),
(267, '46', 1, '1594181635'),
(268, '43', 1, '1594181677'),
(269, '59', 3, '1594181769'),
(270, '59', 1, '1594181782'),
(271, '', 0, '1594226104'),
(272, '', 0, '1594226104'),
(273, '50', 1, '1594488990'),
(274, '', 0, '1594518311'),
(275, '', 0, '1594518312'),
(276, '59', 1, '1594744241'),
(277, '63', 1, '1594744257'),
(278, '60', 1, '1594744259'),
(279, '50', 1, '1594796482'),
(280, '64', 1, '1595236999'),
(281, '59', 1, '1595249402'),
(282, '60', 1, '1595249413'),
(283, '63', 1, '1595304301'),
(284, '44', 1, '1595703119'),
(285, '58', 3, '1595732394'),
(286, '62', 2, '1596081746'),
(287, '11', 2, '1596517660'),
(288, '51', 2, '1596914712'),
(289, '66', 2, '1597047208'),
(290, '69', 1, '1597079130'),
(291, '69', 1, '1597079252'),
(292, '', 0, '1597149475'),
(293, '62', 2, '1597753281'),
(294, '38', 1, '1597753298'),
(295, '37', 1, '1597753326'),
(296, '49', 1, '1597753344'),
(297, '50', 1, '1597753358'),
(298, '64', 1, '1597753387'),
(299, '73', 2, '1597753889'),
(300, '73', 2, '1597753894'),
(301, '73', 2, '1597754371'),
(302, '73', 1, '1597754374'),
(303, '46', 1, '1597754392'),
(304, '21', 1, '1597754418'),
(305, '40', 1, '1597754560'),
(306, '73', 1, '1597754587'),
(307, '73', 1, '1597914069'),
(308, '73', 1, '1597919903'),
(309, '38', 1, '1597920414'),
(310, '74', 1, '1597920457'),
(311, '74', 1, '1597922087'),
(312, '74', 1, '1597922120'),
(313, '73', 1, '1598004699'),
(314, '76', 1, '1598026661'),
(315, '64', 2, '1598376731'),
(316, '65', 1, '1598787312'),
(317, '31', 1, '1598787354'),
(318, '11', 1, '1598787389'),
(319, '60', 1, '1598789079'),
(320, '60', 1, '1598789492'),
(321, '63', 1, '1598789506'),
(322, '64', 1, '1598789585'),
(323, '10', 1, '1598789666'),
(324, '8', 1, '1598789693'),
(325, '63', 1, '1598789860'),
(326, '63', 1, '1598789883'),
(327, '73', 1, '1599240868'),
(328, '73', 3, '1599240984'),
(329, '73', 1, '1599241008'),
(330, '13', 1, '1599279380'),
(331, '73', 1, '1599748495'),
(332, '74', 1, '1599748508'),
(333, '75', 1, '1599748511'),
(334, '', 0, '1600116779'),
(335, '78', 1, '1600860343'),
(336, '78', 1, '1600860349'),
(337, '63', 1, '1600860355'),
(338, '74', 1, '1600860408'),
(339, '75', 1, '1600860419'),
(340, '73', 1, '1601562317'),
(341, '73', 2, '1601562585'),
(342, '73', 3, '1601562596'),
(343, '73', 1, '1601562627'),
(344, '', 0, '1601684206'),
(345, '', 0, '1601750023'),
(346, '53', 1, '1601976658'),
(347, '53', 3, '1601976662'),
(348, '79', 3, '1601977027'),
(349, '79', 2, '1601977036'),
(350, '79', 1, '1601977039'),
(351, '', 0, '1601982226'),
(352, '', 0, '1602209575'),
(353, '', 0, '1602295988'),
(354, '79', 2, '1602315758'),
(355, '79', 1, '1602315781'),
(356, '79', 1, '1602315825'),
(357, '11', 2, '1602321842'),
(358, '11', 3, '1602321849'),
(359, '13', 3, '1602321851'),
(360, '16', 3, '1602321854'),
(361, '78', 2, '1602321920'),
(362, '63', 2, '1602321930'),
(363, '79', 2, '1602322005'),
(364, '', 0, '1602379143'),
(365, '64', 1, '1602491080'),
(366, '64', 1, '1602491088'),
(367, '65', 1, '1602491102'),
(368, '74', 1, '1602491165'),
(369, '51', 1, '1602491238'),
(370, '79', 1, '1602491257'),
(371, '78', 1, '1602517692'),
(372, '51', 2, '1602530703'),
(373, '51', 1, '1602530763'),
(374, '81', 1, '1602560093'),
(375, '63', 1, '1602560884'),
(376, '60', 1, '1602560886'),
(377, '81', 1, '1602563051'),
(378, '75', 1, '1602563085'),
(379, '81', 1, '1602571514'),
(380, '63', 1, '1602584705'),
(381, '81', 1, '1602584789'),
(382, '', 0, '1602586859'),
(383, '63', 1, '1602593844'),
(384, '60', 1, '1602593857'),
(385, '81', 1, '1602602155'),
(386, '21', 1, '1602615207'),
(387, '63', 1, '1602648584'),
(388, '60', 1, '1602648586'),
(389, '79', 1, '1602648892'),
(390, '81', 1, '1602660394'),
(391, '83', 1, '1602660402'),
(392, '83', 1, '1602660433'),
(393, '81', 1, '1602660459'),
(394, '83', 2, '1602660509'),
(395, '84', 2, '1602661085'),
(396, '84', 3, '1602661091'),
(397, '84', 2, '1602661102'),
(398, '79', 2, '1602664985'),
(399, '63', 2, '1602672591'),
(400, '2', 1, '1602677162'),
(401, '', 0, '1602681040'),
(402, '83', 1, '1602698429'),
(403, '', 0, '1602732702'),
(404, '60', 1, '1602735032'),
(405, '72', 1, '1602763210'),
(406, '71', 1, '1602763218'),
(407, '70', 1, '1602763224'),
(408, '71', 1, '1602763229'),
(409, '72', 1, '1602763232'),
(410, '71', 1, '1602763234'),
(411, '70', 1, '1602763238'),
(412, '57', 1, '1602764291'),
(413, '81', 1, '1602764299'),
(414, '75', 1, '1602772041'),
(415, '11', 2, '1602772104'),
(416, '', 0, '1602780543'),
(417, '33', 1, '1602784585'),
(418, '60', 1, '1602784599'),
(419, '63', 1, '1602784603'),
(420, '63', 1, '1602873689'),
(421, '59', 1, '1602873696'),
(422, '80', 1, '1602908362'),
(423, '80', 3, '1602918759'),
(424, '80', 1, '1602918763'),
(425, '', 0, '1602927164'),
(426, '4', 1, '1602932406'),
(427, '', 0, '1602967489'),
(428, '', 0, '1603062259'),
(429, '55', 1, '1603173862'),
(430, '49', 1, '1603173872'),
(431, '37', 1, '1603173879'),
(432, '83', 1, '1603179088'),
(433, '81', 1, '1603179098'),
(434, '8', 1, '1603179135'),
(435, '94', 3, '1603187468'),
(436, '54', 1, '1603187483'),
(437, '54', 2, '1603187503'),
(438, '54', 3, '1603187560'),
(439, '54', 3, '1603187579'),
(440, '', 0, '1603353879'),
(441, '55', 2, '1603358399'),
(442, '48', 1, '1603358407'),
(443, '38', 1, '1603429839'),
(444, '', 0, '1603570235'),
(445, '4', 1, '1603637222'),
(446, '54', 1, '1603637240'),
(447, '64', 1, '1603637313'),
(448, '63', 1, '1603637332'),
(449, '60', 1, '1603637338'),
(450, '32', 1, '1603637342'),
(451, '11', 1, '1603637352'),
(452, '2', 1, '1603637360'),
(453, '94', 1, '1603637376'),
(454, '95', 1, '1603637391'),
(455, '64', 1, '1603637394'),
(456, '54', 1, '1603637406'),
(457, '32', 1, '1603637409'),
(458, '11', 1, '1603637414'),
(459, '4', 1, '1603637416'),
(460, '4', 1, '1603637420'),
(461, '2', 1, '1603637423'),
(462, '52', 1, '1603637464'),
(463, '73', 1, '1603698626'),
(464, '11', 2, '1603698699'),
(465, '40', 1, '1603720625'),
(466, '24', 1, '1603816710'),
(467, '95', 1, '1603822302'),
(468, '75', 3, '1603822414'),
(469, '97', 1, '1604057040'),
(470, '83', 1, '1604057045'),
(471, '64', 1, '1604375503'),
(472, '44', 1, '1604487704'),
(473, '96', 1, '1604487720'),
(474, '42', 1, '1604487731'),
(475, '11', 2, '1604663947'),
(476, '95', 1, '1604728536'),
(477, '63', 1, '1604728539'),
(478, '60', 1, '1604728546'),
(479, '96', 1, '1604728563'),
(480, '81', 1, '1604974675'),
(481, '79', 1, '1604974687'),
(482, '75', 1, '1604993903'),
(483, '93', 1, '1604995047'),
(484, '64', 1, '1604995057'),
(485, '67', 1, '1605585911'),
(486, '73', 1, '1605781194'),
(487, '88', 1, '1606111669'),
(488, '80', 1, '1606111677'),
(489, '46', 1, '1606111696'),
(490, '11', 1, '1606111761'),
(491, '73', 2, '1606583056'),
(492, '51', 2, '1606826109'),
(493, '51', 3, '1606826119'),
(494, '2', 1, '1607054759'),
(495, '95', 1, '1607319210'),
(496, '98', 1, '1607366314'),
(497, '48', 2, '1607366344'),
(498, '98', 1, '1607402203'),
(499, '97', 2, '1607416776'),
(500, '98', 1, '1607416819'),
(501, '64', 1, '1607533897'),
(502, '95', 1, '1607533918'),
(503, '71', 1, '1608840833'),
(504, '70', 1, '1608840839'),
(505, '93', 3, '1608840847'),
(506, '11', 3, '1608875618'),
(507, '95', 1, '1608958968'),
(508, '44', 2, '1608959154'),
(509, '44', 1, '1608959158'),
(510, '67', 1, '1609308324'),
(511, '77', 1, '1609308348'),
(512, '98', 1, '1609308382'),
(513, '37', 1, '1609308416'),
(514, '96', 1, '1609308459'),
(515, '32', 1, '1609308470'),
(516, '42', 1, '1609308480'),
(517, '11', 1, '1609325729'),
(518, '69', 1, '1609658639'),
(519, '80', 1, '1609658643'),
(520, '67', 1, '1609658647'),
(521, '66', 1, '1609658653'),
(522, '83', 1, '1610083470'),
(523, '98', 1, '1610083516'),
(524, '26', 1, '1610083552'),
(525, '98', 2, '1610812408'),
(526, '33', 1, '1612436533'),
(527, '52', 1, '1612436556'),
(528, '64', 1, '1612436576'),
(529, '', 0, '1612786287'),
(530, '38', 1, '1613469085'),
(531, '98', 1, '1614092735'),
(532, '58', 2, '1614317919'),
(533, '14', 2, '1614330057'),
(534, '56', 2, '1614330214'),
(535, '52', 1, '1614330244'),
(536, '79', 2, '1614330356'),
(537, '79', 1, '1614330358'),
(538, '58', 3, '1615048617'),
(539, '11', 1, '1615960903'),
(540, '11', 1, '1616243910'),
(541, '55', 1, '1616557656'),
(542, '77', 1, '1616557778'),
(543, '72', 1, '1616557789'),
(544, '', 0, '1616996602'),
(545, '', 0, '1617911479'),
(546, '', 0, '1618176338'),
(547, '', 0, '1619059451'),
(548, '99', 1, '1619515033'),
(549, '96', 1, '1619515081'),
(550, '96', 1, '1619515983'),
(551, '96', 1, '1619516034'),
(552, '98', 1, '1619634246'),
(553, '', 0, '1619710204');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `created_at` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `gender`, `created_at`) VALUES
(1, 'sabsudhrega', 'admin@sabsudhrega.com', '8770131312', 1, NULL),
(2, 'sandeep', 't@t.com', '07000391902', 1, NULL),
(5, 'niteshkodle', 'nitesh@sabsudhrega.com', '8770131312', 1, NULL),
(6, 'indresh', '', '9039128010', 0, '1'),
(7, 'im', '', '9019294950', 0, '1'),
(8, 'im', '', '88989834', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 2),
(5, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sab_categories`
--
ALTER TABLE `sab_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`) USING BTREE;

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techratings`
--
ALTER TABLE `techratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userclicks`
--
ALTER TABLE `userclicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sab_categories`
--
ALTER TABLE `sab_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `techratings`
--
ALTER TABLE `techratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userclicks`
--
ALTER TABLE `userclicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
