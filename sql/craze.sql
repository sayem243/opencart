-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2018 at 02:13 AM
-- Server version: 5.6.41
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `themesbi_fashion4`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Raji', 'Mayil', '', 'test', '', 'test', '2595', 222, 3513, ''),
(2, 2, 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 99, 1503, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '3uOw3r8YEBtYTdmkXwYZNiZGgcpl39R0xKJdNgT7J9c3CqcXIUo765uT5V32FNrRpvNRj9s5hXAjRAETa90WxuINIfs6YKA3VOF6vQNo1Q9OqFTvk7NQ7vsai4UTeKkKDE6KmdI3XyxOPfJ1Waf0LcYtt15TWJwV2D0JpGqCMvrhpUrxU0RKn3gPaaRi3ODiD02ffKt4G0oeHBbWCYSIYeoIETdGHBWiEvkbm7YeUgfEnNSHwdcYxXP5sxnBM3WV', 1, '2018-08-17 15:14:37', '2018-08-17 15:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Large banner1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(116, 7, 1, 'Slider1', '', 'catalog/demo/banners/slider1.jpg', 1),
(117, 7, 1, 'Slider2', '', 'catalog/demo/banners/1-1.jpg', 2),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(118, 7, 1, 'Slider3', '', 'catalog/demo/banners/slider3.jpg', 0),
(115, 9, 1, 'Horizondal Banner', 'http://localhost/craze/index.php?route=product/category&amp;path=59_68', 'catalog/demo/banners/1370---150-1.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(9, 0, 1, '3cbd6f649da91ae334f9ebedb6', 40, 0, '[]', 1, '2018-09-17 13:23:17'),
(10, 0, 1, '3cbd6f649da91ae334f9ebedb6', 44, 0, '[]', 2, '2018-09-17 13:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2018-09-26 07:32:52'),
(20, 'catalog/demo/banners/category_banner.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2018-09-26 07:34:56'),
(67, 'catalog/demo/banners/women--clothing.jpg', 59, 1, 1, 0, 1, '2018-09-13 17:20:54', '2018-09-26 07:31:59'),
(18, 'catalog/demo/banners/Body-care.jpg', 0, 1, 0, 4, 1, '2009-01-05 21:49:15', '2018-09-26 07:32:32'),
(79, 'catalog/demo/banners/Hand-Bags1.jpg', 77, 1, 1, 0, 1, '2018-09-14 10:45:57', '2018-09-26 07:59:39'),
(69, 'catalog/demo/banners/women-slipper.jpg', 64, 1, 1, 0, 1, '2018-09-13 19:35:02', '2018-09-26 13:38:53'),
(74, 'catalog/demo/banners/women-classic-watches.jpg', 66, 0, 1, 0, 1, '2018-09-14 10:43:12', '2018-09-27 06:45:49'),
(73, 'catalog/demo/banners/women-classic-watches.jpg', 66, 1, 1, 0, 1, '2018-09-14 10:42:55', '2018-09-27 06:45:12'),
(68, 'catalog/demo/banners/Accessories.jpg', 59, 1, 1, 0, 1, '2018-09-13 18:52:02', '2018-09-26 07:28:42'),
(72, 'catalog/demo/banners/earings.jpg', 68, 1, 1, 0, 1, '2018-09-14 10:41:20', '2018-09-26 07:44:57'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2018-09-27 07:12:17'),
(46, '', 18, 1, 0, 0, 1, '2010-09-24 18:29:31', '2018-09-27 07:11:48'),
(71, 'catalog/demo/banners/Hair.jpg', 68, 1, 1, 0, 1, '2018-09-14 10:41:02', '2018-09-26 07:51:49'),
(70, 'catalog/demo/banners/women-shoes.jpg', 64, 1, 1, 0, 1, '2018-09-13 19:35:18', '2018-09-26 13:33:40'),
(77, 'catalog/demo/banners/women-bag.jpg', 59, 1, 1, 0, 1, '2018-09-14 10:45:13', '2018-09-26 07:29:09'),
(76, 'catalog/demo/banners/women-lenses1.jpg', 65, 0, 1, 0, 1, '2018-09-14 10:44:46', '2018-09-27 06:42:40'),
(75, 'catalog/demo/banners/women-lenses.jpg', 65, 1, 1, 0, 1, '2018-09-14 10:44:29', '2018-09-27 06:43:25'),
(78, 'catalog/demo/banners/Shoulder-Bags.jpg', 77, 1, 1, 0, 1, '2018-09-14 10:45:36', '2018-09-26 09:41:14'),
(59, 'catalog/demo/banners/category_banner.jpg', 0, 1, 1, 0, 1, '2018-08-30 19:04:41', '2018-09-26 07:28:32'),
(60, 'catalog/demo/banners/women-coats.jpg', 67, 1, 1, 0, 1, '2018-08-30 19:07:35', '2018-09-27 06:46:36'),
(63, 'catalog/demo/banners/women-jeans.jpg', 67, 1, 1, 0, 1, '2018-08-31 15:45:53', '2018-09-27 06:47:17'),
(64, 'catalog/demo/banners/women-shoes.jpg', 59, 1, 1, 0, 1, '2018-08-31 15:46:44', '2018-09-26 07:29:39'),
(65, 'catalog/demo/banners/women-glasses.jpg', 59, 1, 1, 0, 1, '2018-08-31 15:47:08', '2018-09-26 07:30:10'),
(66, 'catalog/demo/banners/women-watches.jpg', 59, 1, 1, 0, 1, '2018-08-31 15:47:27', '2018-09-26 07:32:23'),
(80, 'catalog/demo/banners/menclothing.jpg', 20, 0, 1, 0, 1, '2018-09-15 16:07:10', '2018-09-26 07:27:30'),
(81, 'catalog/demo/banners/men-jeans.jpg', 80, 0, 1, 0, 1, '2018-09-15 16:07:42', '2018-09-27 06:52:33'),
(82, 'catalog/demo/banners/men-shirt.jpg', 80, 0, 1, 0, 1, '2018-09-15 16:08:20', '2018-09-27 06:54:10'),
(83, 'catalog/demo/banners/men-watches.jpg', 20, 0, 1, 0, 1, '2018-09-15 16:10:26', '2018-09-26 07:28:05'),
(84, 'catalog/demo/banners/men-casual-watches.jpg', 83, 0, 1, 0, 1, '2018-09-15 16:16:32', '2018-09-27 06:55:03'),
(85, 'catalog/demo/banners/men-classic-watche.jpg', 83, 0, 1, 0, 1, '2018-09-15 16:17:03', '2018-09-27 06:55:43'),
(86, 'catalog/demo/banners/men-shoes.jpg', 20, 0, 1, 0, 1, '2018-09-15 16:18:16', '2018-09-26 07:05:04'),
(87, 'catalog/demo/banners/men-casual-shoes.jpg', 86, 0, 1, 0, 1, '2018-09-15 16:19:41', '2018-09-27 06:48:43'),
(88, 'catalog/demo/banners/men-formal-shoes.jpg', 86, 0, 1, 0, 1, '2018-09-15 16:20:19', '2018-09-27 06:49:20'),
(89, 'catalog/demo/banners/men-accessories.jpg', 20, 0, 1, 0, 1, '2018-09-15 16:21:29', '2018-09-26 07:26:57'),
(90, 'catalog/demo/banners/men-belts.jpg', 89, 0, 1, 0, 1, '2018-09-15 16:22:29', '2018-09-27 06:51:13'),
(91, 'catalog/demo/banners/men-caps.jpg', 89, 0, 1, 0, 1, '2018-09-15 16:23:31', '2018-09-27 06:51:48'),
(92, 'catalog/demo/banners/Clothing.jpg', 25, 0, 1, 0, 1, '2018-09-15 20:18:46', '2018-09-26 07:33:21'),
(93, 'catalog/demo/banners/Boy-clothes.jpg', 92, 0, 1, 0, 1, '2018-09-15 20:19:26', '2018-09-27 06:57:44'),
(94, 'catalog/demo/banners/Girl-clothes.jpg', 92, 0, 1, 0, 1, '2018-09-15 20:19:56', '2018-09-27 06:58:26'),
(95, 'catalog/demo/banners/kids-shoes1.jpg', 25, 0, 1, 0, 1, '2018-09-15 20:20:31', '2018-09-26 07:34:48'),
(96, 'catalog/demo/banners/kids-boots.jpg', 95, 0, 1, 0, 1, '2018-09-15 20:21:00', '2018-09-27 06:59:29'),
(97, 'catalog/demo/banners/kids-socks.jpg', 95, 0, 1, 0, 1, '2018-09-15 20:21:37', '2018-09-27 07:00:32'),
(98, 'catalog/demo/banners/kids-watches.jpg', 25, 0, 1, 0, 1, '2018-09-15 20:24:34', '2018-09-26 07:34:18'),
(99, 'catalog/demo/banners/Girl-watches.jpg', 98, 0, 1, 0, 1, '2018-09-15 20:25:04', '2018-09-27 07:02:56'),
(100, 'catalog/demo/banners/Boy-watches.jpg', 98, 0, 1, 0, 1, '2018-09-15 20:25:57', '2018-09-27 07:02:34'),
(101, 'catalog/demo/banners/Baby-Furniture.jpg', 25, 0, 1, 0, 1, '2018-09-15 20:28:42', '2018-09-26 07:33:00'),
(102, 'catalog/demo/banners/baby-toys.jpg', 101, 0, 1, 0, 1, '2018-09-15 20:29:52', '2018-09-27 06:57:10'),
(103, 'catalog/demo/banners/baby-bedding.jpg', 101, 0, 1, 0, 1, '2018-09-15 20:31:11', '2018-09-27 06:56:41'),
(105, '', 46, 0, 1, 0, 1, '2018-09-27 07:13:59', '2018-09-27 07:13:59'),
(106, '', 46, 0, 1, 0, 1, '2018-09-27 07:15:29', '2018-09-27 07:15:29'),
(107, '', 45, 0, 1, 0, 1, '2018-09-27 07:16:25', '2018-09-27 07:16:25'),
(108, '', 45, 0, 1, 0, 1, '2018-09-27 07:17:12', '2018-09-27 07:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(25, 1, 'Kids', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Kids', '', ''),
(20, 1, 'Men', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Men', 'Example of category description', ''),
(68, 1, 'Accessories', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(73, 1, 'Casual Watches', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Watches', '', ''),
(74, 1, 'Classic Watches', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Classic Watches', '', ''),
(76, 1, 'Lenses', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Lenses', '', ''),
(77, 1, 'Bags', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Bags', '', ''),
(18, 1, 'Body &amp; care', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Body &amp; care', '', ''),
(59, 1, 'Women', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Women', '', ''),
(60, 1, 'Coats &amp; Jackets', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Coats &amp; Jackets', '', ''),
(64, 1, 'Footwear', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Footwear', '', ''),
(65, 1, 'Glasses', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Glasses', '', ''),
(80, 1, 'Clothing', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Clothing', '', ''),
(83, 1, 'Watches', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', ''),
(86, 1, ' Shoes', '', ' Shoes', '', ''),
(92, 1, 'Clothing', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Clothing', '', ''),
(93, 1, 'Boy Clothes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Boy Clothes', '', ''),
(98, 1, 'Watches', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', ''),
(100, 1, 'Boy Watches', '', 'Boy Watches', '', ''),
(101, 1, 'Baby Furniture ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Baby Furniture ', '', ''),
(89, 1, 'Accessories', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(90, 1, 'Belts', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Belts', '', ''),
(91, 1, 'Caps', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Caps', '', ''),
(81, 1, 'Jeans', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Jeans', '', ''),
(82, 1, 'Shirt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Shirt', '', ''),
(84, 1, 'Casual Watches ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Watches ', '', ''),
(85, 1, 'Classic Watches ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Classic Watches ', '', ''),
(72, 1, 'Earings', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Earings', '', ''),
(71, 1, 'Hair Accessories ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Hair Accessories ', '', ''),
(79, 1, 'Hand Bags', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Hand Bags', '', ''),
(78, 1, 'Shoulder Bags', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Shoulder Bags', '', ''),
(70, 1, 'Shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', ''),
(69, 1, 'Slippers ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Slippers ', '', ''),
(75, 1, 'Sunglasses', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Sunglasses', '', ''),
(66, 1, 'Watches', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', ''),
(67, 1, 'Women\'s Clothing', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Women\'s Clothing', '', ''),
(63, 1, 'Jeans', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Jeans', '', ''),
(46, 1, 'Hair care', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Hair care', '', ''),
(45, 1, 'Face care', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Face care', '', ''),
(103, 1, 'Bedding &amp; Blankets', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Bedding &amp; Blankets', '', ''),
(102, 1, 'Toys', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Toys', '', ''),
(94, 1, 'Girl Clothes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Girl Clothes', '', ''),
(95, 1, 'Shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', ''),
(96, 1, 'Boots', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Boots', '', ''),
(97, 1, 'Socks', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Socks', '', ''),
(99, 1, 'Girl Watches', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Girl Watches', '', ''),
(87, 1, ' Casual shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', ' Casual shoes', '', ''),
(88, 1, 'Formal shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Formal shoes', '', ''),
(105, 1, 'Conditioner', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Conditioner', '', ''),
(106, 1, 'Shampo', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Shampo', '', ''),
(107, 1, ' Face masks', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', ' Face masks', '', ''),
(108, 1, 'Eye care', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Eye care', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(20, 20, 0),
(67, 59, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(72, 68, 1),
(73, 73, 2),
(73, 59, 0),
(74, 59, 0),
(74, 66, 1),
(72, 72, 2),
(73, 66, 1),
(65, 59, 0),
(68, 68, 1),
(68, 59, 0),
(63, 67, 1),
(60, 59, 0),
(67, 67, 1),
(72, 59, 0),
(71, 71, 2),
(71, 59, 0),
(71, 68, 1),
(70, 59, 0),
(70, 64, 1),
(70, 70, 2),
(69, 69, 2),
(69, 59, 0),
(69, 64, 1),
(79, 79, 2),
(79, 77, 1),
(79, 59, 0),
(78, 78, 2),
(78, 77, 1),
(78, 59, 0),
(77, 77, 1),
(77, 59, 0),
(76, 76, 2),
(76, 59, 0),
(76, 65, 1),
(75, 75, 2),
(75, 65, 1),
(74, 74, 2),
(59, 59, 0),
(60, 67, 1),
(60, 60, 2),
(64, 59, 0),
(63, 63, 2),
(63, 59, 0),
(65, 65, 1),
(75, 59, 0),
(64, 64, 1),
(66, 59, 0),
(66, 66, 1),
(80, 20, 0),
(80, 80, 1),
(81, 20, 0),
(81, 80, 1),
(81, 81, 2),
(82, 20, 0),
(82, 80, 1),
(82, 82, 2),
(83, 83, 1),
(84, 83, 1),
(84, 84, 2),
(85, 83, 1),
(85, 85, 2),
(86, 20, 0),
(86, 86, 1),
(83, 20, 0),
(84, 20, 0),
(85, 20, 0),
(87, 20, 0),
(87, 86, 1),
(87, 87, 2),
(88, 20, 0),
(88, 86, 1),
(88, 88, 2),
(89, 20, 0),
(89, 89, 1),
(90, 20, 0),
(90, 89, 1),
(90, 90, 2),
(91, 20, 0),
(91, 89, 1),
(91, 91, 2),
(92, 25, 0),
(92, 92, 1),
(93, 92, 1),
(93, 25, 0),
(93, 93, 2),
(94, 25, 0),
(94, 92, 1),
(94, 94, 2),
(95, 25, 0),
(95, 95, 1),
(96, 25, 0),
(96, 95, 1),
(96, 96, 2),
(97, 25, 0),
(97, 95, 1),
(97, 97, 2),
(98, 25, 0),
(98, 98, 1),
(99, 25, 0),
(99, 98, 1),
(99, 99, 2),
(100, 98, 1),
(100, 25, 0),
(100, 100, 2),
(101, 25, 0),
(101, 101, 1),
(102, 25, 0),
(102, 101, 1),
(102, 102, 2),
(103, 25, 0),
(103, 101, 1),
(103, 103, 2),
(105, 18, 0),
(105, 46, 1),
(105, 105, 2),
(106, 18, 0),
(106, 46, 1),
(106, 106, 2),
(107, 18, 0),
(107, 45, 1),
(107, 107, 2),
(108, 18, 0),
(108, 45, 1),
(108, 108, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(25, 0, 0),
(20, 0, 0),
(67, 0, 0),
(59, 0, 0),
(60, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(18, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(46, 0, 0),
(45, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(25, 0),
(45, 0),
(46, 0),
(59, 0),
(60, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2018-10-04 05:35:36'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'Raji', 'Mayil', 'rajeswari@exlcart.com', '1234567890', '', '1fd7840f2b4e31e0344693027156c06d97b1900f', '7SCrq20Dt', NULL, NULL, 0, 1, '', '49.205.141.231', 1, 0, '', '', '2018-08-23 18:45:41'),
(2, 1, 0, 1, 'venkatesan', 'rajagopal', 'info@exlcart.com', '+918608678702', '', '2720545f936de66a702566511324fefd658ffd2f', 'Xr80CAWhm', NULL, NULL, 0, 2, '', '49.205.135.73', 1, 0, '', '', '2018-09-18 07:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2018-08-23 18:45:43'),
(2, 2, '49.205.141.208', '2018-09-18 07:26:51'),
(3, 2, '49.205.128.244', '2018-09-19 12:55:39'),
(4, 1, '49.205.154.240', '2018-09-20 13:28:03'),
(5, 1, '49.205.141.231', '2018-09-21 10:05:58'),
(6, 2, '49.205.141.231', '2018-09-21 12:59:17'),
(7, 2, '49.205.138.40', '2018-09-25 07:04:46'),
(8, 2, '49.205.141.41', '2018-10-01 05:17:11'),
(9, 2, '66.85.131.89', '2018-10-01 07:17:55'),
(10, 2, '49.205.135.73', '2018-10-01 08:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'rajeswari1@exlcart.com', '::1', 1, '2018-08-22 05:59:50', '2018-08-22 05:59:50'),
(4, 'rajeswarivelumany@gmail.com', '::1', 1, '2018-09-17 07:08:15', '2018-09-17 07:08:15'),
(5, 'demo', '49.205.141.41', 2, '2018-10-01 07:24:15', '2018-10-01 07:24:21'),
(6, 'rajeswari@exlcat.com', '49.205.141.41', 2, '2018-10-01 07:35:46', '2018-10-01 07:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 41, '2018-09-03 18:05:12'),
(1, 40, '2018-09-20 13:28:03'),
(2, 44, '2018-10-01 07:36:15'),
(2, 40, '2018-10-01 07:07:56'),
(2, 99, '2018-10-01 07:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'theme', 'craze'),
(43, 'module', 'html'),
(46, 'module', 'manufacturers'),
(47, 'module', 'horizondal_tab'),
(48, 'module', 'horizondal_category'),
(49, 'module', 'hot_deals'),
(58, 'module', 'category_banners'),
(55, 'module', 'instagram'),
(56, 'module', 'mostly_viewed'),
(57, 'module', 'lastview'),
(59, 'module', 'category_slide');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;h3&gt;What is Lorem Ipsum?&lt;/h3&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Why do we use it?&lt;/h3&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where does it come from?&lt;/h3&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;\r\n\r\n&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where can I get some?&lt;/h3&gt;\r\n&lt;p&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;h3&gt;What is Lorem Ipsum?&lt;/h3&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Why do we use it?&lt;/h3&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where does it come from?&lt;/h3&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;\r\n\r\n&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where can I get some?&lt;/h3&gt;\r\n&lt;p&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;', 'Terms &amp; Conditions', '', ''),
(6, 1, 'Delivery Information', '&lt;h3&gt;What is Lorem Ipsum?&lt;/h3&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Why do we use it?&lt;/h3&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where does it come from?&lt;/h3&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;\r\n\r\n&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where can I get some?&lt;/h3&gt;\r\n&lt;p&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;', 'Delivery Information', '', ''),
(3, 1, 'Privacy Policy', '&lt;h3&gt;What is Lorem Ipsum?&lt;/h3&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Why do we use it?&lt;/h3&gt;\r\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where does it come from?&lt;/h3&gt;\r\n&lt;p&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;\r\n\r\n&lt;p&gt;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Where can I get some?&lt;/h3&gt;\r\n&lt;p&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;', 'Privacy Policy', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(3, 0, 0),
(5, 0, 0),
(6, 0, 0),
(4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(199, 2, 'lastview.45', 'content_bottom', 1),
(295, 3, 'hot_deals.52', 'column_left', 2),
(288, 1, 'horizondal_category.51', 'content_bottom', 6),
(289, 1, 'instagram.43', 'content_bottom', 7),
(198, 2, 'mostly_viewed.44', 'content_bottom', 0),
(200, 2, 'hot_deals.39', 'column_right', 0),
(286, 1, 'horizondal_category.38', 'content_bottom', 4),
(287, 1, 'horizondal_category.41', 'content_bottom', 5),
(285, 1, 'horizondal_tab.36', 'content_bottom', 3),
(284, 1, 'category_banners.48', 'content_bottom', 2),
(283, 1, 'banner.50', 'content_bottom', 1),
(282, 1, 'category_slide.49', 'content_bottom', 0),
(281, 1, 'html.32', 'content_top', 1),
(280, 1, 'slideshow.27', 'content_top', 0),
(290, 1, 'manufacturers', 'content_bottom', 8),
(294, 3, 'category', 'column_left', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(90, 3, 0, 'product/category'),
(88, 1, 0, 'common/home'),
(77, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'ergobag', 'catalog/demo/manufacturer/b-5.png', 0),
(6, 'levis', 'catalog/demo/manufacturer/b-6.png', 0),
(7, 'Fendi', 'catalog/demo/manufacturer/b-3.jpg', 0),
(8, 'diesel', 'catalog/demo/manufacturer/b-1.png', 0),
(9, 'Puma Time', 'catalog/demo/manufacturer/b-2.png', 0),
(10, 'adidas', 'catalog/demo/manufacturer/b-7.jpg', 0),
(11, 'nike', 'catalog/demo/manufacturer/b-8.png', 0),
(12, 'reebok', 'catalog/demo/manufacturer/b-9.png', 0),
(13, 'ray-ban', 'catalog/demo/manufacturer/b-10.png', 0),
(14, 'persol', 'catalog/demo/manufacturer/b-11.png', 0),
(15, 'warrior', 'catalog/demo/manufacturer/b-12.jpg', 0),
(16, 'V belts', 'catalog/demo/manufacturer/b-13.png', 0),
(17, 'zephyr', 'catalog/demo/manufacturer/b-14.jpg', 0),
(18, 'cappelllini', 'catalog/demo/manufacturer/b-15.png', 0),
(19, 'lacoste', 'catalog/demo/manufacturer/b-16.png', 0),
(20, 'fila', 'catalog/demo/manufacturer/b-17.jpg', 0),
(21, 'CK', 'catalog/demo/manufacturer/b-18.png', 0),
(22, 'otto', 'catalog/demo/manufacturer/b-19.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1950\",\"height\":\"905\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Our Features', 'html', '{\"name\":\"Our Features\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;featured-content clearfix&quot;&gt;&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;ul class=&quot;list-unstyled clearfix pull-left&quot;&gt;\\r\\n  &lt;li class=&quot;clearfix&quot;&gt;\\r\\n    &lt;div class=&quot;icon&quot;&gt;&lt;!--&lt;i class=&quot;fa fa-plane&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;--&gt;&lt;img src=&quot;image\\/custom\\/shipping.png&quot; alt=&quot;shipping&quot;&gt;&lt;\\/div&gt;\\r\\n    &lt;div class=&quot;content-wrap&quot;&gt;\\r\\n      &lt;b class=&quot;&quot;&gt;Free Shipping&lt;\\/b&gt;&lt;br&gt;\\r\\n      &lt;span&gt;From $99.00&lt;\\/span&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/li&gt;\\r\\n  &lt;li class=&quot;clearfix&quot;&gt;\\r\\n    &lt;div class=&quot;icon&quot;&gt;&lt;!--&lt;i class=&quot;fa fa-plane&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;--&gt;&lt;img src=&quot;image\\/custom\\/money.png&quot; alt=&quot;money&quot;&gt;&lt;\\/div&gt;\\r\\n    &lt;div class=&quot;content-wrap&quot;&gt;\\r\\n      &lt;b class=&quot;&quot;&gt;Money Guarantee&lt;\\/b&gt;&lt;br&gt;\\r\\n      &lt;span&gt;30 days back&lt;\\/span&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/li&gt;\\r\\n  &lt;li class=&quot;clearfix&quot;&gt;\\r\\n    &lt;div class=&quot;icon&quot;&gt;&lt;!--&lt;i class=&quot;fa fa-plane&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;--&gt;&lt;img src=&quot;image\\/custom\\/payment.png&quot; alt=&quot;payment&quot;&gt;&lt;\\/div&gt;\\r\\n    &lt;div class=&quot;content-wrap&quot;&gt;\\r\\n      &lt;b class=&quot;&quot;&gt;Payment Method&lt;\\/b&gt;&lt;br&gt;\\r\\n      &lt;span&gt;Secure System&lt;\\/span&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/li&gt;\\r\\n  &lt;li class=&quot;clearfix&quot;&gt;\\r\\n    &lt;div class=&quot;icon&quot;&gt;&lt;!--&lt;i class=&quot;fa fa-plane&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;--&gt;&lt;img src=&quot;image\\/custom\\/support.png&quot; alt=&quot;support&quot;&gt;&lt;\\/div&gt;\\r\\n    &lt;div class=&quot;content-wrap&quot;&gt;\\r\\n      &lt;b class=&quot;&quot;&gt;Online Support&lt;\\/b&gt;&lt;br&gt;\\r\\n      &lt;span&gt;24 hours on day&lt;\\/span&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/li&gt;\\r\\n  &lt;li class=&quot;clearfix&quot;&gt;\\r\\n    &lt;div class=&quot;icon&quot;&gt;&lt;!--&lt;i class=&quot;fa fa-plane&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;--&gt;&lt;img src=&quot;image\\/custom\\/safe.png&quot; alt=&quot;safe&quot;&gt;&lt;\\/div&gt;\\r\\n    &lt;div class=&quot;content-wrap&quot;&gt;\\r\\n      &lt;b class=&quot;&quot;&gt;100% Safe&lt;\\/b&gt;&lt;br&gt;\\r\\n      &lt;span&gt;Secure shopping&lt;\\/span&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n  &lt;\\/div&gt;&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(36, 'Horizondal Tabs', 'horizondal_tab', '{\"name\":\"Horizondal Tabs\",\"featured_products\":\"1\",\"latest_products\":\"1\",\"bestseller_products\":\"1\",\"special_products\":\"1\",\"product_name\":\"\",\"product\":[\"28\",\"44\",\"47\",\"40\",\"48\",\"86\",\"55\",\"84\",\"93\"],\"limit\":\"20\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}'),
(38, 'Women\'s Collection', 'horizondal_category', '{\"name\":\"Women\'s Collection\",\"category_id\":\"60\",\"image\":\"catalog\\/demo\\/banners\\/women.jpg\",\"limit\":\"5\",\"width\":\"300\",\"height\":\"300\",\"bgcolor\":\"#FCD54C\",\"status\":\"1\"}'),
(39, 'Hot Deals', 'hot_deals', '{\"name\":\"Hot Deals\",\"product_name\":\"\",\"product\":[\"44\",\"28\"],\"limit\":\"2\",\"width\":\"300\",\"height\":\"300\",\"position\":\"0\",\"status\":\"1\"}'),
(41, 'Men\'s Collections', 'horizondal_category', '{\"name\":\"Men\'s Collections\",\"category_id\":\"82\",\"image\":\"catalog\\/demo\\/banners\\/men310-465.jpg\",\"limit\":\"5\",\"width\":\"300\",\"height\":\"300\",\"bgcolor\":\"#8199F3\",\"status\":\"1\"}'),
(43, 'Instagram Feed', 'instagram', '{\"name\":\"Instagram Feed\",\"user_id\":\"7813168819\",\"site_key\":\"7813168819.0912694.3160618abad945a0a0b69771ddf03065\",\"status\":\"1\"}'),
(44, 'Customer also Viewed', 'mostly_viewed', '{\"name\":\"Customer also Viewed\",\"product_name\":\"\",\"product\":[\"42\",\"30\",\"47\",\"28\",\"40\",\"48\",\"36\",\"34\"],\"limit\":\"5\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}'),
(45, 'Recent History', 'lastview', '{\"name\":\"Recent History\",\"limit\":\"5\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}'),
(48, 'Category Banners', 'category_banners', '{\"name\":\"Category Banners\",\"status\":\"1\",\"main_banner_category_id\":\"59\",\"image_main_banner\":\"catalog\\/demo\\/banners\\/main-banner.jpg\",\"sub_banner1_category_id\":\"20\",\"image_sub_banner1\":\"catalog\\/demo\\/banners\\/men.jpg\",\"sub_banner2_category_id\":\"74\",\"image_sub_banner2\":\"catalog\\/demo\\/banners\\/watches.jpg\",\"sub_banner3_category_id\":\"70\",\"image_sub_banner3\":\"catalog\\/demo\\/banners\\/sunglasses.jpg\",\"sub_banner4_category_id\":\"63\",\"image_sub_banner4\":\"catalog\\/demo\\/banners\\/Womens.jpg\"}'),
(49, 'Category Slider', 'category_slide', '{\"name\":\"Category Slider\",\"limit\":\"5\",\"width\":\"320\",\"height\":\"200\",\"status\":\"1\",\"image_59\":\"catalog\\/demo\\/banners\\/c1.jpg\",\"image_20\":\"catalog\\/demo\\/banners\\/c2.jpg\",\"image_25\":\"catalog\\/demo\\/banners\\/c3-2.jpg\",\"image_18\":\"catalog\\/demo\\/banners\\/c5.png\"}'),
(50, 'Large Banner1', 'banner', '{\"name\":\"Large Banner1\",\"banner_id\":\"9\",\"width\":\"1370\",\"height\":\"150\",\"status\":\"1\"}'),
(51, 'Kid\'s Collections', 'horizondal_category', '{\"name\":\"Kid\'s Collections\",\"category_id\":\"94\",\"image\":\"catalog\\/demo\\/banners\\/kids-310-465.jpg\",\"limit\":\"5\",\"width\":\"300\",\"height\":\"300\",\"bgcolor\":\"#1FBDA5\",\"status\":\"1\"}'),
(52, 'Featured', 'hot_deals', '{\"name\":\"Featured\",\"product_name\":\"\",\"product\":[\"57\",\"81\",\"98\"],\"limit\":\"3\",\"width\":\"150\",\"height\":\"150\",\"position\":\"0\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2018-00', 0, 'Craze', 'http://localhost/crazenew/', 1, 1, 'Raji', 'Mayil', 'rajeswari@exlcart.com', '1234567890', '', '', 'Raji', 'Mayil', '', 'test', '', 'test', '2595', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Raji', 'Mayil', '', 'test', '', 'test', '2595', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '249.6000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'en-US,en;q=0.9', '2018-09-03 19:23:50', '2018-09-03 19:23:59'),
(2, 0, 'INV-2018-00', 0, 'Craze', 'http://localhost/crazenew/', 1, 1, 'Raji', 'Mayil', 'rajeswari@exlcart.com', '1234567890', '', '', 'Raji', 'Mayil', '', 'test', '', 'test', '2595', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Raji', 'Mayil', '', 'test', '', 'test', '2595', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1330.8000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'en-US,en;q=0.9', '2018-09-12 19:47:37', '2018-09-12 19:47:45'),
(3, 0, 'INV-2018-00', 0, 'Craze', 'http://fashion4.themesbin.com/', 2, 1, 'venkatesan', 'rajagopal', 'info@exlcart.com', '+918608678702', '', '', 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '461.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '49.205.141.208', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'en-US,en;q=0.9', '2018-09-18 07:27:02', '2018-09-18 07:27:04'),
(4, 0, 'INV-2018-00', 0, 'Craze', 'http://fashion4.themesbin.com/', 2, 1, 'venkatesan', 'rajagopal', 'info@exlcart.com', '+918608678702', '', '', 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '85.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '49.205.141.41', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'en-US,en;q=0.9', '2018-10-01 06:49:49', '2018-10-01 06:49:49'),
(5, 0, 'INV-2018-00', 0, 'Craze', 'http://fashion4.themesbin.com/', 2, 1, 'venkatesan', 'rajagopal', 'info@exlcart.com', '+918608678702', '', '', 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Cash On Delivery', 'cod', 'venkatesan', 'rajagopal', '', '77, Marutha nagar main road,', '', 'coimbatore', '641041', 'India', 99, 'Tamil Nadu', 1503, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1644.0000', 1, 0, '0.0000', 0, '', 1, 3, 'EUR', '0.78460002', '49.205.141.41', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'en-US,en;q=0.9', '2018-10-01 07:37:33', '2018-10-01 07:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2018-09-03 19:23:55'),
(2, 1, 1, 0, '', '2018-09-03 19:23:59'),
(3, 2, 1, 0, '', '2018-09-12 19:47:41'),
(4, 2, 1, 0, '', '2018-09-12 19:47:45'),
(5, 3, 1, 0, '', '2018-09-18 07:27:04'),
(6, 5, 1, 0, '', '2018-10-01 07:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 4, 5, 226, 16, 'Select', 'Blue', 'select'),
(2, 5, 6, 226, 16, 'Select', 'Blue', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 41, 'iMac', 'Product 14', 2, '99.0000', '198.0000', '21.8000', 0),
(2, 2, 41, 'iMac', 'Product 14', 1, '99.0000', '99.0000', '21.8000', 0),
(3, 2, 44, 'MacBook Air', 'Product 17', 1, '1000.0000', '1000.0000', '202.0000', 700),
(4, 3, 99, ' Girls Cotton Polka Dot', ' Girls Cotton', 1, '456.0000', '456.0000', '0.0000', 0),
(5, 4, 30, 'Professional Hair Dryer ', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(6, 5, 30, 'Professional Hair Dryer ', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(7, 5, 32, 'Artificial Leather Backpack', 'Product 5', 1, '100.0000', '100.0000', '0.0000', 0),
(8, 5, 44, 'Women\'s Sling Bag (Brown)', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700),
(9, 5, 116, ' Short Jacket ', ' Short Jacket ', 1, '213.0000', '213.0000', '0.0000', 0),
(10, 5, 121, 'Face Cover Mask', 'Face Cover Mask', 1, '246.0000', '246.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '198.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '6.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '40.6000', 5),
(5, 1, 'total', 'Total', '249.6000', 9),
(6, 2, 'sub_total', 'Sub-Total', '1099.0000', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'tax', 'Eco Tax (-2.00)', '6.0000', 5),
(9, 2, 'tax', 'VAT (20%)', '220.8000', 5),
(10, 2, 'total', 'Total', '1330.8000', 9),
(11, 3, 'sub_total', 'Sub-Total', '456.0000', 1),
(12, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(13, 3, 'total', 'Total', '461.0000', 9),
(14, 4, 'sub_total', 'Sub-Total', '80.0000', 1),
(15, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(16, 4, 'total', 'Total', '85.0000', 9),
(17, 5, 'sub_total', 'Sub-Total', '1639.0000', 1),
(18, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(19, 5, 'total', 'Total', '1644.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/product/4-1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 54, '2009-02-03 16:06:50', '2018-09-28 10:47:23'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/15-1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 34, '2009-02-03 16:42:17', '2018-09-14 17:03:06'),
(30, 'Product 3', '', '', '', '', '', '', '', 6, 6, 'catalog/demo/product/2-1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 35, '2009-02-03 16:59:00', '2018-09-14 15:29:01'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/14-1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 35, '2009-02-03 17:00:10', '2018-10-03 07:54:17'),
(32, 'Product 5', '', '', '', '', '', '', '', 998, 6, 'catalog/demo/product/10-1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2009-02-03 17:07:26', '2018-09-14 16:23:14'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/18-1.jpg', 14, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 39, '2009-02-03 17:08:31', '2018-09-17 13:31:42'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/9-1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2018-09-14 16:18:41'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/16-1.jpg', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 39, '2009-02-03 18:08:31', '2018-09-14 17:11:19'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/product/8-1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 4, '2009-02-03 18:09:19', '2018-09-14 16:13:17'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/product/6-1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 24, '2009-02-03 21:07:12', '2018-10-03 07:52:34'),
(41, 'Product 14', '', '', '', '', '', '', '', 974, 5, 'catalog/demo/product/5-1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 462, '2009-02-03 21:07:26', '2018-09-14 15:50:33'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/product/1-1.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 67, '2009-02-03 21:07:37', '2018-09-17 13:28:16'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/product/11-1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 21, '2009-02-03 21:07:49', '2018-10-03 07:53:08'),
(44, 'Product 17', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/product/12-1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 52, '2009-02-03 21:08:00', '2018-09-14 16:40:48'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/product/13-1.jpg', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 37, '2009-02-03 21:08:17', '2018-09-27 08:13:46'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/22-1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 27, '2009-02-03 21:08:29', '2018-09-17 13:32:59'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/3-1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 81, '2009-02-03 21:08:40', '2018-10-03 13:33:39'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/product/7-1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 3, '2009-02-08 17:21:51', '2018-09-14 16:04:29'),
(49, 'SAM1', '', '', '', '', '', '', '', 100, 8, 'catalog/demo/product/17-1.jpg', 13, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 181, '2011-04-26 08:57:34', '2018-09-17 13:32:27'),
(50, 'Running Shoes', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/19-1.jpg', 19, 1, '999.0000', 0, 0, '2018-09-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 36, '2018-09-14 17:45:33', '2018-09-17 13:27:05'),
(51, 'Women\'s Canvas Sneaker', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/20-1.jpg', 20, 1, '458.0000', 0, 0, '2018-09-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 43, '2018-09-14 17:48:14', '2018-09-17 13:26:11'),
(52, ' Perfect Stylish White Gold', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/21-1.jpg', 20, 1, '753.0000', 0, 0, '2018-09-14', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 41, '2018-09-14 18:03:45', '2018-09-17 13:25:39'),
(53, ' Stylish Flat Slippers', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/23-1.jpg', 0, 1, '482.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 12, '2018-09-15 11:02:56', '2018-09-15 11:02:56'),
(54, ' Bellies', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/24-1.jpg', 0, 1, '757.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 10, '2018-09-15 11:36:28', '2018-09-15 11:36:28'),
(55, 'Analog Rose Gold Dial ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/25-1.jpg', 0, 1, '785.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 34, '2018-09-15 11:42:36', '2018-09-15 11:42:36'),
(56, 'Analog Blue Dial ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/26-1.jpg', 0, 1, '741.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 31, '2018-09-15 11:49:19', '2018-10-03 07:54:29'),
(57, 'Multicolor', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/27-1.jpg', 21, 1, '452.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 30, '2018-09-15 11:53:45', '2018-10-03 07:49:48'),
(58, ' Casual Gold', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/28-1.jpg', 21, 1, '429.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-15 12:10:43', '2018-09-17 13:24:57'),
(59, 'Women\'s Watch ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/29-1.jpg', 11, 1, '426.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-09-15 12:19:57', '2018-10-03 07:52:22'),
(60, 'Fashion Casual Blue ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/30-1.jpg', 0, 1, '851.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-09-15 12:25:58', '2018-09-15 12:25:58'),
(61, 'Warm Coats', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/31-1.jpg', 0, 1, '751.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 13, '2018-09-15 12:53:31', '2018-10-03 07:57:58'),
(62, 'Leather', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/32-1.jpg', 0, 1, '746.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 121, '2018-09-15 13:03:02', '2018-10-04 05:23:28'),
(63, ' Winter Coats ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/33-1.jpg', 0, 1, '784.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-15 13:12:52', '2018-10-03 07:53:49'),
(64, 'Grey Casual Denim', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/34-1.jpg', 0, 1, '846.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-15 13:21:27', '2018-10-03 07:56:00'),
(65, 'Casual Slim fit ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/35-1.jpg', 0, 1, '825.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-15 13:26:35', '2018-10-03 07:55:24'),
(66, ' Skinny Fit Jeans', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/36-1.jpg', 0, 1, '826.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 21, '2018-09-15 13:35:14', '2018-10-03 07:53:59'),
(67, 'Glen Slim fit Jeans', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/37-1.jpg', 0, 1, '852.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 27, '2018-09-15 16:04:22', '2018-10-03 07:56:14'),
(68, 'Men\'s Sneakers', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/38-1.jpg', 18, 1, '742.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-15 16:32:27', '2018-09-17 13:28:56'),
(69, ' Casual Shoes', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/39-3.jpg', 18, 1, '851.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 5, '2018-09-15 16:38:36', '2018-09-17 13:28:29'),
(70, 'Casual-Shoes ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/40-5.jpg', 0, 1, '800.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-09-15 16:47:04', '2018-09-17 13:33:33'),
(71, 'Loafers', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/41-1.jpg', 18, 1, '541.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-15 17:01:27', '2018-09-17 13:28:47'),
(72, ' Party Formal Shoes', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/42-1.jpg', 0, 1, '888.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 9, '2018-09-15 17:16:58', '2018-10-03 07:53:27'),
(73, 'Leather', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/43-1.jpg', 19, 1, '879.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-09-15 17:24:47', '2018-09-17 13:27:23'),
(74, 'Slim Fit', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/44-1.jpg', 0, 1, '486.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 24, '2018-09-15 17:30:27', '2018-10-03 07:57:21'),
(75, 'Fit Jeans', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/45-2.jpg', 0, 1, '847.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 23, '2018-09-15 17:35:42', '2018-10-03 07:55:49'),
(76, 'Slim Fit', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/46-1.jpg', 0, 1, '963.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 48, '2018-09-15 17:44:16', '2018-10-03 07:57:10'),
(77, 'Casual Shirt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/47-1.jpg', 22, 1, '953.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 41, '2018-09-15 17:50:24', '2018-10-03 07:56:48'),
(78, 'Sleeve Shirt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/48-1.jpg', 22, 1, '524.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 46, '2018-09-15 17:56:02', '2018-10-03 07:56:59'),
(79, 'test', '', '', '', '', '', '', '', 1, 6, 'catalog/demo/product/profile.jpg', 0, 1, '0.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2018-09-15 18:12:36', '2018-09-15 18:12:36'),
(80, 'Casual Belt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/49-1.jpg', 0, 1, '874.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 30, '2018-09-15 18:28:04', '2018-09-15 18:28:59'),
(81, 'Buckle-belt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/50-1.jpg', 15, 1, '246.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 49, '2018-09-15 18:36:02', '2018-10-03 07:51:34'),
(82, 'Casual  Belt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/51-1.jpg', 16, 1, '213.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 38, '2018-09-15 18:45:59', '2018-09-17 13:30:57'),
(83, ' Skull Cap', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/52-1.jpg', 17, 1, '645.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 61, '2018-09-15 18:47:59', '2018-09-17 13:30:03'),
(84, 'Beanie Cap ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/53-1.jpg', 17, 1, '354.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 51, '2018-09-15 19:04:29', '2018-09-17 13:30:29'),
(85, 'Snapback Cap ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/54-1.jpg', 17, 1, '411.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 59, '2018-09-15 19:10:16', '2018-09-17 13:29:45'),
(86, ' Blue ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/55-1.jpg', 0, 1, '624.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 13, '2018-09-15 19:16:10', '2018-09-15 19:16:10'),
(87, 'Watch 2 Classic ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/56-1.jpg', 21, 1, '417.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2018-09-15 19:28:37', '2018-09-17 13:25:08'),
(88, ' Dial Men\'s Watch', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/57-1.jpg', 8, 1, '823.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 13, '2018-09-15 19:36:10', '2018-10-03 07:52:08'),
(89, 'Analog-Digital Black', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/58-1.jpg', 0, 1, '591.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 19, '2018-09-15 19:45:15', '2018-09-15 19:45:15'),
(90, 'Neo Analog Black Dial', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/59-1.jpg', 21, 1, '777.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 20, '2018-09-15 19:50:10', '2018-09-17 13:24:36'),
(91, 'Blue', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/60-1.jpg', 0, 1, '874.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-15 20:05:50', '2018-09-15 20:05:50'),
(92, 'Sunshine', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/61-1.jpg', 0, 1, '222.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 11, '2018-09-15 20:37:53', '2018-09-15 20:37:53'),
(93, ' Play Baby Bed ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/62-1.jpg', 0, 1, '244.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 9, '2018-09-15 20:41:42', '2018-09-15 20:41:42'),
(94, 'Velvet Baby Bedding', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/63-1.jpg', 0, 1, '121.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 14, '2018-09-15 21:04:11', '2018-09-15 21:04:11'),
(95, 'Car', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/64-1.jpg', 0, 1, '876.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 8, '2018-09-15 21:15:02', '2018-09-15 21:15:02'),
(96, 'Stacking ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/65-1.jpg', 0, 1, '499.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-09-15 21:22:43', '2018-09-15 21:22:43'),
(97, 'Talking Tom Cat', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/66-.jpg', 0, 1, '879.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 11, '2018-09-15 21:28:05', '2018-09-15 21:28:05'),
(98, ' Boys\' Quilted Regular Fit ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/67-1.jpg', 22, 1, '854.0000', 0, 0, '2018-09-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 23, '2018-09-15 21:37:16', '2018-10-03 07:51:46'),
(99, ' Girls Cotton', '', '', '', '', '', '', '', 99, 6, 'catalog/demo/product/68-1.jpg', 0, 1, '456.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 14, '2018-09-17 09:27:41', '2018-10-03 07:52:46'),
(100, 'Stories', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/69-1.jpg', 0, 1, '854.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-17 09:37:06', '2018-10-03 07:57:35'),
(101, 'United Baby Boys\' Shirt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/70-1.jpg', 0, 1, '879.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 18, '2018-09-17 09:41:02', '2018-10-03 07:57:48'),
(102, 'Knee-Long Dress', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/71-1.jpg', 0, 1, '254.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 9, '2018-09-17 09:44:47', '2018-10-03 07:56:26'),
(103, ' Girls\' T-Shirt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/72-1.jpg', 0, 1, '542.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-17 09:50:25', '2018-10-03 07:52:56'),
(104, 'Boy\'s Lofern Smart', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/73-1.jpg', 0, 1, '754.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-17 09:56:29', '2018-09-17 09:56:29'),
(105, 'Zig Zag Pie Booties', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/74-1.jpg', 20, 1, '365.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-17 10:00:53', '2018-09-17 13:26:27'),
(106, 'Angelina Ballerinas', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/75-1.jpg', 0, 1, '542.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2018-09-17 10:05:53', '2018-09-17 10:05:53'),
(107, 'Socks Baby-Girls ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/76-1.jpg', 0, 1, '542.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-17 10:10:58', '2018-09-17 10:10:58'),
(108, 'Product 15', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/77-1.jpg', 19, 1, '244.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-17 10:15:06', '2018-09-17 13:26:56'),
(109, 'Baby Infant Soft ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/78-1.jpg', 0, 1, '621.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-17 10:18:33', '2018-09-17 10:18:33'),
(110, 'Analog White Dial', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/79-1.jpg', 0, 1, '523.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 23, '2018-09-17 10:26:10', '2018-09-17 10:26:10'),
(111, 'White Dial Boy\'s Watch ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/80-1.jpg', 0, 1, '123.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 23, '2018-09-17 10:31:36', '2018-09-17 10:31:36'),
(112, 'Projector Digital ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/81-1.jpg', 0, 1, '745.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 18, '2018-09-17 10:35:09', '2018-09-17 10:35:09'),
(113, 'Analog Silver Dial ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/82-1.jpg', 0, 1, '632.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2018-09-17 10:43:31', '2018-09-17 10:43:31'),
(114, 'Digital Grey Dial', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/83-1.jpg', 0, 1, '631.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 24, '2018-09-17 10:48:39', '2018-09-17 10:48:39'),
(115, 'Dial LCD Boy\'s Watch', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/84-1.jpg', 0, 1, '971.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 25, '2018-09-17 10:52:17', '2018-09-17 10:52:17'),
(116, ' Short Jacket ', '', '', '', '', '', '', '', 99, 6, 'catalog/demo/product/85-1.jpg', 0, 1, '213.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 22, '2018-09-17 12:58:58', '2018-10-03 07:53:38'),
(117, 'Cotton Oxford Shirt', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/86-1.jpg', 22, 1, '754.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 42, '2018-09-17 13:07:44', '2018-10-03 07:55:35'),
(118, 'Baby Girls Net Frock Dress', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/87-1.jpg', 0, 1, '542.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 11, '2018-09-17 13:13:44', '2018-10-03 07:55:13'),
(119, 'Face Masks ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/88-1.jpg', 0, 1, '852.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-27 07:32:29', '2018-10-03 07:59:47'),
(120, 'Dry Skin', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/89-1.jpg', 0, 1, '846.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-09-27 07:41:04', '2018-10-03 07:59:35'),
(121, 'Face Cover Mask', '', '', '', '', '', '', '', 99, 6, 'catalog/demo/product/90-1.jpg', 0, 1, '246.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2018-09-27 07:48:11', '2018-10-03 07:59:25'),
(122, 'Cool Eyes', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/91-1.jpg', 0, 1, '753.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2018-09-27 07:53:53', '2018-09-27 07:54:27'),
(123, 'Eyebrows', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/92-4.jpg', 0, 1, '741.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-09-27 08:08:12', '2018-10-03 07:59:13'),
(124, 'Defense Conditioner, ', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/93-1.jpg', 0, 1, '572.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 4, '2018-09-27 08:20:55', '2018-10-03 08:00:10'),
(125, 'Strong-Hair-Conditioner', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/94-1.jpg', 0, 1, '213.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-27 08:31:46', '2018-09-27 08:31:46'),
(126, ' Softness and Shine', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/95.jpg', 0, 1, '143.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2018-09-27 11:03:00', '2018-10-03 07:51:58'),
(127, 'Hair Fall Shampoo', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/96-1.jpg', 0, 1, '542.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-27 11:11:27', '2018-10-03 08:00:20'),
(128, 'Stressed Hair', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/97-1.jpg', 0, 1, '421.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2018-09-27 11:17:49', '2018-09-27 11:17:49'),
(129, 'Revitalizing Shampoo', '', '', '', '', '', '', '', 100, 6, 'catalog/demo/product/98-1.jpg', 0, 1, '414.0000', 0, 0, '2018-09-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2018-09-27 11:23:25', '2018-09-27 11:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Fashion Classic Sunglasses', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '', 'Fashion Classic Sunglasses', '', ''),
(48, 1, 'Women\'s Stylish PU Hand Bag', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Women\'s Stylish PU Hand Bag', '', ''),
(57, 1, ' Analogue Multicolor Dial', '', '', ' Analogue Multicolor Dial', '', ''),
(40, 1, ' Dream Catcher Earrings', '&lt;p class=&quot;intro&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '', ' Dream Catcher Earrings', '', ''),
(58, 1, 'Vintage Analogue Casual Gold', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vintage Analogue Casual Gold', '', ''),
(59, 1, ' Dial Women\'s Watch ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Dial Women\'s Watch ', '', ''),
(60, 1, 'Fashion Casual Blue ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Fashion Casual Blue ', '', ''),
(44, 1, 'Women\'s Sling Bag (Brown)', '&lt;div&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;\r\n', '', 'Women\'s Sling Bag (Brown)', '', ''),
(45, 1, 'Hazel Powerless - 10 Lens', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Hazel Powerless - 10 Lens', '', ''),
(55, 1, 'Analog Rose Gold Dial ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Analog Rose Gold Dial ', '', ''),
(29, 1, 'Lens Case Box ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', '', 'Lens Case Box ', '', ''),
(36, 1, 'Women\'s Sling Bag ', '&lt;div&gt;\r\n	&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Women\'s Sling Bag ', '', ''),
(56, 1, 'Analog Blue Dial ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Analog Blue Dial ', '', ''),
(46, 1, 'Latest Women Slipper', '&lt;div&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;\r\n', '', 'Latest Women Slipper', '', ''),
(47, 1, 'Fast Professional Ceramic Hair Straightener Brush', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'Fast Professional Ceramic Hair Straightener Brush', '', ''),
(32, 1, 'Artificial Leather Backpack', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '', 'Artificial Leather Backpack', '', ''),
(41, 1, 'Gold Plated Long Hair ', '&lt;div&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;\r\n', '', 'Gold Plated Long Hair ', '', ''),
(33, 1, 'Round Sunglasses', '&lt;div&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;\r\n', '', 'Round Sunglasses', '', ''),
(34, 1, 'Women\'s Tote Bag', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Women\'s Tote Bag', '', ''),
(43, 1, ' Lacey Backpack', '&lt;div&gt;\r\n	&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', ' Lacey Backpack', '', ''),
(31, 1, '1Pc Pro Portable Contact Lens', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '1Pc Pro Portable Contact Lens', '', ''),
(51, 1, 'Women\'s Canvas Sneaker', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Women\'s Canvas Sneaker', '', ''),
(52, 1, 'Perfect Stylish White Gold', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Perfect Stylish White Gold', '', ''),
(53, 1, 'Latest Stylish Flat Slippers', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Latest Stylish Flat Slippers', '', ''),
(49, 1, 'Over-Sized Womens Sunglasses', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '', 'Over-Sized-Womens-Sunglasses', '', ''),
(50, 1, 'Sports Running Shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Sports Running Shoes', '', ''),
(54, 1, 'Mojari Jutti Bellies', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Mojari Jutti Bellies', '', ''),
(42, 1, 'Hair Pins', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', '', 'Hair Pins', '', ''),
(61, 1, 'Women\'s Hooded Warm Coats', '', '', 'Women\'s Hooded Warm Coats', '', ''),
(62, 1, 'Leather Jacket for Women', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Leather Jacket for Women', '', ''),
(63, 1, ' Winter Classic Hood Coats ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Winter Classic Hood Coats ', '', ''),
(64, 1, 'Grey Casual Denim', '', '', 'Grey Casual Denim', '', ''),
(65, 1, 'Casual Slim fit ', '', '', 'Casual Slim fit ', '', ''),
(66, 1, ' Skinny Fit Jeans', '', '', ' Skinny Fit Jeans', '', ''),
(67, 1, 'Glen Slim fit Jeans', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Glen Slim fit Jeans', '', ''),
(68, 1, 'Men\'s Sneakers', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Men\'s Sneakers', '', ''),
(69, 1, 'Jeans Sneakers Casual Shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Jeans Sneakers Casual Shoes', '', ''),
(70, 1, 'Casual Shoes ', '', '', 'Casual Shoes ', '', ''),
(71, 1, 'Men\'s Falkner Loafers', '', '', 'Men\'s Falkner Loafers', '', ''),
(72, 1, ' Party Formal Shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Party Formal Shoes', '', ''),
(73, 1, 'Leather Formal Shoes', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Leather Formal Shoes', '', ''),
(74, 1, 'Slim Fit Jeans', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Slim Fit Jeans', '', ''),
(75, 1, 'Fit Jeans', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Fit Jeans', '', ''),
(76, 1, 'Men\'s Solid Slim Fit', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Men\'s Solid Slim Fit', '', ''),
(77, 1, 'Light Blue Solid Casual Shirt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Light Blue Solid Casual Shirt', '', ''),
(78, 1, 'Linen Half Sleeve Shirt', '', '', 'Linen Half Sleeve Shirt', '', ''),
(79, 1, 'test', '', '', 'test', '', ''),
(30, 1, 'Professional Hair Dryer ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '', 'Professional Hair Dryer ', '', ''),
(28, 1, 'Fancy Party Wear', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', '', 'Fancy Party Wear', '', ''),
(80, 1, 'Forest Casual Belt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Forest Casual Belt', '', ''),
(81, 1, ' Automatic Ratchet Buckle belt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Automatic Ratchet Buckle belt', '', ''),
(82, 1, 'Smooth Look Casual Belt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Smooth Look Casual  Belt', '', ''),
(83, 1, 'Cotton Skull Cap', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cotton Skull Cap', '', ''),
(84, 1, 'Woolen Beanie Cap ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Woolen Beanie Cap ', '', ''),
(85, 1, 'Men\'s Cotton Snapback Cap ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Men\'s Cotton Snapback Cap ', '', ''),
(86, 1, 'Analog Blue Dial Men\'s Watch', '', '', 'Analog Blue Dial Men\'s Watch', '', ''),
(87, 1, 'Watch 2 Classic ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Watch 2 Classic ', '', ''),
(88, 1, ' Dial Men\'s Watch', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Dial Men\'s Watch', '', ''),
(89, 1, 'Analog-Digital Black', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Analog-Digital Black', '', ''),
(90, 1, 'Neo Analog Black Dial', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Neo Analog Black Dial', '', ''),
(91, 1, 'Day and Date Blue Dial Analog', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Day and Date Blue Dial Analog', '', ''),
(92, 1, 'Sunshine Baby Bed ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Sunshine Baby Bed ', '', ''),
(93, 1, 'Pretend Play Baby Bed ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Pretend Play Baby Bed ', '', ''),
(94, 1, 'Velvet Baby Bedding', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Velvet Baby Bedding', '', ''),
(95, 1, 'Ferrari Remote Control Car', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Ferrari Remote Control Car', '', ''),
(96, 1, 'Stacking Toy for Baby', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Stacking Toy for Baby', '', ''),
(97, 1, 'Talking Tom Cat', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Talking Tom Cat', '', ''),
(98, 1, ' Boys\' Quilted Regular Fit ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Boys\' Quilted Regular Fit ', '', ''),
(99, 1, ' Girls Cotton Polka Dot', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Girls Cotton Polka Dot', '', ''),
(100, 1, 'Stories Baby Boys Blue', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Stories Baby Boys Blue', '', ''),
(101, 1, 'United Baby Boys\' Shirt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'United Baby Boys\' Shirt', '', ''),
(102, 1, 'Knee-Long Dress', '', '', 'Knee-Long Dress', '', ''),
(103, 1, ' Girls\' T-Shirt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Girls\' T-Shirt', '', ''),
(104, 1, 'Boy\'s Lofern Smart', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Boy\'s Lofern Smart', '', ''),
(105, 1, 'Zig Zag Pie Booties', '', '', 'Zig Zag Pie Booties', '', ''),
(106, 1, 'Girl\'s Sweet Angelina Ballerinas', '', '', 'Girl\'s Sweet Angelina Ballerinas', '', ''),
(107, 1, 'Socks Baby-Girls ', '', '', 'Socks Baby-Girls ', '', ''),
(108, 1, 'Pink Chenille Bootie Socks', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Pink Chenille Bootie Socks', '', ''),
(109, 1, 'Baby Infant Soft ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Baby Infant Soft ', '', ''),
(110, 1, 'Analog White Dial', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Analog White Dial', '', ''),
(111, 1, 'White Dial Boy\'s Watch ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'White Dial Boy\'s Watch ', '', ''),
(112, 1, 'Projector Digital ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Projector Digital ', '', ''),
(113, 1, 'Analog Silver Dial ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Analog Silver Dial ', '', ''),
(114, 1, 'Digital Grey Dial', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Digital Grey Dial', '', ''),
(115, 1, 'Dial LCD Boy\'s Watch', '', '', 'Dial LCD Boy\'s Watch', '', ''),
(116, 1, ' Short Jacket ', '', '', ' Short Jacket ', '', ''),
(117, 1, 'Cotton Oxford Shirt', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cotton Oxford Shirt', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(118, 1, 'Baby Girls Net Frock Dress', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Baby Girls Net Frock Dress', '', ''),
(119, 1, 'Face Masks for Women', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Face Masks for Women', '', ''),
(120, 1, 'Face Mask for Dry Skin', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Face Mask for Dry Skin', '', ''),
(121, 1, 'Face Cover Mask', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Face Cover Mask', '', ''),
(122, 1, 'Cool Eyes - Universal', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cool Eyes - Universal', '', ''),
(123, 1, 'Eyebrows', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Eyebrows', '', ''),
(124, 1, 'Hair Fall Defense Conditioner, ', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Hair Fall Defense Conditioner, ', '', ''),
(125, 1, 'Strong Hair Conditioner', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Strong Hair Conditioner', '', ''),
(126, 1, ' Conditioner for Softness and Shine', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ' Conditioner for Softness and Shine', '', ''),
(127, 1, 'Hair Fall Shampoo', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Hair Fall Shampoo', '', ''),
(128, 1, 'Stressed Hair', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Stressed Hair', '', ''),
(129, 1, 'Revitalizing Shampoo', '&lt;p&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem Ipsum&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Revitalizing Shampoo', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(449, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(448, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(447, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2431, 30, 'catalog/demo/product/2-3.jpg', 0),
(2977, 28, 'catalog/demo/product/4-4.jpg', 0),
(3002, 40, 'catalog/demo/product/6-1.jpg', 0),
(2464, 36, 'catalog/demo/product/8-1.jpg', 0),
(2463, 36, 'catalog/demo/product/8-2.jpg', 0),
(2468, 34, 'catalog/demo/product/9-5.jpg', 0),
(2467, 34, 'catalog/demo/product/9-4.jpg', 0),
(3016, 43, 'catalog/demo/product/11-1.jpg', 0),
(3015, 43, 'catalog/demo/product/11-2.jpg', 0),
(2472, 32, 'catalog/demo/product/10-1.jpg', 0),
(3014, 43, 'catalog/demo/product/11-3.jpg', 0),
(2480, 44, 'catalog/demo/product/12-4.jpg', 0),
(2479, 44, 'catalog/demo/product/12-3.jpg', 0),
(2491, 35, 'catalog/demo/product/16-2.jpg', 0),
(2947, 45, 'catalog/demo/product/13-2.jpg', 0),
(2490, 29, 'catalog/demo/product/15-1.jpg', 0),
(2489, 29, 'catalog/demo/product/15-4.jpg', 0),
(2488, 29, 'catalog/demo/product/15-3.jpg', 0),
(2912, 46, 'catalog/demo/product/22-2.jpg', 0),
(2911, 46, 'catalog/demo/product/22-3.jpg', 0),
(2454, 48, 'catalog/demo/product/7-4.jpg', 0),
(2453, 48, 'catalog/demo/product/7-3.jpg', 0),
(3001, 40, 'catalog/demo/product/6-3.jpg', 0),
(2430, 30, 'catalog/demo/product/2-2.jpg', 0),
(3137, 47, 'catalog/demo/product/3-1.jpg', 0),
(2976, 28, 'catalog/demo/product/4-2.jpg', 0),
(2444, 41, 'catalog/demo/product/5-2.jpg', 0),
(3000, 40, 'catalog/demo/product/6-2.jpg', 0),
(2452, 48, 'catalog/demo/product/7-2.jpg', 0),
(2462, 36, 'catalog/demo/product/8-3.jpg', 0),
(2461, 36, 'catalog/demo/product/8-4.jpg', 0),
(2466, 34, 'catalog/demo/product/9-3.jpg', 0),
(2465, 34, 'catalog/demo/product/9-2.jpg', 0),
(2471, 32, 'catalog/demo/product/10-4.jpg', 0),
(2470, 32, 'catalog/demo/product/10-3.jpg', 0),
(2469, 32, 'catalog/demo/product/10-2.jpg', 0),
(3013, 43, 'catalog/demo/product/11-4.jpg', 0),
(2478, 44, 'catalog/demo/product/12-2.jpg', 0),
(2946, 45, 'catalog/demo/product/13-1.jpg', 0),
(3034, 31, 'catalog/demo/product/14-2.jpg', 0),
(3033, 31, 'catalog/demo/product/14-3.jpg', 0),
(2487, 29, 'catalog/demo/product/15-2.jpg', 0),
(2910, 46, 'catalog/demo/product/22-4.jpg', 0),
(2909, 46, 'catalog/demo/product/22-5.jpg', 0),
(2904, 33, 'catalog/demo/product/18-1.jpg', 0),
(2903, 33, 'catalog/demo/product/18-4.jpg', 0),
(2908, 49, 'catalog/demo/product/17-2.jpg', 0),
(2907, 49, 'catalog/demo/product/17-3.jpg', 0),
(2906, 49, 'catalog/demo/product/17-4.jpg', 0),
(2905, 49, 'catalog/demo/product/17-1.jpg', 0),
(2871, 42, 'catalog/demo/product/1-2.jpg', 0),
(2870, 42, 'catalog/demo/product/1-3.jpg', 0),
(2869, 42, 'catalog/demo/product/1-4.jpg', 0),
(2868, 42, 'catalog/demo/product/1-1.jpg', 0),
(2432, 30, 'catalog/demo/product/2-4.jpg', 0),
(2433, 30, 'catalog/demo/product/2-5.jpg', 0),
(2434, 30, 'catalog/demo/product/2-1.jpg', 0),
(3136, 47, 'catalog/demo/product/3-4.jpg', 0),
(3135, 47, 'catalog/demo/product/3-3.jpg', 0),
(3134, 47, 'catalog/demo/product/3-2.jpg', 0),
(2975, 28, 'catalog/demo/product/4-3.jpg', 0),
(2445, 41, 'catalog/demo/product/5-3.jpg', 0),
(2446, 41, 'catalog/demo/product/5-4.jpg', 0),
(2447, 41, 'catalog/demo/product/5-5.jpg', 0),
(2448, 41, 'catalog/demo/product/5-1.jpg', 0),
(2460, 36, 'catalog/demo/product/8-5.jpg', 0),
(3012, 43, 'catalog/demo/product/11-5.jpg', 0),
(2481, 44, 'catalog/demo/product/12-5.jpg', 0),
(2482, 44, 'catalog/demo/product/12-1.jpg', 0),
(2492, 35, 'catalog/demo/product/16-3.jpg', 0),
(2493, 35, 'catalog/demo/product/16-4.jpg', 0),
(2494, 35, 'catalog/demo/product/16-1.jpg', 0),
(2902, 33, 'catalog/demo/product/18-2.jpg', 0),
(2901, 33, 'catalog/demo/product/18-3.jpg', 0),
(2863, 50, 'catalog/demo/product/19-1.jpg', 0),
(2862, 50, 'catalog/demo/product/19-5.jpg', 0),
(2861, 50, 'catalog/demo/product/19-4.jpg', 0),
(2860, 50, 'catalog/demo/product/19-3.jpg', 0),
(2859, 50, 'catalog/demo/product/19-2.jpg', 0),
(2850, 51, 'catalog/demo/product/20-1.jpg', 0),
(2849, 51, 'catalog/demo/product/20-4.jpg', 0),
(2848, 51, 'catalog/demo/product/20-3.jpg', 0),
(2847, 51, 'catalog/demo/product/20-2.jpg', 0),
(2846, 52, 'catalog/demo/product/21-1.jpg', 0),
(2845, 52, 'catalog/demo/product/21-5.jpg', 0),
(2844, 52, 'catalog/demo/product/21-4.jpg', 0),
(2843, 52, 'catalog/demo/product/21-3.jpg', 0),
(2842, 52, 'catalog/demo/product/21-2.jpg', 0),
(2521, 53, 'catalog/demo/product/23-2.jpg', 0),
(2522, 53, 'catalog/demo/product/23-3.jpg', 0),
(2523, 53, 'catalog/demo/product/23-4.jpg', 0),
(2524, 53, 'catalog/demo/product/23-5.jpg', 0),
(2525, 53, 'catalog/demo/product/23-1.jpg', 0),
(2526, 54, 'catalog/demo/product/24-2.jpg', 0),
(2527, 54, 'catalog/demo/product/24-3.jpg', 0),
(2528, 54, 'catalog/demo/product/24-4.jpg', 0),
(2529, 54, 'catalog/demo/product/24-1.jpg', 0),
(2530, 55, 'catalog/demo/product/25-2.jpg', 0),
(2531, 55, 'catalog/demo/product/25-3.jpg', 0),
(2532, 55, 'catalog/demo/product/25-4.jpg', 0),
(2533, 55, 'catalog/demo/product/25-1.jpg', 0),
(3038, 56, 'catalog/demo/product/26-1.jpg', 0),
(3037, 56, 'catalog/demo/product/26-.jpg', 0),
(3036, 56, 'catalog/demo/product/26-3.jpg', 0),
(3035, 56, 'catalog/demo/product/26-2.jpg', 0),
(2980, 57, 'catalog/demo/product/27-1.jpg', 0),
(2979, 57, 'catalog/demo/product/27-3.jpg', 0),
(2978, 57, 'catalog/demo/product/27-2.jpg', 0),
(2837, 58, 'catalog/demo/product/28-1.jpg', 0),
(2836, 58, 'catalog/demo/product/28-4.jpg', 0),
(2835, 58, 'catalog/demo/product/28-3.jpg', 0),
(2834, 58, 'catalog/demo/product/28-2.jpg', 0),
(2999, 59, 'catalog/demo/product/29-2.jpg', 0),
(2998, 59, 'catalog/demo/product/29-3.jpg', 0),
(2997, 59, 'catalog/demo/product/29-4.jpg', 0),
(2996, 59, 'catalog/demo/product/29-5.jpg', 0),
(2995, 59, 'catalog/demo/product/29-1.jpg', 0),
(2550, 60, 'catalog/demo/product/30-2.jpg', 0),
(2551, 60, 'catalog/demo/product/30-3.jpg', 0),
(2552, 60, 'catalog/demo/product/30-1.jpg', 0),
(3096, 61, 'catalog/demo/product/31-1.jpg', 0),
(3095, 61, 'catalog/demo/product/31-5.jpg', 0),
(3094, 61, 'catalog/demo/product/31-4.jpg', 0),
(3093, 61, 'catalog/demo/product/31-3.jpg', 0),
(3092, 61, 'catalog/demo/product/31-2.jpg', 0),
(3141, 62, 'catalog/demo/product/32-2.jpg', 0),
(3140, 62, 'catalog/demo/product/32-3.jpg', 0),
(3139, 62, 'catalog/demo/product/32-4.jpg', 0),
(3138, 62, 'catalog/demo/product/32-1.jpg', 0),
(3027, 63, 'catalog/demo/product/33-5.jpg', 0),
(3026, 63, 'catalog/demo/product/33-4.jpg', 0),
(3025, 63, 'catalog/demo/product/33-3.jpg', 0),
(3024, 63, 'catalog/demo/product/33-2.jpg', 0),
(3058, 64, 'catalog/demo/product/34-1.jpg', 0),
(3057, 64, 'catalog/demo/product/34-4.jpg', 0),
(3056, 64, 'catalog/demo/product/34-3.jpg', 0),
(3055, 64, 'catalog/demo/product/34-2.jpg', 0),
(3045, 65, 'catalog/demo/product/35-1.jpg', 0),
(3044, 65, 'catalog/demo/product/35-4.jpg', 0),
(3043, 65, 'catalog/demo/product/35-3.jpg', 0),
(3042, 65, 'catalog/demo/product/35-2.jpg', 0),
(3032, 66, 'catalog/demo/product/36-2.jpg', 0),
(3031, 66, 'catalog/demo/product/36-3.jpg', 0),
(3030, 66, 'catalog/demo/product/36-4.jpg', 0),
(3029, 66, 'catalog/demo/product/36-5.jpg', 0),
(3028, 66, 'catalog/demo/product/36-1.jpg', 0),
(3062, 67, 'catalog/demo/product/37-2.jpg', 0),
(3061, 67, 'catalog/demo/product/37-3.jpg', 0),
(3060, 67, 'catalog/demo/product/37-.jpg', 0),
(3059, 67, 'catalog/demo/product/37-1.jpg', 0),
(2885, 68, 'catalog/demo/product/38-6.jpg', 0),
(2884, 68, 'catalog/demo/product/38-5.jpg', 0),
(2883, 68, 'catalog/demo/product/38-4.jpg', 0),
(2882, 68, 'catalog/demo/product/38-3.jpg', 0),
(2881, 68, 'catalog/demo/product/38-2.jpg', 0),
(2875, 69, 'catalog/demo/product/39-3.jpg', 0),
(2874, 69, 'catalog/demo/product/39-2.jpg', 0),
(2873, 69, 'catalog/demo/product/39-1.jpg', 0),
(2872, 69, 'catalog/demo/product/39-4.jpg', 0),
(2921, 70, 'catalog/demo/product/40-5.jpg', 0),
(2920, 70, 'catalog/demo/product/40-4.jpg', 0),
(2919, 70, 'catalog/demo/product/40-3.jpg', 0),
(2918, 70, 'catalog/demo/product/40-2.jpg', 0),
(2917, 70, 'catalog/demo/product/40-1.jpg', 0),
(2880, 71, 'catalog/demo/product/41-2.jpg', 0),
(2879, 71, 'catalog/demo/product/41-3.jpg', 0),
(2878, 71, 'catalog/demo/product/41-4.jpg', 0),
(2877, 71, 'catalog/demo/product/41-5.jpg', 0),
(2876, 71, 'catalog/demo/product/41-1.jpg', 0),
(3020, 72, 'catalog/demo/product/42-1.jpg', 0),
(3019, 72, 'catalog/demo/product/42-4.jpg', 0),
(3018, 72, 'catalog/demo/product/42-2.jpg', 0),
(3017, 72, 'catalog/demo/product/42-3.jpg', 0),
(2867, 73, 'catalog/demo/product/43-1.jpg', 0),
(2866, 73, 'catalog/demo/product/43-4.jpg', 0),
(2865, 73, 'catalog/demo/product/43-3.jpg', 0),
(2864, 73, 'catalog/demo/product/43-2.jpg', 0),
(3086, 74, 'catalog/demo/product/44-2.jpg', 0),
(3085, 74, 'catalog/demo/product/44-3.jpg', 0),
(3084, 74, 'catalog/demo/product/44-4.jpg', 0),
(3083, 74, 'catalog/demo/product/44-1.jpg', 0),
(3054, 75, 'catalog/demo/product/45-1.jpg', 0),
(3053, 75, 'catalog/demo/product/45-4.jpg', 0),
(3052, 75, 'catalog/demo/product/45-3.jpg', 0),
(3051, 75, 'catalog/demo/product/45-1.jpg', 0),
(3082, 76, 'catalog/demo/product/46-1.jpg', 0),
(3081, 76, 'catalog/demo/product/46-4.jpg', 0),
(3080, 76, 'catalog/demo/product/46-3.jpg', 0),
(3079, 76, 'catalog/demo/product/46-2.jpg', 0),
(3074, 77, 'catalog/demo/product/47-1.jpg', 0),
(3073, 77, 'catalog/demo/product/47-4.jpg', 0),
(3072, 77, 'catalog/demo/product/47-3.jpg', 0),
(3071, 77, 'catalog/demo/product/47-2.jpg', 0),
(3078, 78, 'catalog/demo/product/48-2.jpg', 0),
(3077, 78, 'catalog/demo/product/48-3.jpg', 0),
(3076, 78, 'catalog/demo/product/48-4.jpg', 0),
(3075, 78, 'catalog/demo/product/48-5.jpg', 0),
(2649, 80, 'catalog/demo/product/49-2.jpg', 0),
(2650, 80, 'catalog/demo/product/49-3.jpg', 0),
(2651, 80, 'catalog/demo/product/49-1.jpg', 0),
(2984, 81, 'catalog/demo/product/50-2.jpg', 0),
(2983, 81, 'catalog/demo/product/50-3.jpg', 0),
(2982, 81, 'catalog/demo/product/50-4.jpg', 0),
(2981, 81, 'catalog/demo/product/50-5.jpg', 0),
(2900, 82, 'catalog/demo/product/51-5.jpg', 0),
(2899, 82, 'catalog/demo/product/51-4.jpg', 0),
(2898, 82, 'catalog/demo/product/51-3.jpg', 0),
(2897, 82, 'catalog/demo/product/51-2.jpg', 0),
(2892, 83, 'catalog/demo/product/52-1.jpg', 0),
(2891, 83, 'catalog/demo/product/52-4.jpg', 0),
(2890, 83, 'catalog/demo/product/52-3.jpg', 0),
(2889, 83, 'catalog/demo/product/52-2.jpg', 0),
(2896, 84, 'catalog/demo/product/53-1.jpg', 0),
(2895, 84, 'catalog/demo/product/53-4.jpg', 0),
(2894, 84, 'catalog/demo/product/53-3.jpg', 0),
(2893, 84, 'catalog/demo/product/53-2.jpg', 0),
(2888, 85, 'catalog/demo/product/54-1.jpg', 0),
(2887, 85, 'catalog/demo/product/54-3.jpg', 0),
(2886, 85, 'catalog/demo/product/54-2.jpg', 0),
(2671, 86, 'catalog/demo/product/55-2.jpg', 0),
(2672, 86, 'catalog/demo/product/55-3.jpg', 0),
(2673, 86, 'catalog/demo/product/55-4.jpg', 0),
(2674, 86, 'catalog/demo/product/55-1.jpg', 0),
(2841, 87, 'catalog/demo/product/56-1.jpg', 0),
(2840, 87, 'catalog/demo/product/56-4.jpg', 0),
(2839, 87, 'catalog/demo/product/56-3.jpg', 0),
(2838, 87, 'catalog/demo/product/56-2.jpg', 0),
(2994, 88, 'catalog/demo/product/57-2.jpg', 0),
(2993, 88, 'catalog/demo/product/57-3.jpg', 0),
(2992, 88, 'catalog/demo/product/57-4.jpg', 0),
(2991, 88, 'catalog/demo/product/57-1.jpg', 0),
(2683, 89, 'catalog/demo/product/58-2.jpg', 0),
(2684, 89, 'catalog/demo/product/58-3.jpg', 0),
(2685, 89, 'catalog/demo/product/58-4.jpg', 0),
(2686, 89, 'catalog/demo/product/58-5.jpg', 0),
(2833, 90, 'catalog/demo/product/59-1.jpg', 0),
(2832, 90, 'catalog/demo/product/59-4.jpg', 0),
(2831, 90, 'catalog/demo/product/59-3.jpg', 0),
(2830, 90, 'catalog/demo/product/59-2.jpg', 0),
(2691, 91, 'catalog/demo/product/60-2.jpg', 0),
(2692, 91, 'catalog/demo/product/60-3.jpg', 0),
(2693, 91, 'catalog/demo/product/60-1.jpg', 0),
(2694, 92, 'catalog/demo/product/61-2.jpg', 0),
(2695, 92, 'catalog/demo/product/61-3.jpg', 0),
(2696, 92, 'catalog/demo/product/61-4.jpg', 0),
(2697, 92, 'catalog/demo/product/61-5.jpg', 0),
(2698, 92, 'catalog/demo/product/61-1.jpg', 0),
(2699, 93, 'catalog/demo/product/62-3.jpg', 0),
(2700, 93, 'catalog/demo/product/62-4.jpg', 0),
(2701, 94, 'catalog/demo/product/63-2.jpg', 0),
(2702, 94, 'catalog/demo/product/63-3.jpg', 0),
(2703, 94, 'catalog/demo/product/63-4.jpg', 0),
(2704, 94, 'catalog/demo/product/63-1.jpg', 0),
(2705, 95, 'catalog/demo/product/64-2.jpg', 0),
(2706, 95, 'catalog/demo/product/64-3.jpg', 0),
(2707, 95, 'catalog/demo/product/64-4.jpg', 0),
(2708, 95, 'catalog/demo/product/64-1.jpg', 0),
(2709, 96, 'catalog/demo/product/65-2.jpg', 0),
(2710, 96, 'catalog/demo/product/65-3.jpg', 0),
(2711, 96, 'catalog/demo/product/65-4.jpg', 0),
(2712, 96, 'catalog/demo/product/65-5.jpg', 0),
(2713, 96, 'catalog/demo/product/65-1.jpg', 0),
(2714, 97, 'catalog/demo/product/66-1.jpg', 0),
(2715, 97, 'catalog/demo/product/66-2.jpg', 0),
(2716, 97, 'catalog/demo/product/66-3.jpg', 0),
(2988, 98, 'catalog/demo/product/67-2.jpg', 0),
(2987, 98, 'catalog/demo/product/67-1.jpg', 0),
(3008, 99, 'catalog/demo/product/68-1.jpg', 0),
(3007, 99, 'catalog/demo/product/68-3.jpg', 0),
(3006, 99, 'catalog/demo/product/68-2.jpg', 0),
(3089, 100, 'catalog/demo/product/69-1.jpg', 0),
(3088, 100, 'catalog/demo/product/69-3.jpg', 0),
(3087, 100, 'catalog/demo/product/69-2.jpg', 0),
(3091, 101, 'catalog/demo/product/70-1.jpg', 0),
(3090, 101, 'catalog/demo/product/70-2.jpg', 0),
(3066, 102, 'catalog/demo/product/71-1.jpg', 0),
(3065, 102, 'catalog/demo/product/71-4.jpg', 0),
(3064, 102, 'catalog/demo/product/71-3.jpg', 0),
(3063, 102, 'catalog/demo/product/71-2.jpg', 0),
(3011, 103, 'catalog/demo/product/72-1.jpg', 0),
(3010, 103, 'catalog/demo/product/72-1.jpg', 0),
(3009, 103, 'catalog/demo/product/72-1.jpg', 0),
(2736, 104, 'catalog/demo/product/73-2.jpg', 0),
(2737, 104, 'catalog/demo/product/73-3.jpg', 0),
(2738, 104, 'catalog/demo/product/73-4.jpg', 0),
(2739, 104, 'catalog/demo/product/73-5.jpg', 0),
(2855, 105, 'catalog/demo/product/74-1.jpg', 0),
(2854, 105, 'catalog/demo/product/74-5.jpg', 0),
(2853, 105, 'catalog/demo/product/74-4.jpg', 0),
(2852, 105, 'catalog/demo/product/74-3.jpg', 0),
(2851, 105, 'catalog/demo/product/74-2.jpg', 0),
(2745, 106, 'catalog/demo/product/75-2.jpg', 0),
(2746, 106, 'catalog/demo/product/75-3.jpg', 0),
(2747, 106, 'catalog/demo/product/75-4.jpg', 0),
(2748, 106, 'catalog/demo/product/75-5.jpg', 0),
(2749, 106, 'catalog/demo/product/75-1.jpg', 0),
(2750, 107, 'catalog/demo/product/76-2.jpg', 0),
(2751, 107, 'catalog/demo/product/76-1.jpg', 0),
(2858, 108, 'catalog/demo/product/77-1.jpg', 0),
(2857, 108, 'catalog/demo/product/77-3.jpg', 0),
(2856, 108, 'catalog/demo/product/77-2.jpg', 0),
(2755, 109, 'catalog/demo/product/78-2.jpg', 0),
(2756, 109, 'catalog/demo/product/78-3.jpg', 0),
(2757, 109, 'catalog/demo/product/78-4.jpg', 0),
(2758, 109, 'catalog/demo/product/78-1.jpg', 0),
(2759, 110, 'catalog/demo/product/79-2.jpg', 0),
(2760, 110, 'catalog/demo/product/79-3.jpg', 0),
(2761, 110, 'catalog/demo/product/79-1.jpg', 0),
(2762, 111, 'catalog/demo/product/80-2.jpg', 0),
(2763, 111, 'catalog/demo/product/80-3.jpg', 0),
(2764, 111, 'catalog/demo/product/80-1.jpg', 0),
(2765, 112, 'catalog/demo/product/81-2.jpg', 0),
(2766, 112, 'catalog/demo/product/81-3.jpg', 0),
(2767, 112, 'catalog/demo/product/81-1.jpg', 0),
(2768, 113, 'catalog/demo/product/82-2.jpg', 0),
(2769, 113, 'catalog/demo/product/82-1.jpg', 0),
(2770, 113, 'catalog/demo/product/82-2.jpg', 0),
(2771, 113, 'catalog/demo/product/82-1.jpg', 0),
(2772, 114, 'catalog/demo/product/83-2.jpg', 0),
(2773, 114, 'catalog/demo/product/83-3.jpg', 0),
(2774, 114, 'catalog/demo/product/83-1.jpg', 0),
(2775, 115, 'catalog/demo/product/84-1.jpg', 0),
(2776, 115, 'catalog/demo/product/84-1.jpg', 0),
(3023, 116, 'catalog/demo/product/85-1.jpg', 0),
(3022, 116, 'catalog/demo/product/85-3.jpg', 0),
(3021, 116, 'catalog/demo/product/85-2.jpg', 0),
(3050, 117, 'catalog/demo/product/86-1.jpg', 0),
(3049, 117, 'catalog/demo/product/86-5.jpg', 0),
(3048, 117, 'catalog/demo/product/86-4.jpg', 0),
(3047, 117, 'catalog/demo/product/86-3.jpg', 0),
(3046, 117, 'catalog/demo/product/86-2.jpg', 0),
(3041, 118, 'catalog/demo/product/87-1.jpg', 0),
(3040, 118, 'catalog/demo/product/87-3.jpg', 0),
(3039, 118, 'catalog/demo/product/87-2.jpg', 0),
(3113, 119, 'catalog/demo/product/88-1.jpg', 0),
(3112, 119, 'catalog/demo/product/88-4.jpg', 0),
(3111, 119, 'catalog/demo/product/88-3.jpg', 0),
(3110, 119, 'catalog/demo/product/88-2.jpg', 0),
(3109, 120, 'catalog/demo/product/89-1.jpg', 0),
(3108, 120, 'catalog/demo/product/89-4.jpg', 0),
(3107, 120, 'catalog/demo/product/89-3.jpg', 0),
(3106, 120, 'catalog/demo/product/89-2.jpg', 0),
(3105, 121, 'catalog/demo/product/90-1.jpg', 0),
(3104, 121, 'catalog/demo/product/90-3.jpg', 0),
(3103, 121, 'catalog/demo/product/90-4.jpg', 0),
(3102, 121, 'catalog/demo/product/90-2.jpg', 0),
(2939, 122, 'catalog/demo/product/91-2.jpg', 0),
(2940, 122, 'catalog/demo/product/91-1.jpg', 0),
(3101, 123, 'catalog/demo/product/92-4.jpg', 0),
(3100, 123, 'catalog/demo/product/92-2.jpg', 0),
(3099, 123, 'catalog/demo/product/92-5.jpg', 0),
(3098, 123, 'catalog/demo/product/92-1.jpg', 0),
(3097, 123, 'catalog/demo/product/92-3.jpg', 0),
(3118, 124, 'catalog/demo/product/93-1.jpg', 0),
(3117, 124, 'catalog/demo/product/93-5.jpg', 0),
(3116, 124, 'catalog/demo/product/93-4.jpg', 0),
(3115, 124, 'catalog/demo/product/93-3.jpg', 0),
(3114, 124, 'catalog/demo/product/93-2.jpg', 0),
(2953, 125, 'catalog/demo/product/94-2.jpg', 0),
(2954, 125, 'catalog/demo/product/94-1.jpg', 0),
(2990, 126, 'catalog/demo/product/95.jpg', 0),
(2989, 126, 'catalog/demo/product/95.jpg', 0),
(3121, 127, 'catalog/demo/product/96-1.jpg', 0),
(3120, 127, 'catalog/demo/product/96-3.jpg', 0),
(3119, 127, 'catalog/demo/product/96-2.jpg', 0),
(2960, 128, 'catalog/demo/product/97-2.jpg', 0),
(2961, 128, 'catalog/demo/product/97-3.jpg', 0),
(2962, 128, 'catalog/demo/product/97-1.jpg', 0),
(2963, 129, 'catalog/demo/product/98-2.jpg', 0),
(2964, 129, 'catalog/demo/product/98-1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(222, 42, 7, '', 1),
(219, 42, 8, '2011-02-20', 1),
(208, 42, 4, 'test', 1),
(226, 30, 5, '', 1),
(218, 42, 1, '', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 4, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 42),
(28, 57),
(28, 126),
(30, 41),
(30, 42),
(30, 47),
(40, 42),
(41, 30),
(41, 41),
(41, 42),
(41, 43),
(41, 44),
(41, 45),
(42, 28),
(42, 30),
(42, 40),
(42, 41),
(42, 47),
(43, 41),
(44, 41),
(45, 41),
(47, 30),
(47, 42),
(57, 28),
(61, 62),
(62, 61),
(126, 28);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(565, 42, 1, 100),
(572, 47, 1, 300),
(570, 28, 1, 400),
(571, 43, 1, 600),
(557, 30, 1, 200),
(562, 44, 1, 700),
(567, 45, 1, 800),
(566, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(464, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(450, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(449, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(451, 41, 1, 0, '99.0000', '2018-09-10', '2018-09-30'),
(465, 33, 1, 0, '0.0000', '0000-00-00', '0000-00-00'),
(463, 50, 1, 0, '0.0000', '0000-00-00', '0000-00-00'),
(469, 65, 1, 0, '820.0000', '0000-00-00', '0000-00-00'),
(468, 66, 1, 0, '825.0000', '0000-00-00', '0000-00-00'),
(470, 67, 1, 0, '850.0000', '0000-00-00', '0000-00-00'),
(466, 70, 1, 0, '799.0000', '0000-00-00', '0000-00-00'),
(467, 72, 1, 0, '777.0000', '0000-00-00', '0000-00-00'),
(471, 74, 1, 0, '485.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 68),
(28, 72),
(29, 65),
(29, 76),
(30, 71),
(31, 59),
(31, 65),
(31, 76),
(32, 77),
(32, 78),
(33, 65),
(33, 75),
(34, 77),
(34, 79),
(35, 65),
(35, 75),
(36, 77),
(36, 79),
(40, 59),
(40, 68),
(40, 72),
(41, 68),
(41, 72),
(42, 71),
(43, 59),
(43, 77),
(43, 78),
(44, 77),
(44, 78),
(45, 65),
(45, 76),
(45, 108),
(46, 64),
(46, 69),
(47, 71),
(48, 77),
(48, 79),
(49, 65),
(49, 75),
(50, 70),
(51, 64),
(51, 70),
(52, 64),
(52, 70),
(53, 64),
(53, 69),
(54, 64),
(54, 69),
(55, 66),
(55, 74),
(56, 59),
(56, 66),
(56, 74),
(57, 59),
(57, 66),
(57, 74),
(58, 66),
(58, 73),
(59, 59),
(59, 66),
(59, 73),
(60, 66),
(60, 73),
(61, 59),
(61, 60),
(61, 67),
(62, 59),
(62, 60),
(62, 67),
(63, 59),
(63, 60),
(63, 67),
(64, 59),
(64, 63),
(64, 67),
(65, 59),
(65, 63),
(65, 67),
(66, 59),
(66, 63),
(66, 67),
(67, 20),
(67, 80),
(67, 81),
(68, 86),
(68, 87),
(69, 86),
(69, 87),
(70, 86),
(70, 87),
(71, 86),
(71, 88),
(72, 20),
(72, 86),
(72, 88),
(73, 86),
(73, 88),
(74, 20),
(74, 80),
(74, 81),
(75, 20),
(75, 80),
(75, 81),
(76, 20),
(76, 80),
(76, 82),
(77, 20),
(77, 80),
(77, 82),
(78, 20),
(78, 80),
(78, 82),
(80, 89),
(80, 90),
(81, 20),
(81, 89),
(81, 90),
(82, 89),
(82, 90),
(83, 89),
(83, 91),
(84, 89),
(84, 91),
(85, 89),
(85, 91),
(86, 83),
(86, 85),
(87, 85),
(88, 20),
(88, 83),
(88, 85),
(89, 83),
(89, 84),
(90, 83),
(90, 84),
(91, 83),
(91, 84),
(92, 101),
(92, 103),
(93, 101),
(93, 103),
(94, 101),
(94, 103),
(95, 101),
(95, 102),
(96, 101),
(96, 102),
(97, 101),
(97, 102),
(98, 25),
(98, 92),
(98, 93),
(99, 25),
(99, 92),
(99, 94),
(100, 25),
(100, 92),
(100, 93),
(101, 25),
(101, 92),
(101, 93),
(102, 25),
(102, 92),
(102, 94),
(103, 25),
(103, 92),
(103, 94),
(104, 95),
(104, 96),
(105, 95),
(105, 96),
(106, 95),
(106, 96),
(107, 95),
(107, 97),
(108, 95),
(108, 97),
(109, 95),
(109, 97),
(110, 98),
(110, 99),
(111, 98),
(111, 100),
(112, 98),
(112, 99),
(113, 98),
(113, 99),
(114, 98),
(114, 100),
(115, 98),
(115, 100),
(116, 59),
(116, 60),
(116, 67),
(117, 20),
(117, 80),
(117, 82),
(118, 25),
(118, 92),
(118, 94),
(119, 18),
(119, 45),
(119, 107),
(120, 18),
(120, 45),
(120, 107),
(121, 18),
(121, 45),
(121, 107),
(122, 45),
(122, 108),
(123, 18),
(123, 45),
(123, 108),
(124, 18),
(124, 46),
(124, 105),
(125, 46),
(125, 105),
(126, 18),
(126, 46),
(126, 105),
(127, 18),
(127, 46),
(127, 106),
(128, 46),
(128, 106),
(129, 46),
(129, 106);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(41, 0, 0),
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(48, 0, 0),
(36, 0, 0),
(34, 0, 0),
(40, 0, 0),
(32, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(31, 0, 0),
(29, 0, 0),
(35, 0, 0),
(49, 0, 0),
(33, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(46, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(5, 40, 0, 'Raji', 'Beautiful earrings. Just like in the picture. It\'s not very heavy while wearing which I thought it would be. Overall great purchase!', 5, 1, '2018-10-04 05:37:07', '2018-10-04 05:37:32'),
(3, 28, 0, 'Raji', 'Beautiful earrings. Just like in the picture. It\'s not very heavy while wearing which I thought it would be. Overall great purchase!', 5, 1, '2018-10-04 05:33:27', '2018-10-04 05:36:15'),
(4, 44, 0, 'Raji', 'I personally like the bag i received.wonderful as it looks alike.i prefer you buy this.i bet you you wont regret', 5, 1, '2018-10-04 05:34:45', '2018-10-04 05:36:08'),
(6, 47, 0, 'Raji', 'Perfect one', 5, 1, '2018-10-04 05:39:41', '2018-10-04 05:40:02'),
(7, 28, 0, 'Thanvanth', 'Awesome Product to buy, and totally worth it!', 5, 1, '2018-10-04 05:47:24', '2018-10-04 05:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(888, 0, 1, 'product_id=48', 'ipod-classic'),
(1075, 0, 1, 'category_id=20', 'desktops'),
(991, 0, 1, 'manufacturer_id=8', 'diesel'),
(1151, 0, 1, 'information_id=4', 'about_us'),
(1029, 0, 1, 'product_id=42', 'Hair-Pins'),
(1071, 0, 1, 'category_id=18', 'laptop-notebook'),
(1087, 0, 1, 'category_id=46', 'macs'),
(1088, 0, 1, 'category_id=45', 'windows'),
(1074, 0, 1, 'category_id=25', 'component'),
(882, 0, 1, 'product_id=30', 'Professional-Hair-Dryer '),
(1155, 0, 1, 'product_id=47', 'Fast-Professional-Ceramic-Hair-Straightener-Brush'),
(1121, 0, 1, 'product_id=43', ' Lacey-Backpack'),
(894, 0, 1, 'product_id=44', 'Women\'s-Sling-Bag- (Brown)'),
(1099, 0, 1, 'product_id=45', 'Hazel-Powerless-10-Lens'),
(1126, 0, 1, 'product_id=31', '1Pc-Pro-Portable-Contact-Lens'),
(897, 0, 1, 'product_id=29', 'Lens-Case-Box '),
(898, 0, 1, 'product_id=35', 'Fashion-Classic-Sunglasses'),
(1038, 0, 1, 'product_id=49', 'Over-Sized-Womens-Sunglasses'),
(1037, 0, 1, 'product_id=33', 'Round-Sunglasses'),
(1039, 0, 1, 'product_id=46', 'Latest-Women-Slipper'),
(886, 0, 1, 'product_id=41', 'Gold-Plated-Long-Hair '),
(1117, 0, 1, 'product_id=40', ' Dream-Catcher-Earrings'),
(891, 0, 1, 'product_id=34', 'Women\'s-Tote-Bag'),
(892, 0, 1, 'product_id=32', 'Artificial-Leather-Backpack'),
(992, 0, 1, 'manufacturer_id=9', 'Puma-Time'),
(994, 0, 1, 'manufacturer_id=5', 'ergobag'),
(993, 0, 1, 'manufacturer_id=7', 'Fendi'),
(995, 0, 1, 'manufacturer_id=6', 'levis'),
(996, 0, 1, 'manufacturer_id=10', 'adidas'),
(1150, 0, 1, 'information_id=6', 'delivery'),
(1049, 0, 1, 'information_id=3', 'privacy'),
(1149, 0, 1, 'information_id=5', 'terms'),
(1109, 0, 1, 'product_id=28', 'Fancy-Party-Wear'),
(890, 0, 1, 'product_id=36', 'Women\'s-Sling-Bag '),
(1069, 0, 1, 'category_id=64', 'Footwear'),
(1078, 0, 1, 'category_id=69', 'slippers '),
(1027, 0, 1, 'product_id=50', 'Sports-Running-Shoes'),
(1025, 0, 1, 'product_id=51', 'Women\'s-Canvas-Sneaker'),
(1024, 0, 1, 'product_id=52', ' Perfect-Stylish-White-Gold'),
(908, 0, 1, 'product_id=53', 'Latest-Stylish-Flat-Slippers'),
(909, 0, 1, 'product_id=54', 'Mojari-Jutti-Bellies'),
(910, 0, 1, 'product_id=55', 'Analog Rose Gold Dial '),
(1127, 0, 1, 'product_id=56', 'Analog-Blue-Dial '),
(1110, 0, 1, 'product_id=57', ' Analogue-Multicolor-Dial'),
(1022, 0, 1, 'product_id=58', 'Vintage-Analogue-Casual-Gold'),
(1116, 0, 1, 'product_id=59', ' Dial-Women\'s-Watch '),
(915, 0, 1, 'product_id=60', 'Fashion-Casual-Blue '),
(1142, 0, 1, 'product_id=61', 'Women\'s-Hooded-Warm-Coats'),
(1156, 0, 1, 'product_id=62', 'Leather-Jacket-for-Women'),
(1124, 0, 1, 'product_id=63', ' Winter-Classic-Hood-Coats '),
(1132, 0, 1, 'product_id=64', 'Grey-Casual-Denim'),
(1129, 0, 1, 'product_id=65', 'Casual-Slim-fit '),
(1125, 0, 1, 'product_id=66', ' Skinny-Fit-Jeans'),
(1133, 0, 1, 'product_id=67', 'Glen-Slim-fit-Jeans'),
(1063, 0, 1, 'category_id=80', 'Clothing'),
(1083, 0, 1, 'category_id=81', 'Jeans'),
(1084, 0, 1, 'category_id=82', 'Shirt'),
(1066, 0, 1, 'category_id=83', 'Watches'),
(1085, 0, 1, 'category_id=84', 'Casual Watches '),
(1086, 0, 1, 'category_id=85', 'Classic Watches '),
(1079, 0, 1, 'category_id=87', ' Casual shoes'),
(1080, 0, 1, 'category_id=88', 'Formal-shoes'),
(1060, 0, 1, 'category_id=89', 'Accessories'),
(1081, 0, 1, 'category_id=90', 'Belts'),
(1082, 0, 1, 'category_id=91', 'Caps'),
(1032, 0, 1, 'product_id=68', 'Men\'s-Sneakers'),
(1030, 0, 1, 'product_id=69', 'Jeans-Sneakers-Casual-Shoes'),
(1041, 0, 1, 'product_id=70', 'Casual-Shoes '),
(1031, 0, 1, 'product_id=71', 'Men\'s-Falkner-Loafers'),
(1122, 0, 1, 'product_id=72', ' Party-Formal-Shoes'),
(1028, 0, 1, 'product_id=73', 'Leather-Formal-Shoes'),
(1139, 0, 1, 'product_id=74', 'Slim-Fit-Jeans'),
(1131, 0, 1, 'product_id=75', 'Fit-Jeans'),
(1138, 0, 1, 'product_id=76', 'Men\'s-Solid-Slim-Fit'),
(1136, 0, 1, 'product_id=77', 'Light-Blue-Solid-Casual-Shirt'),
(1137, 0, 1, 'product_id=78', 'Linen-Half-Sleeve-Shirt'),
(952, 0, 1, 'product_id=80', 'Forest-Casual-Belt'),
(1111, 0, 1, 'product_id=81', ' Automatic-Ratchet-Buckle-belt'),
(1036, 0, 1, 'product_id=82', 'Smooth-Look-Casual -Belt'),
(1034, 0, 1, 'product_id=83', 'Cotton-Skull-Cap'),
(1035, 0, 1, 'product_id=84', 'Woolen-Beanie-Cap '),
(1033, 0, 1, 'product_id=85', 'Men\'s-Cotton-Snapback-Cap '),
(959, 0, 1, 'product_id=86', 'Analog-Blue-Dial-Men\'s-Watch'),
(1023, 0, 1, 'product_id=87', 'Watch-2-Classic '),
(1115, 0, 1, 'product_id=88', ' Dial-Men\'s-Watch'),
(1021, 0, 1, 'product_id=90', 'Neo-Analog-Black-Dial'),
(963, 0, 1, 'product_id=91', 'Day-and-Date-Blue-Dial-Analog'),
(964, 0, 1, 'product_id=92', 'Sunshine-Baby-Bed '),
(965, 0, 1, 'product_id=93', 'Pretend-Play-Baby-Bed '),
(966, 0, 1, 'product_id=94', 'Velvet-Baby-Bedding'),
(967, 0, 1, 'product_id=95', 'Ferrari-Remote-Control-Car'),
(968, 0, 1, 'product_id=96', 'Stacking-Toy-for-Baby'),
(969, 0, 1, 'product_id=97', 'Talking-Tom-Cat'),
(1113, 0, 1, 'product_id=98', ' Boys\'-Quilted-Regular-Fit '),
(1119, 0, 1, 'product_id=99', ' Girls-Cotton-Polka-Dot'),
(1140, 0, 1, 'product_id=100', 'Stories Baby Boys Blue'),
(1141, 0, 1, 'product_id=101', 'United-Baby-Boys\'-Shirt'),
(1134, 0, 1, 'product_id=102', 'Knee-Long-Dress'),
(1120, 0, 1, 'product_id=103', ' Girls\' T-Shirt'),
(978, 0, 1, 'product_id=104', 'Boy\'s-Lofern-Smart'),
(1026, 0, 1, 'product_id=105', 'Zig-Zag-Pie-Booties'),
(980, 0, 1, 'product_id=106', 'Girl\'s-Sweet-Angelina-Ballerinas'),
(981, 0, 1, 'product_id=109', 'Baby-Infant-Soft '),
(982, 0, 1, 'product_id=110', 'Analog-White-Dial'),
(983, 0, 1, 'product_id=111', 'White-Dial-Boy\'s-Watch '),
(984, 0, 1, 'product_id=112', 'Projector-Digital '),
(985, 0, 1, 'product_id=113', 'Analog-Silver-Dial '),
(986, 0, 1, 'product_id=114', 'Digital-Grey-Dial'),
(987, 0, 1, 'product_id=115', 'Dial-LCD-Boy\'s-Watch'),
(997, 0, 1, 'manufacturer_id=11', 'nike'),
(998, 0, 1, 'manufacturer_id=13', 'ray-ban'),
(999, 0, 1, 'manufacturer_id=14', 'persol'),
(1000, 0, 1, 'manufacturer_id=15', 'warrior'),
(1001, 0, 1, 'manufacturer_id=17', 'zephyr'),
(1002, 0, 1, 'manufacturer_id=18', 'cappelllini'),
(1003, 0, 1, 'manufacturer_id=19', 'lacoste'),
(1004, 0, 1, 'manufacturer_id=20', 'fila'),
(1005, 0, 1, 'manufacturer_id=21', 'CK'),
(1006, 0, 1, 'manufacturer_id=22', 'otto'),
(1089, 0, 1, 'category_id=105', 'Conditioner'),
(1123, 0, 1, 'product_id=116', ' Short-Jacket '),
(1130, 0, 1, 'product_id=117', 'Cotton-Oxford-Shirt'),
(1128, 0, 1, 'product_id=118', 'Baby-Girls-Net-Frock-Dress'),
(1090, 0, 1, 'category_id=106', 'Shampo'),
(1091, 0, 1, 'category_id=107', ' Face masks'),
(1092, 0, 1, 'category_id=108', 'Eye-care'),
(1146, 0, 1, 'product_id=119', 'Face-Masks-for-Women'),
(1145, 0, 1, 'product_id=120', 'Face-Mask-for-Dry-Skin'),
(1144, 0, 1, 'product_id=121', 'Face-Cover-Mask'),
(1097, 0, 1, 'product_id=122', 'Cool-Eyes-Universal'),
(1143, 0, 1, 'product_id=123', 'Eyebrows'),
(1147, 0, 1, 'product_id=124', 'Hair-Fall-Defense-Conditioner, '),
(1101, 0, 1, 'product_id=125', 'Strong-Hair-Conditioner'),
(1114, 0, 1, 'product_id=126', ' Conditioner-for-Softness-and-Shine'),
(1148, 0, 1, 'product_id=127', 'Hair-Fall-Shampoo'),
(1104, 0, 1, 'product_id=128', 'Stressed-Hair'),
(1105, 0, 1, 'product_id=129', 'Revitalizing-Shampoo');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('0000b784732f69f0a9394113f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:38:03'),
('000273da9bff04871dfa9b0499', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:06:12'),
('0033094d87c669d33f15809d8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:00:38'),
('0040731f03b6bb9be4e34d043b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:21:08'),
('00564e8020d421ba3a01774ac7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"41\"],\"wishlist\":[],\"user_id\":\"1\",\"user_token\":\"NFch25hbrDLPT6H8Y2Me14OYp6svXOem\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-09-03 14:44:23'),
('00652fc25e3e5377ef55ab720c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 07:00:31'),
('0086009292189004202c00e797', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:18:31'),
('0095b1d77cf3d094a041f2cfc9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:35:47'),
('00db433d606b50c1ae944dd6a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:11:04'),
('00dd47ee62ee04cc8383ee228e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-09-29 12:25:40'),
('00fdeff05c0ef9ff59941500d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-04 05:32:33'),
('010adeec113eab08d3dbbe2dba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:58:41'),
('0115dd2007e9ed7ca0dc46c2c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-04 03:03:10'),
('0118007f9ea199927d5174c726', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-02 02:53:31'),
('012a7eecf30721104868730f8b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-01 14:03:39'),
('0136010e109e688c803cec34c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:35:50'),
('014c88f570b1470f0a1e451972', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:42:11'),
('016414125b28aeb46663fbda34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\":1}}', '2018-09-30 17:57:30'),
('0184bcce53e309dab555ea999e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:48:07'),
('01c4ed66b6b1dcd25c99814f84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-01 16:11:09'),
('0206aaef3e62458750175c8bf9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-03 15:20:36'),
('02270e09f66e416fc890338f83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:15:39'),
('0229fdd21135a687c57cd080be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-03 01:11:54'),
('024bb2af5d21358c495d6bcb7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 16:08:14'),
('027eec2b3c3436dd3c490ac45d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 21:52:59'),
('0289f9ec7e309b89a10ddb6852', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:10:45'),
('02a30bcf9c22fa56b21afdd4bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:41:44'),
('02d02a00a185f213d654490ee8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:31:31'),
('02ea47a9c686ff8f723e707bd2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:56:28'),
('02f5fe2e5a43bebb5b45e61b34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:48:17'),
('0337f5711fb4dd8154ec292511', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 15:58:40'),
('0352f1fab14cf2550caa9c204d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:13:29'),
('0362229b470c0d146b98f1b7d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-09-29 17:10:20'),
('0381b8a21a64281a2b838b65ef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:27:52'),
('038b02297ad66980d5ee552766', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-01 23:21:06'),
('03e0581ae844f54b9c17c47196', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-29 10:45:50'),
('03fc9854167e450cac07a20fef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:20:53'),
('0406640dce096f21218ae72217', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:00:47'),
('0428495267e66841aa126be1d0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:10:56'),
('04371de67192f9cf18c54f54e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:00:36'),
('044772e5ca3ac6115695f149f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:38:04'),
('044a2d10953bb4fafc63228535', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:22:51'),
('045d232cea0478da7306eaba76', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 06:20:29'),
('04609adafc4917395eb03fbe19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:51'),
('0480c82471957feb93d80aba5b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:58:30'),
('0496165787c1b36acb58d92c6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:05:48'),
('04f70e247edb23a876893f91e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:47:50'),
('0506cc5d796efff2ff4b597f9b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:23:27'),
('050f35412ec64bc951e2939b70', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:37:52'),
('055bc7b576bd64c27024d895c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:03:50'),
('058497f0bec630826b0b23ea55', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-02 11:02:11'),
('05871116b484c259cd87670fcd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY4O30=\":1}}', '2018-09-29 08:58:31'),
('0599a10c12af24991333f2496f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:25:22'),
('05a1894f0cb21fafeef73b41e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:30:56'),
('05faaab1224945c2d28c9379b7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:31:52'),
('063eda974d0a835f3e6724952d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-04 02:37:20'),
('06546a3caa558b626a9bfd0a88', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-02 22:16:37'),
('067214e1edd2cc8e297adfac86', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:39'),
('0672d541e0cf66a77cd89156e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-09-28 10:02:13'),
('067dfb9f105b63cf4816836c27', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:56:02'),
('068084bf84c4421f8b45fb306d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:55:34'),
('0686270fe0111eb159fd60aca8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-09-28 10:22:42'),
('06a1bd26ab8d56a5204c807c07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 20:22:13'),
('06a9af9c3a851b52b7b8aeff12', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:08:30'),
('06c70fc88a406f8a0925ff1971', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 22:47:33'),
('06d521fedc8751f6948ad8d5d8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:56:45'),
('06f8d6f14befa734c5c51a2475', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNzt9\":1}}', '2018-10-03 22:53:21'),
('0736c30b4ae16647f9f4f55b37', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 05:12:52'),
('074b11ccbcbde1c7dd37788a6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:46:10'),
('07870980e4694d2d02f74c59f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:07:35'),
('078c3873c0046b49e5d588252c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:13:31'),
('0796be40cef503bb7c9ea55a98', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:03:53'),
('079e5755025b116d0cae762e7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:45:56'),
('07a58785511dc4e2c36c2fcd29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:46:29'),
('07cf35bb8447858da07e773950', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-09-29 14:05:54'),
('07f94722fa46a384f0fad8625e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:40:37'),
('0817fc859de0c445afb15105fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:56:52'),
('082334242d6e6532bca404c9be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:16:28'),
('082dea1bba222b33c6cbc72df1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 16:16:51'),
('0836f99c1a265ad07ba69af123', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:32:06'),
('083a13546006722633d1ece7e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-03 11:58:20'),
('0895a0a783a9362f72d8e4e58a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:26:13'),
('08b7d38763845e531136d4ab24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-01 14:50:00'),
('08dd874f43662985aad568edbc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-10-01 15:21:15'),
('08e771e79cdd488f79e8d41f39', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:56:02'),
('08ea60879941d00ea4dd220c40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-09-30 19:06:23'),
('08f1268eaa4c2d3872475909ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg2O30=\":1}}', '2018-10-02 07:00:28'),
('0924630aca960fd4c4ad50703c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 20:40:12'),
('0927fb1fb81a37427684254f6e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-10-03 06:19:16'),
('096ca450827f8d7888197003bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\":1}}', '2018-10-03 17:37:38'),
('096d436161c13b2c4bd0d159b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 21:57:45'),
('097ea0d1f25543097584184774', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-02 07:29:25'),
('098598392d374595938de661cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:19:36'),
('09912e55984b8215772e7b854f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-03 07:06:03'),
('09befd2fe307c575b57fba2847', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:24:15'),
('09fa68028e36fdfcce8db91e29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:35:13'),
('09fd6f8518c12d42a2af2b21be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 20:50:55'),
('0a100f67df8e2be8253ea7d68d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:50:50'),
('0a105167c2451cc1ffa8ab87db', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 05:18:57'),
('0a140f70570581aa30831b4c09', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:36:36'),
('0a1ddd10116c7ea8fd8b81ea9a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:13:23'),
('0a59b4f471460f4aef7e634791', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:05:20'),
('0a6fd8cfc2713f5426126a98fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:30:44'),
('0a7f2e3f617b21eb529a82e9f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 22:36:08'),
('0a9b355290f5b077dd9977f0fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:06:19'),
('0ab1b7b8ca26e4cce34141e08a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:30:40'),
('0af3435354d4c646ed46594206', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:03:05'),
('0afb3fb9ab5aff8811fc453bcc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:10:11'),
('0ba6d96aa69064951324195d8c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 04:17:48'),
('0bd895560446fd12402fe9fd13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:41:25'),
('0bd9059f161722d216477b8dcf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-01 03:20:57'),
('0bdfb81f81d157587fc6a90ab1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-02 22:28:07'),
('0bf14b27d0caf763d1eedb4f9b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:05:12'),
('0bfa7c02fb36e40e63c7cc52e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"16IVG9vlSrAQxPlNSpUSlZ2zF7T6ZsEO\"}', '2018-09-05 14:41:16'),
('0c5a53de837d5275a63738de79', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-03 05:30:25'),
('0c607250e24204dee38a24c1c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:47:52'),
('0c764254dd0f3df1dfe1a51a21', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:02:35'),
('0c795007534e3074e01db19922', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-09-24 10:29:47'),
('0c7b5bc3267ff71f4aafdbf95b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-07 07:35:32'),
('0c7f17c90d9faa1a7accef2e53', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:30:09'),
('0c80cf55b8933edb042c15400a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1}}', '2018-10-02 18:21:15'),
('0c88f8f88fe77d68759dc73e7a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 10:31:07'),
('0ca89e4e3a3d524d73023f8f5f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:23:41'),
('0cbed2e7511edccc9c8ee8d865', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-03 01:00:49'),
('0cf8505985e6bb68de5be76de4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:55:53'),
('0d019ac6a2dcff4514e1b04d57', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-02 07:23:28'),
('0d0b55dd6d0cdf009cc66a4cfd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:43:47'),
('0d1db048d60d4051e34a5e2b19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-03 04:38:44'),
('0d23d0a920b93f29a03b6503ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-09-30 16:28:28'),
('0d4bc6a594513b1b967232f2f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExODt9\":1}}', '2018-10-04 06:25:55'),
('0d58cfbb28134d41226d223ad9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:16:11'),
('0db0c073fbcbf88384974abe8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:42:12'),
('0dd55b0511581e6fd9d01e5036', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:56:18'),
('0ddcae96398019f00e85ce658d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:46:52'),
('0e1966e6e95d63199c1b2709e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:55:40'),
('0e50fd6611948793b00aef2f7a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:39:51'),
('0e6ab424d216fb3c2aa9c668ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:05:45'),
('0e6f67b1f22b3d50b6df606d35', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 04:10:21'),
('0e6fd861a32a790e0d4cd4241f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:22:05'),
('0e75bff1dea2cf7a2f7192bb99', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:05:52'),
('0e908e661367b7d57057488f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:01:10'),
('0ed127172830207449a6dfc028', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-02 07:20:42'),
('0ef11f70934f0879a73745f534', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:37:52'),
('0f000f43c324895784651652bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-30 06:02:18'),
('0f18e542dd15f3b65d39839c0a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:12:14'),
('0f1a01c429382137d4f7cc17a9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-02 17:18:00'),
('0f27c9f6d7836885b0cd23fa07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:32:04'),
('0f466157c60b2d1598b822cf1d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-03 04:12:53'),
('0f4820c00b24e9710a80b6cb8e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-10-01 09:46:03'),
('0f5912777d92cd0521ea51982c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcwO30=\":1}}', '2018-10-01 01:25:32'),
('0f5d2f260eb0f9800bf2ab1bee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-10-04 06:29:33'),
('0f64441c13332fe0064b0e1f13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:02:16'),
('0f754e45f4f8143761bee96531', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-03 20:55:36'),
('0f86d8195aac240d93167256b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:21:38'),
('0f9a88837d7fcc54c84ebb7e00', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:15:07'),
('0faa002b7dda1065290d292ae5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:01:20'),
('0fb12e357d4c4ec5dbbbe650d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-01 22:00:56'),
('0fc01746cb4dcf0bd26dd1ff23', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-10-03 22:15:58'),
('0fc06c600cd4eb79b3cac2ae6b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:18:38'),
('0fd33482f457f7dfc9bab4b239', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:45:05'),
('0fd74205887a5224811d1be59c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xWavCc4Xw5Pnu7Mrh3jqjALHwIeexMrt\"}', '2018-08-23 14:11:28'),
('0fe295ee88c88d9e44afaa3e3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1}}', '2018-09-28 09:56:51'),
('0fe971829c06d8fb8f12cb9b80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-04 01:15:09'),
('0ff0894e976d7993d8eccd1440', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 03:01:28'),
('103a26bfb552825b7e1cc1acee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:16'),
('103f5c8dba5e4d82e44b4a67bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:03:44'),
('10469fc1f8db0417af6173b384', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:24:36'),
('106f6b74ebeb767164a25a850a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-10-01 03:58:37'),
('10a2a3aae8f16072a9421b6cc0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQzO30=\":1}}', '2018-10-01 09:40:20'),
('1103b1802bce9d5f7bdf187e7a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:11:16'),
('1109878ad577df532c955d5e42', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:46:39'),
('1143aa6c2dd38e0cd13d9ede44', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:45:04'),
('1153b65612ed89f73d8d9d7ebf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-04 07:13:07'),
('1159c978735cb55c896f1d42c6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:20:23'),
('117f178b6510c070283c35daeb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:31:05'),
('118bb047299e31df9e244f550e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:26:29'),
('119e4b86494fffefbeef6ede60', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:43:23'),
('11ab5506fb27db2ae5d949c5d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-29 22:35:38'),
('11c4bc71cce9315d98981eb144', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 05:43:55'),
('11ce861206986aea1fced000dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:42:53'),
('11cef4eabefb0c2d6c4a64e8b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:47:12'),
('11d2b710d06a9827c3881cbcbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 01:01:17'),
('11d625c94a75b13f6fabab04d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:05:51'),
('11d652e8778c4630c8d112374b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 15:05:43'),
('11fff1c0b9e624684e50daeff2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-02 03:55:32'),
('1203ef0e341857cbc7cadf3d69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:31:12'),
('1211e11a005256f4753e809163', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1}}', '2018-10-02 08:09:39'),
('1213610ff4e24a6983bfb8d5a2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:07:54'),
('123989062616bc1499a3db6e8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-28 18:36:01'),
('123997207cf74a0d969f6b06d3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:58:00'),
('1239d67b9cad5556fe332873ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:15:46'),
('124e7924c10c4374de89544c7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 05:14:44'),
('124fd0b5f996059f7b5f50f585', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-01 16:18:41'),
('1289c97131e8813ab3c77c6117', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 05:12:33'),
('12903dde6173e04bf30d0ebefa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 10:16:09'),
('12987ae614c7d41c53cab92733', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-01 05:15:01'),
('129a6a72792f7989a6c6e83cb9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:06:27'),
('129eb0be7e801531aed646f716', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:46:15'),
('12c06a8489e72e3fd47c11dacb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-09-30 00:56:26'),
('12f28fd2168798d8c578e519af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:06:10'),
('130038ce1080f977effefd792f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:05:33'),
('131c09d7c7c41b040cd674c1c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:47:50'),
('13226a0cfcabe38ea6d446a900', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:00:15'),
('133ae0c9588a1ff12a46a36dd1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:10:52'),
('135b7fa374fd3903aa66c0325d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:13:07'),
('1361f418dafdb32280e889cdfd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-09-28 10:28:32'),
('13950f25dbcd63600a5c1970b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:52:15'),
('13ba2387a5570f76f1ce17fd4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:56:44'),
('13f629321585a3f663b78df2ca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-01 20:28:42'),
('13fb5eee6deefef78f68a1b3d8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:38:44'),
('1400237aca5ce12053d3e481a8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:02:19'),
('1410bf6cfaf2837fd92e899439', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:35:15'),
('1416a7d395b52999eb98902adf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:10:23'),
('1421d3c6b69d0c8538387b42f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:59:18'),
('147005d0f90888c6cc8043a89a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:17:43'),
('14747e0208959ef7a592706489', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:33:28'),
('1480a84592100b79ac7cebe479', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-29 23:05:55'),
('149e3ead70eb0fe7770d893c43', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:06:00'),
('14a69602d084cd137f9a8602be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-03 16:15:07'),
('14b7a477c2e03d502593c5d04b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMjt9\":1}}', '2018-10-04 07:36:20'),
('14ca480a1e7b5299be74cc8b78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:40:32'),
('14dd9f618e0222440742eb57e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:57:56'),
('1513eb41fadb58ff20cc5a219d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-02 01:01:33'),
('1522cef8e52935835c929007dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:32:32'),
('15295e8cdc4dc821dd8be3a450', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:01:56'),
('152b8c3603355752783632e277', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcyO30=\":1}}', '2018-09-30 19:00:53'),
('1543913850b0813948bfec6449', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:26:40'),
('154852869088b2e9ab6e12beb0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:30:28'),
('157f30ec48548a07012729e5e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:25:26'),
('15866415aadd3436deffd2fdfc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjczO30=\":1}}', '2018-09-29 09:30:33'),
('15a6c4d151c8eb2648a835d6eb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 19:25:58'),
('15abeaf753f8eabe8dd352791d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-03 02:40:55'),
('15bed6e0d472cd3b710ce8834c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-28 17:36:24'),
('15d13b5cd094a9c3a82d901265', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-12 10:34:32'),
('15f1f25be6fca3501b9d7e4441', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-03 20:58:23'),
('161d7529be5b16e55dabc0197a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:18'),
('161e30dacb3ac139ad9986ee41', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"a8is0NONIXBTcPrq3aaeJaEzBxbi37Nz\"}', '2018-09-11 15:02:16'),
('161ead271f30ad809ec65bddf1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:53:00'),
('16291bc10c3bda0561f1821dc8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:01:35'),
('1638aac937578a7cc70c28e1fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:42:21'),
('1644226d3c1ad777ecaeb15a84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:31:36'),
('164cb64e36380842c6b42682a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-01 17:27:55'),
('16777d0202de4c14a7f54935f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1}}', '2018-10-01 07:23:35'),
('167e43785c26c14f6507b65be2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-04 05:04:52'),
('169bc84be16a5fb1624962e3dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:09:36'),
('16a6104d2d7c5111fbcc8c5208', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:58:17'),
('16b1277fbb06f814b662825f82', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-04 06:46:00'),
('16d319a46de6b400c850badab5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 09:05:25'),
('16d61d5adc76fa91e5fbebc35b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:05:37'),
('16def8210bd37d3ff791f49754', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:50:22'),
('16e487cdb4ba515b6b87b11dec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:17:22'),
('16e9b15121ec45af30bb6b7232', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:17:22'),
('16ee596ea6886a3d2b597b82f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:35:32'),
('16f90f5a9f82ea0df5dc0a73ef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:30:21'),
('16ff05710df549b787fd4aae9b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:52:31'),
('170d98dab4245f43ec7572c2ac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:22:57'),
('17491f451bf9d943c36e242a6a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:31:01'),
('17499225165d0dd52bc511f2e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:54:04'),
('1754913b54e51bba60b0cc2934', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY5O30=\":1}}', '2018-10-01 09:33:40'),
('1758867d3cb35f82bc59551a47', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-03 19:37:55'),
('175f6e3ac9f8d766215d1452b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-09-29 12:31:11'),
('176250c8c033af78a67ecaa752', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-10-01 05:00:51'),
('1764529e914714cdf27e3b59d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-01 11:35:36'),
('17649c267c214c0053166d1dfe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk5O30=\":1}}', '2018-09-28 10:11:12'),
('17706cf99c3c688e3b605ea7db', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-04 08:12:54'),
('1799437d5c1001157bf5fb62c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-03 23:45:30'),
('17b880cd39d3a74f741ca928b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 13:00:25'),
('17c056b014a0a93a0bbfe04af2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-29 10:30:54'),
('17cab4b79f4db7ac240e45862c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:00:53'),
('17d2b9284037f0d3e8fd2f0580', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:51:08'),
('180137cab06a54d88dfb6587d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:42:59'),
('18122fe3853d75a4b43a5c9129', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-01 22:12:07'),
('181c43fd5cae34cb660cd3e4b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:53'),
('183b1d3edda0b6673a20fb4ffe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-09-28 09:55:52'),
('183d60f7acaf6c6e5591d70fea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:36:46'),
('185a65f1042b720791d84bafba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:53:06'),
('186bfd578477d4eb23c4962ad3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:07:44'),
('187099b2de484a772e9b8abcea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-02 01:50:22'),
('18846e608fbed20d71616a8fb1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-01 16:33:03'),
('18943ba5ad38b274b8f4476911', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 14:36:26'),
('189f040f6b3a92d621064c82fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-09-30 12:18:35'),
('18a69f9841441a931ab23814bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:16:44'),
('18b459920afde6437fa355bea6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 00:43:33'),
('18b657b2afe9045d420dc527b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:20:56'),
('18cadb341e05f8acd590c7039a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-10-03 22:01:35'),
('18d08f3ba4de9d4960122d0c9b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-10-01 09:15:52'),
('18dba2353b03d45c3215bcc832', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:57:38'),
('18dfad8780c76275f3f64e5138', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:20:55'),
('1912a45a735347a827d159024f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:12:31'),
('198061181758be3cb812bb1b52', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-02 06:51:50'),
('198164ffe9c53c9e209f546313', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"iWcJdQXjIzeWzzZxoYoD6ql8ozL6kKJW\"}', '2018-08-24 09:08:55'),
('1992c4ba16fc8fa5c0787e8f04', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:08:38'),
('199b29cf00f484d46daabc8592', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 10:16:14'),
('19f0f153ecd0ea3cb8b30fd7bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 04:20:20'),
('19f568c2e95a0312aa60b091da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:41:21'),
('19fd0f73c271438a8bbd43de7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:27:09'),
('1a26ed0a21153739e046c32a95', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:56:23'),
('1a42037934953d7bbd5b955b83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:02:17'),
('1a438b3a2f362edd4fd343d007', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 19:58:50'),
('1a451277be7c7c0cfbb897e934', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:20:44'),
('1a96f6f1f3c3e46ad313b3448f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:20:06'),
('1aa84524f2f7daae1e373efbaa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:11:37'),
('1b07e3d8e3003e9c6901233ebb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:27:50'),
('1b3457fcf4f5c0fe6d910e7147', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-09-30 21:27:07'),
('1b5b0c46ed5668c6b208a62267', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:07:51'),
('1b7f64b82a23fe29f84417ae3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-28 10:49:58'),
('1b9316a807edde0857c225a6ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 23:57:12'),
('1bb8c3c6c84c34a94c28457d69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 13:58:00'),
('1c094298ba3ebee7581b9ed406', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-01 01:08:11'),
('1c0a33d510c822a39182a51a74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:22:07'),
('1c0c8c4d5895fc8bf411474839', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:12:51'),
('1c0f9e3e87ca6e1dc96801f0fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:57:09'),
('1c155ccc0efe4cc57c6f8c24f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:20:09'),
('1c1bfeece3b5cdfda231deb0b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 06:00:09'),
('1c3d4a50fd9b7cea10af939b85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-29 18:13:11'),
('1c53039dbcefa6f185a69005df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-02 06:15:15'),
('1ca587d82c5424c6acf62e7509', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:41:46'),
('1cac262023d2f7857e045d7ccc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-29 21:16:46'),
('1cbc5bbfa33f0e1be4b1f050d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:18:37'),
('1ce331250c2058764894891eb0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:55:40'),
('1cf8a5e9161b44bc69b0e2bccc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:28:11'),
('1d04a8252abbed112e518b2271', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:41:17'),
('1d17c55a5e7f0584f78e04b929', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-30 21:56:02'),
('1d25d0aae3b982459553e3e2bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-10-03 22:04:27'),
('1d3d6840c868d933df485718a5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:02:46'),
('1d42f0357b1f15ad1cbf1a2e29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:25:04'),
('1d4b2b985c754906f48cc69e83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:24:01'),
('1d674d8d937a659edc3ba7d5be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:00:33'),
('1da0418513daac86c231dd1a34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:03:17'),
('1db6d97c2898218ec1e7a962d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:55:55'),
('1dc2d37fa7cce3b23c82e4a387', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:36:20'),
('1dd2c0d66624f5b9c6db0379ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:57:52'),
('1dde02ced306621805dd2ae229', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:53:37'),
('1e1fe787189f3cbb4363db59ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-29 15:46:03'),
('1e2d8b575ca677fdb260c18caa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:29:58'),
('1e390aaab072a60f1033f84a79', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExOTt9\":1}}', '2018-10-02 08:09:01'),
('1e3b7be995f2ff59a9e242c96f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-30 01:15:24'),
('1e3ccbdadb0df987f45700014b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 16:15:48'),
('1e5b528fca9e71df5abc12c507', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:25:44'),
('1e7a049dd4d3d517c2d7685cd2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 23:05:40'),
('1e88ba8f78e9b77fcbae2e436c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:16:48'),
('1e9b255ae32bc618b6c4e62ea7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-02 12:04:55'),
('1eada9c8dd108543db6912827a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:41:28'),
('1ecf7dc2b7627c0e7a07467fd6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 06:58:36'),
('1ed16a84d339e54dfd27890f4e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:40:20'),
('1ee665b6a624539946f6d79e69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oAZk8Og8c4ra9Q9ICcQZwPRbmCw7WPWg\"}', '2018-08-31 14:26:27'),
('1f0092ef33329568b7ff4832e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-04 02:31:35'),
('1f22d192895393e83a8ceece5c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 13:51:57'),
('1f380997015a53b9ef4545a451', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\":1}}', '2018-09-28 10:57:26'),
('1f699010b1d9df86235294f3a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-06 06:07:52'),
('1f8168b7abc30dbd07e37a48ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:39:20'),
('1fb5c8a3c489c68055a7e3fdb4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 11:53:35'),
('1fbf35145cde6288aa3ff30ea2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU4O30=\":1}}', '2018-10-02 09:26:54'),
('1fe833a6d889cdf2fb6df17967', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:15:13'),
('1fefb99f4108edb75aa799e057', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-09-28 17:16:19');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('1ff09a33ac66eccef51e8c04b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-09-30 19:50:52'),
('20035dc2a96cc24ab0ea6c4324', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:35:39'),
('20089f812dca0d47d4b69ca290', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-09-30 15:22:24'),
('200cb0892d80b1ca09b660cd60', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:33:34'),
('20153d77ab4f85ed35450e68cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 07:30:19'),
('20161dc01405d2f10a1ec21c6a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:50:10'),
('201a42400a771f390fb97d38d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:29:12'),
('202a087c3197c211823390f226', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:30:31'),
('203d7db26386b5343812b0c964', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:41:56'),
('2066f5596416a607d3a599d09f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-09-29 09:58:58'),
('20968cf58d27fa70b4572823c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 10:25:54'),
('20ab97274cd7e1ebe42e050309', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:26:19'),
('20b1ad28358cc39cdae4286c8c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:46:06'),
('20cec0e1011f10895d30564ba0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:43:05'),
('20d689955ffe0897938a23d735', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:10:30'),
('2114743bc94bdcc75a08aad1f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:01:08'),
('211ffd918fb5da24c0011549f2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:43:28'),
('212636e2a999b26a563b4e6ba5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:52:02'),
('2136d4ca20a904c8055c20aead', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 01:50:52'),
('213c303c7e15e4ec13bada8dab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 06:11:04'),
('213da78331b7fd058a2484c108', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:35:44'),
('213ee99f593b030dd1526c1d24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:42:28'),
('214609e619dc511aaa648d5cb3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:11:46'),
('2194f8c15da2d77ea25ecc4ae6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-10-03 10:36:04'),
('219e684247bc16fa8f390ca566', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:26:09'),
('21cf6ec6fccc15e79bd526d4ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-10-01 07:50:17'),
('21db359a978909397b05a5e2b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:16:55'),
('21db4ebf1c598313c6e65468f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:45:11'),
('2214aa15d4dcca1ef06404e0c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:55:26'),
('2226da0891e798a97a9a578027', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:01:06'),
('2235ad5ddacd6f9e366c984d6b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:05:48'),
('2254ec4855317c5fe76a6d7ef7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:02:18'),
('22be5dc05e92cdfc84993fbdad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:17:07'),
('232c9338a333d2459b087774b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:30:43'),
('23343434ae002db14c70599e39', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 08:00:23'),
('23707ceba929ff5c26cbeb2968', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 13:46:25'),
('2376e1b6520b765fad07fa0bcf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Z9Q5A5Hqr46OT0tcBfKYmEByKzbaqA8Y\"}', '2018-09-06 08:51:04'),
('237e0e00cec82565808edb8eda', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:45:47'),
('23878abd823efd03a9a4a36dcd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-04 05:06:40'),
('238d2b42364df14e4e577e73d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1},\"wishlist\":[],\"customer_id\":\"2\",\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"venkatesan\",\"lastname\":\"rajagopal\",\"company\":\"\",\"address_1\":\"77, Marutha nagar main road,\",\"address_2\":\"\",\"postcode\":\"641041\",\"city\":\"coimbatore\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"compare\":[\"44\",\"30\"],\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"venkatesan\",\"lastname\":\"rajagopal\",\"company\":\"\",\"address_1\":\"77, Marutha nagar main road,\",\"address_2\":\"\",\"postcode\":\"641041\",\"city\":\"coimbatore\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"comment\":\"\",\"order_id\":4}', '2018-10-01 15:01:24'),
('2392886e156bbd8e5c969d43dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:12:45'),
('23a784a53f6e2f0371ea57d32a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:28:03'),
('23ac3780cec422e6e49d7bff7f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:51:41'),
('23b9bec121dbdfc90db9054427', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:52:35'),
('2402172af7911575b7da8a25e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:58:04'),
('240bb90c65b9ad063e548faf20', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:14:15'),
('24480f5c1bcf7315524f42e8b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:31:24'),
('245056124b662d4ad160bfcc20', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:53:36'),
('24591f3b75a79892d38b0ec83a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:11:37'),
('246986200fcda3e066ab18134c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:33:23'),
('248a69df77a21c06181a9acd70', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-02 01:56:08'),
('2496b005b8b344e2eba8d5e33e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:00:56'),
('24c5e023171550e1b748d6c351', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:00:06'),
('24d25f3d61c9da0f9453bcff02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:30:02'),
('24ef48d9185b6b82beefc24550', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-19 08:40:46'),
('24faa7ab91f8ba067caebe6166', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:31:28'),
('2500c4846a6bad8338e9be3073', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:56:04'),
('2542dafa887170ae0ef3fb79c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:40:55'),
('255816a7f51ca96cda000f1b2d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:21:47'),
('258d6d653bb1965427a0517286', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-28 18:36:57'),
('25c43281fcef7b147520fbbd37', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:50:45'),
('25e05c723c0eabc9afe4185137', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:48:11'),
('25e3ee2edcb70dbceec5775dac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 19:43:44'),
('25f5f5aa802a8323ced36e0758', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-03 17:43:01'),
('260f96432d83ed06092e65fe33', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:25:55'),
('262c87c68460f2128dd218592a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-03 20:50:20'),
('2649a790b285d1c3ad39560586', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:14:54'),
('265eb46ef83d5f6c5ed6393ac6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-10-03 16:48:27'),
('266eeaba177ec1bb9965968916', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:41:51'),
('267cd8cf6d1b911f394c31ae85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:04:57'),
('2696771dd542edcc8830c300f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-03 04:10:31'),
('269c90dd80a1fc8c6581af068a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:18:17'),
('26a525858c0d0365ac7a7334cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:43:10'),
('26cc9e25e10346aef9737877f2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 10:15:19'),
('26d1aafcda8e444c2c27a32563', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-02 23:11:15'),
('26dc549d9aae553ec298a60a10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:20:45'),
('26f0907b20dec3140a6a5a5da8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-29 22:55:17'),
('270e759cc8ae63f553dc753ab4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:56:07'),
('2712aaa9f1c11cbd954559de19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:55:39'),
('272d3fa68a7b66771a6c0b6ef9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-29 21:28:15'),
('2743644471999720cd328340f0', 'false', '2018-10-03 13:46:18'),
('2748e951de33d649a0319de224', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:18:19'),
('27741731d04b88ed4685c57ba1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:12:08'),
('278144d1a3ff3471c71b26f4dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:35:41'),
('278603f9ea50018973fe9e7338', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-09-30 13:56:18'),
('279c158bc9e04fec6a5269af34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 06:20:16'),
('27a714b20f409b11fb5663d061', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-03 10:51:06'),
('27f16b60aedafd843662178681', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:46:04'),
('2804cd4c69c4811d996484e056', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-03 19:26:25'),
('281615bd654c8ec5e6f19aee29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNTt9\":1}}', '2018-10-03 21:36:07'),
('28b1253b96ce216cc360988da4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:36:29'),
('28bda06a5e7576d221c9810b62', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:56:04'),
('28d260bb8842ce1d508aaadc22', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:47:25'),
('2914d33b7449ce00f69c09155f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 02:15:32'),
('292a83ac20417993403d9154c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-03 20:41:23'),
('2998449f1f362e8ca861adf906', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:57:44'),
('2998f0c6f00709afd73f325bc5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:11:25'),
('29a000e2eb5e4d720d63690fe7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:46:23'),
('29ab4f7db055d181ad44b1b11e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:23:29'),
('29b3f3bcca7773b6e8cf3b1cd3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:50:31'),
('29bca5641bb8ddbaec2b8cd842', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 16:07:11'),
('29bd0fb3d8797ea5c8997e8ac0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-28 09:46:10'),
('29f2e1163857de7873c46f27cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-03 14:25:06'),
('2a06d32ce3814caa0bbc35e0c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-04 01:11:10'),
('2a41a4bac4db0d48110275abf3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-02 16:36:04'),
('2a6438037f578a1d32f744e3a9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 16:53:46'),
('2a650d20999a68b1f218d71a78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:03:38'),
('2a76c0c125b00c03bf67c5e44f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-03 18:34:44'),
('2a975c61761f809113cd231c3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:10:20'),
('2aa8c0c5e07d8d95502e166cf6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:05:27'),
('2abf1e53402a3b3ddd9f79a62c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-09-29 12:55:31'),
('2ac0190fe2838da75780cc06cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:32:24'),
('2afe517087864f42bde0da2937', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":false}', '2018-08-24 13:31:54'),
('2b0deec30fbd59883d3b579cf4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:28:13'),
('2b2a6d1d79956ac8df66aac743', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-09-30 23:30:36'),
('2b36c7893db1ff006ccadf2655', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:18:53'),
('2b38a333e69a9654de97964a2b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-30 06:15:51'),
('2b38fabd9d4f0c074251dfc7f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:45:35'),
('2b3ff596d45270631df54a6e1d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:18:31'),
('2b40d74579ca19a01fd45636eb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 16:45:42'),
('2b61cd4764be93dfeb9c76288e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-01 22:10:54'),
('2b69c3a3da8f1c0aa4b02267c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:40:36'),
('2b729ed5c2fd2055403200978b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:40:22'),
('2b840105ab7b1f7dd60dbf7c3f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-10-02 02:47:47'),
('2b90aa3920785a488f395c1f97', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM2O30=\":1}}', '2018-09-30 09:48:35'),
('2ba740f6de43ef367e445dc587', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:21:23'),
('2bb28de32faf845c0d4ab180d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-10-03 10:41:08'),
('2bb8cb5f427b949c090b07ec64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:20:52'),
('2bffccc7acbe592c6cffd1caef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 02:00:57'),
('2c070b09102f3ea37a5839da88', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:30:57'),
('2c59ab632868a88a18a79a1141', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:00:44'),
('2c74273c86896f359f05aa2672', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-03 09:46:09'),
('2c8741537b5df4276ddd329c40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:06:07'),
('2c92971bad3a9eafa1559d0cb3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-04 07:53:19'),
('2c9aca281aa312d620dcf8ef99', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-09-29 17:30:00'),
('2c9ecd200f463b857690edbf8b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:46:54'),
('2ca4562ab3556b4d14df14d1de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-01 20:17:13'),
('2cb0eeea9aeda7c898aba71f17', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:34:53'),
('2d33c835bb1e1ce0000ddf8b1e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM2O30=\":1}}', '2018-09-30 09:48:35'),
('2d370cc5fd87a7fb73e83835e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-09-30 11:18:16'),
('2d4a8c39d059e452540a2f24f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-10-04 01:31:16'),
('2d75c8ada44b8a3e3e2165ae1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-09-30 17:20:31'),
('2d796bc0158922ced6445accd3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:15:19'),
('2d7d7d505817d76f551a2e9727', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:25:51'),
('2d8e01b6e90e2ef0c8a662724d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-04 01:28:24'),
('2da1a847b08409309265568875', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:37:29'),
('2db38eeb37e4554181f37f25f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:18:27'),
('2dd0e269ccfbf1a650dd3f0140', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-01 14:55:31'),
('2dfff63069dd39ae3e69de7667', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-09-28 13:23:35'),
('2e1c9a35cee715fc6a729998ef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-03 02:50:13'),
('2e275ebc5364aa6b05d8c9dbf2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-09-29 21:42:38'),
('2e30fbfcc622d343fcdc9eecfe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-01 04:40:47'),
('2e4cbc43fe19f0b7bf25873bda', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:05:27'),
('2e59d924ab5808f41f5b710682', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-02 08:09:37'),
('2e7e25fb1c0bd82821a160cb1b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:37:43'),
('2eaca9a4d44d338c03f4e58673', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:14:06'),
('2ee7920b0eacfa45fcc0b80446', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:07:07'),
('2f1b8221ca1a64fe52e1bb3bc8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:03:30'),
('2f2c8515d2f184c59fcc779409', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-10-02 08:40:57'),
('2f2d64a62216f22ae9f78c2123', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-21 05:28:58'),
('2f4f1a10124abcda4f3a04974f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:23:37'),
('2fad1ca31e474cb9468b0d67a2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-28 23:00:56'),
('2fb0b80904c23c48c27db12126', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:19:57'),
('2fdcb6c623d1a22e44affc3ae3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:50:51'),
('2fddb66f6fd0b9a5f27fc35251', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:37:56'),
('30131ad75829125d4c3f30aec4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"wishlist\":[],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-09-20 14:27:24'),
('3016575fbb71498675f3f71a7b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:21:05'),
('3017d04757cc3c6074e8c835ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 14:57:13'),
('301e35b3f6592dc88785b4c2a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk2O30=\":1}}', '2018-09-30 16:15:19'),
('3049a01b0f2a42c8510df73833', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-09-29 10:07:26'),
('3068490bc81dca8972317684a2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:16:23'),
('3079a7fbb791178a3f3a7a3ff8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:25:13'),
('308a66560494fef6dc1d238773', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"vouchers\":[]}', '2018-09-25 07:55:23'),
('309d0de4186156caa93292e1ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:51:23'),
('30ab12ffb2e2425f1082f212ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-10-02 03:56:02'),
('30c2dc618aa79f4f187b355fd3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 08:26:09'),
('30c9ab3585a42c7f65ffc1a4eb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:43:04'),
('30cd2a996159c7aa8b9d6af511', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:14:44'),
('30f9afc0a020f317fd6b3de694', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-09-28 13:18:33'),
('30fb258b1f1bf8e19bbd795583', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:10:20'),
('30fc407c920d81126551f30c5c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:25:53'),
('3111d224abf7ce22a0ffc9ad51', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-04 04:50:18'),
('313f7c88311b095695a7d80873', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-18 07:54:29'),
('317dad0c268e7cbc93c1408164', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-03 04:35:52'),
('318a7e826da5e2835127df9f61', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ue1HMHXs65hdZO0Eyl7Fl5WORQeA4TS3\"}', '2018-09-04 14:41:40'),
('31919b99d7012008d937db28cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-28 17:30:39'),
('31924db85df866dc92faa14c7a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 00:10:59'),
('31d138243fa58640e7280c0a23', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:18:46'),
('31fa9dc05fdea67284e19666fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:35:48'),
('3216e53bc073320d5269f5abf1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-03 06:33:37'),
('321cd962f9e4ab52739772a1e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-10-02 17:26:36'),
('3229681b50e4825ee181db1e9a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-04 01:56:07'),
('3238c29774dfa18947839eba4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:47'),
('323ad5be49759ba08c0aa5af34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"uRFpOpQnwQqzcvI1qVqj0O6TPg3KeBd9\"}', '2018-09-17 06:32:39'),
('323f5bdee11a3b889890742f51', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:21:16'),
('3253da24946c2e6622a66ac5ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:25:11'),
('326590faafc2371c9673e544cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:46:54'),
('32ac8e6f029f64ddd1745d1013', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:41:46'),
('32c553f33d7a7f2d83d56d232e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:48:48'),
('32e98c47fe38b322a0f833cc38', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-02 12:01:12'),
('331dca0d5251277107e1dc3000', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-30 21:58:43'),
('333cd126c164ef4e388e5d6236', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 14:48:37'),
('334197cdd9e2a4fb6747126991', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:07:02'),
('33638f85619bf71288912c80ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 19:58:06'),
('337612d9e0c1e977cef67e8141', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:15:06'),
('338079c2cd9085cef9e553fc09', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-02 06:07:39'),
('33bd8fd0f5e286f70d17dbb9fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-10-02 23:35:22'),
('33d27a4b12fd44c9e7ad3558a5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-03 00:20:52'),
('33e5aad57c6cff2cc9bcb976e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:20:18'),
('33ebe4de487ecc0f83a69919ce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-09-29 18:27:25'),
('33f123bfda69a44c5e893e077d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:42:30'),
('34028560c3cf38f24d7a3c2534', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-03 17:54:30'),
('342b2d9a38df260b233f762ccd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 20:25:50'),
('343de28e9e415ac1497d717a28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:51:32'),
('3444a6e8a03345e61b754e111f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:57:51'),
('344e397e00eeafcc481e3716ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 13:05:52'),
('3460b2c00c6797bf95eb282adb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:25:06'),
('3466a1ec11524fa18b96dfd25f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-03 21:32:51'),
('34754e44a611dcfd4177491872', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-01 17:30:51'),
('3487d2a1a629b051830fa0599b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 06:52:51'),
('34990680979426c0a2f3595a87', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:06:44'),
('34996bd13ac14c8ff872d289bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:36:00'),
('34ff11ec726c674d3aa5fee33a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-03 17:45:54'),
('3502bb3faf5deb5f18b1d953d3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:41:07'),
('35196fc73802dd3bdd51b622ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-09-30 09:52:06'),
('354c12daa6e7d3d1c750691574', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-01 05:21:03'),
('355928ee1955665731c8208090', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:47:58'),
('355931d4158d2aa08a335b0a80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:07:00'),
('355e4a5ed38ddda8402e676d4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:26:07'),
('355e8cbb236a286adda2bb061e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:52:18'),
('356226b1dee2780eb457515a78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-02 04:42:40'),
('3578198a5bf78f993b5cd377a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:50:51'),
('358968b8911f357fe0d5e1c467', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:13:50'),
('35a5f52c1061840a21dd6a6541', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-28 22:03:30'),
('35d25fee2a185ebaf5cbdfdaf6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:50:48'),
('35d6e91f1e0359811414e5bae9', '{\"user_id\":\"1\",\"user_token\":\"u8QQpPSSCUo9aRrhMqkaKviNDtWVGbB2\",\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-17 06:14:18'),
('35ff09b370a29b42e2a92bcae6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:40:31'),
('363e08893a268bb1bdb97abbb8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:47:00'),
('364426242e07d9793080af4a03', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:17:44'),
('36452a4795ac8426bcfc834cdd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 08:52:26'),
('3690ff51ff4ae4a315460d4e29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:43:42'),
('36b50dfd602c5a860f6702f2bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:45:45'),
('36b691750db513be473524967b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 20:41:10'),
('36cc8a6943d3b5b7ef797a61be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 19:15:46'),
('3708aedb0fdc26fb26b19cb4c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:00:58'),
('3712c0bf1223b7db8e9ff65efc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:13:11'),
('371ec6a0e1237de0f449bb8f78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-09-30 20:38:18'),
('37312f87622fea3cc64b4178d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-02 16:43:31'),
('3765ff27f99f53090171e2c6c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-02 10:07:07'),
('376d1af9602273d28f12c3e94d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:55:25'),
('3781122b01a025603043dc50f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-10-02 16:26:16'),
('378d1b014d77e53d693d4b1c8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 16:35:55'),
('37d959670c96363c95f80f1543', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:02:56'),
('3804bb67255f005ef2e728a341', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:01:52'),
('381f8b0ee96e187f7df7fbf87a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:39:18'),
('382676e50c79b36553664bd7b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-09-28 11:56:00'),
('38315dcee466107759aa75dc63', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-10-01 17:13:19'),
('383684915d4d78fa1ff402ef2f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:17:03'),
('3848186453937f5c6f7cd6414b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-03 13:07:18'),
('3858fc48c34ff4886e67d1f22b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:35:23'),
('385a3fce54950bbe9f085a899b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:41:20'),
('38834237c7837f5018cdf85c08', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 04:56:17'),
('38b0ca764929ad19220b479448', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:02:38'),
('38c7a9e74c058b1a6698cb0d41', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-10-04 06:28:11'),
('38d8f57912caa256f92ce865de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:41:03'),
('38e24a0ef00818679cd6a66c53', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:36:40'),
('38f9990041ffe241f7c7f814f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:00:28'),
('39095c921c2bdfb4eb79bb6edc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-04 06:47:16'),
('3909f933debffb58745b13b9d3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 04:22:33'),
('396e1e7c3e61e207e212c64ea6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:57:24'),
('3976dd265cf8c4ce76a44e8a1d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:03:00'),
('398e8a6e1af55bdc61cd710932', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:38:39'),
('39a8ffe285a8980fdda59ee7c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:40:07'),
('39aa48bd374a8fef1623fc516d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:16:33'),
('39c4dcbe100688049a412557d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:18:09'),
('39f38ed2e90cc761a70ed9bb91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:19:53'),
('3a088412cbba60c85cd04e3e89', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:06:46'),
('3a14758230281760181c8f087e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-31 05:21:57'),
('3a1f5bd81dcec8a72e67dd4308', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\":1}}', '2018-10-03 19:01:01'),
('3a3caf623dad5ff80fa474fbcc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-09-29 09:25:12'),
('3a98c16f004bd344f314942306', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYwO30=\":1}}', '2018-10-02 21:02:06'),
('3a991194cd27f9796baaa7a137', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:20:51'),
('3aa42c9d9b76027a5f3516023e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNjt9\":1}}', '2018-09-30 07:55:54'),
('3ab25ab4cf7bb54150725f4731', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:58:35'),
('3ae5351fffaf6f9aa6a4fabfa5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:20:40'),
('3aeae5da01c33680a7bf806046', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-04 02:48:49'),
('3af2bfc0bba2192713ee0ea6a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 13:05:05'),
('3affff3dc6a04283f81cf4b0e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:39:40'),
('3b0de507639956e12b1a575971', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:45:13'),
('3b3699f9eaf6cc5f4613fde412', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 14:45:45'),
('3b4ee09344b8e07a9d16114d9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:55:41'),
('3b51e35adb548dffdf5abc8d69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:05:34'),
('3b8b2f853215735bbf237ab3fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:18:47'),
('3bbb0b0c076eec281e5abbd69f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-09-29 08:45:25'),
('3bcf03bf1e8c417aa4eca190c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 11:33:18'),
('3bdec644a707989a17b150eff8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:50:27'),
('3bded577d7da41401d2436e37c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-01 12:40:54'),
('3c08e99bdd5567e418bb2a6335', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:28:13'),
('3c5a365f3484ab676b527aa820', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:37:46'),
('3c5b5c2518e2b523d03ce7815f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 16:57:03'),
('3c5ee0bcd03e322a6b5f976d15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"BoNnLmDHFaUEaZNMUrzLisiXG5dNhCZE\"}', '2018-09-06 14:26:11'),
('3c6a7642470d2c7c60ef2bc6a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-10-04 08:22:44'),
('3c83028097f2482e0e15e50047', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-09-28 12:23:20'),
('3c8a5c92ca5078537fd58546d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:18:01'),
('3ca93321d1a30dc2b62fc4a720', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:30:20'),
('3cbd6f649da91ae334f9ebedb6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-09-21 11:12:09'),
('3cd55999f90a84b23dae0922db', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 06:00:02'),
('3cedbea14c966042d16464e264', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:10:51'),
('3d01526a9736b4c5cef78beb02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-28 11:00:33'),
('3d1fffd4702011bd685f376a11', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 18:17:37'),
('3d2ec1d902bf4f330397b4c33d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-01 05:09:27'),
('3d3bec21adb3325250e065d3e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:40:27'),
('3d3cea4b7d5ea5a5ffe970ffe3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:36:07'),
('3d512615171c27af2702c44f8f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-04 00:42:25'),
('3d615ab016843691d0cba0b488', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 06:37:29'),
('3d714f778cb333f0f9e4b9276a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 11:12:21'),
('3d895305c579ccf26e30188789', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-29 10:21:56'),
('3dad5e64e6a48f605265dade6d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:00:10'),
('3db34ea9af015e7aa4d60b071c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-09-28 11:46:11'),
('3dde3094f1d45828cc5e901ed9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-10-04 04:20:53'),
('3e0edec60387a3de9300decce0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:21:02'),
('3e0f2f049a9bdd490fd78d3ab9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:50:09'),
('3e13be0dbee64ed72413eef106', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:50:57'),
('3e27b12e7718e375d5efd4ad1c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:50:32'),
('3e40b8da92b8ea6e84fed8da51', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-02 17:10:46'),
('3e4b1851ba453b2e772f925e96', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:48:53'),
('3e5da56ffe7bca8cc990b8a0c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:03:14'),
('3e993e42b4518308e8fc530261', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExODt9\":1}}', '2018-09-30 22:36:07'),
('3edc4c60f45bc30d8a3688b96c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:17:14'),
('3eef4cb94ac71628b1bb30ac07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:22:59'),
('3efd04684a728c9b3ea72d2d03', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-09-30 11:52:44'),
('3eff7ae0db2c799ea50384ccd8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-02 19:10:41'),
('3f02069817bef7ca561581fa69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:25:31'),
('3f03500b85d863bc178edd2c87', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:36:55'),
('3f287a719f691934bbd31edca6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-03 11:32:28'),
('3f2bb94ed92350571eabfc37d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:28:06'),
('3f2efde10c6d6bbab448c2bedb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:11:00'),
('3f41ac4e79469a9bf711fcd0b7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-09-28 14:29:53'),
('3f5a3b44edb2e2ed888783c6e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:20:39'),
('3f7199a05b9c11eca3311f8fa8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:54:51'),
('3f990fa85be260b24b51aa6764', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-03 12:35:48'),
('3f99f52b610bdaaffcaab901b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-09-28 15:09:52'),
('3fe5c7b17f74deedea49568cad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-09-30 21:40:57'),
('4001d3ddab477654da3c6ab848', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-03 07:20:45'),
('40179d34ec54365f3253aa97d8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 12:39:20'),
('4034f1e3654dc14e7cb0df70fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-10-03 11:10:34'),
('40400d1f9c1d0abe022d0f893a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-03 02:52:24'),
('4041fb0265b61d95101a0f23e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:31:10');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('4049139979525f521ff862c7d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:18:37'),
('408351cbe52ca7281c4f27e4aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg2O30=\":1}}', '2018-10-02 06:50:46'),
('409155e3e62e02dbf790595d43', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk2O30=\":1}}', '2018-10-01 07:25:34'),
('4093140440d25bb3596d932274', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:02:41'),
('40d27764973e1a76ce2c0620ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:08:40'),
('40dbd366ba2d9811dd15d25698', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-03 00:28:51'),
('40ea008b2bfd4476aac091eb4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:08:00'),
('410316223d3d493f394947cb48', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:00:02'),
('410e709bf8a6c37fa6d1d77ea7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:39:11'),
('41101681073298abac24c6e9eb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-01 03:35:10'),
('4146cb8cbe675d2f8f29dadb0b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-02 10:58:57'),
('415e2638759c7a4ef142e42b14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:18:51'),
('415f7fdadb5d30ca81be328858', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:34:55'),
('41686b9829fb7e3730c24f603c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:32:09'),
('418df2513a2a296f252b8005e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 19:16:52'),
('419d6f0906634546c355e8fcce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-02 08:17:59'),
('419f986f15b4319f3c0607cfc6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-01 13:15:38'),
('41a10ba8c5347b8a25fec96a8d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 11:57:00'),
('41a34defaa3948e641f2c28a83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:50:36'),
('41b80e6811e0f480e8526ed82d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:46:17'),
('41b872b3faaa12087b1d515c29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-04 05:49:04'),
('4200cc7ccf45e5dd727e0a42fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-09-30 21:24:15'),
('42322f5ed4532337fbbaea6b41', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-09-28 11:48:51'),
('424329bf2e668a3945929f6570', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:58:15'),
('4246faec188ca844f777c59909', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-03 21:01:15'),
('42a4eaa11d12c3648821836c84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:32:43'),
('42b6584c105726c9864eac924c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-04 01:45:52'),
('42ceebb9f185af6de67858a399', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:49:55'),
('42dbe66929555b3f244c38aa12', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-04 06:01:18'),
('4347a1df573ea0a62a0f3e97da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-29 22:43:10'),
('434a770dbd67b436bc0ae14d27', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:58:09'),
('437b85ae0077de810fcf5b9927', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-03 16:54:11'),
('43808d3debabf5eba6ceaa9793', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 06:30:47'),
('438b6ac1b6dd3d1bcd0c7ce7fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU5O30=\":1}}', '2018-09-30 16:40:07'),
('43b9bc3d6ef2c3d39fe1e6efbc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-09-29 18:21:33'),
('43c75b689b734d025a2fe479d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-09-30 20:58:25'),
('43e61d67bfa0795782750f198f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:08:38'),
('44182cd281d4e92d6a4e88ee8f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:07:22'),
('443d7b68cdaac5a45c63f2875a', 'false', '2018-10-03 08:11:10'),
('44469e4a8b5765b922eeb220dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:53:34'),
('4459e3bca8392ad019016bc1d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-03 03:50:55'),
('446182cf35502c8736fc9630f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMDt9\":1}}', '2018-09-30 07:31:25'),
('446190326832609825ba14f71f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-09-29 14:49:00'),
('44a3da15c212d38bf33247fa06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:32:33'),
('44a8a428340a3835f6ef521b30', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:11:01'),
('44b61a60cc5e49bc5fc1a4a9aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:30:52'),
('44b939dd55dc399e407ee5c7cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-02 19:01:24'),
('452313fae5f368ef05b9c7c4ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 06:00:18'),
('453409ac2348c580d24572d6e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:07:24'),
('453c3e7c25baabc6591d317920', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 23:31:21'),
('456a9fe2b2b099c40c191757b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:22:08'),
('457639fa29e78308057025d8c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-09-29 09:12:49'),
('4592c5ec2c88c92d30bfbbda3a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:06:23'),
('459a4cc6e12c82e81367cee17c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:25:46'),
('45a6afce08db95b312ccd6b477', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-01 23:45:57'),
('45a7d09e0b8bea50ce0902220e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-10-03 15:53:53'),
('45bbc6c6917fa552bfb0cda1f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-09-30 11:11:00'),
('45f02345b3cc84b212fa2f2309', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-09-18 15:45:33'),
('4631579d2d2b5535e7f2f07b37', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:35:33'),
('463d1610011ac25281e18020d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:51:08'),
('464c75454ecc62d5f1fc336c6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 04:55:07'),
('46510c25c3993706eb83248eec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:23:17'),
('466857ee27b19314485b932942', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:27:18'),
('468f88974d8154ee41b6b4c597', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:37:09'),
('46b8b32211c5346090cbd41d1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-29 10:01:51'),
('46c80e2380c46514b49b98b8af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:43:35'),
('46ced281341d0c9ee11a347401', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1}}', '2018-09-13 09:24:30'),
('46db8c4cef33b50f81f0bd4009', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 11:22:47'),
('46e6e77bb7bc4cf065ec691256', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:10:56'),
('46ecc9bef9b1e91479de42417d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:55:45'),
('47378500118d02ba83f3c93d91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:02:47'),
('47438ed3bf71efc02f4a3decdf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:23:33'),
('477eea598f2e68c8519358e996', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:12:07'),
('4783063b111e17682c550dab64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:47:13'),
('47b973bcab5b29a89177c3de19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 06:47:54'),
('47dd507c33beef7a9cd3480b6b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1}}', '2018-09-28 09:51:28'),
('47fe0312f39a710a0b7dc19782', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:47:58'),
('480d8468dd761b20f381f20e92', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:05:55'),
('481c755c881e3e5f3d431ac6a2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-01 20:11:28'),
('48729581096d5c29a409355c3e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:48:30'),
('488a56643dd9bdc8213ae395ef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:25:43'),
('488c20f1a60ef75f7f3b66f5f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:13:44'),
('48af58163ea50a045b80f36407', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"GoDEQhcRe8X590uFa8MpSRPUGZBxHcIO\"}', '2018-09-26 14:46:28'),
('48eede6de90e9fcf9c0cc8d599', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-10-01 00:33:44'),
('49634d927eafe599515b4a66a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:48:18'),
('497c57118ae3658b5ed629282f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:19:32'),
('499c2bf2d802c85b0da7cab60f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:17:38'),
('49afff96e910daa31cc5444f88', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:42:56'),
('49c7cddce6914e1aa7e2e699c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-29 09:18:33'),
('49ccd05934d43e3c408bcef85d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 16:36:57'),
('49d40b46ff203c5259908cf972', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:37:39'),
('49de378163daff6b9d502d9523', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:32:20'),
('49e8d4cdddf3accf28640bb7d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-09-28 10:45:42'),
('4a0e0afa3e0b74ae968b03452f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 04:50:33'),
('4a1addfae976742791d542604e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 07:48:20'),
('4a5bac2666b4bcc2edffdc4b02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:23:14'),
('4a65810316dd7f98ea5b18e60e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:45:26'),
('4a70fb8d09481d98ccb94d5230', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:23:04'),
('4a7f0be8d52d9ab432836b129f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:21:44'),
('4aaa0f7adfde1ccd7a066c8b02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-02 04:02:26'),
('4ab0a5f2413dd61e6c637d5790', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:10:44'),
('4ac56c3f10c5e43beb669bc2f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"vouchers\":[]}', '2018-10-02 09:02:25'),
('4ad4b065ffc860e7a00ee2cb07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:27:07'),
('4af8f7902603a9a740338ed95a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:12:45'),
('4b10e123a992f9aea1056f3d56', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-09-28 13:31:09'),
('4b31f8863002622b566bea65c2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-10-02 15:51:47'),
('4b37ba9060005ae453ada20486', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:55:51'),
('4b4d8b69db48647d784298e858', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:36:49'),
('4b5bce7e1b6eb1a311b630d1f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:46:34'),
('4b670f296dadfc039426e16ad6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-30 21:50:45'),
('4b6c97b3f582690af76c8dc60f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-09-27 06:57:53'),
('4b6eb4f900a65d8db9d0a3fa89', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:27:24'),
('4b8136d697700448a43f6fa1b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:07:58'),
('4b9980b6a3f6d075633bb8c8ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-28 10:12:59'),
('4bb8bc5b0f589b07b7c6cafef3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 10:07:48'),
('4bbdc1f7b78c4b230339fc00ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:21:24'),
('4bc64fcb4d1a5bf9514c36c132', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-01 07:15:54'),
('4bccf45ae041fa89d7c3716069', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:35:20'),
('4bcd908922fac345038075e5ac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:32:25'),
('4bd49b8fd72695323972c29e64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1}}', '2018-09-28 10:45:57'),
('4bd94da631b15d24ff08cebb4e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-09-30 16:08:23'),
('4bdc71cc2c9f0d537c5dea72c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:14'),
('4be9bd3d453e43ac0c6ee1f59c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:55:31'),
('4bebcb50c8ad63ed903c018fe9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:20:04'),
('4c030f43adf3044a4789c958c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-02 15:21:01'),
('4c1508e734f3fbf4b090f6c989', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:47:40'),
('4c19a713b2b99191e81acddcf4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:20:52'),
('4c6a46657f26bec793b4ae83c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:53:46'),
('4c8c8ef668206992b869a734cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-01 19:11:07'),
('4ca263747b4ba37bcd73f76b4b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 14:16:19'),
('4cafa3a8da2dd795a664d165ce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 03:58:53'),
('4cb088792f745b84da2793931f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-03 00:36:01'),
('4ccd5c9c8101679cb0b602acc6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:22:08'),
('4cfc372879d8cda46072a7e485', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcyO30=\":1}}', '2018-09-29 09:16:04'),
('4d0af29bc9b1d3416067bae73c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:57:14'),
('4d1b953a0fc4d336c12710f146', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-09-29 10:47:38'),
('4d395988746281286561bb176d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:31:39'),
('4d48d1b58fa4cd61dfa4ed63a5', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQzO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1},\"wishlist\":[],\"customer_id\":\"2\",\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"venkatesan\",\"lastname\":\"rajagopal\",\"company\":\"\",\"address_1\":\"77, Marutha nagar main road,\",\"address_2\":\"\",\"postcode\":\"641041\",\"city\":\"coimbatore\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"venkatesan\",\"lastname\":\"rajagopal\",\"company\":\"\",\"address_1\":\"77, Marutha nagar main road,\",\"address_2\":\"\",\"postcode\":\"641041\",\"city\":\"coimbatore\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null}}', '2018-10-01 08:58:19'),
('4d5c724308461e8aba591771aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:10:05'),
('4d6271c40a51fb8cf3d4a95278', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:43:23'),
('4d974e1e923d81e2c183a08789', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:11:49'),
('4d99a00fa92f8eb4f340954992', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-27 05:12:10'),
('4dd602f513bec32bac61ea7286', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 05:38:10'),
('4de32e44282331606164d345b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjczO30=\":1}}', '2018-09-30 14:21:03'),
('4df7ab42ebc5e5e1f3bf6ca221', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-01 23:12:25'),
('4e003b70ceb88c61a334e2dfd6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:41:26'),
('4e11f294d627d576cbc0362973', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-09-29 09:01:40'),
('4e216454909425f623c58c3666', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:40:29'),
('4eb603ce2b6c4b80dfdc574d81', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-09-30 18:29:05'),
('4efbc5db4a2996f6bb5072b474', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 04:47:41'),
('4f0f4a148c72226b16dbb3344d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:31:35'),
('4f6c750f5979823a26e7a41c99', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyOTt9\":1}}', '2018-10-04 00:35:56'),
('4f6d7c279ce925eb4043432ea4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-03 15:36:38'),
('4f7e39e195c4f2d8feb47684b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 10:50:46'),
('4fbb05b63467859cd4f567524b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:45:39'),
('4fdfb84ec811e5d2add3123bd2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:36:37'),
('4ff70ab5a8b969e7829112d969', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:35:47'),
('4ffec5fb29555df48e588ff2a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:05:37'),
('501ec850f8598cf10b048fdc4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:27:33'),
('502c6e42091d53313b8178ef44', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-29 09:32:55'),
('504160b5f6b5e3dc16e668876e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:01:23'),
('505167f184e39fae229f2c28f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:55:49'),
('50933d49670e65ea0a767a38a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:37:59'),
('509dfc4cd8318127c7ee7a7229', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:54:59'),
('50a1c75cbaa84982be33be2797', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNjt9\":1}}', '2018-10-03 23:30:40'),
('50b265e2dcaaa99534de150cf2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-09-30 17:17:18'),
('50b39acd303dd604ab20f5016d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 11:53:36'),
('50ed1f81717afbb1db3c047272', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:06:03'),
('50fd3e283b08968a099126a0e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:01:51'),
('51086fcf87eb34534094585d3d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 23:45:34'),
('5122320d70465e66cfdd6c81f5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-10-02 19:25:23'),
('517b5506481e518b513ce19574', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 07:42:51'),
('517e4c3969a904a2c1bd9e962b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:42:35'),
('51b66864b048cfa9e072f16dc6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-01 16:06:02'),
('51c3f53600f7872d0ebb72191a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 14:38:07'),
('51d74821244b54a618cda82d8f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:25:57'),
('51ed6c1e609726742397e55a58', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:37:21'),
('5200badfa33e8ea60cc16fa52d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-03 12:30:21'),
('52158d2af9c29492872763d636', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMjt9\":1}}', '2018-09-30 07:37:07'),
('5236554c48d1e3de385c324889', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-09-29 10:36:14'),
('524bf198b4de5958874940c83c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-04 00:16:34'),
('526815ac5cb357bf8478024ce4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk2O30=\":1}}', '2018-09-29 10:56:16'),
('526eb4dab62546d9952dafd4bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:46:04'),
('527dbd924acebd74069f142976', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 14:35:38'),
('5285a0a891d92a19db5641d223', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-04 02:43:05'),
('528af03b56bb922e77243882be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:15:26'),
('52ca2192a0f90cf0665541e218', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:51:30'),
('53245e9cb1ffc1fe18c6c3cc70', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-29 12:36:49'),
('5325cbd47f90c8e813ed6fd727', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-10-02 15:40:18'),
('5332ca8ead57cf773e6b5a6ba8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:08:10'),
('5335a641b21c1c6aa8ca0be67c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:53:31'),
('533a50f6d66337ff89ad31ed5f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-10-01 04:57:59'),
('5355367cb4330a95e73d916026', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-29 21:19:38'),
('53560ccac3f8bb84fe02dc401e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:56:07'),
('535d2d5444cfdae5967d2f5c6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1},\"user_id\":\"1\",\"user_token\":\"tcF7Ppo4fPaPJKGxxdoj5YF7He5W9lRj\"}', '2018-09-27 08:55:02'),
('538964963118821072a2c56e68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:25:25'),
('538e12c9b41e7cf113689d0cbe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-10-01 16:01:36'),
('5394a0dd40fd140b39b711fd89', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:55:41'),
('53f0d4714d3c79433fb5c3fec2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 09:41:15'),
('53f512fac6af8336cab024448b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:08:05'),
('53fb4a547c8554b0bd850afe83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-28 06:13:08'),
('5421e7addfec54d7f710e5fbf5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:46:25'),
('542527e8139574248a7edf6ed3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:48:22'),
('5439901bc6f96795b5f01b57f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcyO30=\":1}}', '2018-09-28 09:45:30'),
('544db95cfb450f511499943d7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:12:04'),
('54548047e3eb02085cb5d72f10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-03 16:51:19'),
('545be4b7a9c0f6e5667d820fbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"rz5njqwaUYFv44otQUSuqbzMgd1keSX0\"}', '2018-09-28 07:57:45'),
('54667af47607ebaccd23ca2950', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:05:53'),
('54b11569a4d16f1f77201e903e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-06 10:06:21'),
('54df69e3a5622147dd1d217376', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-29 22:23:18'),
('54ecd87549ffbd6f5ca6b79d73', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1},\"user_id\":\"1\",\"user_token\":\"m0zZIC2hhwYdkgQNDtlF6wC7tHdykiEe\"}', '2018-09-28 14:23:54'),
('54edfbbc6da5fcf9220527e2fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:26:33'),
('5565cd74f7085f588b1bf1499b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:36:30'),
('5569922dae600f77b7a394068e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-03 19:55:09'),
('559c27ed70fb335f1cdbdce5f1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-09-18 18:47:22'),
('55a57cd80623071ae2c461f2d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 13:51:52'),
('55b64c5e069192047d3cb83999', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-03 15:25:10'),
('55b9eeabb4f67abeb74a8e6687', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:43:25'),
('55d6e22de3df79607c7217fa74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:25:55'),
('56359e31c8540bba122ade2436', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:40:53'),
('5659847ffe8bab505de08e799b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:55:51'),
('5674a8e6e8b82fcc74fd82c4ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1},\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-09-12 14:48:12'),
('5675adeec20cc671c1f442140c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:01:09'),
('56b957ac34f59df94d970d0b02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:31:23'),
('56cf5fb051f2e788b39d99792e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:23:41'),
('56d29432538544f76e72d9646c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:15:30'),
('56d63ba9976c4f7f8c366db560', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:47:41'),
('56da71fe3731bbb569a0892816', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:57:17'),
('56e5ec35c0d35e736f8b914b5b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1},\"user_id\":\"1\",\"user_token\":\"Nr8Ko5Zuq28RuloMWqfzs6zbCVpQSIws\"}', '2018-10-04 07:03:56'),
('56ed9f79e016a2143ca766b569', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 11:23:51'),
('56f6f0e54e26ec39c4a6851b50', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:55:37'),
('572374d12dd3dc4dac37122366', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMDt9\":1}}', '2018-10-02 12:06:06'),
('57265ad0dd7b705434e5be338d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-01 00:16:30'),
('57327fbf2ecdff28bf11639a06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:07:02'),
('573a6dfcb43173a4cdc89e72ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:42:05'),
('57405d9e8887c50f0d94fc9ae1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-30 03:05:38'),
('575bcf35f1c820e9118aab6abf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:19:15'),
('575feb9ae33abcd9b93db5ff19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:21:29'),
('5768b0aa16bb78f5df159b2dbb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 04:27:34'),
('577ac52b87f12d0c159d714f8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:03:23'),
('577e7cc0be0837a889987af07f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:17:53'),
('577ff0e33df8bd735892223769', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-03 06:42:27'),
('57949dafd88002991f604341bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:51:04'),
('5796f9e3dc972e354e8e8b58c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:36:09'),
('57aa464940e3c040b23594eba7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:01:17'),
('57ab72586e1f555da92f6ee2f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-10-02 05:37:12'),
('57d76996a6ecbbfbe988f59901', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:10:55'),
('57e75b6b41d8596f701cc70ab1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-09-29 10:10:18'),
('581855285a2d1f82c86b6fd491', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:50:33'),
('581c825b44da9ab88e468f7f5a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg2O30=\":1}}', '2018-10-03 08:55:55'),
('584ffd6dec2d292c95f5aa680d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:15:41'),
('5857bac3ab20a6481db09a6622', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:01:22'),
('5869c4d488a5a8b01143132cd1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:27:11'),
('5871f62c98a61130213315fce4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-02 00:58:41'),
('5894029577d9d85f1915e8539e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"redirect\":\"http:\\/\\/fashion4.themesbin.com\\/index.php?route=account\\/wishlist\"}', '2018-09-18 07:56:36'),
('58eaff57d604750a8fd3dc4153', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:30:30'),
('5910112a314f460186fa59ba9b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:11:06'),
('591238d2269fc01471229f8b69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-03 11:41:14'),
('59227bc5dcbbc764f5a365eebb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:25:12'),
('595cc5ea401c1d6b9f38f91e9e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 08:06:30'),
('59b698845eec28ca7e9e8c3650', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:00:30'),
('59cfb2ed308dfca332e70901fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-01 01:05:38'),
('59ede4d63e5842a0e9bc14cc71', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:33:25'),
('59f7e177ecc2eb49865b76942d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:13:47'),
('5a504e57c428ba8b7cca2bf469', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:32:39'),
('5a54ca20ca62637c9dde57f3de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\":1}}', '2018-09-30 13:20:44'),
('5a688be6cb32f8afa85417b57e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-09-29 14:00:58'),
('5a87cf6aa09cbc77e6b5612364', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:16:41'),
('5a8e7baea0f453f8504702b2a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:31:31'),
('5ade2233714ebb74d053b0e4bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-09-29 10:20:03'),
('5b06d02bef0133d884836a94bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:02:12'),
('5b294ef61451b0826eeab1f5c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-29 00:38:36'),
('5b327b6063bca42bc2a38fe63e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:16:08'),
('5b5b578ebab7357ba9578308e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:46:07'),
('5b88a2f89c24a086ad641cd0c2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:40:19'),
('5b96df1785e71725410e6ef8cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:03:30'),
('5b9fffbb8f7a751928b412e3c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-03 03:21:09'),
('5bb62c3c0a232a69c9634d422c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:23:24'),
('5bd4c2c4f64f7a4875e6f1239b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 18:34:49'),
('5bf9aa73296d9dff2dff71e2bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:05:02'),
('5c16d08b2c7b69be3e81c74f19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:37:21'),
('5c20241e3d107c117aa6dba665', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:06:56'),
('5c23189df267c2560157cd3b06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-09-29 16:30:44'),
('5c41d502eb7c46e4b768340997', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:15:58'),
('5c68a333cca2fa14e0d712c8cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:58:34'),
('5c7fa9717910a71162709568cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:53:49'),
('5c848727dc55240408ff760854', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 06:17:10'),
('5c8de42f02ce1ca0701442b464', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"68ah7KUWyU3vRtCr4Bd9Piq8VTwJY1in\"}', '2018-10-03 08:24:45'),
('5c92231e41bf0bc46802181fe8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-29 22:37:11'),
('5c979c3177f31a3dfb34852bc9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:40:32'),
('5ca36426e636e012337993ce7b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:43:33'),
('5cc68373250b6cd8ecd956a56c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 09:10:17'),
('5cd20174408f2dab23a6b55d6a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 12:21:02'),
('5d1f08e287d1329eac1a875cea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-29 09:06:10'),
('5d2a0bc0a538f5a2bd011f660a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:26:00'),
('5d6d6fd4ed5bb6db0a3871a111', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:02:58'),
('5d7a4905780d58424465c2c1d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:10:58'),
('5d86c5e2e2034101a2f91c15d3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:56:04'),
('5d8c305cc2920c215ec1a2fca8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-03 08:35:18'),
('5d8ce27686b046d3561928a1df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:11:38'),
('5d9cd689a3d9490aabf978caa5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-09-30 13:30:22'),
('5db0c85c468afc4d428476f579', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:00:37'),
('5dc076af52ec13dcc520cc3c47', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 09:19:20'),
('5dcb9f2d5e0866849bf4248c6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B4zdYXu8zlyoOYrO6TVUdSAYdS4CEehr\"}', '2018-08-27 12:50:22'),
('5dd3600d82f9d3accc33d1858e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-09-28 10:21:12'),
('5dd66d6966d15a63dc88b97f9e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:41:40'),
('5e1a96f9db79170c9ba1a0b24f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:09:59'),
('5e6402c1124cef9fa23670ab4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:31:37'),
('5e7f62e80b1942500dbbf91a07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 23:48:35'),
('5e9cbcf29c81b8ad3b0ba3a388', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 23:15:17'),
('5ed8c45f0de4ef8cb5d78be958', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:25:59'),
('5f241aa8a0bc8019fdd0533681', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-10-02 03:55:25'),
('5f489687e814d77593fb0031a3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 02:32:18'),
('5f5e727e0d75d6c0857bbed906', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"compare\":[],\"user_id\":\"1\",\"user_token\":\"jaAYrhya5nR1fZyfzrga9Ln9TSFLwCmf\"}', '2018-09-26 08:56:05'),
('5f74e489b7809a3eb7578cc0da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1Pr3WmUgIkR1cVPKlzSgUdIPhohqvwzO\"}', '2018-09-10 13:52:27'),
('5f77840ae58cbab8a07ffcce7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:35:35'),
('5f91d879587c1fba41d5b33f93', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:25:36'),
('5fa612e2ec1ac4dfc1c6676204', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:55:42'),
('5fc6d674628aa750d4bd297b6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-03 23:19:16'),
('5ff162687aeb623d1ce87bdf84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:32:36'),
('6004d5d4a23988d9313b0566f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:47:04'),
('601713823587de9254fbeac039', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:05:47'),
('6026513abcfef7e90ec9a631e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:20:31'),
('6041309b5153160d09dd373c1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:00:18'),
('604445f012c2a6a0f9aade0103', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:23:36'),
('60455a64d257f33746866ad2a2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-28 14:58:27'),
('605114918c1ae71152e8ae9593', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:46:47'),
('6069e867ad97fc9fc02d1f9df8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:31:02'),
('60992d041d101e6ae59a78638e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 08:39:55'),
('60a4fe78880371114b7c746b81', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1}}', '2018-10-04 05:53:58'),
('60abfcc4344795087d9b2b4acc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:15:47'),
('60ad0f35b10c61ea4d97536e40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:26:09'),
('60b1c0f673afc03dfc31df2e56', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:03:27'),
('60bb0183d5a6bb6bb48b836ad6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:52:50'),
('60d019ad47f07c05968f0b03d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:45:32'),
('60e8c8ec22b148138214bddddd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-09-29 13:28:33'),
('60f46c3636f6cf7a60fb10aa58', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:56:29'),
('612d128ead8b0f9e726259072c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1}}', '2018-09-28 09:41:02'),
('6153003d361eed959e93b598b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:17:52'),
('615d43494ef0efb92a8f4e0ed1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:09:58'),
('617ae82c8b6bc5be729e66288e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:31:54'),
('61d53f65ed7af60a0b4a2bb379', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:53:43');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('61faaae4306b5a1bc66ea99c18', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:12:46'),
('6221e6af4af2064202d13e879d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 06:00:28'),
('6229415e421c163a978073f10e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:21:39'),
('623b6faf79942bd2d187802ef4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:10:39'),
('6257babc39f0ec97931a547ee3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:11:40'),
('626242713ff605c331a221a470', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwOTt9\":1}}', '2018-10-04 03:52:01'),
('62740646aa8901c2678aee4509', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:01:56'),
('627a033f44d2d4bfe34bbd5402', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:56:17'),
('63346c6cb12ddb038e93c6bc1b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:20:18'),
('63757dc06d080fa2547f278a7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-04 03:20:25'),
('6380b106c5a51350f63af5031f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:16:30'),
('639694f2cb2669ba828bb31795', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:12:03'),
('63aaf76ef338f9830cbac81f1d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:11:29'),
('64135c0c17ebd2615836f7c54f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-29 22:00:40'),
('642db2f0e397e9a96bb87502c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:56:24'),
('646b7e3d7e1b80ab5825ec2c3a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-02 20:44:49'),
('649bcda416eda2b2fe9d3a9fed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 10:25:20'),
('649e8e29294ee86c854c120339', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-28 19:16:10'),
('64c86dd0a8b2a3872c8b152b14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 22:33:11'),
('64d63c535621eab913b17a19a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 04:31:10'),
('64df52e0d235c3b1d34441e3b2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:36:21'),
('651232de2c234b3ba6702d728f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 15:55:32'),
('651f84892af38d9cfc46fb64b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:48'),
('6561d7d262143b004762bebaf1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-03 10:17:45'),
('656bb4b7b6eacf1c06ce9df324', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:23:43'),
('658277d7111dd358ff48f7054e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:05:43'),
('6583c956a6c6c77ab526e7a247', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:26:43'),
('65a927cc5feef879ef0ac1e456', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"mDOijGSQgAwicTNYBuwWWeVsTHje2Tm9\"}', '2018-09-07 14:30:56'),
('65b7ebbcb574371e9ecaf28459', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:16:04'),
('65d49ba71accbaa90d03735073', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-29 22:57:18'),
('65f191dc7cdfaf2e299cd61387', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-01 05:06:35'),
('65f543681fa2cf6ec3fb7d8e3d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 15:01:13'),
('662295c59b6cf0858f54ab2b62', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:20:35'),
('6624903930dc4840b09a1cf2d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:17:43'),
('667aa1582d9e53edbe0039f83f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 16:35:03'),
('66adcca9d04a4a82881f5fe1a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 10:41:53'),
('66baa73c36f0da5e84b3c0400f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:36:17'),
('66c311310d61551a11269a372f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:36:05'),
('66cb1abf9977f48fdbf9136e93', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:51:26'),
('66d9a135034805603af1117886', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 09:35:31'),
('66e4b1a0a2ac7caf407c2dc125', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:47:59'),
('670689e3a7ca7364a7b89019c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:47:30'),
('671c201ea5bc2223140930f12d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:01:05'),
('672ebc061bf0a7bb02e626d2e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:17:40'),
('673a333c8baea3ec725a8ce255', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:13:41'),
('673c9be6e0a2e4ec0826ba6080', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:42:54'),
('67562c0a81fe48ac5b35505e7b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"EmrpccIKMeluQTUCrA4smzDfxYjSbkTA\"}', '2018-09-07 08:43:19'),
('675cdf4674dbac40702f44a148', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-03 17:51:38'),
('678263782ad4b3c6b3254e4160', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-01 08:47:45'),
('67835c06ea94b9fe964a629180', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:47:00'),
('6785a8c5f197f34fee0801061f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1}}', '2018-10-04 07:06:17'),
('6791c0655cb42ebd784a6a1b30', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:06:15'),
('679788b0d99b8c85fad828a5bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:33:35'),
('67a2791f48b780b7595a4000a3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:20:42'),
('67a431a530a7fb99f7465258b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-04 08:28:13'),
('67a84a401094a01be1dc49df6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:59:19'),
('67afc2807387469da4ce9defbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:06:34'),
('67b999fbdebe01f3c8df08521b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:15:55'),
('67c2405a87fdda313dcd7d9590', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:20:41'),
('67ce26fb8a023273ae8561b207', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:13:16'),
('67d19d413fc1dc70a1987fd5b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:51:46'),
('67d24671c8961b34b4dc9281c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:22:08'),
('67d8edbda35613339697d82e59', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:15:19'),
('67ea32da4bb58f159d88a6e20b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:17'),
('67efb7877790cd47b26615a34c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:11:33'),
('67f18d218d702bbfe11bcec307', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:25:34'),
('67fc1287aaaf1844759e1a62da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:21:19'),
('67fec94bef7e6c4d7f905adf8b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:35:28'),
('6808055b0322669d64062ef788', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-03 12:32:49'),
('68282ce35340e29a9c1d48eab7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 16:14:48'),
('6839184af9db45f8a8ac2c0ee3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:05:08'),
('683df06c1c235f6e90d1c6150b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1},\"user_id\":\"1\",\"user_token\":\"qxsEqRjWIJFU5VvEQcu5SVwq1nJaM5fH\"}', '2018-10-04 05:47:49'),
('685104f255b17fc905cff9c7e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:41:31'),
('686013061bcc0079f945d31ee9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:49:54'),
('68a3c405e0cdfd242d206d7e09', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:43:37'),
('68a69db82a53e04743926e8e28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:13:38'),
('68abdaa0aa2b2cc5bb82ccf736', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:41:16'),
('68cdd563cf81db0537f3b33773', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:06:38'),
('68ce9aab7dc9f8af3ff0af0297', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:25:46'),
('691426be78964987343f2a4a52', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:40:48'),
('6918dfb9054a1e9760a618723a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-02 02:50:39'),
('6942c605d0f41c32eed60c65d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-28 17:25:50'),
('6948d96d1507649b8c65b7bb6e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 07:10:05'),
('697e6ae09f7097aa853979751a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:56:05'),
('698c9cdb45a4ea8341d8432242', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-09-28 13:20:51'),
('69a0d734de79d0a87d3d1f2a6a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:26:22'),
('69b88fc0f2396e41e007fdab09', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-03 19:52:17'),
('6a0bc8eeab7fc54f36888367d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:54:12'),
('6a0e56368d32edfc814a226029', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:56:08'),
('6a21ab9e1895bf582857de68da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:11:39'),
('6a43e25789e95658e8639e5193', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:55:36'),
('6a4d0df92a5a8c47f46a39d0c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:55:58'),
('6a5eaa97ead7e134e4638447ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-02 22:51:09'),
('6a7372c0c7627d4fc68979205a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:33:17'),
('6a787bca90c854c0d5f3819050', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:21:06'),
('6a7f1ca22db2ffce288e571369', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:30:37'),
('6a89c6cce0269e23cec26506ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg2O30=\":1}}', '2018-10-03 07:00:59'),
('6a8a736010fb52fdba73f231df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:06:19'),
('6aee62a9f7caf5f156445db4c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:11:30'),
('6b1f1977590e2ec265f52980b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 10:12:52'),
('6b31ca58d303e6a696a3c3f444', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-02 12:00:07'),
('6b5c3739d8a83bee500ed4bc85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:29:53'),
('6ba6cfd7ebbe04b1f2f9698f04', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-02 07:26:19'),
('6bb3392819a001eb894bbd0038', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-17 20:49:24'),
('6bd268b46132dbae8eca051613', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:49'),
('6bd35847721e13f75eb7ddca40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-02 03:16:28'),
('6beede0607fad5dbca88ec7580', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:27:59'),
('6bf0e9a5dade0660b70f2d0a25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 06:04:00'),
('6c1514f0952225f548f2c1c7d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-09-29 18:15:49'),
('6c196e5c4331194220fb167f84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-02 14:55:12'),
('6c34e1737f5fdf8b31c4fe749e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 12:22:00'),
('6c44fa2075ff4350a25b61c83a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 17:26:10'),
('6c4ef9d7e5718bdd8b8d9ee7ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:30:50'),
('6c9186b4e313bc2586ee393381', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-10-02 04:14:58'),
('6cbb97deed7c9b6a8ef9bdefbe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:53:00'),
('6ccce988b8e6ebbfea58a1ae1b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:58:03'),
('6ce1c77bb8d02bb8ac05fb03a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"rGFUprcjEYmH9OCjHe5Ubz1bMJJd9eAY\"}', '2018-09-15 13:06:37'),
('6d0cf07085050a31065cd15435', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-03 11:38:13'),
('6d0d788ff2585b82f249395e91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-29 19:34:36'),
('6d10f48e0e443f3d7a7d24038a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNzt9\":1}}', '2018-09-28 12:30:02'),
('6d21142fa5fa6d77254c49fb9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-01 15:58:34'),
('6d480ddf1e7faa94b472da825f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-03 05:06:38'),
('6d8d8697d910f074b705650dc8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:08:46'),
('6da0cc2caf6e5c007995d7761d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-02 23:02:38'),
('6df06e2e73aedfad87aacc034e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:18:47'),
('6e013d6a87d1473872086c3320', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:35:05'),
('6e273ea8b6198a50e83a048947', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:07:38'),
('6e3b9fa0f448135713a1849754', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-02 10:56:04'),
('6e6b2fee138296d66631850e90', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 18:45:47'),
('6e8583e07434274e070ca29f18', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:47:23'),
('6e886a7f7eaabdd39235267750', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:46:06'),
('6e8dd566050271be7a7be54eed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-10-02 20:25:26'),
('6e9f8acfcee970139ee11a3097', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:38'),
('6eab2c7e2a5071141235116ea8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:14:42'),
('6eed55e533e91bd0dc3a63ac69', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 16:01:09'),
('6ef9b67d8a1d9ef778155b761f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNDt9\":1}}', '2018-10-02 12:08:34'),
('6f2eb21c44b9e65d75079f8508', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:10:55'),
('6f523561469c62aa24858d3e57', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:01:40'),
('6f82561ee59912e82300a717bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:40:55'),
('6f9bc792235ba355230440db03', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-29 22:45:49'),
('6fab0313be5f156e364967dc2d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:02:56'),
('6fbae3cd67ed64a2e223a5d76f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:35:15'),
('70005406a9a250dee647f2551d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tpII6ebhwoZ7USnNQWpGbXjp7UKp6ogO\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1}}', '2018-09-12 09:19:44'),
('7005f6a61ee4e16eb475f80010', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:07:54'),
('704199becdf0b3fb5b07282112', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 12:36:28'),
('70cabebf53025d4c655aff7dc3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-09-30 15:26:04'),
('70d83a75ea3c9eee0435e17e0b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:21:40'),
('70e6ef4e9523f77c4a8a3d63e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:23:03'),
('710b03d747b41dabe4aaa879d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:45:56'),
('7121417f7503da9e2f93ea3549', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:17:25'),
('713351c598c112b76f18787821', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:23:05'),
('715c85d1b5f2affec2ae36819f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 23:15:36'),
('7160db94f2384c8726344e78da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 19:43:40'),
('7196c8882db2f730e8941ae347', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-03 01:31:00'),
('71a593c09c4331e9cabf64b61f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 16:28:21'),
('71c19e4b5e5d9ed92e20f17807', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:30:56'),
('720446b0c4f8302844771c174d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 16:31:13'),
('720a1cc60f3544438fa6a7a322', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:57:33'),
('724201cf451347d8c601999135', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:42:04'),
('724a673a30e2f6f89e1172b6cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-04 08:21:33'),
('72554a1280b3d7442a839fa4e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-04 02:51:41'),
('725bf392171aa5795b6691aa46', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-30 13:45:50'),
('726bd629eef7275830fcb2c37a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-01 07:18:42'),
('72c25af7ac4b250809700d988a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:28:05'),
('72c89821e29bcf53a08e5800b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:46:27'),
('730e744037769304af1885fd3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 06:32:00'),
('731a5b29f72dec47315d4339fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 19:28:29'),
('7320aae4a150adc19952ec3bd2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 08:53:30'),
('73212ec94f93311580be781bbe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:15:10'),
('73389e026eb2dbe7f5e34fe7b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:31:03'),
('7380dbf32d676e96dc20de13e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:53:16'),
('73c94891a9de78d10e0d1cdc84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:43:25'),
('73e1ce69cc1be47bc9631db53e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:13:03'),
('73eea99938f0b39c28caf407bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:34:19'),
('73fd75eaf09724fa9758cc1b1d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:17:17'),
('7409a7f81661a9cc241a855010', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:16:07'),
('7410a65fd40621f23534ff9651', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcyO30=\":1}}', '2018-10-02 03:55:22'),
('7416ab0fab80b093c08e0b6fbe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-10-03 17:57:22'),
('7444a0c7f22b73f5e24760115f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:01:37'),
('746371e25cbf471839476873c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:57:15'),
('7468bbccd3ee496d748d661592', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:00:23'),
('7469ae6a7f44bcdf31c3e047da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-29 13:23:55'),
('7476d96740ea6f096621bcb762', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:12:50'),
('749dbfb741acd3f9d859e1deb2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:55:25'),
('74b08b59206a36850f889a68d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-04 02:11:29'),
('74b17cde3d90e1752708d3d0cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-01 03:52:15'),
('74c7f8ad45bd0fa3928877c8df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:10:44'),
('74d7982da4a492a777cbb5be8e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-01 19:48:29'),
('74edc5d58ed0ab7e91bca73df7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:50:15'),
('750d8512fa9092f416ec443e06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 06:01:08'),
('751b72f7a25c8aa466b9794863', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-03 15:48:08'),
('75477278e6f64aeaac6b2d1571', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"xcTDmeddCKdYSUdHCokT1vGdqylCMbyW\"}', '2018-09-15 08:29:38'),
('754f1a9a0415e14ec999c980c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-01 15:29:51'),
('7557bdea1ae439c1815e78dbda', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-09-30 22:39:55'),
('7562692b73bcebc0d5f08f025e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-03 19:58:02'),
('758285298398051a710703ce05', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:47:32'),
('759f691ea783945149702fee3f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-02 11:07:26'),
('75bcdd3710f43e5f63e268b417', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-03 18:10:19'),
('75c0683bb7a5b6064033253473', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 17:44:54'),
('75d9f6d2f4be94a29e34201413', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:57'),
('75f1b34daca2969d19312a4a88', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:31:02'),
('75faaefe67a5d7b307c3e48433', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:32:06'),
('763458e5d53aa088912b4fce8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-07 05:11:31'),
('763d06dfa41583596fbe0389d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:40:33'),
('7641ea30b9e6e04526e8c67361', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:05:24'),
('764bb3911001c695600e74d489', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:20:57'),
('764d9b478e97140831dab704c6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 03:35:55'),
('7675cbd7c07707c5c45d501009', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 19:35:13'),
('76799f65d44680afaa19bf11c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:15:09'),
('76cb65367a7c483c4f4c81955c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:01:37'),
('76f111a866393026b3c75999c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-03 14:27:44'),
('7701a5ce71de42cef0b93b96d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-01 16:21:33'),
('7703b679d86791c481fafbaf92', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:46:53'),
('77338239fb946006eb646e6402', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:22:36'),
('7734a959899888c7aacec0b1b7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyODt9\":1}}', '2018-09-30 08:06:02'),
('77459b7e43ca1c532ea785592a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 04:40:54'),
('774b01e9d090b5ecfb7a565393', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:24:51'),
('775248fb062cdc88f21aa2aa0b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 12:02:36'),
('775311bb4b793dc41992c55d43', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 10:48:20'),
('7759132b814a3ac2941fbbb530', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:17:56'),
('776d21befa309b9d21bc859717', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:00:19'),
('77a4d96deea3306b32684dda79', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-03 11:46:50'),
('77a5dcc2048f0741a7db337208', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:37:29'),
('77c57f18279a586bfd6f6ac1e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:55:06'),
('77ca8d9d0f67cb37fff9c93ce2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:26:14'),
('77cca9991ca0f4c7086d09047d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMTt9\":1}}', '2018-09-30 07:40:30'),
('77d0f72841318a73cbf2213a65', 'false', '2018-09-12 05:05:55'),
('77fa0ad039d07333d6e511ba1f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 01:23:29'),
('780c74fec16d929db8a358f846', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk2O30=\":1}}', '2018-10-03 17:22:55'),
('781e185c5a939e38652942648d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:52:13'),
('782864a7fc7085f4138cdfb18f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:46:48'),
('7838678192b5de79d870ad8179', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:22:25'),
('783ef18dffab47e324773e58ca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:57:01'),
('785409c8287855b2a6730eefde', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:25:53'),
('786be654c01109a0d26e1e5ce0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-03 10:24:59'),
('7871547f01dc3558cd98bfbe02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-10-03 01:40:57'),
('787bc9cca9e7e6aa3b37cf971c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:33:09'),
('789fd02636228ce057d5843efd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"fqK0HHcmI0un4d2aJ86hGrKP2KjA1plu\"}', '2018-08-27 09:04:32'),
('78b455f7d6037895fee6da48a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:33:03'),
('78ccb94f2305d2e79d484512c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 06:07:47'),
('792677320a28d91275664241af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-09-30 10:00:43'),
('79683a0995d04f975523078307', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMjt9\":1}}', '2018-10-04 06:55:53'),
('7977e92a2882dbb25673ceca3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:50:49'),
('7994ef56ee1f7ba8d7af93b473', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:45:33'),
('799660d7eb359377d8538a8be0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 21:10:24'),
('79bc951b6248c2e5e5830283a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:40:24'),
('79bff923126f92aee80bd6eb64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:07:13'),
('79c03a73e5dd09c9844240484b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-30 10:00:49'),
('7a0ecbc792d1bb303403db99ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-02 08:35:54'),
('7a2699a26775ae6da2de786a56', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:03:36'),
('7a2af04c11350f315817bd845a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-04 06:30:56'),
('7a49be2ad0a343d8f9784927c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:22:23'),
('7a598738ff263ab21e21620d80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:47:46'),
('7a62cd61c5b80c32c7b5f9b6d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:42:03'),
('7a7804a19554fa0ed4a2a5dda8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 19:42:44'),
('7aa683951fa080fb06a6c99b6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 21:30:45'),
('7abec9636d1b16144a2e8847e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk5O30=\":1},\"account\":\"register\",\"customer_id\":\"2\",\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"venkatesan\",\"lastname\":\"rajagopal\",\"company\":\"\",\"address_1\":\"77, Marutha nagar main road,\",\"address_2\":\"\",\"postcode\":\"641041\",\"city\":\"coimbatore\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"venkatesan\",\"lastname\":\"rajagopal\",\"company\":\"\",\"address_1\":\"77, Marutha nagar main road,\",\"address_2\":\"\",\"postcode\":\"641041\",\"city\":\"coimbatore\",\"zone_id\":\"1503\",\"zone\":\"Tamil Nadu\",\"zone_code\":\"TN\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"\",\"custom_field\":null}}', '2018-09-18 07:51:09'),
('7acc2542c6f783483e437e89f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:26:26'),
('7aea804527f127adce7a725520', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 19:57:06'),
('7af979b4b09b5ecb495ea4ff14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-04 00:30:56'),
('7b3115f4e71d66bf7fd5d56e30', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcwO30=\":1}}', '2018-10-02 12:06:12'),
('7b5271d6ce6d47c902017d5cd1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:01:59'),
('7b6df1849f5df8db97b56b05e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 00:40:44'),
('7b7c4f5a067f2be91e9d33db57', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:26:41'),
('7b868f90fbe567f0152f65e76e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 09:42:17'),
('7ba96ad849df3d0e68e7260aa5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-03 09:08:45'),
('7bd68f84e59e5e07bd7f711cd8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:21:49'),
('7bef57e1848846e2757aceda3f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:02:08'),
('7bf388a9798da3420efc1fb62d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-02 00:47:12'),
('7c1a2a1e60f9afb56a3bd3402e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-03 17:48:46'),
('7c2348a6d0fbc55312951176d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:47:35'),
('7c4b6fe2619b4a73a628177d1e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:26:07'),
('7c4b94999b7a7e67bc2a2e1234', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:00:58'),
('7c776228e69fcc7ac62e4c6bb0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1}}', '2018-09-14 07:49:28'),
('7c838699da1adb8dbfb9c7316a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:52:58'),
('7cc45283481907e55dd2b54ac4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:09:43'),
('7cef5a6e2df68bebe1c397c242', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:48:39'),
('7cffca81d5225c7617b2076351', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:10:52'),
('7d07f12d3a9c94a85b93c243f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:16:36'),
('7d22817ed351102d11851a1ff4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:05:19'),
('7d2937750283054ffbff276af9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:01:17'),
('7d2c6f30df1f208f9be048bc49', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 23:00:19'),
('7d576b73c86521b3a8124bb4c2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:15:54'),
('7d5ee2927892729223082601e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:23:10'),
('7d68fd1498b518751282bfd292', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-02 17:15:51'),
('7da66fa05f972cf3f520734534', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-10-04 06:41:31'),
('7db8bb05855d0b386fafda6383', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:27:53'),
('7dba9639edda7cb07b4b6f0b3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\":1}}', '2018-09-29 10:33:39'),
('7dbded8c6855f9abd7cfe34bf7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:35:30'),
('7dc0cefd8da5e727e996b61324', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-10-02 01:07:17'),
('7dce1b6d61e9e52c45ff46e115', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:35:52'),
('7dd332207fe7e87ea7ee00153d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:47:39'),
('7df13ffe5710e9fe47d955f94f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:28:09'),
('7e05cefebdf834e82ff93801fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:36:44'),
('7e1708c09d924dd09841b7855c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:41:14'),
('7e178d9b5f7335ff92e244e227', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:38:24'),
('7e2b55f33605a1659bfbbaa592', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:50:18'),
('7e34d9120440dce4db2a8c6bf1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-30 13:05:41'),
('7e66da68c07aa71eca0ae0a0ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-02 17:00:45'),
('7e67c2a5a9b838ce72778378df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:41:36'),
('7e6cfe38c4038721585a1d5d05', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:55:32'),
('7e7eefe719fce223a90f844d74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:26:16'),
('7ebe42d863f99701732abe717a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1},\"user_id\":\"1\",\"user_token\":\"vkOJaeKXHonhQDJYZzOL3d1435IEHHk5\"}', '2018-09-17 12:32:42'),
('7f244262ed4f796d24255617fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:42:41'),
('7f478971d7ccde7772ce6bff90', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-01 21:15:52'),
('7f57535d4072210744e7494957', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:32:51'),
('7f5d04d34c2e67b221dce8ca76', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:31:10'),
('7f6c8003f18af89dfde030f789', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:16:32'),
('7f7379218095bc9857ab54ad61', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-03 00:50:21'),
('7f8d7f97ff0abd77c58a2e24bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:17:23'),
('7f90927fe3bb6fd965c352701f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:21:23'),
('7fab43bde5b228c73c66abc049', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:22:21'),
('7fd28fe0ef8246802f8212047d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:46:13'),
('7fe77c85c42864d8fc1f4dca83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 02:26:06'),
('80018613d5dc1f48560eb82885', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:52:07'),
('8005bff10b9e37f6cae8cd18e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 21:17:32'),
('8016de60c78d6d59e058c48b54', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 23:35:51'),
('80266c1e3aa5d9c767dbbf2572', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:53:21'),
('8050d58de4e3b58c53c495464d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"kzwzIBszIZGYPjw3js9kuDLlfLgyVeNK\"}', '2018-09-18 07:54:38'),
('8072b41b50b1e339a2ed530e7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 14:15:24'),
('8085eb8f00e5c5e0102ec1463d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:39:54'),
('808c4394b8e7719fad3efa912e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-01 09:48:02'),
('808e1d991e70c23f115f4ab534', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"5nRKDPhkHUOODaIsX2RA8jzm5WB1l5A8\"}', '2018-09-14 06:59:44'),
('80919904196921402effda47d0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:19:57'),
('809464fdac82da0163fa784aa3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:13:22'),
('809cce3a4ca2e92754fefb455e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:33:27'),
('80b6d0bae9db522650f2d72c45', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 16:52:34'),
('80c23e0058e66afd0acd1f23e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"k4yG2mInlL9fB9gtO7TM7EPD8Wrt5UDy\"}', '2018-09-15 14:59:30'),
('80c7e264058d4146bba3f7d9d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-30 02:18:24'),
('80f3b2978e1c357f348e8bc5bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-29 22:02:45'),
('80f7b7f094472bf93fdf054297', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-04 08:14:53'),
('810a75c39087b6883e03654e4e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:52:41'),
('811d912f30c69d28b5f503ad15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:01:09'),
('8124a68e36dca053fae07c3f11', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-09-30 10:26:34'),
('8132611cebad357dc2bfa589e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:08:47'),
('813a743656b1b058c4e2b5970b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:18:35'),
('813c2e7650ae3c5001151a01e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:37:15'),
('817ad37ea30826a88363a86cec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-29 20:56:39'),
('8181fb44b60fc1d34d9cc5ac43', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:17:09'),
('81b0a4927e0c5898a41b3738cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-30 01:10:09'),
('81d4495c1f0993b16da2d77dc7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:44:12'),
('81f68bd39d65890b1615acdaf6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 14:41:12'),
('820c1d768e4a0d990b22070579', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-30 20:25:24'),
('820c64739c2b15d3494974cf33', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:40:31'),
('8223088b927a91926402b77744', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-02 15:37:26'),
('822366a7ababa19f987c9ff197', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:50:33'),
('822f22a0bcdd7f2aa96d5542dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:12:45'),
('823f5de44cea11768f4a44b4ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExODt9\":1}}', '2018-09-28 13:35:30'),
('8246bd5500e33c9cd1ad1f173b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:27:00'),
('82494397d4d6fd48de6344fcb2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:56:03'),
('8254c2ff719c56405229b3a83a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-10-03 22:13:04'),
('825ac99487706521e93d08152c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 10:32:59'),
('82712ee8e7a8411310dd3639b2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:56:32'),
('829193cbcffa2859e5c6fbdbac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:47:21');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('82a586d6cda052ed0e42895449', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-01 05:55:23'),
('82bec45c8b594476e6381c78ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:15:32'),
('82d648a40e3ac928d83f101501', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"VwssJ1SIag1g7VuvsxZZYSoZIKEoDz2k\"}', '2018-09-15 16:31:19'),
('82d9a5a6cc79180a91e732bc9d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:57:36'),
('82e9dbdaeb732a545c87f57d84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 02:34:12'),
('82f0a437d6201f89e33d4cb387', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-09-30 14:04:54'),
('8333ea038f3e820513360f8fb8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:00:43'),
('83392ac918da550eab882d9966', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:48:26'),
('833979a370116fccfe24e6d2eb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:36:28'),
('8349da8b846edddf2ae1ef6b9e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:13:43'),
('83621aa2cb18fa295674d3757e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-10-02 23:37:06'),
('83739e7eee0cd36637e534bdad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:57:46'),
('8373ce8320d18376983534b104', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:11:01'),
('837c6dd5e3d819430fc4c7c47d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RLDsSuDYufiszil3mGda8mGQwUq0dXN1\"}', '2018-08-23 09:11:52'),
('839e9d4107663fd06f539a469f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"Sbo7My4Wj0Vllng9pAo5DCRUTY2zXbK7\"}', '2018-09-20 08:08:08'),
('83b0c84941948400e88d8ed05d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:47:57'),
('83c690a32331861881e4dcfb93', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-03 23:01:54'),
('83ff32b2cf26739a5a8e93e0d0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 03:35:00'),
('842724835d52a39622a8123812', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:29:59'),
('843a8f2e640bf13800fca477f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:49:07'),
('848dee63d83e750835e69803b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-28 23:37:16'),
('84ac2be46c35e5a8b51697e963', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:12:46'),
('84ce169d1d550f04c49841c56b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-03 13:59:01'),
('84e7159fb261563214cd10f131', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-02 07:52:14'),
('84e720e2f31e21fe9b43b2425f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-01 18:02:09'),
('85010056a46333b9550b8322f2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:40:39'),
('851a0e1cf55261b7b7d87cda28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-29 23:03:03'),
('852941b948821a0478881f91f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:21:39'),
('854220f08b935454a3b6776ca8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU5O30=\":1}}', '2018-10-03 02:30:28'),
('8557c09ffc0806636b08ff1e6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:50'),
('8577a76de9b1c53975fae8f46b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-30 20:50:11'),
('857d4aab8b2a188dca1336d394', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-10-01 18:22:16'),
('8580594ab0dce29427aafce391', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:27:24'),
('8595943c85e40cfd9e08aff6a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-01 05:26:58'),
('859dcfbe873cf9fb1c555f5ff5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:50:55'),
('85acf60523812068de3c91e6ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1},\"user_id\":\"1\",\"user_token\":\"1bGdfzivz6iQQbjlnHFYiWbdxXv0CTxF\"}', '2018-09-18 14:47:41'),
('85b9752ebf32730c94646adeea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 11:15:48'),
('85c3f4741d6280b918b4747bf4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:41:47'),
('85fb48ba669f6d2981248b3eb7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 06:05:50'),
('860e4994c272bf62a7820860b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-09-30 18:23:21'),
('862cbbcc7c00b76f999b618072', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:16:16'),
('864a47686b2fd78f2731607627', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:13:15'),
('86576adadee9adb63b164ce0ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 03:07:12'),
('865fb939cef1bc5fc852648119', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:45:15'),
('866d8fd7ee176011f278845a21', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:14:53'),
('86a8a1447aea18d584cadc99d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:06:29'),
('86ab0ae41052017d8f02a57d0d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-03 18:20:31'),
('86ae46ad18551206254dc49928', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:22:50'),
('86c12f37f894bf4e656ec7c1b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:43:06'),
('86ee5868caf44ffa94a1bbeb73', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-01 23:26:47'),
('8703f96d639db9de169715700e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cFefanUijuEL8OqkHcqn6dtSGY8rmFrd\"}', '2018-09-03 08:58:39'),
('870916c01c9730b55030261eba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 19:52:20'),
('8715c30fa55ad99aae4931dd3d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 06:55:22'),
('8745604f527cb126de6904c373', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:30:26'),
('876292547a2e39cc8785c9ac0e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Ta7xINFSv0EgOdEq1dAOQYZs8eSRXg5x\",\"compare\":[]}', '2018-09-01 10:43:33'),
('879691951d042ad1fca7c8a3cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-02 16:50:27'),
('87a0b4cf40aeaf814ee4816068', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 22:17:03'),
('87c7013b472fc107a5ec2c09fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:12:24'),
('88027c1fe688bce8c5a2308930', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:46:15'),
('880cf10d6de9b2bc00a62bff0c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:08:45'),
('881d7cc40cc4c0c982f5770895', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-20 08:43:59'),
('883d339d932be4dbaed86a70e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 21:21:22'),
('8853ee50fba882632bffc496b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:25:41'),
('8877d58e48f90aa3c5743f4d85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-28 17:43:21'),
('889e2592ba7814abb324bf1876', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-01 18:00:09'),
('88a9e211edc1ddc036826af24d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:41:28'),
('88afeac69d443af93a86b51b9d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:33:49'),
('88c8985037d90277b9852d209a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-10-03 09:16:03'),
('88d187205dbec1b849f4dcbc72', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-04 06:58:45'),
('88e1a569ec3dce36fa88de5489', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"recentview\":[]}', '2018-10-01 14:59:19'),
('88ed48833c14ec3c851e011a87', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:46:31'),
('8908bcaf9c3089bb1ef48ed544', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMzt9\":1}}', '2018-10-02 08:09:03'),
('8910afc68f75ba71b369d1db66', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:47:57'),
('89211767a2e4123311be9b24fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-09-29 13:15:20'),
('8938f0fa718bd8addedd950be9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:22:45'),
('89434b1d86ec27f107284123e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 14:51:29'),
('8985abcbf9b26143d447416442', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-02 21:30:43'),
('8986e7f57214b022c87e4a61e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-02 10:41:36'),
('8990214c99e14d1789c7d0aea8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:58:44'),
('89e2a31c40fee900e39a4df3f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-02 01:04:25'),
('8a0c257dd02eff5475f50f5440', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:28:02'),
('8a44ad233af52d57ba73fcd4e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-04 00:25:11'),
('8a67e23c271353e6864c6414fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:41:07'),
('8a723105241504a9f130376549', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-02 12:12:24'),
('8a909f34a54334ac56cb8bfe18', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-09-29 12:42:35'),
('8ab6d2a032cbc7fc2898290483', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"16woBKoH7rxtMD77WNxQqS0rfak3PFSI\"}', '2018-08-18 09:01:14'),
('8ad3c3a4931fe6f813a99d1965', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:26:06'),
('8af639da7b1b1f8779dc664c9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-09-29 13:31:25'),
('8afc0d0d06bfd5744f0e7be088', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:03:01'),
('8b031ad99df9084e71b2bdcaa9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:11:36'),
('8b198889ded4d89e0440657c48', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:08:15'),
('8b2412163c4565060043c222a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:20:15'),
('8b2a765a16db65ec253fb33d9d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 06:54:02'),
('8b347cb447fb5b9f19a9e69a85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-03 04:25:15'),
('8b5d6d62f7df3282b3fa68490b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:32:39'),
('8b6c75919665417f6b2259b31c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:11:24'),
('8bca47a7f5739d369ec650d094', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-11 10:29:57'),
('8bd50f4d445f067c7b7c58f4b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 06:55:44'),
('8becd7d0773961e0929ab8388c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:27:49'),
('8bf139710bceef689494d66b3d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg2O30=\":1}}', '2018-09-28 10:15:15'),
('8bf9ca3525da3a5a060a56363e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:41:09'),
('8c10813a362cb3fb7620da31fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:01:11'),
('8c34fd4f2031949cea3aed5926', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:05:00'),
('8c39c32d90c2d29bb315144526', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ4O30=\":1},\"user_id\":\"1\",\"user_token\":\"0olPnpNzN3GCZ6bk4B2EyBBatPD2lI87\"}', '2018-09-14 13:03:15'),
('8c5663a677b7eb7fd6b926dee5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-09-29 09:39:41'),
('8c7156fd9a848673f9f00536d8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-09-30 03:47:29'),
('8ca5c1d2ff0e85c8385b6a3dfb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-09-29 13:27:02'),
('8cba8df1927971621163875635', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:25:05'),
('8d004f450e01119a62efa73985', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:06:07'),
('8d0f502deacfe0726ce69be472', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 05:36:27'),
('8d13db7b26ab2b370d6e4d4b37', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:05:17'),
('8d22b48c8738b3268787107ffb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:23:17'),
('8d741a3ec0cc3efa80b756e675', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 00:15:46'),
('8d907709d6aa7177b83deadd92', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-28 17:33:31'),
('8dabdf36aa98feb9e48ce0beb2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:51:17'),
('8db30b620c1c176d6b6ba1665b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 10:35:51'),
('8db3bdcc0939ae4d18043f678a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:46:16'),
('8dff941a470f66bb503cd67321', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:40:34'),
('8e221367a17b7d01edf8ef5f25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:48:15'),
('8e23fbdfbe956f28ea65c69d10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:15:14'),
('8e2ca2cb045dba6871d01dfba2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-10-02 19:07:12'),
('8e71baf356d99650d320683118', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-04 09:08:39'),
('8e8c48a5aef824172433c421de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:00:43'),
('8ec51754f0d97e2ba9409a6352', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-03 14:53:57'),
('8ec792ad4c2871d3243ff36569', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 06:35:42'),
('8ee9c7c5a2bc063a67c0e25abe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-02 12:07:58'),
('8f06cbb5d26f00cd522df68d68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-01 04:26:25'),
('8f12bd7e57d01a74f24733c623', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:40:10'),
('8f2281dcbd7b776e228cbc8435', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-09-29 10:13:15'),
('8f2aceb9f5fb6aee8f58d440be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:58:29'),
('8f3168e5a6bc2ac7eb0694ecbd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:41:55'),
('8f4b26ff5d86c0e83ef83b44a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:08:41'),
('8f58b6e7fd727a360112da62a3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:27:44'),
('8f606c75ff4551af1698e0d02a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-02 07:11:58'),
('8fbefc9620f74ffbbf9fb13675', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:17:00'),
('8fcd4b0f7561cfa27cd3b138ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-02 18:26:56'),
('8fd15e156023adbe6e05f65f3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:25:28'),
('8fdb7e2440c2076e75ba2dd3e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:10:43'),
('8fea5a53b78b6331300c0b94c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:46:12'),
('8ff27f0b6c3ceb43ca39d9045c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-01 07:53:09'),
('90340b04e16ad0aba6ddc27858', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:21:30'),
('904f69162c43e5ff2f9d2f293b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 08:15:58'),
('905236acc4bb32fd81b7d74b8e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:21:16'),
('90a60ff4ed499e9c7af25060dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vP87PSXCnZnDY2lKfXK0n3KkZWEIwTeV\"}', '2018-08-21 13:40:29'),
('90c97097dc1f54492ab7c48ba2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:58:00'),
('90cf17acf3f401bb793c00aac4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 22:06:22'),
('90d4795749c342ccf47f147d31', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 23:28:29'),
('90e0a6e23dab4359f3eb9a7f53', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-03 07:31:07'),
('9120a68faab2905fe4637be663', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:18:11'),
('91304bb99c1f896b0f72e0c40b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:50:55'),
('9145e7907d6770d1518bdb9186', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:59:42'),
('914cbea1541ca1da667e20583c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 22:28:34'),
('9161b83bb0b75b7415b680422f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-09-28 11:02:55'),
('9166fb092b18dd1181d8b2ce1e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:17:48'),
('9175ab6e2650d1f7118ca527ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-29 00:23:09'),
('917a8aab3685a70cf60a8fa3c6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:32:13'),
('917e67257951f962f8c7e3be73', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:20:54'),
('917f0fd23cc176de5bd8a57135', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:54:18'),
('91b2004cd3ad786432dc49f377', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-30 11:32:38'),
('91da9e711fd0ee8149f0f79328', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:54'),
('91e0eb3e975850dd9ef4ee7613', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:15:24'),
('91e2bc99bdac5203d5f800012d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:32:22'),
('91f6de246a9e709ab3dfa38d9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:09:57'),
('920050c1781cf10153bfd58e62', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:55:50'),
('9219c1481f1c23316602333867', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-28 10:31:19'),
('922d851ba414fe35f627baaee7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:51:12'),
('92501b66cb884b8b77dbb47306', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:52:57'),
('9259531f677975b62fa2c15f91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:30:40'),
('9268bcac6cbccbc320b25c47e2', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"WWg2mVzX9UKJssrcxzzfdw0fzq4Fv4OK\"}', '2018-10-03 08:30:33'),
('92948658f04af7995725cbdb1f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:45:52'),
('929a12912b401904fae87caa2d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:31:06'),
('929f1989b3ab8912e073b80507', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:45'),
('92a1f084e28f5aa7e5e3fa2ece', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 05:02:02'),
('92d4221bad6e45f8a8b3e6a2c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:17:22'),
('930616ed45f8549f8ea90e0212', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-29 14:51:58'),
('93117fdcf7e4038fd55bd873d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:15'),
('93273f2594cef92568f40907b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:43:23'),
('9330b6fd60ab8f39d8b92a7303', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 03:53:08'),
('933beb791bade1fbcfa42c8085', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-02 04:55:54'),
('933ff943ad0f651a83916c586b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:00:52'),
('93472ed47de90e6ab696f7e1a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:37:19'),
('934a2bfa9ad408fbf8cc0ff0e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:26:33'),
('935c98a917388293754aab721c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:27:52'),
('93720329c540f8bc77edaaea82', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 19:55:55'),
('937803d083335d695bbe1e4501', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:14:27'),
('93913f1eeded662eb093f32469', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 07:59:47'),
('939e8079eb0a777b8297a1ad08', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:36:52'),
('93b87d9ca0fe0f117bb4944473', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-14 10:58:18'),
('93ba1aee3929782f23d4d652a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:45:29'),
('93df13b3717f554269b0fbdbc1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:12:12'),
('940178f6812f09760057e368ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-04 03:36:08'),
('9432e03825fb45ed3fac704f4b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:56:58'),
('94415d0ce1fdec5109ce7ab288', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:37:06'),
('945b40f6f7b36e360afa27d8d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:40:18'),
('9461b9ebd4f2a9364b2c87648e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwODt9\":1}}', '2018-09-28 13:15:28'),
('9464d126441cf7c75b7ccc3465', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-02 05:48:41'),
('94b62f7919fcebcd6c66bc153b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:56:02'),
('94c0ce5f465930861da3ff8a46', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:50:47'),
('94ca0390d09139c435ed4c3e78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-03 07:51:10'),
('9544ec0f17a61fe7d826ab8c2d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:21:59'),
('954f9f313188588de328bf5f7f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:22:44'),
('956d2420b4db370a50f8ae5a9d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:10:53'),
('9574fa32101d53700e22e5748e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:07:42'),
('95798d7817966a6a5274322b0f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:05:08'),
('957edc98e391148b1baafe98e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:11:04'),
('958979ee79f95c3707cf43d57c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:12:00'),
('9591fc552849039dc75ab31e84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 22:11:19'),
('95ab421d7eda2a89dc1340d08e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:36:28'),
('95b596981be37202b3139687f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:46:22'),
('95c87fb729264874a757f6aadb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:40:24'),
('9603fd09859f227543b49276a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:10:42'),
('962a4b6b934f9629218f677c4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:21:52'),
('9668d4c19c8fb4d9f24531421e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:52:48'),
('967a619618cea42643113ba625', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-02 17:30:28'),
('9695004c6e7e8290df7e9a2c19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:26:06'),
('96b75752ffb49ead0c0fd8e7ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 17:22:02'),
('96d14ad8cf7cd09a3076061aa7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:15:36'),
('96fc9fbd1657153a070bc6a190', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:55:19'),
('97127f7b085e663dcd5074fa82', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-04 02:35:10'),
('973042bf3fbdacd389d367dd92', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:50:21'),
('9791a3b876f32ec1d58c96b12d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-10-03 00:23:03'),
('97a32275d3d574ae84b5cbec04', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:26:00'),
('97d2fb0b49cd0f333112355bff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:16:06'),
('97fa2d8a4ee97e63b66bab7989', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:38:22'),
('98042723d5af61c200e269d506', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:08:41'),
('981b20e98d0da8e169936a7ac6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:05:19'),
('982a680d23c7019ef49ada24ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:20:14'),
('986ebf2a885fb1e265d06ca63c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-01 01:55:24'),
('987afa50dc91a0d57fddf248a9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:17:20'),
('98988a9813cec29a12dca5f82a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:02:01'),
('98c0d5eda652ba4a20e51c656a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\":1}}', '2018-10-01 12:26:06'),
('98e805d1c74a7cb4ba14f8e504', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:47:10'),
('98f272671e4e5876f14b8b200c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-28 15:58:11'),
('98f85880f36bb1ee096cc5c374', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-09-30 16:11:15'),
('9923a278ab81758ac09345e785', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:03:01'),
('992b0793bd499166e689219e3e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:45:20'),
('993cab891881cf1d8475ba9f02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-11 05:11:48'),
('994b934e0be61424b1da88bf74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 13:40:41'),
('995944030f9c138bc6a4cd1e4f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM2O30=\":1}}', '2018-09-30 09:47:41'),
('99874d9ce699861045e8a60062', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:05:39'),
('99df226f969403c278cb4aa2c7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:05:43'),
('99f77911747c892e21d022c593', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:03:47'),
('9a036336c42fbf3e374dc95e8d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:36:19'),
('9a13ce29cd8522b9680205c6f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:53:25'),
('9a18b4af7c1e7bff89a6f8cc8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:18:05'),
('9a4fb9fef9e6400fc25d878693', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:45:19'),
('9a518675fb1bc993981e7b8ecf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:41:05'),
('9a83127495db64f4fa327e3fc2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-30 07:22:45'),
('9a9d047148fa63ced2cec8752b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-10 10:19:27'),
('9a9e149ca5eee7df448db4902e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 01:41:06'),
('9ac96db0c78637e910b64357df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:38:15'),
('9ad5f53f9df2b8db7d08b332dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:16:03'),
('9ae8fdc7b9eaa9dca4ac642683', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:34:34'),
('9b3c7c87519276333da4ab6ad6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 02:06:28'),
('9b9bfcf841a298afcd7017cfdb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:50:34'),
('9baa9cbe2c5c9b11c8b7dd39cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:15:33'),
('9bb51aa677a0b6798ef06c5444', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-09-29 13:20:43'),
('9bff14ee43effbc4a52de28e74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:46:03'),
('9c116bf43ec16d49ea2b6d6360', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:32:18'),
('9c29412d405cf310654de007ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-09-29 13:37:10'),
('9c41d95dd3dc166c11becd71fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-09-29 09:36:03'),
('9c7b073690a62db40b4ffb7af0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:40'),
('9caae75e384cf0707877f387c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:51:09'),
('9ccca20a7e678c7552246b1c80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:24:19'),
('9cf3b4d661451c8668668b934e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-09-30 23:07:38'),
('9d05bef195a9036d00a0a19147', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg2O30=\":1}}', '2018-10-03 02:21:09'),
('9d39c45a1e5ff378482e696b1d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wbQxtegO9iCdBsQOLnnuY4HBqWliXfso\"}', '2018-09-10 08:52:39'),
('9d44802867226a002123bc0bc9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-01 22:32:13'),
('9d52f57a1b4cafa9c880fcc3bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-03 11:06:36'),
('9d70f7306d3d4093c9cdc14c88', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMjt9\":1}}', '2018-09-28 11:40:14'),
('9d8029aaa18fb307d8149c391f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:16:39'),
('9dae9759e062f533b5102c734c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:53:16'),
('9dbda06c55edc9d4746d372631', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:38:48'),
('9e10c9cdc12c70fb437ac2c98a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-10-04 07:45:35'),
('9e2ff885b277f2b68f9d4f5605', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 23:12:24'),
('9e6402fa9e3501bfb7e9b098b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-01 08:27:39'),
('9e67a691376886e2f9c3c1ea4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-10-04 08:36:27'),
('9e6927436423e2f2d04ca3c5f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:31:05'),
('9e71af9050bab71f747bae9525', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:37:38'),
('9e7bbdb550d5d08557db00c814', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:31:53'),
('9e8621fa38ff4655e2a1e7ada6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-01 23:15:28'),
('9e905388fe39199dfd5afa37de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-29 09:21:25'),
('9e96806715bd58408b9f3bcd46', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 06:22:49'),
('9e9e29eeb538d946399ae1694d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:12:26'),
('9eb0ca0ec3a42c14cba5c0ac0e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-01 01:40:15'),
('9eb0cc2ef2ad5c471ff7034b85', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:54'),
('9eb2c19801a934f0ff5068951a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:00:55'),
('9ec72056c6cb140f7cc0fe7586', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-28 10:35:00'),
('9edd3ba7ff4abf09ba5ad38424', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-01 22:51:05'),
('9f23dcb2b04ab58e4157caa0ef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-09-30 21:15:57'),
('9f3471ca1d4afec02dd827e346', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-01 12:35:38'),
('9f35f78e8736ac7667f4cdf200', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:55:49'),
('9f652ab2094bdf8b481b84a845', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:52:19'),
('9f6de9ef111bccdd96cbeeaa05', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-28 10:37:04'),
('9f6fc7afc3641fb81cdaf0c83c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-17 11:12:52'),
('9fefa2d6e59ab65e7843f1accc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:38:28'),
('a0048129099b45208a658f85e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:35:31'),
('a0084576256c1ff7ef4cbf3fc4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:32:31'),
('a01f8af8c459f954456629b38e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:30:33'),
('a03954a4133707062c355d4a10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-29 22:51:33'),
('a068de8983dc9e0d7f02c77e40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:21:03'),
('a07ff9f5f991a5f370ddec0444', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-03 17:08:33'),
('a0875490e79635acff90747db4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-03 06:56:35'),
('a0a3c05f4fe8f6cfe9a7106a2e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:25:09'),
('a0c6a1dd9b2010fb17d2e97fc0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:45:57'),
('a0f8aea68974bb9dc2842d415b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:06:15'),
('a115fb5fd576bab56128f89fcc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:55:18'),
('a135ca5ff73c88fca142d73987', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:05:40'),
('a150c5ddaf376424b3e7054c5f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-29 00:35:44'),
('a154718384d632b1c004439c56', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExODt9\":1}}', '2018-10-01 19:35:53'),
('a172459f7fb71b9a104f8789aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:55:51'),
('a17cae40fb952649fd945b380f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-02 16:46:23'),
('a17cf63d39eee82626917700ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 03:25:44'),
('a18935cb407086de45174d6d83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-03 09:51:52'),
('a19581c4f5199b807fd378644d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:00:48'),
('a1cb4ccb3eeae8e9b9d7811067', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:01:10'),
('a1f81ed0f447adf403bf63b0d3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:31:57'),
('a1fbb43c49b15bdfb8ca9feead', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:30:35'),
('a20b7feb8f04d09aa1289517e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-02 04:36:54'),
('a211ea9fbdf4d4eb14ee33415d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:47:20'),
('a227e318471f6f64b72b11df79', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQzO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1}}', '2018-09-27 06:15:09'),
('a233ca208e77d0d2f6d4a27d50', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 21:27:07'),
('a23a61420c8307d56fbe9c73b2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 08:05:08'),
('a2494805f53180e22953660004', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:40:40'),
('a2530f43703f55c8109b4e2ab8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:01:33'),
('a29db5da3f8d3f9d5fa222146e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 04:33:00'),
('a2a13fbdca15c04b06f1d985b7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:22:44'),
('a2b8f8e1f12e40aedfbc098eb4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-30 17:15:37'),
('a2bb99d29d764a8b57e3d04e17', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 03:50:16'),
('a2cb9fb46b58673efc4b2ebef8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 07:10:57'),
('a2e3afffc1d43edd9f4eb7c11c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:25:59'),
('a30b40b5278b916c81d0fc1655', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:56'),
('a327271c6cbf97106bec317111', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:58:08'),
('a3451ccb6b013e47c202c1b606', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:22:39'),
('a34834bafc0f07f09fb7b762aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:46:52'),
('a3484c897d385c2fdbcfb9a156', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:01:03'),
('a366834405ff10964b97182a96', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:04:27'),
('a369904c173c22218a43237033', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-09-30 19:40:59'),
('a3c9a889f240670d223161f362', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-09-30 16:37:05'),
('a3d3c22fff5249cae6f1caa219', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:04:30'),
('a3d9d99f8127375bdddd3bfdb7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU0O30=\":1}}', '2018-10-03 06:16:24'),
('a3fe6c44aef538c02494989167', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:03:20'),
('a423be95f5d8f7bd8222c3459e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 01:00:36'),
('a4284c098f9f960bf2982b22a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-14 11:08:07'),
('a42939d049343f9f51fdb55ab9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:21:23'),
('a48dc1a95722f20a6e04b6a577', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:23:28'),
('a490ce6dcf546aef6f8abb5dbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:56:52'),
('a49d02318cc2592299e96477cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:36:07'),
('a4b8ee0b73c41c20293b8b48fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:36:05'),
('a4ea39a58fcfb3ea5f2cd623d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-30 21:12:47'),
('a4fbd38de1220addf4f3d4148f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-12 05:05:54'),
('a52353c841833307ee24c88746', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 15:00:11'),
('a54beecaaac37e3939eba677cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:42'),
('a582a41408ddd4a5462d65f189', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:18:13'),
('a5ac237a96c8f6dd6ebee0924c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:13:27'),
('a5bbf99755907103d7caa2653c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-29 09:50:14'),
('a5d11415d0ca924ad366f6f0ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:12:19'),
('a5d13ac77e227fb8d93630c76d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:46:14'),
('a60c31c4d212890837909555fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:50:52'),
('a60d64182eeed1cd230debf979', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-19 10:22:19'),
('a629a161b0f02d6487014b1666', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-10-03 11:45:53');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('a62a8e4f68dcac2fa5ea0b20ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:00:07'),
('a63e8b6ac1cba23f711b007c04', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:47:29'),
('a653b4131c87fcca02f6d958d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-03 01:26:16'),
('a66d3fab433c92727aeca47b6f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:22:07'),
('a66e058d79bc9e9cb586bb8180', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:40:41'),
('a69779f64819d2c40896357820', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-10-01 22:16:06'),
('a69ba66e384ba29ceb9f9dce21', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:37:36'),
('a6fcc3ac0b07eeebac6bcccc39', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:17:37'),
('a70d281746a2b747337e35d7cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:15:34'),
('a70efc385e8a807a1cf54aecf5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:06:06'),
('a72a7695414417703133543946', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:22:18'),
('a74e3744c2392469d0f737b374', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:43:09'),
('a77777f249e808edd6e24acb02', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-04 08:19:35'),
('a7bb2eb9bd27bb0601f267b66c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:36:48'),
('a7e366be30aca3c4dab2f73b90', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:15:24'),
('a8058347fd79244e26c7b38879', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:52:39'),
('a80a997ba8625bd56ef14bf962', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:42:14'),
('a816c1507cd38a556a682770e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:43:13'),
('a81a8d2022ecc3837eeba43428', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY1O30=\":1}}', '2018-10-01 10:56:56'),
('a845924eb87702e2b1f871a17f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:11:59'),
('a8594f08ca69fc6860a8a3f561', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:46:05'),
('a859e5e3991de729855ebead9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMjt9\":1}}', '2018-10-01 21:35:48'),
('a876df7d0397cc08cbc1720707', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:16:40'),
('a8878a64fee3e5460b24b3f389', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:08:45'),
('a8bc55c6cb60bb0920c39173eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-30 08:09:05'),
('a8ca1d2defec706a65d724fdb2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1},\"user_id\":\"1\",\"user_token\":\"6s73qG1iuQEf5TGfFLYChmb62nqJRkh5\"}', '2018-09-13 14:49:27'),
('a90de0f73c0ba4a9329be6fbeb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-09-27 05:45:02'),
('a935044180c0a48874f4cd73e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:37:00'),
('a93b531b700e95a57b12214ccf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-03 13:41:02'),
('a9722de70c8abefb8b0f435d25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:51:59'),
('a9c6c47387c856a836770444af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:38:47'),
('a9c96ee2ce4882cabfa8891190', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:27:29'),
('a9e18a502b83fc38b5bd58db3a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HpY1WqYmEfVRjWggrZ9oUkSFeNf4khmp\"}', '2018-08-22 14:34:58'),
('a9ea2ac97053ca29711fbed67e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-01 19:21:00'),
('aa2a5bcbb8f41b847099f07e32', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:12:21'),
('aa4b36da5d7cc226da73d3474d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 21:37:39'),
('aa56c61b279b4d82f17dbed941', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:05:59'),
('aa6e2b9c8cc83af0ee1d9b5b9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:26:50'),
('aa7b4941afd945371e1ab269c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:50:28'),
('aa906d40c8be6b5fad84c81f89', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-28 23:10:07'),
('aa97f87a9e0e05f00ae96f8527', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 04:13:13'),
('aaa417209cee3d308f695863e1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:15:21'),
('aaa704dd3154fa59c21c64e642', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:40:04'),
('aae5c5717516fcf7ad70f8c16c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:03:43'),
('aaea1b75dd7f4a6a67be129590', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:44:33'),
('ab03c26d9ab0b9574c04baf1f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-09-29 09:07:17'),
('ab10571cb234a594bc4be96cc1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:26:11'),
('ab1c4f2f3255709a3954da96e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-29 20:53:47'),
('ab2fdc22bbf84a61b2c5d8365e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:26:11'),
('ab521ffad8315c3634d0857455', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:45'),
('ab7c35e870b2f38105cf0d59f5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:41:10'),
('abae3da13a18945faebc5ae2b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-29 23:23:07'),
('abb887da403e4303d0707a5cf8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 05:05:05'),
('abc9b1a336710e7c3e1985a744', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-18 07:56:36'),
('abcce11a5ae353db8f93fd78d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:02:13'),
('abf547535a6534356a46a7be9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:05:51'),
('ac0c19e9def543da05f7daa122', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:39:57'),
('ac172bacca28e4e0d36835e6b1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-28 17:27:48'),
('ac270f14271d8e219e9a56b21c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-30 00:37:50'),
('ac2b5799a595dab916a4bf38e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 21:25:38'),
('ac4744835d07941f77565e71b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 15:04:58'),
('ac494d32e49cf5d41a39f613ac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:25:00'),
('ac55cedf2bcbc6b31aaa996e89', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-29 22:21:07'),
('acac9759fb90e16555267048c7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 09:26:08'),
('acc04a706d2d60a16fa29ad82c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:11:07'),
('acc34654c3f8a3e8116274b831', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:21'),
('acce86a8cca8bf469c26160b43', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-10-03 15:10:50'),
('acd9379f9771611c52b7e277de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:05:52'),
('ace51694bcb86e7d7db0e11dfd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-01 23:18:10'),
('ace844a53dfa132a4962dde1b7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:28:45'),
('ad027c2471d8c82c0d97ed98c7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 02:34:11'),
('ad26d0939ceef2d1e1a174fc07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:21:54'),
('ad3b8a727cd888df000bcd3f1e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:55:52'),
('ad50040beb7b88e1759c87956e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:48:43'),
('ad60bf65ca1d710c1926be0265', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 05:51:28'),
('ad9b8ee2f5e64fa4c3c75e8f9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"5X8T1m74e7Ka2QcEXqINmcVRZ17PCZO9\"}', '2018-09-27 14:15:33'),
('ada65fb0cc3e2316020cb5b033', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:37:29'),
('ada88ec5c88d4080cfe95e5531', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:51:33'),
('adb6dd30f22161126b947e3d72', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:25:46'),
('adbe2baa18a735165a1c6c87c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 06:08:45'),
('adc707f9522f2582a4d8a66323', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-10 05:25:22'),
('adcc10c9fd013d025617b08b79', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-02 03:07:57'),
('ade780be6988ebb86eb9089c46', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:55:28'),
('ade8dc52a73e5189ca3450b3a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:00:30'),
('adfa5215d3fb019fd811af683e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 05:46:47'),
('ae428653a01997cce5e4e01c71', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:45:20'),
('ae4329843f5183940982d18c53', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-02 21:45:03'),
('ae46ad8dba4f340fab9e18b367', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:43:49'),
('ae699a35551c1ef048a9be01ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 02:12:40'),
('ae6ce31767839de253023f43c6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-04 08:10:42'),
('ae73a94cbd05ac32732da2a0cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-01 10:05:50'),
('ae78facb3eb23549c9a42c2fed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:55:52'),
('ae7a1fc7b4ae01dda0f60b5f17', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-28 17:40:23'),
('ae83c602b081352f4d34c1889f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-02 09:03:56'),
('aeac849527e58967963f4e6e03', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-30 09:51:02'),
('aec3547885b66006bc45363644', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:08:08'),
('aec4aad0632fc5351495590833', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 03:41:39'),
('aed1ea8290215c6e5766797a5d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-04 02:55:03'),
('aed3611c6551b97e4de6620c67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:11:51'),
('aee53cdef45107270e9577e26e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:51:02'),
('af0e0781dfc421721838c1caea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-09-13 10:41:15'),
('af60b7133f23b9b5039a461f22', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-10-01 19:00:34'),
('af84c43305cd65caf1b2cf30c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:43:31'),
('af908f5184a57485a7d2571ca7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:52:29'),
('af95034e835a25792177676dfe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-03 05:07:25'),
('afa4c8cef991c2776a09c31ee6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-03 13:50:46'),
('afba7d51cfe41682ba6e4fe634', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 22:27:24'),
('afdd027667e92c89023949dffa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 19:03:31'),
('afde246b8d92d1976518343dee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:08:23'),
('affc84d56727167cc4c7bbb63d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-09-28 10:10:08'),
('b0046de453407f968d13d38e94', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:24:08'),
('b01d3ae85e15cb07eae33bcc90', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:48:05'),
('b0286bb82c99cfb01d509de9fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:30:33'),
('b031d440abda438954e4151bf0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 04:01:02'),
('b04f006025b327e2a14d495cc7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:05:45'),
('b0af62cfde1a9412d91975c9ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 23:42:51'),
('b0b2f868f9549da482a345b681', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:25:43'),
('b0b5abfa900b07eb3d1904afe9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-03 06:25:08'),
('b135c1b250d30e0669ad235156', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:30:39'),
('b14936c254e51debbedf5235b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-04 05:52:40'),
('b156865960008c3406529c3871', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 03:44:22'),
('b17a941b5562fe1afd6cb409f1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 15:35:35'),
('b185700b632da2a95e55daba15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 07:02:38'),
('b1bf3b32a1f6173a5909e3cf5a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:32:25'),
('b1f2a9c7e2996fe5174db31b47', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:22:26'),
('b22c03c4e944341e9e52fa38e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcxO30=\":1}}', '2018-09-29 09:53:02'),
('b241e6c45fe4f4ca1af2437682', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:08:04'),
('b252ed329b4bd00df5ebc63ef1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-28 10:51:26'),
('b258d6da2e2443526b3f83488c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:48:19'),
('b25ed5228e55cf85d436188da9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:58:03'),
('b26baee1139a6db713d69adefe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:07:11'),
('b2937c1b00e6bf6fbc7724ed70', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:30:42'),
('b299172683c43906680e335341', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-02 22:25:45'),
('b2a9926b1337716f98f7abdd49', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-02 16:06:10'),
('b2b8759f29c324291f1a0158c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:34:23'),
('b2da55607b4b73cfce855ca655', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:00:56'),
('b32c8e2ee5b681eeb2a6039208', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:45:12'),
('b336fc931a485ea6b712b9b098', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-03 00:31:40'),
('b33967080c4054844a19f579bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:13:31'),
('b339c2bcd3050c2c229ff16e34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:00:17'),
('b342d649e00e6acfc6b0693487', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:37:29'),
('b347f32c71a31f3038141fbd28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:14:30'),
('b37766dc96f0ff6ec66854a721', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:52:33'),
('b37903e2cc86d2c4914df1ab94', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:11:23'),
('b3891c47ff64fcbac26379b08b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"H0yIhF0PFlQ6ArImgqJRvZhnOQAreq4k\"}', '2018-08-17 14:39:56'),
('b3955f4d28426eb41efed3f693', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:33:35'),
('b39f289284038b02d9634e31e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:15:44'),
('b3a39328e1de8fd35a4c3c643c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:53:43'),
('b3e565f0370e41ae60c55e1d4a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:45:42'),
('b3eec3a9fd351a6d93d5917b66', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:21:03'),
('b41523cfe7061e472c05f20580', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-01 21:09:57'),
('b41bccf260dc86be76be0454ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-03 16:22:37'),
('b44934b83cc7a8c1b0b5b50db1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1}}', '2018-10-01 07:23:39'),
('b452a012c51dad85709d8fa025', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:41:27'),
('b45dcecf91d21563d07c14c312', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:20:22'),
('b4cafb4bed76f97a3ad018fb74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-03 16:45:35'),
('b4ed9247435d16e7f1bf3ade3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:10:08'),
('b4f8ba758b7b9e0c9ef8191098', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:15:46'),
('b51bb6701ff58b412d46b16060', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-02 01:33:07'),
('b54db138ddc7815985b0eb2933', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:08:44'),
('b5576431ba5dafde8108fc80fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:00:17'),
('b566bfd69cbcf7e314efc7f2f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:17:21'),
('b576c86e245d56c560f8aad628', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:52:42'),
('b58fb55a1f8575f1d4a6937457', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:57:16'),
('b5a12a845a509446f11811ced4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:38:14'),
('b5a236870d286582540ee394b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-15 08:19:56'),
('b5be92e7baf7de9a7458297ff6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-10-01 02:17:09'),
('b5f4c043e9fdd995084061a4d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:51:57'),
('b63f87ef0b58cf91fb7c601e7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:05:57'),
('b6589fb1a00e944517485dd099', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 10:12:12'),
('b66a189da8f2fde06c2135018d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:41:00'),
('b6844fd154228e90fdddf816ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-01 10:02:23'),
('b69b2936bd8cd1331e0f9720ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:03:14'),
('b6baed823ab08d8c57481e62b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNDt9\":1}}', '2018-09-28 12:00:50'),
('b6bb97908368bfa7850334de6b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:50:57'),
('b6d17fba580164f8bd00b1cc46', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-04 01:35:16'),
('b6d8c69b9eeef872753f6690cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:17:14'),
('b7301b7c646b31da05d2ea395f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-09-29 09:46:00'),
('b73708688204463d0cef265433', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:20:44'),
('b78f688275551de0fd649af68f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:36:00'),
('b7d6a25fd3438b0dd60800c459', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 09:28:05'),
('b7d7d40b88d117363109cf98e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:56:38'),
('b7d7f0d19e90cc4d379ed42941', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExODt9\":1}}', '2018-10-02 10:44:28'),
('b7ddf34fa3b6ac56ef27321932', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1},\"user_id\":\"1\",\"user_token\":\"6Kf1uuMSGHHFkufTPg1tK1pQeapyeAEM\"}', '2018-10-03 14:11:07'),
('b8287fa6067f02f76dac2aeb32', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-29 13:07:18'),
('b831311a17c260e9afc1e0e71e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:53:24'),
('b854e5edc37d47e17d9859b94c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYwO30=\":1}}', '2018-10-03 19:32:10'),
('b86305fc5710a4c5f583111699', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1}}', '2018-10-01 10:07:04'),
('b86fece797ce232ab98717bf9e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:20:51'),
('b8d141bb363fd08a0a62447b06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:30:44'),
('b8e1424049da7db9c26ff04307', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:11:17'),
('b90df39ee6a8d1d017eec6b945', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:38:35'),
('b964d03a182fa615ab91f87dd6', 'false', '2018-08-27 05:11:53'),
('b96f3ca393d542207308137fad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-09-29 12:36:01'),
('b96f57321d805f31a1e847beb8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-09-30 12:47:16'),
('b98370758272f940040a910568', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:58:48'),
('b9b7cb8994a8b738ea3ab881c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:51:03'),
('b9cb27d192a7fefbb7d75be6e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:53:04'),
('b9e7f72e4c1abb76e5c4967bd3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:45:41'),
('ba1d6d6f016a8d81b5cfaef613', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:05:49'),
('ba3ff8ed5603070d13a0de96e1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:20:25'),
('ba81778803c0fecee8a1160b7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 04:41:55'),
('baa126523ad1bdf1e90a5236e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 15:56:53'),
('babe44b68da0bfbbf87c4b7233', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:08:18'),
('bad46898007e7a4b1f26594b6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU4O30=\":1}}', '2018-10-03 02:17:59'),
('bafb9dce7ba2d58e3730b91f3f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:57:25'),
('bafc8314ec6b05ad1666c0762d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:54:33'),
('bb1a9d3366e413790fb08defbc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"2\",\"user_token\":\"gCd07x477MhB6N9VG9je5v4nIl1PpfdV\"}', '2018-09-29 14:15:14'),
('bb2664b8defd47b4b8c9a248fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcwO30=\":1}}', '2018-09-28 10:02:38'),
('bb4fc9e35399fd0d9829454108', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-29 10:26:03'),
('bb55d2a25ab59a9c1121827be1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:46:44'),
('bb5925ea572460bf2f92ad2dd1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 11:28:32'),
('bb65816d317b9417cbc127c341', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-02 18:05:56'),
('bb6c1c44458ac9530f4d6f30d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:23:07'),
('bbb9c393955622e16f93f33743', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:37:24'),
('bbbe3a77f23836d02da6b70ba8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 21:47:13'),
('bbc0ba74c820d097e39c1a8895', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 12:05:53'),
('bbd09be990a569372ce01dc301', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-03 09:05:53'),
('bc0c5be039ca219d6e8cdb4074', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:39:58'),
('bc38971373bed2ce7c9a52c694', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-10-01 02:51:35'),
('bc499314519ae3dd555b54ad48', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:06:09'),
('bc6fd7b0fac5a2a5b70aacb2fc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 14:42:09'),
('bc754b6fd4ab9b1be4d6c7f450', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-01 20:03:17'),
('bc85667c2ed77d327d56dc0906', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:15:23'),
('bcf20ea1e08f322ac9a56ba5ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1}}', '2018-09-28 13:19:09'),
('bd17d2844551610b97eb4850f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 03:56:02'),
('bd1cbe524861f0e7a341aff5ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:19:28'),
('bd3dabddd4bb57fdd4d705b6ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-29 16:35:17'),
('bd56413c6d31597bf660443d0c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:16:14'),
('bd5b3e8a46d1b2b1ebdf7731b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 03:27:18'),
('bd7792dc28e669fee5ef0a4871', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwOTt9\":1}}', '2018-09-28 13:32:18'),
('bd842f25b6090bd0827f9e7327', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:47:56'),
('bd8c3e568e52f5abac22f08e3a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:57:27'),
('bdc8418a4fc0ef5dc14902738a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:25:54'),
('bdfe349f55a26d8fcd2fc7d164', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-01 18:06:13'),
('be4e6c3be9ade9ae5918f092a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-01 20:37:19'),
('be5220676df4b0efe4a630a652', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-09-29 19:16:07'),
('be526a8e777c1697429f4dfdd7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 16:11:56'),
('bea669352f2d8e9a2fee669e26', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:30:18'),
('beacc95fa979d5ac07d634082d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ0O30=\":1}}', '2018-10-01 09:03:35'),
('beba63e5f7883d2b630aa8b8c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:56:11'),
('bedda48c06b3d096db5458ffeb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-09-30 07:17:00'),
('bef1004d8c816e524dc231173f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:16:23'),
('bf1abde7a5a849a976a66333fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:25:45'),
('bf1bb44afc7157e2db8629f20d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:11:04'),
('bf2cf49838b2188512313fee6b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 22:56:08'),
('bf5b24c9bc07833961b16a658a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-02 11:21:04'),
('bf62cff936265b14f5d37bf3ca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:42:13'),
('bfafcb03e278d8678b85141986', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:02:52'),
('bfb725046dd963abcc52e22aa8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-02 18:06:50'),
('bfc0a347b99e9c46fa839c6656', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 01:01:03'),
('bfc699692cc0f9d1be89ee68d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:56:41'),
('bfe8d857eda6a36cbcf2034888', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-28 19:48:34'),
('bfed1467a7e919b0722428e0ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-09-30 05:56:33'),
('bff2563c337e07b7df5312e70b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-09-29 23:14:31'),
('c00ad7bb928f3fb30482b09477', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-28 14:55:34'),
('c025c174e9849f5076b8d56a3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:23:06'),
('c0373ccce1a92194b20f4f20cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-17 11:19:40'),
('c049460c727e48b96d2c31cd63', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:43:09'),
('c04a921d8f21e38fe6b6c6deca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 22:45:36'),
('c0535332a34b0162da7a8255c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-29 21:22:38'),
('c0870c1a651fe198f8f3893c08', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-09-30 19:46:36'),
('c0bd912c82289c1012b5683b80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-30 12:32:55'),
('c0d39422afbff4570e6b189f42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-27 10:03:39'),
('c0fbf37c61b81f5fb2eb4c7425', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:32:44'),
('c11cb2db86c2c1e1041f4e110b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 03:22:13'),
('c12aa2ad3015d20bcbebe45538', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:13:45'),
('c12ab98200d0ef6cd0744a438c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-01 04:06:18'),
('c14247eb4d91729fbfaf43669d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkxO30=\":1}}', '2018-10-03 12:38:34'),
('c14d33608693b3cfecd9e83cba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:13:50'),
('c1538edecdf6d7d694cd4136f5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:01:08'),
('c156d44bfe0451cef58cd775c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 01:13:02'),
('c19ba7a4cc85d82618086abaf7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:30:43'),
('c1f9d452f1c905a96438694f24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:56:21'),
('c21aa75a5ee554ead7d2b7efe4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:11:19'),
('c258775fa70eaddb06d9ab5b24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:36:10'),
('c296bb37bab145767651580d84', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:06:13'),
('c2c29ac6838ebeaa77549dd633', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyMzt9\":1}}', '2018-09-30 07:48:55'),
('c2e4f88b792714ec25c13903ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:09:01'),
('c2f04616a8ada33f8739ad152e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 14:16:17'),
('c30271b89fe3d9b12e4b862ba2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:57:15'),
('c30506b365dfa05763a5d7316c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 06:50:51'),
('c3105864e6d060c9805e0761ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:55:19'),
('c32b09c963c3ba4138ca19f525', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:06:13'),
('c340f65cb274ba0ba62bbb86f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:35:21'),
('c34100d80ace97c403bb00b28a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-03 10:26:22'),
('c3615c03e90dcc2fbe95d2ac0d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg4O30=\":1}}', '2018-10-03 11:21:06'),
('c3a130be173576c5fc1d3bc784', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:29:59'),
('c3dfb0ad40806007e7d15e211b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 06:46:07'),
('c3fc9d2a0bc7ddcc02586a3817', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:36:02'),
('c4421552a48eb56800a9307e22', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:32:45'),
('c44601379f88d112ea78868887', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-09-29 09:27:10'),
('c475a4a9d32dc3debb42dc8e9a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:09:07'),
('c48629214ec5e47029b083a269', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY2O30=\":1}}', '2018-09-28 09:37:33'),
('c4b750b11de817a3537e6c1bda', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:42:10'),
('c4cba081977342a2bdc5130ec7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-02 06:11:37'),
('c4e59ca11a863e44888c5f1f6e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:25:53'),
('c4e71abb56a4b5036b8a5d6a34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:46:28'),
('c4ec534ae5ee8de8ff0f20ac5a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:57:10'),
('c4f8f170c3e41d7ef875647843', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 08:10:24'),
('c4fce194d945e9063abc5cf045', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO30=\":1}}', '2018-10-02 12:06:09'),
('c528ab8c52fc1190031c13eeec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:32:19'),
('c561322366a5130ea748b3b09f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:10:50'),
('c57d4e9489446a279dbb3ec6a8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-01 15:50:23'),
('c5a12bd5928f715616268d307c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:12:29'),
('c5d43e022e6473cea29b455062', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:30:24'),
('c5dadcf94c66987042b95e54bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:37:39'),
('c5e9706a808b72528ce4373550', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 10:55:14'),
('c5efebb5d1d76cbf392b37ad50', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:57:50'),
('c5f392a4a800062ecfb785e160', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-10-02 02:11:31'),
('c62456bba25f5d2ec8542bbaf3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-03 14:20:38'),
('c62a0035ebb884a2b95329654c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:53:49'),
('c62ca50f57f1475df09e4ea405', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:36:09'),
('c668eb3bae20080d2f86c498f2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 18:50:55'),
('c679b9f718beb51a242146b306', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-03 16:40:59'),
('c6b0feb9efb4cb83575d2ea816', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:07:31'),
('c6cc213dad491be08bf54c8eb6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 22:30:16'),
('c6da5ebbe630d148beeb2c089b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk1O30=\":1}}', '2018-09-30 12:30:03'),
('c6dded0b03bc4aee387de7476f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU3O30=\":1}}', '2018-09-29 12:57:07'),
('c70e28ff462de5711fac8dd341', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 04:59:54'),
('c762fe6b5fbc274c82d5dba6f2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:07:02'),
('c779bddc4e2d0086f32ef05c15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 18:51:09'),
('c796e8a67ba31c15523e5bcb15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:52:24'),
('c7be91b9286d74826da722b736', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-30 14:22:11'),
('c7dd68c2138b343bcc21d9e0d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:23:42'),
('c801f314dcf6e7ee8f87da1fd3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-30 23:50:42'),
('c812ca0dea76c653cf130e25e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:56'),
('c8291abfa36449ec4b9cfd4c06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:11:00'),
('c82a66835fd1dd3ce8cd5930e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:18:41'),
('c83ccdc557882c6373b2f0b6c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:51:59'),
('c84621ec1b4069628061fcd6cd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:10:58'),
('c84caa1f76ba90ab2bc59299e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:00:46'),
('c86e13a5b0a0b48c122c52f077', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 04:43:39'),
('c8ac2f359473f06f8ca39a7555', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:56:28'),
('c8d2536598ef3be8bb68e46240', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-02 06:03:01'),
('c8dad9bf3211f668e4be1ced8d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 16:11:04'),
('c919e728b44959e36a4d25307f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:31:44'),
('c939e0f264af0b9fb1d1871629', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:32:05'),
('c99b4689ee80fc08abd84b9a35', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 11:50:57'),
('c9dc00a7136908140173c75fc3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-30 14:55:20'),
('ca02d34be970f25f3a81a39c92', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:26:12'),
('ca04773f7d54710ecce26a3a68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:00:18'),
('ca14895662d4373052c73b3a5e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-02 04:51:16'),
('ca1c3e689437e607537a5c3e3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:35:50'),
('ca25b7c7df1b7de496758ffbd0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:55:58'),
('ca3f81a9b9297f6b9420c177c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:18:55'),
('ca68cad960b566e48329a0f38a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:56:17'),
('ca73bc24fa42d96a21bb9bee15', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:06:53'),
('caa361f28206e29b4857cabf14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 20:30:32'),
('cae97234bbe859f9281109f71c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:50:40'),
('cb05c2d1479e1ec8c0a0321f66', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:03:06'),
('cb137ed59d88229c76b8616b35', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:55:21'),
('cb307a3096a5a392a952305fa8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-03 14:36:21'),
('cb56c49a1e9122a21a667d57ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:40:58'),
('cb59e8c13fcd20003046a371c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:05:20'),
('cb79a215f273c477154821c52f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 06:36:47'),
('cb7fd7830abe7add38f8f40e7f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"8odxooVPVVse5eUZy9O1rJf3bumBze97\"}', '2018-08-20 13:56:33'),
('cbb09ee2125b6d9eb716bfb1de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:18:05'),
('cbc34d8e8ca9c17d176259aded', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:56:26'),
('cbc3eec2f60f6ef23f00bd0b0d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-01 22:40:50'),
('cbe2707289393fe957c2ca172a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:06:00');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('cc1d8c44915eef6689e24f7174', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:18:03'),
('cc2400cb6d44ed88dcdb0bb01c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 06:56:54'),
('cc2f981f4f4226a708b407eb68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:30:26'),
('cc3b6f9cd9cdcb5dd89f2b31ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk5O30=\":1}}', '2018-10-03 15:30:54'),
('cc580f890ce17f58d3e26e48a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-30 15:40:57'),
('cc58d0f9425bab994a5b2d89ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-30 14:45:45'),
('cc650b6ccdcb8623af13eb77c2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:16:10'),
('cc65ab8c512e974bcbec4b966b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:03:41'),
('cc68fb162f586cf5891f73ee41', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:06:02'),
('cca5df2b8154e91d38d925d447', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:56:49'),
('ccac990dd5f0f1828fd43011c1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-09-30 10:38:55'),
('cd11a0b81c98da1e75f6a02e68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 16:42:50'),
('cd198227837e19b982ce339009', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:27:35'),
('cd328be53c23f984c3bfc3589f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:16:42'),
('cd49f342e8f9cc08390cf6aa5e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:00:52'),
('cdb7f9b6ceec73a6b379cba812', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-09-30 11:58:28'),
('cdcd09b9b461abfd638abfc248', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:10:37'),
('cde6bb4d9bd9e8da2070618623', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:35:19'),
('ce4b88ba7878f207cc925ee286', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:23:06'),
('ce4d2c440150aedfbc0394afe5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:20:57'),
('ce59cebc8a4f51b7f7c70b0787', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 21:11:06'),
('ce9489c1059ae06e70d444d34f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:45:51'),
('ce9c9926e4c427bdc17b91a3da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-01 23:46:55'),
('cea02c44eec62afb7f7e32bcd1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-04 06:35:50'),
('ced2b2b3f661bea8ebdfcd188b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:48:12'),
('cee21d4ef97a188611b0d40a37', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-04 02:08:37'),
('cef08056bcd189b2308214de14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 07:35:56'),
('cf1268376d061d7ebf503b1613', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:59:47'),
('cf1b07bbdb71cd99619e68d104', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:47:49'),
('cf3a172ae17d925e404912b287', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:01:03'),
('cf57ec706137cec04bea7f1578', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:31:53'),
('cf66612189b103ce0cdd06b74b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:20:59'),
('cf6a0f930cc198a62e711065c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:44:43'),
('cf6ae2f49025fcfe4d6defb3e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:01:12'),
('cf7a229a2633e38f4f863a8c2a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:41:12'),
('cf7f56dbc94683610ba77a77b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:06:09'),
('cfbba037a46907e5d263a8a1c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:26:46'),
('cfbee219efb11202591c7e4a28', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 18:45:29'),
('cfd49913339c20934bd925f106', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1}}', '2018-10-02 15:06:59'),
('cff7c7c3b59c7efbf56a54e8f1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-30 19:38:00'),
('cffaad134a53d4a3b595337c06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:56:02'),
('d004c60f52581a7a06686a1776', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 08:49:13'),
('d01d7a6443b8eda81a6acee5d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:52:46'),
('d031592d2d844549988637f2b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-10-01 07:12:57'),
('d03a999c2438d762e6499a3d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:20:16'),
('d06756db16f9ec4a0922788ae8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:31:44'),
('d0badc2e4c01a7398f98526a30', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:12:48'),
('d0d5101e28e73c404aa7a60006', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-09-29 13:55:03'),
('d0e9189d1ac8155da88fc183b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 09:36:32'),
('d0e9e906ef639673ef18063716', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 05:45:15'),
('d11c59bc90fb0c4e00a6953cb7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:18:04'),
('d134a4db5aac2176a1dd341f60', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-30 11:21:10'),
('d1485b6044f0d63c79dcd902d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:44:31'),
('d14eac81668a6979a09bd256f5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:28:35'),
('d170767dd6332f769b02e61958', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:10:23'),
('d173523b7e1c0506093ca16b5f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:48:41'),
('d18468a2fe3d464685243834f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:38:20'),
('d19674a57d9381400fe17f5858', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:42:50'),
('d19d4f114a21b872dca766f0ca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 01:00:11'),
('d1a7272460176cc3f5f8329392', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:52:18'),
('d1aee46132fc1484891999ca13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:00:04'),
('d1b55a10666903b8f0e6af28e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-04 10:02:27'),
('d1c532c57f0050b1db05e2c2d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:57:54'),
('d1d52282a80c43c7cb54d7081f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 22:05:35'),
('d1e6f3b9f0ff87519a28093c4c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:46:02'),
('d1f16205da43dacc70ee4b6b44', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMjt9\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyODt9\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1},\"user_id\":\"1\",\"user_token\":\"CKOt1LqafoEwawrDYuAfZKnaphLfUL2t\"}', '2018-09-28 14:33:01'),
('d1fce144ff88b34cab9250b7e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:17:29'),
('d20e982fadd37e0bdd5a530e80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-02 20:07:27'),
('d220f3a43c8c56cc9bb487b1f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:53:41'),
('d225873b0e45fb0c01c34640e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1}}', '2018-10-04 06:01:36'),
('d239942d50fc4fbabe15cd7f46', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 20:22:58'),
('d23d261484f1763f848bd6b862', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 11:17:01'),
('d240ca5c67b13653e21f22cc7c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-09-28 23:49:56'),
('d2649482571d00d7bc72da45a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-09-22 08:07:46'),
('d269b671a0fd17ee9e07c9ede5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-02 09:12:32'),
('d2a0e328fdf11571955c09b8d3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ4O30=\":1}}', '2018-09-28 09:49:56'),
('d2bb46a384750dd7a253721ce9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:51:45'),
('d2bbeefa16439f22a6ae586cdc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 18:00:55'),
('d2ccdb56da02519bda685c8595', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:48:13'),
('d2e6dfcb670e0264be88649935', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:07:33'),
('d307215aeecf13dd493de4ad1c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:13:22'),
('d31958d190a7359b3eb7f095e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-02 05:54:25'),
('d31a6a8f0c9c44aee906c7d023', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-03 09:55:13'),
('d345654ae956983a8b23d5c4a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:07:30'),
('d356b39c7c4bff9478ef7cc281', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 04:15:36'),
('d36f5dac646247a85bd3edafa0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:00:15'),
('d37b38715583483009f13f5424', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY5O30=\":1}}', '2018-09-30 13:25:45'),
('d3841c3da038c3a11fd2265f67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:37:23'),
('d391a8667067ca5e9ad1dd98d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:00:22'),
('d3aeb491a95fd07fd416e027da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:51:42'),
('d3ce0b0be5a132a63168c49254', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-01 23:58:25'),
('d3cf41f860d01a063f36d1d4b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:07:38'),
('d3e29afc145364fb1c4f2c4e04', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-09-30 11:06:46'),
('d3e97ecce484a25e48d2184895', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:05:15'),
('d3f677cd14988e17f556b11830', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:21:59'),
('d40821b2cdacb3fa7cc87aa8cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:26:53'),
('d42967fe0309aa2b57db74c83c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:02:47'),
('d42c463fff75d3e2171ff02074', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:30:40'),
('d43461738941b1da86c82fe9da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 23:22:01'),
('d4878c0e0d1a5df1f6be5d23fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-30 07:20:10'),
('d49fb14b5a72c6105a8ddf9be8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-09-30 09:51:41'),
('d4ad48d42aca5471a40aaa99c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY5O30=\":1}}', '2018-09-29 09:41:39'),
('d4b9fcaf05c373cf87f7617017', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:21:16'),
('d4c164af398070b091231b04c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-01 07:01:28'),
('d4eb3f916b3412c8e3d2607b9e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:35:43'),
('d4efb4aa0eb4cbccfa4a49acd9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-03 08:28:31'),
('d4f8baf67308750d5fb659029c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-02 01:45:17'),
('d4fbaef2ed7ae7d9fb03d9ac42', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:32:03'),
('d50835e3c813976e04f803c8af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:19:02'),
('d515339da8f3bbf902a8c80476', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:08:01'),
('d5189b477bfb5f8740250cc16b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 05:23:47'),
('d545efb221cb7cc2088cfc6041', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-04 04:55:12'),
('d55c5f5abda85eee55cfaa4062', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-04 00:13:42'),
('d561516ba8e7753892a147fd18', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:51:50'),
('d578d8b8ff394c440d1b6b357d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:40:41'),
('d58c739cc3efc8d22a0148182e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:45:30'),
('d58d084b1798cca6b887c1cc40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-28 12:43:25'),
('d59a2c5a607c8f095acda2b68e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:33:29'),
('d5a3ca5f40dcc42cffd8592994', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:16:01'),
('d5ec9e3162ac9ca998d5f59b14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:06:40'),
('d5fc9ff1433375be7d311a720d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:29:12'),
('d60f7fbcef852c03513e75b4aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:28:21'),
('d6898e6c705f554dd9d90b9afa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:26:09'),
('d68a83b285321ccbe0620c4310', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-30 09:30:45'),
('d697956894dae10b0757bec831', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 07:55:55'),
('d6d9856984db28946f4f96ab29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-09-30 20:55:42'),
('d6dce99c87354009a1494e0803', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:48:03'),
('d6f9665d02486d2d6086b1f7e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:06:11'),
('d702b92cc33a0ea95a5a858d74', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:26:35'),
('d7072be2e9aa382f8b6c48a50c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-03 16:42:43'),
('d707bd94eb8617ebe5af5ec005', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"OGBNvIlf8RDnyeLTk6WZX61tYkiYbkSC\"}', '2018-09-28 07:26:16'),
('d725c39fa244ba3daec73e1c44', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 04:28:47'),
('d78cacfd90fa9da749dd768f3e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1}}', '2018-09-18 17:32:55'),
('d7a78a87bdb49fc82dc156f8c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:36:05'),
('d7deb11f61cc571b82b98b1fbf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-10-01 22:17:52'),
('d7e85a783ed62e9157d7fdc1dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-10-03 19:50:28'),
('d80367e69f086e3663c0b3fb20', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 16:05:33'),
('d8211890a5bf62577ae8437dd5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:32:03'),
('d824b347c0f611bad9ffecee63', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:33:12'),
('d82a196c74b97f1de8c22d95c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:09:40'),
('d84551cad8804f3eb0e8a67fc8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 06:51:10'),
('d85307444a7dc492dfd7543842', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:20:23'),
('d857ce86f21c61f634b8c930e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-29 18:03:25'),
('d8645c227c84312b31233b5b5a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:39:56'),
('d86631bce17d5f4c69374e843b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYzO30=\":1}}', '2018-09-30 15:48:16'),
('d883f40e02b93e94c4d585d5d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:29:59'),
('d88a2ac969141de0ff968fa27e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY4O30=\":1}}', '2018-10-01 02:28:39'),
('d90b2dc277e8f444ab4a4fc456', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:45:57'),
('d916264e22715e4bc3c768d489', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 06:35:19'),
('d9214e3d1da65652d5e19ae7e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Gyju6y4uWqbPYDzPrGArchS3AVvwZkHS\"}', '2018-08-31 09:13:10'),
('d94c946d47b23024f6b4134b78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-30 03:45:52'),
('d9674bb0c5db2bf25c77d42433', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 16:27:18'),
('d97ac1abc389685a62a6db158c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-30 20:10:43'),
('d9bf5540c107de2c2bc9598394', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:02:06'),
('d9dfecc16d941a19a9267cfefa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:57:53'),
('d9e9af4e004f83a2aa22125c9d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:37:55'),
('d9fabab872ed314d8771036585', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:31:42'),
('da0c29b2f7313219b7efbf599e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:57:31'),
('da0cb71db81b68f9195f5c514a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-02 03:45:59'),
('da1e033feaaae2f7591cb76bc5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:07:17'),
('da2aebbd51b940799e514f363f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-02 19:12:54'),
('da45703392dcaa5010492d0784', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNjt9\":1}}', '2018-09-28 11:08:39'),
('da511c80269bbed423ab668f11', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:27:08'),
('da542d21c187ba36902e43a988', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:04:27'),
('da546519a2fa268ee0ea623068', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 04:23:33'),
('da774ee56f6d05fd23389bea14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:10:12'),
('da819436595cd3571f1111cc3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-04 06:10:54'),
('da8237164cfa14f1abe8bea7fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:01:33'),
('da8982687dbfd1b127194b3dfc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:48:10'),
('daac65bde03cae37fac47ea4f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:09:37'),
('daccd4fa1584c7329a279d36e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:15:39'),
('daccf73c5216ee0121a5790f91', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-17 20:48:59'),
('dafbac18611c9f827cdc654bdc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:56:36'),
('db067ca98f5aa056957b8560b7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 05:41:54'),
('db3fe1fd3933b64a5458a3687a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:43:03'),
('db56a649e7c41d80ee94848035', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:15:54'),
('db6791fa168edb045da420da22', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:07:19'),
('db690565a5ebddb15f486aee62', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ4O30=\":1}}', '2018-10-02 15:46:07'),
('dbe03b83d450f3eae2da149e8a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-01 09:50:54'),
('dbe49c9d4c17c92b665fb2bd06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-28 07:58:10'),
('dbefa58137de588b1042867c78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 14:52:37'),
('dc116d1dc7e16678cdd12142b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-10-03 19:46:32'),
('dc1c79e95761a9b3ad42785dff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:20:32'),
('dc63d70e01a0f196dc9873d5f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"i2Iw3IKMsrhYTHG8XkrxO3YWtNGVNqEg\"}', '2018-09-11 09:14:59'),
('dc6af112cd7f102b05ab6d8046', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:55:26'),
('dc6b02bf3df36402f2f56206d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-10-03 13:45:56'),
('dc6f98e3728ea9823b1073452a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 17:01:26'),
('dc8d8e0fe8e59745ec51a9ca10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:53:05'),
('dcd3852370ce96edb704977863', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 19:32:32'),
('dcf61c70cb953b5e6749f30e2a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-03 04:50:12'),
('dd1f43ca112309221037a46a04', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:50:36'),
('dd40763898ad9e60b46b6576b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:24:07'),
('dd5e62b982432cd63efb38d1fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg5O30=\":1}}', '2018-10-03 06:30:45'),
('de243abcdedf3fc7291c541e71', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:25:52'),
('de28c2642a5eb593642f230293', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:05:42'),
('de3548f37169d4b57d83b02077', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-10-02 03:13:36'),
('de7b66d83c1881ce352c1236dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:20:55'),
('dea3a176ad1f52049e42c36fae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:47:04'),
('deaf6c7db5f393954e5b60d029', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNDt9\":1}}', '2018-10-04 00:22:19'),
('deb4804ede1ac56f62d19285cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:41:19'),
('deb76ed45fb85dc4a8942873e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\":1}}', '2018-10-01 01:48:25'),
('dec1fb098fb23be2df424597d1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 01:02:26'),
('decaff5cf2f48afab56ac9ed55', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:15:40'),
('def2b60578507a2aedeea302ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:01:26'),
('def3068f1fb191909ac22b54b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:30:56'),
('df2e64c3c9578597e2c36acc4f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:10:13'),
('df3e928a30cdb68061ae7cc0de', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:36:07'),
('df8935eb0f28997c4edcca4246', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-03 00:00:04'),
('dfb1d6688a4b32171e9a5d8c19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 05:07:46'),
('dfbfaf6f2d670040068f3d67c7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:12:14'),
('dfc0680f61609592b515875ad4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-01 09:27:56'),
('dfd72e31fb44473a58e04a61aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-03 16:25:29'),
('dfdb1d4ced8ee0f5202a4a2bde', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:35'),
('dff32d025da9e554f562a804fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:31:03'),
('e016299db86b952461e776fd53', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNTt9\":1}}', '2018-09-30 07:26:03'),
('e02ed130d66beb592570a13259', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 19:10:16'),
('e07b781b505220e2717bf343ce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 08:59:24'),
('e084a2927740de9e78acc4c944', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 17:41:08'),
('e08ab8cdfe232825b23d131bd0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:36:12'),
('e08f2c847eff0cde4bf1113d83', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-30 15:08:03'),
('e09b84e372d2e8414621795d00', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-10-01 03:55:17'),
('e0afd62b58f0b10f4fb9403727', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:05:18'),
('e0b7eb1c342dbd2227de0c816c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:40:15'),
('e0c89c9bf92d113409f374f758', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:27:51'),
('e0ce012479e62d88fe78be6867', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:13:49'),
('e0d17f4091a1374564fb8930b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:50:25'),
('e0d6ffbcd8b5b42426135413dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:08:49'),
('e0d933cb7868e52e0e688b7c9d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ulwW9Zdi7igXf5e2z3y16JRDV2M0Y1MY\"}', '2018-08-20 08:41:47'),
('e0dea416ba2511ddd013a2175b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 20:31:34'),
('e146a1cb317352ccc583d96e67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:38:59'),
('e14a04b31ad9afba4e0c0ffb4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:26:38'),
('e154b337036b167a731a329d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 04:16:47'),
('e16c7251237f65756fc24ff540', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-01 22:36:03'),
('e1a75250b4581122d00e9d9116', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:28:03'),
('e1bf5dd45268e8c32526731ecd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:00:30'),
('e1d60605bf75c53c63370f712c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:25:33'),
('e20f597038aac75ee74a600df5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 11:22:42'),
('e2252dfb0de057c60fc700475a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 00:11:57'),
('e22792a77271d3eb2fd92508c0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:01:53'),
('e23178fb669fa88d38562758d9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwNTt9\":1}}', '2018-09-28 11:27:32'),
('e2317de3d22a872698963e057c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:26:59'),
('e24801a1d4fda3c952eeb906ce', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-29 21:45:30'),
('e26a05d62908a534f8d0941a6c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-09-29 12:41:02'),
('e2940112a0de9a2a956d9647fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-09-28 11:56:06'),
('e2a4b610e5c9eb963ccae0654f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"BK2jtnsTGQ9JhpQQ0hHE9SgKsITDPTNK\"}', '2018-09-29 08:32:22'),
('e2d32d5b32607e58e0d5c054b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 15:40:44'),
('e2d66187467e90c0e5d3f9b230', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:50:48'),
('e2ebd37ac0ed6d1cc91f786575', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc1O30=\":1}}', '2018-10-01 07:21:34'),
('e32ffdacc34f7cf893287b92ee', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:45:01'),
('e33bd01e6addd71c201f0c5346', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 15:37:40'),
('e378ba502969ab24b6e325099e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-17 13:02:17'),
('e3853516bc71c7dd1699854228', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-01 01:31:22'),
('e3aa613d3eafbbe1029d52f3d0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 14:23:06'),
('e3bc433e610307c4b2eccf473c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-01 20:46:06'),
('e41eaac93473cd50276c86bed1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-03 13:56:09'),
('e453b1c482f2639a31cbd481ca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:13:02'),
('e473be0806ee245ba9934a67a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNDt9\":1}}', '2018-09-28 12:29:04'),
('e48bf63b911a401d6f93429704', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 19:05:26'),
('e49a74624ac0c1f3a764762b80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:04:04'),
('e49eebe9e2b9270cb41234ea77', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:18:16'),
('e4e2c2adb18fea874fc0b68b9f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NAuOgSiamqjS7CYIX3nsPqbikJUu112F\"}', '2018-08-22 09:08:36'),
('e4fad590e305429b6c72cba6c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:26:05'),
('e50c256d9e34f9ab4b7f4c65b9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-03 07:13:49'),
('e528519ca68d9e2d23d43e4d67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-10-03 02:38:03'),
('e53fccf4a2a1345d58fb68119f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 12:30:19'),
('e55e6c475861c1489e973a3942', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 09:55:53'),
('e58c2ad83ed69a794858a4d6a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-09-29 10:05:05'),
('e59a10c0ebb030ef2ebaa3d134', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:30:45'),
('e5b0cd089a23d633cf7c6ee788', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-13 05:15:49'),
('e5c1c9a959fdf43d1231eaf38e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:56:32'),
('e5e33f3c1f59b9b31d848ab773', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-30 18:20:29'),
('e5e65f2d6e97c47edde46169d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-01 21:06:06'),
('e5edbe945ae0c2a0176924af14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:21:13'),
('e5efb583ac2d6d960ea87b27c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 03:10:26'),
('e5f3caba1e2d3fbe6fe9d70478', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:45:24'),
('e606b25c58353d155a3e0df69d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 23:52:39'),
('e6095db062df7930f1948b352c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:51:12'),
('e6b1632a2c67aea75ee2530e86', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 06:40:21'),
('e6bbf08163baf1e595502351a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:03:35'),
('e6c9f422aba5594826e0fe473e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 19:03:26'),
('e6df4ee013a530606d2fadfe6b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:22:32'),
('e6ebdd7de8bd1616b4bbc84ae3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:17'),
('e7000235a2209b7902e5b2fd48', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 05:34:20'),
('e7101975ba21750a6f36d2c4b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 03:10:39'),
('e73c360942ef04c8e4036484bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 11:03:44'),
('e758027e01cf80dc3368670988', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:16:21'),
('e7586db441efbb1b2b7c9cc6e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zUjngNR5yRKpxhr3KHp9eciVqxtFJ6v7\"}', '2018-08-30 14:45:41'),
('e771ed8eb837a27907137b0567', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:15'),
('e7ac464e0ce7f862d354bd34f6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 17:40:32'),
('e7b48e038fb0e748c0e58425ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc3O30=\":1}}', '2018-09-28 21:07:42'),
('e7c4a698cc12b2daf7727bf198', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-09-28 17:20:22'),
('e7caab37ebec028189f122c43c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:21:39'),
('e7d2c37a91b752ddede37abec0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:32:01'),
('e7d67193a182d6f83c9037aa65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:41:28'),
('e7fd71f7992b1665ef7b2d2f72', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 02:55:26'),
('e803a08826d64e824c14496761', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:10:34'),
('e83edc35dd939ca2015ced641b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 07:37:48'),
('e84d245941b99e3f7d41e8abb0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:21:04'),
('e8531d1d013dbdd12b3e4a3cc2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-09-30 16:57:11'),
('e8620a991423f983f291c1b92d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:15:59'),
('e8721e5bd015f77257075061f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-01 12:55:33'),
('e87598995b7fbf64f8640871f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 13:02:18'),
('e88122834c13579216d3fce8df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-02 15:08:43'),
('e8a96dc9fc166d9cfc29c00085', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU2O30=\":1}}', '2018-09-30 02:38:33'),
('e8b2523a5bd9a8338657d3016c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ2O30=\":1}}', '2018-10-02 23:08:23'),
('e8bc6b4ed477bb56cccadb937f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 16:30:42'),
('e8f74ff54a3f0d9ffd38f5d630', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:41:39'),
('e9008fcf81b46103d1954d9147', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-02 03:48:05'),
('e901a4060fc3623c857a700477', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:44:55'),
('e930b8b37ac11a39f03b3f6043', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 12:03:12'),
('e93506ae1e34c686c520e48c07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 08:55:34'),
('e94d9f1f69eb2567eda919ba31', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-04 00:40:37'),
('e95f273dccbcf71c4284125665', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkwO30=\":1}}', '2018-10-03 01:52:07'),
('e96deca7fce86a373636e6b259', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 21:59:51'),
('e998baf0972f58af5f86569748', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 10:27:30'),
('e9bb932776f8e387cbe46a80fa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 08:06:06'),
('e9bcb4da6cc9647541730ebc92', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:05:29'),
('e9bd2b29d41bdff7a47fb68a8f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY3O30=\":1}}', '2018-10-03 20:26:44'),
('e9c2abe84b6d9c9fb702fbd076', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 18:42:22'),
('e9cb29b364264ce10bfd1aaaae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:52:58'),
('e9cfba6a07f59e9bddd393f155', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-04 05:18:10'),
('e9e88940cc4c5b21ff2c0d91c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:33:46'),
('ea50dd7e11ee1ef30a8a000ad5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-07 10:27:00'),
('ea582a127643f0fef733457e8e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-03 07:42:38'),
('ea9689fcb9bed95b8874742993', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-10-01 02:57:20'),
('eaafbbbdca62cab9f9f53ef03c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"compare\":[]}', '2018-09-25 07:59:53'),
('eab9e3388e4aeecafd05543738', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 17:51:46'),
('eaff98b15cc5744df1ece3f8a5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:21:27'),
('eb1489237b0832472dd0ab39fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-09-27 07:55:20'),
('eb34cec6b972858f166ac798f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:35:36'),
('eb370caea0ac4259aad17bc68f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMTt9\":1}}', '2018-10-01 21:24:05'),
('eb41909f00bf67795aaf0dc987', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 01:20:56'),
('eb43626107961aaa21fd42ed2f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 09:00:21'),
('eb4fe7008fece28608b3634d32', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:31:59'),
('eb640926a0a8a4af631ea92600', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 10:05:49'),
('eb64fa859beb69dc7fc664b27e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 22:50:25'),
('eb7eaa95fd51a9f1a4335d6880', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgzO30=\":1}}', '2018-10-02 11:30:26'),
('eb8c080d06c090e44e4d6f59ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 11:25:19'),
('eba12dc9d5b01b69b6f9e89f13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNzt9\":1}}', '2018-09-30 02:35:37'),
('ebe08771725c2bbf8468896771', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:56:55'),
('ebe9214f72e50d8a1bee4c1711', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 10:12:00'),
('ebfec0ff8236e0fc03ba8a48c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-15 13:01:08'),
('ec063d9d8883808f335ce45f7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMjt9\":1}}', '2018-10-04 05:03:48'),
('ec1e2f062c061503b9bea8cada', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-29 18:33:03'),
('ec2b2ff98a7ead8f9cf49bcc13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:36:15'),
('ec3267cdf53a3da1b47d3d5930', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:37:57'),
('ec3286f418d9b061dcaba8a7fe', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 09:38:23'),
('ec332733489d46e1ec2e3c01c5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:52:37'),
('ec4a9a97a3aed0e16072a7cc96', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:23:22'),
('ec6758b8b6efde301480daaf0c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-10-04 04:35:30'),
('ec807b44dee2e02106bdc28f97', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 00:02:10'),
('ec96b1db49464dd5bb19c63ea3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 06:18:32'),
('ec9b3d4743b47bfe73b843e98c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjcwO30=\":1}}', '2018-09-29 08:46:57'),
('eccb2a3aae97450195ff5503d0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:05:46'),
('ece2b7b237ee9cd37d08109d98', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:20:51'),
('ecef9e3c10b007950add9c50ac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\":1}}', '2018-10-04 06:38:39'),
('ecf9380d194d98a624eb76f8c2', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYyO30=\":1}}', '2018-10-03 15:07:07'),
('ed0a72d1eb25fe586d61ced6ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-09-30 03:33:03'),
('ed1f1605692f6fb78a0509be14', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:57:01'),
('ed28bc2fc8a8fbd1cbf060a56e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:25:56'),
('ed555a749623db11902ef3d384', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:56:02'),
('ed560527fb63979ab4f34ab37f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkzO30=\":1}}', '2018-09-29 10:40:03'),
('ed6bbe2ecbe7da0145f9bdcb00', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 13:35:40'),
('ed9eadfd1ae50464c74778644e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-03 15:05:04');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('edc17ebaeeb3a6a68d52589b66', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjYxO30=\":1}}', '2018-09-25 07:34:02'),
('edc773501e0f6470845f32bd1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:50:07'),
('edc890ffcd219a0d172d8c01ae', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 15:18:22'),
('ee0c04e610431b5fc0f598b64d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk0O30=\":1}}', '2018-10-01 11:51:38'),
('ee27bd95d21d23b6c63a69a8e5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\":1}}', '2018-10-03 15:42:23'),
('ee6b57cddf06e789a9c4ba3c77', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQxO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQzO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1},\"user_id\":\"1\",\"user_token\":\"RMhTqSfZCrGW0nc4tpq3PbUgcPJGy8Bf\"}', '2018-09-17 15:02:29'),
('ee71194e8da00c7c0c1a5fa504', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-30 23:00:17'),
('ee7575fd6464ca310ff4de160e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-29 23:08:47'),
('ee79cdac370a75cf740fb08e4e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 12:46:08'),
('ee84a4149772608186436ca8d5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-10-02 18:38:25'),
('ee88cf96536d8b0dc64db8de68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:47:00'),
('eee1fe5567653f360455fc78c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:57:38'),
('eeef3fb39887ce27a07d2550fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 14:59:20'),
('ef5891d417ab2336273d510c79', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUxO30=\":1}}', '2018-10-03 23:07:39'),
('ef5cea13e60a877019f1351e9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-02 12:45:36'),
('ef9c218b59f0742156c0524f88', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 12:07:22'),
('efa0b8b70ec0512defc6abb19e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMzt9\":1}}', '2018-10-03 03:55:45'),
('efc3428d208340bfd4e47696c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-09-30 11:12:40'),
('efe0f219dd51c3fb8dc3398d27', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 21:07:00'),
('efec5330ab628351b6b60ce24f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMDt9\":1}}', '2018-10-01 19:02:30'),
('f0463543b4d069745b19f79ca0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:05:59'),
('f090b5d43653915cdd76c62c65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 06:28:10'),
('f098dfc161c2ab01c03d306ab2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNDt9\":1}}', '2018-09-30 07:35:38'),
('f0ca39a56fffc4593898d80f80', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-10-02 12:53:42'),
('f0fd4b22dde6c3f00860a7c323', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-02 09:56:05'),
('f119b80183917ca78e6be27617', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:01:10'),
('f121fbd70d07f09eadb48f31e9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 01:28:17'),
('f136af3ee9fd4281c32faaa1c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1}}', '2018-10-03 14:07:38'),
('f138d38b4cf86ac34b29af2c45', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-01 09:13:36'),
('f1466e0ea2658d2d27413fc41d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-03 13:10:30'),
('f17bd0b8906a611d1ec197b1e4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 16:00:16'),
('f19b534737e0007719165b48be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI4O30=\":1,\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=\":1},\"user_id\":\"1\",\"user_token\":\"WSYbyJxxMQT9y3oqM6bjAMh6AVrIQbd7\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Raji\",\"lastname\":\"Mayil\",\"company\":\"\",\"address_1\":\"test\",\"address_2\":\"\",\"postcode\":\"2595\",\"city\":\"test\",\"zone_id\":\"3513\",\"zone\":\"Aberdeen\",\"zone_code\":\"ABN\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"compare\":[\"40\",\"47\"]}', '2018-09-17 09:21:07'),
('f1e9b2639e8c95bf951c9a426d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-09-30 14:40:27'),
('f1f7c23678fde276e0eec9abff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:31:44'),
('f2191a8624bba28e99a37a983d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:05:59'),
('f21c502c85e2b2ddf00500b35a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 18:11:44'),
('f23eafb45d52690c4d2803855c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:27:03'),
('f241e74d0d863d44e9f3cd0754', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:52:33'),
('f25be58470c5e7207665fbf15e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:18:12'),
('f268667da05838d152774658e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:07:31'),
('f26f40bfeddfb744b1ede12776', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-09-29 16:39:07'),
('f27f0c6dde9f93a451b0de5846', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk3O30=\":1}}', '2018-09-29 10:53:39'),
('f2a67756ab2da4e741e59f386d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:12:25'),
('f2b0656eb52355ac016a20d0c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUzO30=\":1}}', '2018-10-03 21:38:36'),
('f2bb27697a16b6fb9e925d5db9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:35:05'),
('f2bb4552876d45af70ad8b37af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:46:39'),
('f2c2daafce6c0d3d3e592a6fa1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:59'),
('f2c78b31e7c04fe6f06b850b51', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:44:51'),
('f2c7db00d0aa376d9292b21937', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 11:00:23'),
('f2d54687f47da82e771f321d1f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-09-29 10:50:58'),
('f2fa510ccf8fe2e2a30aee0bb6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjU1O30=\":1}}', '2018-10-01 12:31:44'),
('f30a79d42b5f34e8d4f8dd653f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 09:46:09'),
('f33022c0cb855d22f48e92173c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 12:52:55'),
('f33e59fae045dd618341304401', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 17:46:04'),
('f33e7cb2703f027c46d0b897ab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 08:23:01'),
('f340cc9d735c7b55baf3beb6b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-09-29 13:00:48'),
('f344b78f3015ad9866c902c65a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-28 20:48:48'),
('f356b021c165e2b8997c206823', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 04:55:56'),
('f3795f63b308bfd1d8520207ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNTt9\":1}}', '2018-10-03 05:10:17'),
('f3a69258c9ed24fa488b05768d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-10-03 03:26:54'),
('f3ba13253a09a1d43a95d0aeab', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=\":1}}', '2018-09-29 18:30:33'),
('f40ddc2408a60c414d438c9be2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-01 06:07:22'),
('f41c6a301c13c7f35f1a605acd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk4O30=\":1}}', '2018-10-01 22:43:46'),
('f42b871d14ce0cfe7fca0de729', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgwO30=\":1}}', '2018-10-02 04:11:11'),
('f4666b2c7e23aa395b492d9036', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg1O30=\":1}}', '2018-10-04 06:15:40'),
('f46f4bdd6654b47683ad0cf208', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-04 05:26:47'),
('f47398c2b2c5a2d7616b459db7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 19:51:26'),
('f4aa1ed433e2594f6167daab19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExNjt9\":1}}', '2018-09-30 09:52:25'),
('f4e060341c18da59b06386dfa5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ1O30=\":1}}', '2018-10-02 21:13:31'),
('f4f66005d1a1a6c99af088c7ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:56:22'),
('f500eb1e5ed27697e3304dc044', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:08:49'),
('f50a50aaa2ff001ee77b79ba9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:18:24'),
('f51be529c11fadb9994551e026', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 10:06:27'),
('f55794efd29642a6492d38d4f7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 13:15:55'),
('f572d9c7acf4f6dea42fe2e45c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:40:07'),
('f57e667143ab8b7d7ad5eb3136', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:29:46'),
('f59268a6da81b612e7cac16e32', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:27:36'),
('f5a921eede969fad18a0927774', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 13:08:26'),
('f5ec1387ee0972afcf93141e2c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 10:00:22'),
('f610749ac23b6adfc850e92299', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-30 06:42:33'),
('f6193152df9d866696615e46bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 23:33:28'),
('f62547a201dcb8587380e7d637', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 15:06:57'),
('f62debc31d9289bd351a619a9a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 22:31:07'),
('f6456fa81d94644451e9894386', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:23:49'),
('f64b88a43c4f4bc8b3a6e3773c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 05:18:04'),
('f652fdb5781766ca3fc79e05fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 23:43:13'),
('f684c82c71c24d47240e263c55', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc0O30=\":1}}', '2018-10-01 13:20:35'),
('f6a6d4e18e427a699dfbbc0922', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-30 05:50:49'),
('f6b5637b30fac0f0a78e6cba32', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:55:18'),
('f6ee6269e25e45123c0ce39814', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-10-04 03:17:33'),
('f6f487cd2447096c43b4f119d4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjkyO30=\":1}}', '2018-09-30 23:05:27'),
('f72b4e03127e95fa1b046a271b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 00:40:17'),
('f72db343481edac457b751fb3b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:22:59'),
('f730023d978d9fe461b09f3db8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 21:03:09'),
('f7ac0851180c3c47cf34ea3ad7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-24 10:48:55'),
('f7be4b9b6f1ba03a923d769c77', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 12:02:20'),
('f7ccc7acbc4b17e8f791c72cbb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:46:06'),
('f7deb1337b2b3dcb0bff12857a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO30=\":1}}', '2018-10-02 08:09:35'),
('f7f02cd9b663a95c906c616c76', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-01 07:05:02'),
('f80e49c6bf46cc3c19c5bd88a1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:56:34'),
('f81bbdf18fad4942c3d2232953', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 17:10:59'),
('f82efe9db8164a179cb9f8644f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 05:58:25'),
('f83143108d88abc748c3bd6d9a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 14:01:58'),
('f84ae0a08be62fefc31314db26', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 08:01:46'),
('f854be74189e35d3969c2e8c2d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:02:12'),
('f89201afddaa7edc64bd5684bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:25:20'),
('f8b3e90a12f69a3c4bbf37626b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc4O30=\":1}}', '2018-09-28 22:50:58'),
('f8daae6407a88df64bdf03f60f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:46:58'),
('f8dc5d0a3bde2e5fdafddd798c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 21:52:00'),
('f8f1156fb7bea5276e30db17df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 18:35:55'),
('f919b17800cc655ffff5719b5f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:07:21'),
('f94433dd20b8aec4a57b9ddc94', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 02:27:01'),
('f9472a524f1e989d40443c759a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 02:16:05'),
('f9a6343ffa28eff9b173271c13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 11:30:25'),
('f9ba8dbd3de15f90b72be2ede6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:20:44'),
('f9c9b26537d805723c5b1cb41a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-02 07:29:22'),
('f9d634d7f57b2a68a336ba5780', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-03 02:15:04'),
('f9e2bbe582df78311761dc8fdd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 19:36:12'),
('fa067fe56774e5eaba6fcc6c89', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O30=\":1}}', '2018-09-29 19:24:44'),
('fa06a2ba205619191bd87eaf78', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExMDt9\":1}}', '2018-09-29 13:36:04'),
('fa0b6e226605f62895c465ae1a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 06:25:11'),
('fa4b86773f32b20425ea730429', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUwO30=\":1}}', '2018-09-30 04:07:29'),
('fa8b6157fda2f5db13807837f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjUyO30=\":1}}', '2018-09-30 20:00:58'),
('fa9a9cde8c687f966bc3538d75', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-26 03:53:43'),
('faa5a68a228c9c9d4c4bd35285', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 19:45:17'),
('fab97d12f65a2261d330feb4c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 08:07:27'),
('faf1b34e913fd6dee359f18f26', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 11:45:46'),
('faf519be385ab1e2da28bbe434', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjY0O30=\":1}}', '2018-10-03 14:42:06'),
('fb1273709e584d39a93f44b99c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgyO30=\":1}}', '2018-10-01 14:23:46'),
('fb294f83e0bd639b7cfb941309', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 09:46:53'),
('fb34b8b01f81a3e2dd6c60d85f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 16:50:32'),
('fb62eddffd623fd2a29f4cb65f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[],\"user_id\":\"1\",\"user_token\":\"I8KWAI21BByYlSKaBrAvSa4OZIsrCMJu\"}', '2018-09-17 14:20:28'),
('fb70d263ed94872b91b5c1cc42', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 22:52:19'),
('fb70e2820f648ff50aea6c3db1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O30=\":1}}', '2018-09-28 10:16:57'),
('fba0ab5bf6398e885cc2ed95ca', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 01:16:05'),
('fbe85649e76de7ef1f9e6e8759', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 00:32:52'),
('fbed24a3acb7a1076a120133e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 20:30:42'),
('fbf524919c1cdfe33d2b8d4196', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 21:18:30'),
('fc1618caf2c932249848a9e1fb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 14:00:47'),
('fc199c2b7da63ef9b3faebc8af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 00:33:47'),
('fc263765b3dfe723870c605848', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-09-30 18:57:47'),
('fc50c7c193ecd893e37c0893d2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 08:26:16'),
('fc79cbf298a94c8375c3d31d24', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 18:37:41'),
('fc88985dbfdf4110b4ab2d66e0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-04 07:40:48'),
('fc932cda81f3c1bce88de97c49', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 03:05:29'),
('fc9e8717c69549d803dcee382a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 02:01:52'),
('fcaf2e896479cb12c6771e006e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 03:11:41'),
('fcb85c013786bd37537654a670', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 08:50:46'),
('fcc2efaf9c64ee871d37798fef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:45:16'),
('fcf7e9fb04dd4b749ad777c039', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 23:40:01'),
('fcfb8e938f66b13a4aac0d0af0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=\":1}}', '2018-09-30 17:23:03'),
('fd51ef039df51a0054fc189dd5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 16:06:36'),
('fd7fe08c0eab8c66da75ed284f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMzO30=\":1}}', '2018-10-01 22:26:28'),
('fddb03d9c89081e80d1212c8b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-30 13:21:44'),
('fe226a23a51f9997114d6086a0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjg0O30=\":1}}', '2018-10-01 13:50:53'),
('fe228f8359074b5b0a5a12256d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-25 07:54:50'),
('fe519b0ea132fcfeeb11bec20f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 07:28:11'),
('fe6b44422ed53777d326347ad8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwODt9\":1}}', '2018-10-03 22:10:40'),
('fe8af24db8a39870d5457ce669', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 15:07:56'),
('fe9dcb885d067744fd1ffbaaf6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-27 14:38:09'),
('fea613a61eedfd9e244be0ae5c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMzt9\":1}}', '2018-10-04 06:50:54'),
('fec9628f3876df5ad97b8fd030', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 02:45:51'),
('ff08c4765fce53732be1d55391', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-03 17:20:26'),
('ff155c4670b029ec218eecf2c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 09:47:16'),
('ff19bc7fe15a9ec513b6d2d214', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 03:20:00'),
('ff1dd53c0fc2baa882051a4470', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjgxO30=\":1}}', '2018-10-03 22:18:48'),
('ff4a596f5ca706ca9d9cc20fea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-01 22:46:34'),
('ff4b371f4ca3e99187533d6f20', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjExOTt9\":1}}', '2018-09-30 07:28:30'),
('ff4c2905b0da69029f3543ab10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 00:50:43'),
('ff6c4b32860077ee527ebf5344', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEyNzt9\":1}}', '2018-09-30 07:45:48'),
('ff799daab4c6279608fb36cc82', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 20:30:37'),
('ff84f6e4210ce402286333da55', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 03:49:15'),
('ff8aec0b258d6cf33020ce754b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjc2O30=\":1}}', '2018-10-04 04:30:39'),
('ff9712240edbe3a628dbcba0dd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjEwMTt9\":1}}', '2018-09-28 13:12:06'),
('ffa215ea50744839ffe19311b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-10-02 12:07:47'),
('ffd2cf1203fb1fe64cab1814ec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":{\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjk5O30=\":1}}', '2018-10-04 07:42:04'),
('ffd9f08d2d39da1ecee9602831', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-29 17:12:39'),
('fff12fcef0503ec5352062cfb2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"recentview\":[]}', '2018-09-28 13:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1957, 0, 'config', 'config_encryption', 'eaieScTATBl4yaVbU1R5QkZ42GaY1BlzmJjW3dwS7DKFdDcNmJj7qcUn183wLLpo0wRXebRxtDqV8FAHPKzOlGBGjlkKzcnF1t5MAcAHV6T2tjQyHUmJiP6OL5lvicNLiO3hJ7a6qX15l5JDDRzQFIAsWsyC5VcCsURoHO5NwayyYzrx0UGPs67u8aQwLJsferp8lkPYXVV86wIKJ39auwwmEznhl1p9CfyHYy6J9fGBpZGqaFsNDRVoUsuWyYO4yi0JfcS6YmAYOx7UfYu2nOfzVmhtTgH0hZL2U8Sddmdu4EF9YM1rnoIYBygDH91K8BERfnu9C5e0cGvwU1oFAD1ICmrVK5pGid9gEOaq0Ka3gWGEW1SEu20Rv085WXux2ifDAjJfEqrjjyJ1Ux7dkD7OZW5ACrYUiL7L2ZLHoYD5KiJT1KThDiQj27SX8xvnG0WDUEPwU19DjC1Dr5APTWjfN5bW1WoBuBjG5IOENZbVptqPYfczjpRFiYIQP1aUOnkxYWnXlCh5biYvOof75QUz83hWISgLylUsRGywRSaMIUH0JXIaV8hhxcgAKWgT2W6ygFtqhRsBLerfq1qCSDwnMd6ArSzf9i10E1CD8bjka2C47SSMoKZQGgbz4GkM6JkUuYanBUkNjX5ZbsdK3fWNidN4yolHBCFtp6FPjwEX3exCXnqJzeDtfvOEF9MERai8sv13856vQPZlgDIcLwhwqK0duKUKBixJPQ63Z83xZX3HeNIXrMTq5R7fdO5nhZFB5ek09mEGmeq36BwAm0y13lidifikWnYcEhZNFHgx5kfHhDgt1rsig01atKHfTw8KZ3wDkQfoL8KAEPasT1HefKUZvGWb5ZTdG8oETs2vMfkiTW2yJncsdLg8VCEnT51gsbe9rFH9tLA8N7AY24iNK8RzwkNjNpTYvRwoxT8gEFnBRjLQT7fNRSp7tbPVSCyg5BaZdKqN7sSbzzZ5yJ9tixNG9u0e3p4OiAi8tzXv3qQukEzc7DoMHWTlpnMc', 0),
(1956, 0, 'config', 'config_shared', '0', 0),
(1953, 0, 'config', 'config_compression', '0', 0),
(1954, 0, 'config', 'config_secure', '0', 0),
(1955, 0, 'config', 'config_password', '1', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1945, 0, 'config', 'config_mail_smtp_password', '', 0),
(1946, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1947, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1948, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1949, 0, 'config', 'config_mail_alert_email', '', 0),
(1950, 0, 'config', 'config_maintenance', '0', 0),
(1951, 0, 'config', 'config_seo_url', '0', 0),
(1952, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1944, 0, 'config', 'config_mail_smtp_username', '', 0),
(1941, 0, 'config', 'config_mail_engine', 'mail', 0),
(1942, 0, 'config', 'config_mail_parameter', '', 0),
(1943, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1940, 0, 'config', 'config_icon', 'catalog/fav-3.png', 0),
(1939, 0, 'config', 'config_logo', 'catalog/logo1.png', 0),
(1921, 0, 'config', 'config_checkout_id', '5', 0),
(1922, 0, 'config', 'config_order_status_id', '1', 0),
(1923, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1924, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1925, 0, 'config', 'config_fraud_status_id', '7', 0),
(1926, 0, 'config', 'config_api_id', '1', 0),
(1927, 0, 'config', 'config_stock_display', '0', 0),
(1928, 0, 'config', 'config_stock_warning', '0', 0),
(1929, 0, 'config', 'config_stock_checkout', '0', 0),
(1930, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1931, 0, 'config', 'config_affiliate_approval', '0', 0),
(1932, 0, 'config', 'config_affiliate_auto', '0', 0),
(1933, 0, 'config', 'config_affiliate_commission', '5', 0),
(1934, 0, 'config', 'config_affiliate_id', '4', 0),
(1935, 0, 'config', 'config_return_id', '0', 0),
(1936, 0, 'config', 'config_return_status_id', '2', 0),
(1937, 0, 'config', 'config_captcha', '', 0),
(1938, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1920, 0, 'config', 'config_checkout_guest', '1', 0),
(1919, 0, 'config', 'config_cart_weight', '1', 0),
(1918, 0, 'config', 'config_invoice_prefix', 'INV-2018-00', 0),
(1917, 0, 'config', 'config_account_id', '3', 0),
(1916, 0, 'config', 'config_login_attempts', '5', 0),
(1915, 0, 'config', 'config_customer_price', '0', 0),
(1914, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1913, 0, 'config', 'config_customer_group_id', '1', 0),
(1912, 0, 'config', 'config_customer_search', '0', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(499, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(1911, 0, 'config', 'config_customer_activity', '0', 0),
(1910, 0, 'config', 'config_customer_online', '0', 0),
(1909, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1908, 0, 'config', 'config_tax_default', 'shipping', 0),
(1907, 0, 'config', 'config_tax', '1', 0),
(1906, 0, 'config', 'config_voucher_max', '1000', 0),
(596, 0, 'module_manufacturers', 'module_manufacturers_status', '1', 0),
(1164, 0, 'theme_craze', 'theme_craze_image_cart_height', '75', 0),
(1162, 0, 'theme_craze', 'theme_craze_image_wishlist_height', '75', 0),
(1163, 0, 'theme_craze', 'theme_craze_image_cart_width', '75', 0),
(1161, 0, 'theme_craze', 'theme_craze_image_wishlist_width', '75', 0),
(1160, 0, 'theme_craze', 'theme_craze_image_compare_height', '90', 0),
(1158, 0, 'theme_craze', 'theme_craze_image_related_height', '300', 0),
(1159, 0, 'theme_craze', 'theme_craze_image_compare_width', '90', 0),
(1157, 0, 'theme_craze', 'theme_craze_image_related_width', '300', 0),
(1156, 0, 'theme_craze', 'theme_craze_image_additional_height', '100', 0),
(1155, 0, 'theme_craze', 'theme_craze_image_additional_width', '100', 0),
(1154, 0, 'theme_craze', 'theme_craze_image_product_height', '300', 0),
(1153, 0, 'theme_craze', 'theme_craze_image_product_width', '300', 0),
(1151, 0, 'theme_craze', 'theme_craze_image_popup_width', '600', 0),
(1905, 0, 'config', 'config_voucher_min', '1', 0),
(1904, 0, 'config', 'config_review_guest', '1', 0),
(410, 0, 'developer', 'developer_theme', '0', 0),
(411, 0, 'developer', 'developer_sass', '1', 0),
(1152, 0, 'theme_craze', 'theme_craze_image_popup_height', '600', 0),
(1903, 0, 'config', 'config_review_status', '1', 0),
(1902, 0, 'config', 'config_limit_admin', '20', 0),
(1901, 0, 'config', 'config_product_count', '1', 0),
(1900, 0, 'config', 'config_weight_class_id', '1', 0),
(1899, 0, 'config', 'config_length_class_id', '1', 0),
(1150, 0, 'theme_craze', 'theme_craze_image_thumb_height', '450', 0),
(1148, 0, 'theme_craze', 'theme_craze_image_category_height', '300', 0),
(1149, 0, 'theme_craze', 'theme_craze_image_thumb_width', '450', 0),
(1147, 0, 'theme_craze', 'theme_craze_image_category_width', '1370', 0),
(1898, 0, 'config', 'config_currency_auto', '1', 0),
(1897, 0, 'config', 'config_currency', 'USD', 0),
(1146, 0, 'theme_craze', 'theme_craze_product_description_length', '100', 0),
(1145, 0, 'theme_craze', 'theme_craze_product_limit', '15', 0),
(1144, 0, 'theme_craze', 'theme_craze_status', '1', 0),
(1143, 0, 'theme_craze', 'theme_craze_directory', 'craze', 0),
(1165, 0, 'theme_craze', 'theme_craze_image_location_width', '268', 0),
(1166, 0, 'theme_craze', 'theme_craze_image_location_height', '50', 0),
(1896, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1895, 0, 'config', 'config_language', 'en-gb', 0),
(1894, 0, 'config', 'config_zone_id', '3563', 0),
(1893, 0, 'config', 'config_country_id', '222', 0),
(1892, 0, 'config', 'config_comment', '', 0),
(1891, 0, 'config', 'config_open', '', 0),
(1890, 0, 'config', 'config_image', '', 0),
(1889, 0, 'config', 'config_fax', '', 0),
(1888, 0, 'config', 'config_telephone', '(+ 510) 135-4775', 0),
(1887, 0, 'config', 'config_email', 'support@yoursite.com', 0),
(1886, 0, 'config', 'config_geocode', '', 0),
(1885, 0, 'config', 'config_address', '123, Pennsylvania Avenue, Fremont, California - 12356.', 0),
(1884, 0, 'config', 'config_owner', 'Craze', 0),
(1883, 0, 'config', 'config_name', 'Craze', 0),
(1882, 0, 'config', 'config_layout_id', '4', 0),
(1881, 0, 'config', 'config_theme', 'craze', 0),
(1880, 0, 'config', 'config_meta_keyword', '', 0),
(1879, 0, 'config', 'config_meta_description', 'Craze', 0),
(1878, 0, 'config', 'config_meta_title', 'Craze', 0),
(1877, 0, 'config', 'config_youtube', 'https://www.youtube.com/', 0),
(1876, 0, 'config', 'config_instagram', 'https://www.instagram.com/?hl=en', 0),
(1875, 0, 'config', 'config_pinterest', 'https://in.pinterest.com/', 0),
(1874, 0, 'config', 'config_linkedin', 'https://www.linkedin.com/', 0),
(1873, 0, 'config', 'config_gplus', 'https://plus.google.com/discover', 0),
(1872, 0, 'config', 'config_twitter', 'https://twitter.com/', 0),
(1871, 0, 'config', 'config_facebook', 'https://www.facebook.com/', 0),
(1958, 0, 'config', 'config_file_max_size', '300000', 0),
(1959, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1960, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1961, 0, 'config', 'config_error_display', '1', 0),
(1962, 0, 'config', 'config_error_log', '1', 0),
(1963, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '5265.8000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '7.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'c659ef93216defc17081634ef11697445e15df3b', 'Blm14AA4Y', 'John', 'Doe', 'rajeswari@exlcart.com', '', '', '122.178.162.37', 1, '2018-08-17 15:14:37'),
(2, 10, 'demo', '35683e35b06bbed15f633ae0c54a205991d17de0', '7xGnTmNPv', 'Raja', 'M', 'evanseraja@exlcart.com', '', '', '49.205.155.174', 1, '2018-09-18 13:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/craze\",\"extension\\/module\\/html\",\"extension\\/module\\/category_slide\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/manufacturers\",\"extension\\/module\\/horizondal_tab\",\"extension\\/module\\/horizondal_tab\",\"extension\\/module\\/horizondal_category\",\"extension\\/module\\/hot_deals\",\"extension\\/module\\/category_slide\",\"extension\\/module\\/main_menu\",\"extension\\/module\\/mega_menu\",\"extension\\/module\\/countdowntimer\",\"extension\\/module\\/countdowntimer\",\"extension\\/module\\/instagram\",\"extension\\/module\\/mostly_viewed\",\"extension\\/module\\/lastview\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/category_slide\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/craze\",\"extension\\/module\\/html\",\"extension\\/module\\/category_slide\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/manufacturers\",\"extension\\/module\\/horizondal_tab\",\"extension\\/module\\/horizondal_tab\",\"extension\\/module\\/horizondal_category\",\"extension\\/module\\/hot_deals\",\"extension\\/module\\/category_slide\",\"extension\\/module\\/main_menu\",\"extension\\/module\\/mega_menu\",\"extension\\/module\\/countdowntimer\",\"extension\\/module\\/countdowntimer\",\"extension\\/module\\/instagram\",\"extension\\/module\\/mostly_viewed\",\"extension\\/module\\/lastview\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/category_slide\"]}'),
(10, 'Demonstration', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/category_banners\",\"extension\\/module\\/category_slide\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/horizondal_category\",\"extension\\/module\\/horizondal_tab\",\"extension\\/module\\/hot_deals\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/instagram\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/lastview\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/manufacturers\",\"extension\\/module\\/mostly_viewed\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/craze\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3142;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1157;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1964;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
