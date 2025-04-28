-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2025 at 09:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nizc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahc_browsers`
--

CREATE TABLE `ahc_browsers` (
  `bsr_id` int UNSIGNED NOT NULL,
  `bsr_name` varchar(100) NOT NULL,
  `bsr_icon` varchar(50) DEFAULT NULL,
  `bsr_visits` int NOT NULL DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_browsers`
--

INSERT INTO `ahc_browsers` (`bsr_id`, `bsr_name`, `bsr_icon`, `bsr_visits`, `site_id`) VALUES
(1, 'IE', 'ie.png', 0, 1),
(2, 'Firefox', 'firefox.png', 46, 1),
(3, 'Netscape', 'netscape.png', 0, 1),
(4, 'Chrome', 'chrome.png', 18, 1),
(5, 'Gecko/Mozilla', 'mozilla.png', 0, 1),
(6, 'Opera Mini', 'opera.png', 0, 1),
(7, 'Opera', 'opera.png', 0, 1),
(8, 'Safari', 'safari.png', 0, 1),
(9, 'iPad', 'ipad.png', 0, 1),
(10, 'Android', 'android.png', 0, 1),
(11, 'AIR', 'air.png', 0, 1),
(12, 'Fluid', 'fluid.png', 0, 1),
(13, 'Maxthon', 'maxthon.png', 0, 1),
(14, 'unknown', 'unknown.png', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_countries`
--

CREATE TABLE `ahc_countries` (
  `ctr_id` int UNSIGNED NOT NULL,
  `ctr_name` varchar(100) NOT NULL,
  `ctr_internet_code` varchar(5) NOT NULL,
  `ctr_latitude` varchar(30) DEFAULT NULL,
  `ctr_longitude` varchar(30) DEFAULT NULL,
  `ctr_visitors` int NOT NULL DEFAULT '0',
  `ctr_visits` int NOT NULL DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_countries`
--

INSERT INTO `ahc_countries` (`ctr_id`, `ctr_name`, `ctr_internet_code`, `ctr_latitude`, `ctr_longitude`, `ctr_visitors`, `ctr_visits`, `site_id`) VALUES
(1, 'Anonymous Proxy', 'A1', NULL, NULL, 0, 0, 1),
(2, 'Satellite Provider', 'A2', NULL, NULL, 0, 0, 1),
(3, 'Other Country', 'O1', NULL, NULL, 0, 0, 1),
(4, 'Andorra', 'AD', '42.5000', '1.5000', 0, 0, 1),
(5, 'United Arab Emirates', 'AE', '24.0000', '54.0000', 0, 0, 1),
(6, 'Afghanistan', 'AF', '33.0000', '65.0000', 0, 0, 1),
(7, 'Antigua and Barbuda', 'AG', '17.0500', '-61.8000', 0, 0, 1),
(8, 'Anguilla', 'AI', '18.2500', '-63.1667', 0, 0, 1),
(9, 'Albania', 'AL', '41.0000', '20.0000', 0, 0, 1),
(10, 'Armenia', 'AM', '40.0000', '45.0000', 0, 0, 1),
(11, 'Netherlands Antilles ', 'AN', '12.2500', '-68.7500', 0, 0, 1),
(12, 'Angola', 'AO', '-12.5000', '18.5000', 0, 0, 1),
(13, 'Asia/Pacific Region', 'AP', '35.0000', '105.0000', 0, 0, 1),
(14, 'Antarctica', 'AQ', '-90.0000', '0.0000', 0, 0, 1),
(15, 'Argentina', 'AR', '-34.0000', '-64.0000', 0, 0, 1),
(16, 'American Samoa', 'AS', '-14.3333', '-170.0000', 0, 0, 1),
(17, 'Austria', 'AT', '47.3333', '13.3333', 0, 0, 1),
(18, 'Australia', 'AU', '-27.0000', '133.0000', 0, 0, 1),
(19, 'Aruba', 'AW', '12.5000', '-69.9667', 0, 0, 1),
(20, 'Aland Islands', 'AX', '60.178525', '19.91561', 0, 0, 1),
(21, 'Azerbaijan', 'AZ', '40.5000', '47.5000', 0, 0, 1),
(22, 'Bosnia and Herzegovina', 'BA', '44.0000', '18.0000', 0, 0, 1),
(23, 'Barbados', 'BB', '13.1667', '-59.5333', 0, 0, 1),
(24, 'Bangladesh', 'BD', '24.0000', '90.0000', 0, 0, 1),
(25, 'Belgium', 'BE', '50.8333', '4.0000', 0, 0, 1),
(26, 'Burkina Faso', 'BF', '13.0000', '-2.0000', 0, 0, 1),
(27, 'Bulgaria', 'BG', '43.0000', '25.0000', 0, 0, 1),
(28, 'Bahrain', 'BH', '26.0000', '50.5500', 0, 0, 1),
(29, 'Burundi', 'BI', '-3.5000', '30.0000', 0, 0, 1),
(30, 'Benin', 'BJ', '9.5000', '2.2500', 0, 0, 1),
(31, 'Saint Bartelemey', 'BL', '17.9', '-62.833333', 0, 0, 1),
(32, 'Bermuda', 'BM', '32.3333', '-64.7500', 0, 0, 1),
(33, 'Brunei Darussalam', 'BN', '4.5000', '114.6667', 0, 0, 1),
(34, 'Bolivia', 'BO', '-17.0000', '-65.0000', 0, 0, 1),
(35, 'Bonaire', 'BQ', '12.178361', '-68.238534', 0, 0, 1),
(36, 'Brazil', 'BR', '-10.0000', '-55.0000', 0, 0, 1),
(37, 'Bahamas', 'BS', '24.2500', '-76.0000', 0, 0, 1),
(38, 'Bhutan', 'BT', '27.5000', '90.5000', 0, 0, 1),
(39, 'Bouvet Island', 'BV', '-54.4333', '3.4000', 0, 0, 1),
(40, 'Botswana', 'BW', '-22.0000', '24.0000', 0, 0, 1),
(41, 'Belarus', 'BY', '53.0000', '28.0000', 0, 0, 1),
(42, 'Belize', 'BZ', '17.2500', '-88.7500', 0, 0, 1),
(43, 'Canada', 'CA', '60.0000', '-95.0000', 0, 0, 1),
(44, 'Cocos (Keeling) Islands', 'CC', '-12.5000', '96.8333', 0, 0, 1),
(45, 'Congo', 'CD', '0.0000', '25.0000', 0, 0, 1),
(46, 'Central African Republic', 'CF', '7.0000', '21.0000', 0, 0, 1),
(47, 'Congo', 'CG', '-1.0000', '15.0000', 0, 0, 1),
(48, 'Switzerland', 'CH', '47.0000', '8.0000', 0, 0, 1),
(49, 'Cote d\'Ivoire', 'CI', '8.0000', '-5.0000', 0, 0, 1),
(50, 'Cook Islands', 'CK', '-21.2333', '-159.7667', 0, 0, 1),
(51, 'Chile', 'CL', '-30.0000', '-71.0000', 0, 0, 1),
(52, 'Cameroon', 'CM', '6.0000', '12.0000', 0, 0, 1),
(53, 'China', 'CN', '35.0000', '105.0000', 0, 0, 1),
(54, 'Colombia', 'CO', '4.0000', '-72.0000', 0, 0, 1),
(55, 'Costa Rica', 'CR', '10.0000', '-84.0000', 0, 0, 1),
(56, 'Cuba', 'CU', '21.5000', '-80.0000', 0, 0, 1),
(57, 'Cape Verde', 'CV', '16.0000', '-24.0000', 0, 0, 1),
(58, 'Curacao', 'CW', '12.16957', '-68.99002', 0, 0, 1),
(59, 'Christmas Island', 'CX', '-10.5000', '105.6667', 0, 0, 1),
(60, 'Cyprus', 'CY', '35.0000', '33.0000', 0, 0, 1),
(61, 'Czech Republic', 'CZ', '49.7500', '15.5000', 0, 0, 1),
(62, 'Germany', 'DE', '51.0000', '9.0000', 0, 0, 1),
(63, 'Djibouti', 'DJ', '11.5000', '43.0000', 0, 0, 1),
(64, 'Denmark', 'DK', '56.0000', '10.0000', 0, 0, 1),
(65, 'Dominica', 'DM', '15.4167', '-61.3333', 0, 0, 1),
(66, 'Dominican Republic', 'DO', '19.0000', '-70.6667', 0, 0, 1),
(67, 'Algeria', 'DZ', '28.0000', '3.0000', 0, 0, 1),
(68, 'Ecuador', 'EC', '-2.0000', '-77.5000', 0, 0, 1),
(69, 'Estonia', 'EE', '59.0000', '26.0000', 0, 0, 1),
(70, 'Egypt', 'EG', '27.0000', '30.0000', 0, 0, 1),
(71, 'Western Sahara', 'EH', '24.5000', '-13.0000', 0, 0, 1),
(72, 'Eritrea', 'ER', '15.0000', '39.0000', 0, 0, 1),
(73, 'Spain', 'ES', '40.0000', '-4.0000', 0, 0, 1),
(74, 'Ethiopia', 'ET', '8.0000', '38.0000', 0, 0, 1),
(75, 'Europe', 'EU', '47.0000', '8.0000', 0, 0, 1),
(76, 'Finland', 'FI', '64.0000', '26.0000', 0, 0, 1),
(77, 'Fiji', 'FJ', '-18.0000', '175.0000', 0, 0, 1),
(78, 'Falkland Islands (Malvinas)', 'FK', '-51.7500', '-59.0000', 0, 0, 1),
(79, 'Micronesia', 'FM', '6.9167', '158.2500', 0, 0, 1),
(80, 'Faroe Islands', 'FO', '62.0000', '-7.0000', 0, 0, 1),
(81, 'France', 'FR', '46.0000', '2.0000', 0, 0, 1),
(82, 'Gabon', 'GA', '-1.0000', '11.7500', 0, 0, 1),
(83, 'United Kingdom', 'GB', '54.0000', '-2.0000', 0, 0, 1),
(84, 'Grenada', 'GD', '12.1167', '-61.6667', 0, 0, 1),
(85, 'Georgia', 'GE', '42.0000', '43.5000', 0, 0, 1),
(86, 'French Guiana', 'GF', '4.0000', '-53.0000', 0, 0, 1),
(87, 'Guernsey', 'GG', '49.465691', '-2.585278', 0, 0, 1),
(88, 'Ghana', 'GH', '8.0000', '-2.0000', 0, 0, 1),
(89, 'Gibraltar', 'GI', '36.1833', '-5.3667', 0, 0, 1),
(90, 'Greenland', 'GL', '72.0000', '-40.0000', 0, 0, 1),
(91, 'Gambia', 'GM', '13.4667', '-16.5667', 0, 0, 1),
(92, 'Guinea', 'GN', '11.0000', '-10.0000', 0, 0, 1),
(93, 'Guadeloupe', 'GP', '16.2500', '-61.5833', 0, 0, 1),
(94, 'Equatorial Guinea', 'GQ', '2.0000', '10.0000', 0, 0, 1),
(95, 'Greece', 'GR', '39.0000', '22.0000', 0, 0, 1),
(96, 'South Georgia and the South Sandwich Islands', 'GS', '-54.5000', '-37.0000', 0, 0, 1),
(97, 'Guatemala', 'GT', '15.5000', '-90.2500', 0, 0, 1),
(98, 'Guam', 'GU', '13.4667', '144.7833', 0, 0, 1),
(99, 'Guinea-Bissau', 'GW', '12.0000', '-15.0000', 0, 0, 1),
(100, 'Guyana', 'GY', '5.0000', '-59.0000', 0, 0, 1),
(101, 'Hong Kong', 'HK', '22.2500', '114.1667', 0, 0, 1),
(102, 'Heard Island and McDonald Islands', 'HM', '-53.1000', '72.5167', 0, 0, 1),
(103, 'Honduras', 'HN', '15.0000', '-86.5000', 0, 0, 1),
(104, 'Croatia', 'HR', '45.1667', '15.5000', 0, 0, 1),
(105, 'Haiti', 'HT', '19.0000', '-72.4167', 0, 0, 1),
(106, 'Hungary', 'HU', '47.0000', '20.0000', 0, 0, 1),
(107, 'Indonesia', 'ID', '-5.0000', '120.0000', 0, 0, 1),
(108, 'Ireland', 'IE', '53.0000', '-8.0000', 0, 0, 1),
(109, 'Israel', 'IL', '31.5000', '34.7500', 0, 0, 1),
(110, 'Isle of Man', 'IM', '54.236107', '-4.548056', 0, 0, 1),
(111, 'India', 'IN', '20.0000', '77.0000', 0, 0, 1),
(112, 'British Indian Ocean Territory', 'IO', '-6.0000', '71.5000', 0, 0, 1),
(113, 'Iraq', 'IQ', '33.0000', '44.0000', 0, 0, 1),
(114, 'Iran', 'IR', '32.0000', '53.0000', 0, 0, 1),
(115, 'Iceland', 'IS', '65.0000', '-18.0000', 0, 0, 1),
(116, 'Italy', 'IT', '42.8333', '12.8333', 0, 0, 1),
(117, 'Jersey', 'JE', '49.214439', '-2.13125', 0, 0, 1),
(118, 'Jamaica', 'JM', '18.2500', '-77.5000', 0, 0, 1),
(119, 'Jordan', 'JO', '31.0000', '36.0000', 0, 0, 1),
(120, 'Japan', 'JP', '36.0000', '138.0000', 0, 0, 1),
(121, 'Kenya', 'KE', '1.0000', '38.0000', 0, 0, 1),
(122, 'Kyrgyzstan', 'KG', '41.0000', '75.0000', 0, 0, 1),
(123, 'Cambodia', 'KH', '13.0000', '105.0000', 0, 0, 1),
(124, 'Kiribati', 'KI', '1.4167', '173.0000', 0, 0, 1),
(125, 'Comoros', 'KM', '-12.1667', '44.2500', 0, 0, 1),
(126, 'Saint Kitts and Nevis', 'KN', '17.3333', '-62.7500', 0, 0, 1),
(127, 'Korea', 'KP', '40.0000', '127.0000', 0, 0, 1),
(128, 'Korea', 'KR', '37.0000', '127.5000', 0, 0, 1),
(129, 'Kuwait', 'KW', '29.3375', '47.6581', 0, 0, 1),
(130, 'Cayman Islands', 'KY', '19.5000', '-80.5000', 0, 0, 1),
(131, 'Kazakhstan', 'KZ', '48.0000', '68.0000', 0, 0, 1),
(132, 'Lao People\'s Democratic Republic', 'LA', '18.0000', '105.0000', 0, 0, 1),
(133, 'Lebanon', 'LB', '33.8333', '35.8333', 0, 0, 1),
(134, 'Saint Lucia', 'LC', '13.8833', '-61.1333', 0, 0, 1),
(135, 'Liechtenstein', 'LI', '47.1667', '9.5333', 0, 0, 1),
(136, 'Sri Lanka', 'LK', '7.0000', '81.0000', 0, 0, 1),
(137, 'Liberia', 'LR', '6.5000', '-9.5000', 0, 0, 1),
(138, 'Lesotho', 'LS', '-29.5000', '28.5000', 0, 0, 1),
(139, 'Lithuania', 'LT', '56.0000', '24.0000', 0, 0, 1),
(140, 'Luxembourg', 'LU', '49.7500', '6.1667', 0, 0, 1),
(141, 'Latvia', 'LV', '57.0000', '25.0000', 0, 0, 1),
(142, 'Libyan Arab Jamahiriya', 'LY', '25.0000', '17.0000', 0, 0, 1),
(143, 'Morocco', 'MA', '32.0000', '-5.0000', 0, 0, 1),
(144, 'Monaco', 'MC', '43.7333', '7.4000', 0, 0, 1),
(145, 'Moldova', 'MD', '47.0000', '29.0000', 0, 0, 1),
(146, 'Montenegro', 'ME', '42.0000', '19.0000', 0, 0, 1),
(147, 'Saint Martin', 'MF', '18.08255', '-63.052251', 0, 0, 1),
(148, 'Madagascar', 'MG', '-20.0000', '47.0000', 0, 0, 1),
(149, 'Marshall Islands', 'MH', '9.0000', '168.0000', 0, 0, 1),
(150, 'Macedonia', 'MK', '41.8333', '22.0000', 0, 0, 1),
(151, 'Mali', 'ML', '17.0000', '-4.0000', 0, 0, 1),
(152, 'Myanmar', 'MM', '22.0000', '98.0000', 0, 0, 1),
(153, 'Mongolia', 'MN', '46.0000', '105.0000', 0, 0, 1),
(154, 'Macao', 'MO', '22.1667', '113.5500', 0, 0, 1),
(155, 'Northern Mariana Islands', 'MP', '15.2000', '145.7500', 0, 0, 1),
(156, 'Martinique', 'MQ', '14.6667', '-61.0000', 0, 0, 1),
(157, 'Mauritania', 'MR', '20.0000', '-12.0000', 0, 0, 1),
(158, 'Montserrat', 'MS', '16.7500', '-62.2000', 0, 0, 1),
(159, 'Malta', 'MT', '35.8333', '14.5833', 0, 0, 1),
(160, 'Mauritius', 'MU', '-20.2833', '57.5500', 0, 0, 1),
(161, 'Maldives', 'MV', '3.2500', '73.0000', 0, 0, 1),
(162, 'Malawi', 'MW', '-13.5000', '34.0000', 0, 0, 1),
(163, 'Mexico', 'MX', '23.0000', '-102.0000', 0, 0, 1),
(164, 'Malaysia', 'MY', '2.5000', '112.5000', 0, 0, 1),
(165, 'Mozambique', 'MZ', '-18.2500', '35.0000', 0, 0, 1),
(166, 'Namibia', 'NA', '-22.0000', '17.0000', 0, 0, 1),
(167, 'New Caledonia', 'NC', '-21.5000', '165.5000', 0, 0, 1),
(168, 'Niger', 'NE', '16.0000', '8.0000', 0, 0, 1),
(169, 'Norfolk Island', 'NF', '-29.0333', '167.9500', 0, 0, 1),
(170, 'Nigeria', 'NG', '10.0000', '8.0000', 0, 0, 1),
(171, 'Nicaragua', 'NI', '13.0000', '-85.0000', 0, 0, 1),
(172, 'Netherlands', 'NL', '52.5000', '5.7500', 0, 0, 1),
(173, 'Norway', 'NO', '62.0000', '10.0000', 0, 0, 1),
(174, 'Nepal', 'NP', '28.0000', '84.0000', 0, 0, 1),
(175, 'Nauru', 'NR', '-0.5333', '166.9167', 0, 0, 1),
(176, 'Niue', 'NU', '-19.0333', '-169.8667', 0, 0, 1),
(177, 'New Zealand', 'NZ', '-41.0000', '174.0000', 0, 0, 1),
(178, 'Oman', 'OM', '21.0000', '57.0000', 0, 0, 1),
(179, 'Panama', 'PA', '9.0000', '-80.0000', 0, 0, 1),
(180, 'Peru', 'PE', '-10.0000', '-76.0000', 0, 0, 1),
(181, 'French Polynesia', 'PF', '-15.0000', '-140.0000', 0, 0, 1),
(182, 'Papua New Guinea', 'PG', '-6.0000', '147.0000', 0, 0, 1),
(183, 'Philippines', 'PH', '13.0000', '122.0000', 0, 0, 1),
(184, 'Pakistan', 'PK', '30.0000', '70.0000', 0, 0, 1),
(185, 'Poland', 'PL', '52.0000', '20.0000', 0, 0, 1),
(186, 'Saint Pierre and Miquelon', 'PM', '46.8333', '-56.3333', 0, 0, 1),
(187, 'Pitcairn', 'PN', '-24.376766', '-128.324339', 0, 0, 1),
(188, 'Puerto Rico', 'PR', '18.2500', '-66.5000', 0, 0, 1),
(189, 'Palestinian Territory', 'PS', '32.0000', '35.2500', 0, 0, 1),
(190, 'Portugal', 'PT', '39.5000', '-8.0000', 0, 0, 1),
(191, 'Palau', 'PW', '7.5000', '134.5000', 0, 0, 1),
(192, 'Paraguay', 'PY', '-23.0000', '-58.0000', 0, 0, 1),
(193, 'Qatar', 'QA', '25.5000', '51.2500', 0, 0, 1),
(194, 'Reunion', 'RE', '-21.1000', '55.6000', 0, 0, 1),
(195, 'Romania', 'RO', '46.0000', '25.0000', 0, 0, 1),
(196, 'Serbia', 'RS', '44.0000', '21.0000', 0, 0, 1),
(197, 'Russian Federation', 'RU', '60.0000', '100.0000', 0, 0, 1),
(198, 'Rwanda', 'RW', '-2.0000', '30.0000', 0, 0, 1),
(199, 'Saudi Arabia', 'SA', '25.0000', '45.0000', 0, 0, 1),
(200, 'Solomon Islands', 'SB', '-8.0000', '159.0000', 0, 0, 1),
(201, 'Seychelles', 'SC', '-4.5833', '55.6667', 0, 0, 1),
(202, 'Sudan', 'SD', '15.0000', '30.0000', 0, 0, 1),
(203, 'Sweden', 'SE', '62.0000', '15.0000', 0, 0, 1),
(204, 'Singapore', 'SG', '1.3667', '103.8000', 0, 0, 1),
(205, 'Saint Helena', 'SH', '-15.9333', '-5.7000', 0, 0, 1),
(206, 'Slovenia', 'SI', '46.0000', '15.0000', 0, 0, 1),
(207, 'Svalbard and Jan Mayen', 'SJ', '78.0000', '20.0000', 0, 0, 1),
(208, 'Slovakia', 'SK', '48.6667', '19.5000', 0, 0, 1),
(209, 'Sierra Leone', 'SL', '8.5000', '-11.5000', 0, 0, 1),
(210, 'San Marino', 'SM', '43.7667', '12.4167', 0, 0, 1),
(211, 'Senegal', 'SN', '14.0000', '-14.0000', 0, 0, 1),
(212, 'Somalia', 'SO', '10.0000', '49.0000', 0, 0, 1),
(213, 'Suriname', 'SR', '4.0000', '-56.0000', 0, 0, 1),
(214, 'South Sudan', 'SS', '6.876992', '31.306979', 0, 0, 1),
(215, 'Sao Tome and Principe', 'ST', '1.0000', '7.0000', 0, 0, 1),
(216, 'El Salvador', 'SV', '13.8333', '-88.9167', 0, 0, 1),
(217, 'Sint Maarten', 'SX', '18.041216', '-63.053073', 0, 0, 1),
(218, 'Syrian Arab Republic', 'SY', '35.0000', '38.0000', 0, 0, 1),
(219, 'Swaziland', 'SZ', '-26.5000', '31.5000', 0, 0, 1),
(220, 'Turks and Caicos Islands', 'TC', '21.7500', '-71.5833', 0, 0, 1),
(221, 'Chad', 'TD', '15.0000', '19.0000', 0, 0, 1),
(222, 'French Southern Territories', 'TF', '-43.0000', '67.0000', 0, 0, 1),
(223, 'Togo', 'TG', '8.0000', '1.1667', 0, 0, 1),
(224, 'Thailand', 'TH', '15.0000', '100.0000', 0, 0, 1),
(225, 'Tajikistan', 'TJ', '39.0000', '71.0000', 0, 0, 1),
(226, 'Tokelau', 'TK', '-9.0000', '-172.0000', 0, 0, 1),
(227, 'Timor-Leste', 'TL', '-8.874217', '125.727539', 0, 0, 1),
(228, 'Turkmenistan', 'TM', '40.0000', '60.0000', 0, 0, 1),
(229, 'Tunisia', 'TN', '34.0000', '9.0000', 0, 0, 1),
(230, 'Tonga', 'TO', '-20.0000', '-175.0000', 0, 0, 1),
(231, 'Turkey', 'TR', '39.0000', '35.0000', 0, 0, 1),
(232, 'Trinidad and Tobago', 'TT', '11.0000', '-61.0000', 0, 0, 1),
(233, 'Tuvalu', 'TV', '-8.0000', '178.0000', 0, 0, 1),
(234, 'Taiwan', 'TW', '23.5000', '121.0000', 0, 0, 1),
(235, 'Tanzania', 'TZ', '-6.0000', '35.0000', 0, 0, 1),
(236, 'Ukraine', 'UA', '49.0000', '32.0000', 0, 0, 1),
(237, 'Uganda', 'UG', '1.0000', '32.0000', 0, 0, 1),
(238, 'United States Minor Outlying Islands', 'UM', '19.2833', '166.6000', 0, 0, 1),
(239, 'United States', 'US', '38.0000', '-97.0000', 0, 0, 1),
(240, 'Uruguay', 'UY', '-33.0000', '-56.0000', 0, 0, 1),
(241, 'Uzbekistan', 'UZ', '41.0000', '64.0000', 0, 0, 1),
(242, 'Holy See (Vatican City State)', 'VA', '41.9000', '12.4500', 0, 0, 1),
(243, 'Saint Vincent and the Grenadines', 'VC', '13.2500', '-61.2000', 0, 0, 1),
(244, 'Venezuela', 'VE', '8.0000', '-66.0000', 0, 0, 1),
(245, 'Virgin Islands', 'VG', '18.5000', '-64.5000', 0, 0, 1),
(246, 'Virgin Islands', 'VI', '18.3333', '-64.8333', 0, 0, 1),
(247, 'Vietnam', 'VN', '16.0000', '106.0000', 0, 0, 1),
(248, 'Vanuatu', 'VU', '-16.0000', '167.0000', 0, 0, 1),
(249, 'Wallis and Futuna', 'WF', '-13.3000', '-176.2000', 0, 0, 1),
(250, 'Samoa', 'WS', '-13.5833', '-172.3333', 0, 0, 1),
(251, 'Yemen', 'YE', '15.0000', '48.0000', 0, 0, 1),
(252, 'Mayotte', 'YT', '-12.8333', '45.1667', 0, 0, 1),
(253, 'South Africa', 'ZA', '-29.0000', '24.0000', 0, 0, 1),
(254, 'Zambia', 'ZM', '-15.0000', '30.0000', 0, 0, 1),
(255, 'Zaire', 'ZR', '-4.038333', '21.758664', 0, 0, 1),
(256, 'Zimbabwe', 'ZW', '-20.0000', '30.0000', 0, 0, 1),
(257, 'Anonymous Proxy', 'XX', NULL, NULL, 64, 64, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_daily_visitors_stats`
--

CREATE TABLE `ahc_daily_visitors_stats` (
  `id` int UNSIGNED NOT NULL,
  `vst_date` datetime NOT NULL,
  `vst_visitors` int UNSIGNED DEFAULT '0',
  `vst_visits` int UNSIGNED DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_daily_visitors_stats`
--

INSERT INTO `ahc_daily_visitors_stats` (`id`, `vst_date`, `vst_visitors`, `vst_visits`, `site_id`) VALUES
(1, '2025-03-06 06:11:14', 1, 1, 1),
(2, '2025-03-24 09:32:15', 1, 1, 1),
(3, '2025-03-24 09:32:55', 1, 1, 1),
(4, '2025-03-24 09:36:29', 1, 1, 1),
(5, '2025-03-24 09:40:32', 1, 1, 1),
(6, '2025-03-24 09:47:56', 1, 1, 1),
(7, '2025-03-24 09:58:49', 1, 1, 1),
(8, '2025-03-24 09:59:27', 1, 1, 1),
(9, '2025-03-24 10:00:21', 1, 1, 1),
(10, '2025-03-24 10:00:31', 1, 1, 1),
(11, '2025-03-24 10:01:13', 1, 1, 1),
(12, '2025-03-24 10:02:22', 1, 1, 1),
(13, '2025-03-24 10:04:21', 1, 1, 1),
(14, '2025-03-24 10:09:30', 1, 1, 1),
(15, '2025-03-24 10:09:44', 1, 1, 1),
(16, '2025-03-24 10:10:15', 1, 1, 1),
(17, '2025-03-24 10:10:24', 1, 1, 1),
(18, '2025-03-24 10:13:39', 1, 1, 1),
(19, '2025-03-24 10:14:10', 1, 1, 1),
(20, '2025-03-24 10:23:11', 1, 1, 1),
(21, '2025-03-24 10:33:57', 1, 1, 1),
(22, '2025-03-24 10:34:26', 1, 1, 1),
(23, '2025-03-24 10:34:41', 1, 1, 1),
(24, '2025-03-24 10:37:46', 1, 1, 1),
(25, '2025-03-24 10:42:37', 1, 1, 1),
(26, '2025-03-24 10:43:52', 1, 1, 1),
(27, '2025-03-24 10:44:18', 1, 1, 1),
(28, '2025-03-24 10:44:28', 1, 1, 1),
(29, '2025-03-24 10:49:49', 1, 1, 1),
(30, '2025-03-24 10:50:39', 1, 1, 1),
(31, '2025-03-24 10:50:57', 1, 1, 1),
(32, '2025-03-24 10:51:14', 1, 1, 1),
(33, '2025-03-24 11:00:23', 1, 1, 1),
(34, '2025-03-24 11:00:31', 1, 1, 1),
(35, '2025-03-24 11:00:50', 1, 1, 1),
(36, '2025-03-24 11:01:38', 1, 1, 1),
(37, '2025-03-24 11:02:39', 1, 1, 1),
(38, '2025-03-24 11:03:17', 1, 1, 1),
(39, '2025-03-24 11:03:35', 1, 1, 1),
(40, '2025-03-24 11:03:46', 1, 1, 1),
(41, '2025-03-24 11:03:56', 1, 1, 1),
(42, '2025-03-24 11:04:05', 1, 1, 1),
(43, '2025-03-24 11:04:20', 1, 1, 1),
(44, '2025-03-24 11:04:31', 1, 1, 1),
(45, '2025-03-24 11:04:40', 1, 1, 1),
(46, '2025-03-24 11:24:34', 1, 1, 1),
(47, '2025-03-24 14:10:42', 1, 1, 1),
(48, '2025-03-24 19:14:53', 1, 1, 1),
(49, '2025-03-24 19:15:29', 1, 1, 1),
(50, '2025-03-24 19:15:36', 1, 1, 1),
(51, '2025-03-24 19:15:40', 1, 1, 1),
(52, '2025-03-24 19:17:33', 1, 1, 1),
(53, '2025-03-24 19:17:38', 1, 1, 1),
(54, '2025-03-24 19:17:41', 1, 1, 1),
(55, '2025-03-24 19:18:17', 1, 1, 1),
(56, '2025-03-24 19:18:41', 1, 1, 1),
(57, '2025-03-24 19:20:51', 1, 1, 1),
(58, '2025-03-24 19:21:04', 1, 1, 1),
(59, '2025-03-24 19:21:34', 1, 1, 1),
(60, '2025-03-24 19:21:50', 1, 1, 1),
(61, '2025-04-10 20:38:30', 1, 1, 1),
(62, '2025-04-16 13:13:48', 1, 1, 1),
(63, '2025-04-16 13:14:07', 1, 1, 1),
(64, '2025-04-16 13:15:38', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_hits`
--

CREATE TABLE `ahc_hits` (
  `hit_id` int UNSIGNED NOT NULL,
  `hit_ip_address` varchar(50) NOT NULL,
  `hit_user_agent` varchar(200) NOT NULL,
  `hit_request_uri` varchar(200) DEFAULT NULL,
  `hit_page_id` varchar(30) NOT NULL,
  `hit_page_title` varchar(200) DEFAULT NULL,
  `ctr_id` int UNSIGNED DEFAULT NULL,
  `hit_referer` varchar(300) DEFAULT NULL,
  `hit_referer_site` varchar(100) DEFAULT NULL,
  `srh_id` int UNSIGNED DEFAULT NULL,
  `hit_search_words` varchar(200) DEFAULT NULL,
  `bsr_id` int UNSIGNED NOT NULL,
  `hit_date` date NOT NULL,
  `hit_time` time NOT NULL,
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_hits`
--

INSERT INTO `ahc_hits` (`hit_id`, `hit_ip_address`, `hit_user_agent`, `hit_request_uri`, `hit_page_id`, `hit_page_title`, `ctr_id`, `hit_referer`, `hit_referer_site`, `srh_id`, `hit_search_words`, `bsr_id`, `hit_date`, `hit_time`, `site_id`) VALUES
(62, 'UNKNOWN67ffad0c9bdc6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '', '0', '', 257, '', '', 0, '', 4, '2025-04-16', '13:13:48', 1),
(63, 'UNKNOWN67ffad1f9b847', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '', '0', '', 257, '', '', 0, '', 4, '2025-04-16', '13:14:07', 1),
(64, 'UNKNOWN67ffad7a95893', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '', '0', '', 257, '', '', 0, '', 4, '2025-04-16', '13:15:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_keywords`
--

CREATE TABLE `ahc_keywords` (
  `kwd_id` int UNSIGNED NOT NULL,
  `kwd_ip_address` varchar(50) NOT NULL,
  `kwd_keywords` varchar(200) NOT NULL,
  `kwd_referer` varchar(300) NOT NULL,
  `srh_id` int UNSIGNED NOT NULL,
  `ctr_id` int UNSIGNED DEFAULT NULL,
  `bsr_id` int UNSIGNED NOT NULL,
  `kwd_date` date NOT NULL,
  `kwd_time` time NOT NULL,
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ahc_online_users`
--

CREATE TABLE `ahc_online_users` (
  `id` int UNSIGNED NOT NULL,
  `hit_ip_address` varchar(50) NOT NULL,
  `hit_page_id` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_online_users`
--

INSERT INTO `ahc_online_users` (`id`, `hit_ip_address`, `hit_page_id`, `date`, `site_id`) VALUES
(62, 'UNKNOWN67ffad0c9bdc6', '0', '2025-04-16 13:13:48', 1),
(63, 'UNKNOWN67ffad1f9b847', '0', '2025-04-16 13:14:07', 1),
(64, 'UNKNOWN67ffad7a95893', '0', '2025-04-16 13:15:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_recent_visitors`
--

CREATE TABLE `ahc_recent_visitors` (
  `vtr_id` int UNSIGNED NOT NULL,
  `vtr_ip_address` varchar(50) NOT NULL,
  `vtr_referer` varchar(300) DEFAULT NULL,
  `srh_id` int UNSIGNED DEFAULT NULL,
  `bsr_id` int UNSIGNED NOT NULL,
  `ctr_id` int UNSIGNED DEFAULT NULL,
  `vtr_date` date NOT NULL,
  `vtr_time` time NOT NULL,
  `ahc_city` varchar(230) DEFAULT NULL,
  `ahc_region` varchar(230) DEFAULT NULL,
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_recent_visitors`
--

INSERT INTO `ahc_recent_visitors` (`vtr_id`, `vtr_ip_address`, `vtr_referer`, `srh_id`, `bsr_id`, `ctr_id`, `vtr_date`, `vtr_time`, `ahc_city`, `ahc_region`, `site_id`) VALUES
(1, 'UNKNOWN67c93c8233483', '', 0, 4, 257, '2025-03-06', '06:11:16', 'Thimphu', 'Thimphu District', 1),
(2, 'UNKNOWN67e1269ecaf79', '', 0, 2, 257, '2025-03-24', '09:32:16', 'Thimphu', 'Thimphu District', 1),
(3, 'UNKNOWN67e126c7869cb', '', 0, 2, 257, '2025-03-24', '09:32:57', 'Thimphu', 'Thimphu District', 1),
(4, 'UNKNOWN67e1279d82a7b', '', 0, 2, 257, '2025-03-24', '09:36:31', 'Thimphu', 'Thimphu District', 1),
(5, 'UNKNOWN67e1289059270', '', 0, 2, 257, '2025-03-24', '09:40:34', 'Thimphu', 'Thimphu District', 1),
(6, 'UNKNOWN67e12a4cb619b', '', 0, 2, 257, '2025-03-24', '09:47:59', 'Thimphu', 'Thimphu District', 1),
(7, 'UNKNOWN67e12cd9c0ce1', '', 0, 2, 257, '2025-03-24', '09:58:51', 'Thimphu', 'Thimphu District', 1),
(8, 'UNKNOWN67e12cff5b725', '', 0, 2, 257, '2025-03-24', '09:59:29', 'Thimphu', 'Thimphu District', 1),
(9, 'UNKNOWN67e12d3540986', '', 0, 2, 257, '2025-03-24', '10:00:23', 'Thimphu', 'Thimphu District', 1),
(10, 'UNKNOWN67e12d3f55dac', '', 0, 2, 257, '2025-03-24', '10:00:32', 'Thimphu', 'Thimphu District', 1),
(11, 'UNKNOWN67e12d6932b4f', '', 0, 2, 257, '2025-03-24', '10:01:15', 'Thimphu', 'Thimphu District', 1),
(12, 'UNKNOWN67e12dae8efa8', '', 0, 2, 257, '2025-03-24', '10:02:24', 'Thimphu', 'Thimphu District', 1),
(13, 'UNKNOWN67e12e254d1aa', '', 0, 2, 257, '2025-03-24', '10:04:23', 'Thimphu', 'Thimphu District', 1),
(14, 'UNKNOWN67e12f5a65f3e', '', 0, 2, 257, '2025-03-24', '10:09:32', 'Thimphu', 'Thimphu District', 1),
(15, 'UNKNOWN67e12f67ed8a4', '', 0, 2, 257, '2025-03-24', '10:09:45', 'Thimphu', 'Thimphu District', 1),
(16, 'UNKNOWN67e12f87566c9', '', 0, 2, 257, '2025-03-24', '10:10:17', 'Thimphu', 'Thimphu District', 1),
(17, 'UNKNOWN67e12f900e8ca', '', 0, 2, 257, '2025-03-24', '10:10:25', 'Thimphu', 'Thimphu District', 1),
(18, 'UNKNOWN67e13052f3fe2', '', 0, 2, 257, '2025-03-24', '10:13:40', 'Thimphu', 'Thimphu District', 1),
(19, 'UNKNOWN67e1307249469', '', 0, 2, 257, '2025-03-24', '10:14:12', 'Thimphu', 'Thimphu District', 1),
(20, 'UNKNOWN67e1328f2a2b0', '', 0, 2, 257, '2025-03-24', '10:23:13', 'Thimphu', 'Thimphu District', 1),
(21, 'UNKNOWN67e135152f1b9', '', 0, 2, 257, '2025-03-24', '10:33:59', 'Thimphu', 'Thimphu District', 1),
(22, 'UNKNOWN67e13532b557b', '', 0, 2, 257, '2025-03-24', '10:34:28', 'Thimphu', 'Thimphu District', 1),
(23, 'UNKNOWN67e1354111dc3', '', 0, 2, 257, '2025-03-24', '10:34:43', 'Thimphu', 'Thimphu District', 1),
(24, 'UNKNOWN67e135fa22b82', '', 0, 2, 257, '2025-03-24', '10:37:48', 'Thimphu', 'Thimphu District', 1),
(25, 'UNKNOWN67e1371d25df0', '', 0, 2, 257, '2025-03-24', '10:42:38', 'Thimphu', 'Thimphu District', 1),
(26, 'UNKNOWN67e13768c88c0', '', 0, 2, 257, '2025-03-24', '10:43:54', 'Thimphu', 'Thimphu District', 1),
(27, 'UNKNOWN67e1378212cfe', '', 0, 2, 257, '2025-03-24', '10:44:20', 'Thimphu', 'Thimphu District', 1),
(28, 'UNKNOWN67e1378cda468', '', 0, 2, 257, '2025-03-24', '10:44:30', 'Thimphu', 'Thimphu District', 1),
(29, 'UNKNOWN67e138cd19e0d', '', 0, 2, 257, '2025-03-24', '10:49:51', 'Thimphu', 'Thimphu District', 1),
(30, 'UNKNOWN67e138ff19c7c', '', 0, 2, 257, '2025-03-24', '10:50:41', 'Thimphu', 'Thimphu District', 1),
(31, 'UNKNOWN67e1391175056', '', 0, 2, 257, '2025-03-24', '10:50:59', 'Thimphu', 'Thimphu District', 1),
(32, 'UNKNOWN67e13922a3746', '', 0, 2, 257, '2025-03-24', '10:51:16', 'Thimphu', 'Thimphu District', 1),
(33, 'UNKNOWN67e13b47562ab', '', 0, 2, 257, '2025-03-24', '11:00:25', 'Thimphu', 'Thimphu District', 1),
(34, 'UNKNOWN67e13b4f76c6f', '', 0, 2, 257, '2025-03-24', '11:00:33', 'Thimphu', 'Thimphu District', 1),
(35, 'UNKNOWN67e13b62d77b1', '', 0, 2, 257, '2025-03-24', '11:00:52', 'Thimphu', 'Thimphu District', 1),
(36, 'UNKNOWN67e13b920e356', '', 0, 2, 257, '2025-03-24', '11:01:40', 'Thimphu', 'Thimphu District', 1),
(37, 'UNKNOWN67e13bcf67f89', '', 0, 2, 257, '2025-03-24', '11:02:41', 'Thimphu', 'Thimphu District', 1),
(38, 'UNKNOWN67e13bf4e1fbd', '', 0, 2, 257, '2025-03-24', '11:03:18', 'Thimphu', 'Thimphu District', 1),
(39, 'UNKNOWN67e13c07bc53e', '', 0, 2, 257, '2025-03-24', '11:03:37', 'Thimphu', 'Thimphu District', 1),
(40, 'UNKNOWN67e13c128fc7c', '', 0, 2, 257, '2025-03-24', '11:03:49', 'Thimphu', 'Thimphu District', 1),
(41, 'UNKNOWN67e13c1c57743', '', 0, 2, 257, '2025-03-24', '11:03:57', 'Thimphu', 'Thimphu District', 1),
(42, 'UNKNOWN67e13c256e8fd', '', 0, 2, 257, '2025-03-24', '11:04:07', 'Thimphu', 'Thimphu District', 1),
(43, 'UNKNOWN67e13c343afb4', '', 0, 2, 257, '2025-03-24', '11:04:22', 'Thimphu', 'Thimphu District', 1),
(44, 'UNKNOWN67e13c3f4802f', '', 0, 2, 257, '2025-03-24', '11:04:33', 'Thimphu', 'Thimphu District', 1),
(45, 'UNKNOWN67e13c47f02ff', '', 0, 2, 257, '2025-03-24', '11:04:41', 'Thimphu', 'Thimphu District', 1),
(46, 'UNKNOWN67e140f1cf5fe', '', 0, 2, 257, '2025-03-24', '11:24:34', '', '', 1),
(47, 'UNKNOWN67e167e23bf60', '', 0, 2, 257, '2025-03-24', '14:10:46', 'Thimphu', 'Thimphu District', 1),
(48, 'UNKNOWN67e1af2cd9094', '', 0, 4, 257, '2025-03-24', '19:14:54', 'Thimphu', 'Thimphu District', 1),
(49, 'UNKNOWN67e1af51d27f4', '', 0, 4, 257, '2025-03-24', '19:15:31', 'Thimphu', 'Thimphu District', 1),
(50, 'UNKNOWN67e1af57f09fa', '', 0, 4, 257, '2025-03-24', '19:15:37', 'Thimphu', 'Thimphu District', 1),
(51, 'UNKNOWN67e1af5be935c', '', 0, 4, 257, '2025-03-24', '19:15:41', 'Thimphu', 'Thimphu District', 1),
(52, 'UNKNOWN67e1afcd66955', '', 0, 4, 257, '2025-03-24', '19:17:35', 'Thimphu', 'Thimphu District', 1),
(53, 'UNKNOWN67e1afd2028de', '', 0, 4, 257, '2025-03-24', '19:17:39', 'Thimphu', 'Thimphu District', 1),
(54, 'UNKNOWN67e1afd543c95', '', 0, 4, 257, '2025-03-24', '19:17:42', 'Thimphu', 'Thimphu District', 1),
(55, 'UNKNOWN67e1aff925ee4', '', 0, 4, 257, '2025-03-24', '19:18:19', 'Thimphu', 'Thimphu District', 1),
(56, 'UNKNOWN67e1b0119c36b', '', 0, 4, 257, '2025-03-24', '19:18:43', 'Thimphu', 'Thimphu District', 1),
(57, 'UNKNOWN67e1b093535a8', '', 0, 4, 257, '2025-03-24', '19:20:53', 'Thimphu', 'Thimphu District', 1),
(58, 'UNKNOWN67e1b0a06046d', '', 0, 4, 257, '2025-03-24', '19:21:06', 'Thimphu', 'Thimphu District', 1),
(59, 'UNKNOWN67e1b0bea3c9d', '', 0, 4, 257, '2025-03-24', '19:21:36', 'Thimphu', 'Thimphu District', 1),
(60, 'UNKNOWN67e1b0ce905cb', '', 0, 4, 257, '2025-03-24', '19:21:52', 'Thimphu', 'Thimphu District', 1),
(61, 'UNKNOWN67f82c45cd15f', '', 0, 4, 257, '2025-04-10', '20:38:32', 'Thimphu', 'Thimphu District', 1),
(62, 'UNKNOWN67ffad0c9bdc6', '', 0, 4, 257, '2025-04-16', '13:13:48', '', '', 1),
(63, 'UNKNOWN67ffad1f9b847', '', 0, 4, 257, '2025-04-16', '13:14:07', '', '', 1),
(64, 'UNKNOWN67ffad7a95893', '', 0, 4, 257, '2025-04-16', '13:15:38', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_refering_sites`
--

CREATE TABLE `ahc_refering_sites` (
  `rfr_id` int UNSIGNED NOT NULL,
  `rfr_site_name` varchar(100) NOT NULL,
  `rfr_visits` int UNSIGNED DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ahc_searching_visits`
--

CREATE TABLE `ahc_searching_visits` (
  `vtsh_id` int UNSIGNED NOT NULL,
  `srh_id` int UNSIGNED NOT NULL,
  `vtsh_date` datetime NOT NULL,
  `vtsh_visits` int UNSIGNED NOT NULL DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ahc_search_engines`
--

CREATE TABLE `ahc_search_engines` (
  `srh_id` int UNSIGNED NOT NULL,
  `srh_name` varchar(100) NOT NULL,
  `srh_query_parameter` varchar(10) NOT NULL,
  `srh_icon` varchar(50) DEFAULT NULL,
  `srh_identifier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_search_engines`
--

INSERT INTO `ahc_search_engines` (`srh_id`, `srh_name`, `srh_query_parameter`, `srh_icon`, `srh_identifier`) VALUES
(1, 'Google', 'q', 'google.png', 'google'),
(2, 'Bing', 'q', 'bing.png', 'bing'),
(3, 'Yahoo Search', 'p', 'yahoo.png', 'yahoo'),
(4, 'Ask', 'q', 'ask.png', 'ask'),
(5, 'WebCrawler', 'q', 'webcrawler.gif', 'webcrawler');

-- --------------------------------------------------------

--
-- Table structure for table `ahc_search_engine_crawlers`
--

CREATE TABLE `ahc_search_engine_crawlers` (
  `bot_name` varchar(50) NOT NULL,
  `srh_id` int UNSIGNED NOT NULL,
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_search_engine_crawlers`
--

INSERT INTO `ahc_search_engine_crawlers` (`bot_name`, `srh_id`, `site_id`) VALUES
('Googlebot', 1, 1),
('Googlebot-News', 1, 1),
('Googlebot-Image', 1, 1),
('Googlebot-Video', 1, 1),
('Googlebot-Mobile', 1, 1),
('Mediapartners-Google', 1, 1),
('Mediapartners', 1, 1),
('Mediapartners-Google', 1, 1),
('Mediapartners', 1, 1),
('AdsBot-Google', 1, 1),
('bingbot', 2, 1),
('Yahoo! Slurp', 3, 1),
('Yahoo! Slurp China', 3, 1),
('YahooSeeker', 3, 1),
('Ask Jeeves', 4, 1),
('FAST-WebCrawler', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_settings`
--

CREATE TABLE `ahc_settings` (
  `set_id` int UNSIGNED NOT NULL,
  `set_hits_days` int UNSIGNED NOT NULL DEFAULT '14',
  `set_ajax_check` int UNSIGNED NOT NULL DEFAULT '10',
  `set_ips` text,
  `set_google_map` varchar(100) NOT NULL DEFAULT 'today_visitors',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_settings`
--

INSERT INTO `ahc_settings` (`set_id`, `set_hits_days`, `set_ajax_check`, `set_ips`, `set_google_map`, `site_id`) VALUES
(1, 14, 15, NULL, 'today_visitors', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_title_traffic`
--

CREATE TABLE `ahc_title_traffic` (
  `til_id` int UNSIGNED NOT NULL,
  `til_page_id` varchar(30) NOT NULL,
  `til_page_title` varchar(100) DEFAULT NULL,
  `til_hits` int UNSIGNED NOT NULL,
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_title_traffic`
--

INSERT INTO `ahc_title_traffic` (`til_id`, `til_page_id`, `til_page_title`, `til_hits`, `site_id`) VALUES
(1, '1', 'First Visit', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_visitors`
--

CREATE TABLE `ahc_visitors` (
  `vst_id` int UNSIGNED NOT NULL,
  `vst_date` datetime NOT NULL,
  `vst_visitors` int UNSIGNED DEFAULT '0',
  `vst_visits` int UNSIGNED DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_visitors`
--

INSERT INTO `ahc_visitors` (`vst_id`, `vst_date`, `vst_visitors`, `vst_visits`, `site_id`) VALUES
(1, '2025-03-06 06:11:14', 1, 1, 1),
(2, '2025-03-24 09:32:15', 1, 1, 1),
(3, '2025-03-24 09:32:55', 1, 1, 1),
(4, '2025-03-24 09:36:29', 1, 1, 1),
(5, '2025-03-24 09:40:32', 1, 1, 1),
(6, '2025-03-24 09:47:57', 1, 1, 1),
(7, '2025-03-24 09:58:49', 1, 1, 1),
(8, '2025-03-24 09:59:27', 1, 1, 1),
(9, '2025-03-24 10:00:21', 1, 1, 1),
(10, '2025-03-24 10:00:31', 1, 1, 1),
(11, '2025-03-24 10:01:13', 1, 1, 1),
(12, '2025-03-24 10:02:22', 1, 1, 1),
(13, '2025-03-24 10:04:21', 1, 1, 1),
(14, '2025-03-24 10:09:30', 1, 1, 1),
(15, '2025-03-24 10:09:44', 1, 1, 1),
(16, '2025-03-24 10:10:15', 1, 1, 1),
(17, '2025-03-24 10:10:24', 1, 1, 1),
(18, '2025-03-24 10:13:39', 1, 1, 1),
(19, '2025-03-24 10:14:10', 1, 1, 1),
(20, '2025-03-24 10:23:11', 1, 1, 1),
(21, '2025-03-24 10:33:57', 1, 1, 1),
(22, '2025-03-24 10:34:26', 1, 1, 1),
(23, '2025-03-24 10:34:41', 1, 1, 1),
(24, '2025-03-24 10:37:46', 1, 1, 1),
(25, '2025-03-24 10:42:37', 1, 1, 1),
(26, '2025-03-24 10:43:52', 1, 1, 1),
(27, '2025-03-24 10:44:18', 1, 1, 1),
(28, '2025-03-24 10:44:29', 1, 1, 1),
(29, '2025-03-24 10:49:49', 1, 1, 1),
(30, '2025-03-24 10:50:39', 1, 1, 1),
(31, '2025-03-24 10:50:57', 1, 1, 1),
(32, '2025-03-24 10:51:14', 1, 1, 1),
(33, '2025-03-24 11:00:23', 1, 1, 1),
(34, '2025-03-24 11:00:31', 1, 1, 1),
(35, '2025-03-24 11:00:51', 1, 1, 1),
(36, '2025-03-24 11:01:38', 1, 1, 1),
(37, '2025-03-24 11:02:39', 1, 1, 1),
(38, '2025-03-24 11:03:17', 1, 1, 1),
(39, '2025-03-24 11:03:35', 1, 1, 1),
(40, '2025-03-24 11:03:46', 1, 1, 1),
(41, '2025-03-24 11:03:56', 1, 1, 1),
(42, '2025-03-24 11:04:05', 1, 1, 1),
(43, '2025-03-24 11:04:20', 1, 1, 1),
(44, '2025-03-24 11:04:31', 1, 1, 1),
(45, '2025-03-24 11:04:40', 1, 1, 1),
(46, '2025-03-24 11:24:34', 1, 1, 1),
(47, '2025-03-24 14:10:42', 1, 1, 1),
(48, '2025-03-24 19:14:53', 1, 1, 1),
(49, '2025-03-24 19:15:29', 1, 1, 1),
(50, '2025-03-24 19:15:36', 1, 1, 1),
(51, '2025-03-24 19:15:40', 1, 1, 1),
(52, '2025-03-24 19:17:33', 1, 1, 1),
(53, '2025-03-24 19:17:38', 1, 1, 1),
(54, '2025-03-24 19:17:41', 1, 1, 1),
(55, '2025-03-24 19:18:17', 1, 1, 1),
(56, '2025-03-24 19:18:41', 1, 1, 1),
(57, '2025-03-24 19:20:51', 1, 1, 1),
(58, '2025-03-24 19:21:04', 1, 1, 1),
(59, '2025-03-24 19:21:34', 1, 1, 1),
(60, '2025-03-24 19:21:50', 1, 1, 1),
(61, '2025-04-10 20:38:30', 1, 1, 1),
(62, '2025-04-16 13:13:48', 1, 1, 1),
(63, '2025-04-16 13:14:07', 1, 1, 1),
(64, '2025-04-16 13:15:38', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahc_visits_time`
--

CREATE TABLE `ahc_visits_time` (
  `vtm_id` int UNSIGNED NOT NULL,
  `vtm_time_from` time NOT NULL,
  `vtm_time_to` time NOT NULL,
  `vtm_visitors` int UNSIGNED NOT NULL DEFAULT '0',
  `vtm_visits` int UNSIGNED NOT NULL DEFAULT '0',
  `site_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ahc_visits_time`
--

INSERT INTO `ahc_visits_time` (`vtm_id`, `vtm_time_from`, `vtm_time_to`, `vtm_visitors`, `vtm_visits`, `site_id`) VALUES
(1, '00:00:00', '00:59:59', 0, 0, 1),
(2, '01:00:00', '01:59:59', 0, 0, 1),
(3, '02:00:00', '02:59:59', 0, 0, 1),
(4, '03:00:00', '03:59:59', 0, 0, 1),
(5, '04:00:00', '04:59:59', 0, 0, 1),
(6, '05:00:00', '05:59:59', 0, 0, 1),
(7, '06:00:00', '06:59:59', 1, 1, 1),
(8, '07:00:00', '07:59:59', 0, 0, 1),
(9, '08:00:00', '08:59:59', 0, 0, 1),
(10, '09:00:00', '09:59:59', 7, 7, 1),
(11, '10:00:00', '10:59:59', 24, 24, 1),
(12, '11:00:00', '11:59:59', 14, 14, 1),
(13, '12:00:00', '12:59:59', 0, 0, 1),
(14, '13:00:00', '13:59:59', 3, 3, 1),
(15, '14:00:00', '14:59:59', 1, 1, 1),
(16, '15:00:00', '15:59:59', 0, 0, 1),
(17, '16:00:00', '16:59:59', 0, 0, 1),
(18, '17:00:00', '17:59:59', 0, 0, 1),
(19, '18:00:00', '18:59:59', 0, 0, 1),
(20, '19:00:00', '19:59:59', 13, 13, 1),
(21, '20:00:00', '20:59:59', 1, 1, 1),
(22, '21:00:00', '21:59:59', 0, 0, 1),
(23, '22:00:00', '22:59:59', 0, 0, 1),
(24, '23:00:00', '23:59:59', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_commentmeta`
--

CREATE TABLE `tti_bt_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_comments`
--

CREATE TABLE `tti_bt_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_comments`
--

INSERT INTO `tti_bt_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-02-19 02:37:00', '2025-02-19 02:37:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_links`
--

CREATE TABLE `tti_bt_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_options`
--

CREATE TABLE `tti_bt_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_options`
--

INSERT INTO `tti_bt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1744812069;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1744814249;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1744817817;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1744819617;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1744821417;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1744857421;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744857449;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744857454;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744870157;a:1:{s:18:\"wsm_dailyScheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1745319259;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1745375882;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://czc.samu.bt', 'on'),
(3, 'home', 'https://czc.samu.bt', 'on'),
(4, 'blogname', 'TTI - Thimphu', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'ldjigme@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:6:{i:0;s:34:\"acf-repeater-main/acf-repeater.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:28:\"compact-archives/compact.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:27:\"svg-support/svg-support.php\";i:5;s:79:\"visitors-traffic-real-time-statistics/Visitors-Traffic-Real-Time-Statistics.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '6', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:49:\"D:\\LARA\\www\\tti/wp-content/themes/ttibt/style.css\";i:1;s:0:\"\";}', 'off'),
(41, 'template', 'ttibt', 'on'),
(42, 'stylesheet', 'ttibt', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1755484617', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'tti_bt_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:8:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:39:\"<!-- wp:archives {\"type\":\"yearly\"} /-->\";}i:8;a:1:{s:7:\"content\";s:39:\"<!-- wp:archives {\"type\":\"yearly\"} /-->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";i:5;s:7:\"block-7\";}s:15:\"sidebar-archive\";a:1:{i:0;s:7:\"block-8\";}s:16:\"sidebar-cat-list\";a:0:{}s:5:\"quote\";a:0:{}s:14:\"whats-included\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.2\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1739932888;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(139, 'can_compress_scripts', '1', 'on'),
(154, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1744809224;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(157, 'finished_updating_comment_type', '1', 'auto'),
(158, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(159, 'recently_activated', 'a:0:{}', 'off'),
(161, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1744809226;s:7:\"checked\";a:3:{s:3:\"tti\";s:5:\"1.0.0\";s:5:\"ttibt\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.1.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}', 'off'),
(164, 'current_theme', 'TTI Bhutan', 'auto'),
(165, 'theme_mods_tti', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1742642392;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:15:\"sidebar-archive\";a:1:{i:0;s:7:\"block-7\";}s:16:\"sidebar-cat-list\";a:0:{}s:5:\"quote\";a:0:{}s:14:\"whats-included\";a:0:{}}}}', 'off'),
(166, 'theme_switched', '', 'auto'),
(197, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'auto'),
(198, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'on'),
(318, 'acf_first_activated_version', '6.3.12', 'on'),
(319, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.7.2\",\"mysql_version\":\"8.0.30\",\"is_multisite\":false,\"active_theme\":{\"name\":\"TTI Bhutan\",\"version\":\"1.0.0\",\"theme_uri\":\"https:\\/\\/www.ttit.edu.bt\\/\",\"stylesheet\":false},\"active_plugins\":{\"acf-repeater-main\\/acf-repeater.php\":{\"name\":\"ACF Repeater Field\",\"version\":\"2.1.0\",\"plugin_uri\":\"https:\\/\\/github.com\\/rajaishtiaq6\\/acf-repeater\"},\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"regenerate-thumbnails\\/regenerate-thumbnails.php\":{\"name\":\"Regenerate Thumbnails\",\"version\":\"3.1.6\",\"plugin_uri\":\"https:\\/\\/alex.blog\\/wordpress-plugins\\/regenerate-thumbnails\\/\"},\"svg-support\\/svg-support.php\":{\"name\":\"SVG Support\",\"version\":\"2.5.14\",\"plugin_uri\":\"http:\\/\\/wordpress.org\\/plugins\\/svg-support\\/\"},\"visitors-traffic-real-time-statistics\\/Visitors-Traffic-Real-Time-Statistics.php\":{\"name\":\"Visitor Traffic Real Time Statistics\",\"version\":\"7.8\",\"plugin_uri\":\"\"},\"compact-archives\\/compact.php\":{\"name\":\"WPBeginner\'s Compact Archives\",\"version\":\"4.1.0\",\"plugin_uri\":\"http:\\/\\/www.wpbeginner.com\"}},\"ui_field_groups\":\"10\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"wysiwyg\":2,\"repeater\":5,\"url\":1,\"text\":13,\"textarea\":3,\"select\":1,\"group\":2,\"file\":1,\"date_picker\":3,\"time_picker\":2,\"image\":1,\"email\":1,\"number\":3},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1740480860,\"event_first_created_field_group\":1740480895,\"last_updated\":1744809228}', 'off'),
(321, 'acf_version', '6.3.12', 'auto'),
(325, 'bodhi_svgs_settings', 'a:3:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";s:8:\"restrict\";a:1:{i:0;s:13:\"administrator\";}s:24:\"sanitize_on_upload_roles\";a:0:{}}', 'auto'),
(326, 'bodhi_svgs_plugin_version', '2.5.14', 'auto'),
(429, 'wsmKeepData', '1', 'auto'),
(430, 'wsm_tables', 'a:16:{s:7:\"LOG_URL\";s:8:\"_url_log\";s:10:\"LOG_UNIQUE\";s:15:\"_logUniqueVisit\";s:9:\"LOG_VISIT\";s:9:\"_logVisit\";s:2:\"OS\";s:9:\"_oSystems\";s:4:\"BROW\";s:9:\"_browsers\";s:4:\"TOOL\";s:9:\"_toolBars\";s:2:\"SE\";s:14:\"_searchEngines\";s:2:\"RG\";s:8:\"_regions\";s:4:\"RSOL\";s:12:\"_resolutions\";s:7:\"COUNTRY\";s:10:\"_countries\";s:3:\"DHR\";s:18:\"_dailyHourlyReport\";s:3:\"MDR\";s:19:\"_monthlyDailyReport\";s:3:\"YMR\";s:20:\"_yearlyMonthlyReport\";s:3:\"DWR\";s:16:\"_datewise_report\";s:3:\"MWR\";s:17:\"_monthwise_report\";s:3:\"YWR\";s:16:\"_yearwise_report\";}', 'auto'),
(431, 'wsm_dailyReportedTime', '2025-03-06', 'auto'),
(433, 'wsm_free_active_time', '1741241357', 'off'),
(434, 'wsm_popup_status', '1', 'auto');
INSERT INTO `tti_bt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(437, 'ahcfree_new_updates', '2025-03-06', 'auto'),
(438, 'ahcfree_wp_hits_counter_options', 'a:4:{s:11:\"ahc_version\";s:3:\"1.0\";s:19:\"available_languages\";a:2:{s:2:\"ar\";s:8:\"عربي\";s:2:\"en\";s:7:\"English\";}s:8:\"ahc_lang\";s:2:\"en\";s:23:\"user_roles_to_not_track\";a:5:{s:13:\"administrator\";b:1;s:6:\"editor\";b:1;s:6:\"author\";b:1;s:11:\"contributor\";b:1;s:10:\"subscriber\";b:0;}}', 'auto'),
(439, 'ahcfree_custom_timezone', 'Europe/London', 'auto'),
(440, 'ahcfree_first_time_setup', '0', 'auto'),
(441, 'widget_ahcfree_vtrts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(552, 'widget_wpb-caw-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(557, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(611, 'theme_mods_ttibt', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(764, 'WPLANG', '', 'auto'),
(765, 'new_admin_email', 'ldjigme@gmail.com', 'auto'),
(1248, 'category_children', 'a:0:{}', 'auto'),
(1542, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1744809226;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:7:\"6.4.0.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.4.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:3:\"6.8\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:79:\"visitors-traffic-real-time-statistics/Visitors-Traffic-Real-Time-Statistics.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:51:\"w.org/plugins/visitors-traffic-real-time-statistics\";s:4:\"slug\";s:37:\"visitors-traffic-real-time-statistics\";s:6:\"plugin\";s:79:\"visitors-traffic-real-time-statistics/Visitors-Traffic-Real-Time-Statistics.php\";s:11:\"new_version\";s:3:\"8.1\";s:3:\"url\";s:68:\"https://wordpress.org/plugins/visitors-traffic-real-time-statistics/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/visitors-traffic-real-time-statistics.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/visitors-traffic-real-time-statistics/assets/icon-256x256.png?rev=1370175\";s:2:\"1x\";s:90:\"https://ps.w.org/visitors-traffic-real-time-statistics/assets/icon-128x128.png?rev=1370175\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:92:\"https://ps.w.org/visitors-traffic-real-time-statistics/assets/banner-772x250.png?rev=1632505\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";b:0;s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:5:\"0.9.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/acf-extended.0.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:47:\"simple-yearly-archive/simple-yearly-archive.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/simple-yearly-archive\";s:4:\"slug\";s:21:\"simple-yearly-archive\";s:6:\"plugin\";s:47:\"simple-yearly-archive/simple-yearly-archive.php\";s:11:\"new_version\";s:5:\"2.2.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/simple-yearly-archive/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/simple-yearly-archive.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/simple-yearly-archive/assets/icon-256x256.png?rev=1162212\";s:2:\"1x\";s:74:\"https://ps.w.org/simple-yearly-archive/assets/icon-128x128.png?rev=1163231\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/simple-yearly-archive/assets/banner-772x250.png?rev=479459\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.5.14\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.5.14.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:28:\"compact-archives/compact.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/compact-archives\";s:4:\"slug\";s:16:\"compact-archives\";s:6:\"plugin\";s:28:\"compact-archives/compact.php\";s:11:\"new_version\";s:5:\"4.1.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/compact-archives/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/compact-archives.4.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/compact-archives/assets/icon-256x256.png?rev=2480251\";s:2:\"1x\";s:69:\"https://ps.w.org/compact-archives/assets/icon-128x128.png?rev=2480251\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/compact-archives/assets/banner-1544x500.png?rev=2480251\";s:2:\"1x\";s:71:\"https://ps.w.org/compact-archives/assets/banner-772x250.png?rev=2480251\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:37:\"wp-stats-manager/wp-stats-manager.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/wp-stats-manager\";s:4:\"slug\";s:16:\"wp-stats-manager\";s:6:\"plugin\";s:37:\"wp-stats-manager/wp-stats-manager.php\";s:11:\"new_version\";s:3:\"7.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-stats-manager/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-stats-manager.7.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-stats-manager/assets/icon-256x256.gif?rev=2271306\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-stats-manager/assets/icon-128x128.gif?rev=2271306\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-stats-manager/assets/banner-772x250.png?rev=1839900\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}}s:7:\"checked\";a:11:{s:34:\"acf-repeater-main/acf-repeater.php\";s:5:\"2.1.0\";s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";s:29:\"acf-extended/acf-extended.php\";s:5:\"0.9.1\";s:19:\"akismet/akismet.php\";s:5:\"5.3.7\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";s:47:\"simple-yearly-archive/simple-yearly-archive.php\";s:5:\"2.2.3\";s:27:\"svg-support/svg-support.php\";s:6:\"2.5.14\";s:79:\"visitors-traffic-real-time-statistics/Visitors-Traffic-Real-Time-Statistics.php\";s:3:\"7.8\";s:28:\"compact-archives/compact.php\";s:5:\"4.1.0\";s:37:\"wp-stats-manager/wp-stats-manager.php\";s:3:\"7.8\";}}', 'off'),
(1581, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1744852468', 'off'),
(1582, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'off'),
(1675, '_site_transient_timeout_wp_theme_files_patterns-ce5ab4e301b0f1fd09cfd5a8fda9d74a', '1744812823', 'off'),
(1676, '_site_transient_wp_theme_files_patterns-ce5ab4e301b0f1fd09cfd5a8fda9d74a', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(1677, '_site_transient_timeout_theme_roots', '1744812935', 'off'),
(1678, '_site_transient_theme_roots', 'a:2:{s:5:\"ttibt\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";}', 'off'),
(1683, '_site_transient_timeout_wp_remote_block_patterns_da85ad53ed0dfe6b80a221538486d49d', '1744811150', 'off'),
(1684, '_site_transient_wp_remote_block_patterns_da85ad53ed0dfe6b80a221538486d49d', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:55:\"cURL error 6: Could not resolve host: api.wordpress.org\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'off'),
(1685, '_site_transient_timeout_wp_remote_block_patterns_9777e31ff1d7d0002ae5684e797428b4', '1744811150', 'off'),
(1686, '_site_transient_wp_remote_block_patterns_9777e31ff1d7d0002ae5684e797428b4', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:55:\"cURL error 6: Could not resolve host: api.wordpress.org\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_postmeta`
--

CREATE TABLE `tti_bt_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_postmeta`
--

INSERT INTO `tti_bt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', ''),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1744209060:1'),
(4, 8, '_edit_lock', '1740466117:1'),
(5, 10, '_edit_lock', '1740466140:1'),
(7, 13, '_edit_lock', '1740466153:1'),
(8, 15, '_edit_lock', '1740466165:1'),
(10, 18, '_edit_lock', '1741812776:1'),
(11, 20, '_edit_lock', '1740466197:1'),
(12, 22, '_edit_lock', '1740466209:1'),
(13, 24, '_edit_lock', '1740466327:1'),
(14, 26, '_edit_lock', '1744809514:1'),
(15, 28, '_edit_lock', '1744809556:1'),
(16, 30, '_edit_lock', '1744809721:1'),
(17, 32, '_edit_lock', '1744809579:1'),
(18, 34, '_edit_lock', '1744809441:1'),
(19, 36, '_edit_last', '1'),
(20, 36, '_edit_lock', '1744303492:1'),
(21, 38, '_wp_attached_file', '2025/02/0_27_ARCHIVES.png'),
(22, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:382;s:6:\"height\";i:379;s:4:\"file\";s:25:\"2025/02/0_27_ARCHIVES.png\";s:8:\"filesize\";i:2025;s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"0_27_ARCHIVES-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1232;}s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"0_27_ARCHIVES-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1998;}s:9:\"width-box\";a:5:{s:4:\"file\";s:25:\"0_27_ARCHIVES-382x280.png\";s:5:\"width\";i:382;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1686;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:25:\"0_27_ARCHIVES-382x350.png\";s:5:\"width\";i:382;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1966;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:25:\"0_27_ARCHIVES-235x195.png\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1551;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:25:\"0_27_ARCHIVES-280x280.png\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1990;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 28, 'inline_featured_image', ''),
(25, 28, 'footnotes', ''),
(27, 39, 'footnotes', ''),
(29, 28, '_edit_last', '1'),
(30, 28, 'icon', '41'),
(31, 28, '_icon', 'field_67bda1643aa4d'),
(32, 39, 'icon', '38'),
(33, 39, '_icon', 'field_67bda1643aa4d'),
(36, 41, '_wp_attached_file', '2025/02/0_27_ARCHIVES.svg'),
(37, 41, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:26:\"/2025/02/0_27_ARCHIVES.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"0_27_ARCHIVES.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"0_27_ARCHIVES.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"0_27_ARCHIVES.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"0_27_ARCHIVES.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"0_27_ARCHIVES.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:17:\"0_27_ARCHIVES.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(40, 42, 'footnotes', ''),
(42, 42, 'icon', '41'),
(43, 42, '_icon', 'field_67bda1643aa4d'),
(46, 43, 'footnotes', ''),
(48, 43, 'icon', '38'),
(49, 43, '_icon', 'field_67bda1643aa4d'),
(52, 44, 'footnotes', ''),
(54, 44, 'icon', '41'),
(55, 44, '_icon', 'field_67bda1643aa4d'),
(56, 45, '_wp_attached_file', '2025/02/Core_values_white.svg'),
(57, 45, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:30:\"/2025/02/Core_values_white.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:21:\"Core_values_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"Core_values_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"Core_values_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"Core_values_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"Core_values_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"Core_values_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(59, 32, 'inline_featured_image', ''),
(60, 32, 'footnotes', ''),
(62, 46, 'footnotes', ''),
(64, 32, '_edit_last', '1'),
(65, 32, 'icon', '45'),
(66, 32, '_icon', 'field_67bda1643aa4d'),
(67, 46, 'icon', '45'),
(68, 46, '_icon', 'field_67bda1643aa4d'),
(72, 34, 'inline_featured_image', ''),
(73, 34, 'footnotes', ''),
(75, 48, 'footnotes', ''),
(77, 34, '_edit_last', '1'),
(78, 34, 'icon', '49'),
(79, 34, '_icon', 'field_67bda1643aa4d'),
(80, 48, 'icon', '47'),
(81, 48, '_icon', 'field_67bda1643aa4d'),
(82, 49, '_wp_attached_file', '2025/02/0_13_ORGANOGRAM-1.svg'),
(83, 49, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:30:\"/2025/02/0_13_ORGANOGRAM-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:21:\"0_13_ORGANOGRAM-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"0_13_ORGANOGRAM-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"0_13_ORGANOGRAM-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:21:\"0_13_ORGANOGRAM-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"0_13_ORGANOGRAM-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"0_13_ORGANOGRAM-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(86, 50, 'footnotes', ''),
(88, 50, 'icon', '49'),
(89, 50, '_icon', 'field_67bda1643aa4d'),
(90, 51, '_wp_attached_file', '2025/02/0_Creativity.svg'),
(91, 51, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:25:\"/2025/02/0_Creativity.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:16:\"0_Creativity.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"0_Creativity.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"0_Creativity.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:16:\"0_Creativity.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"0_Creativity.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:16:\"0_Creativity.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(93, 30, 'inline_featured_image', ''),
(94, 30, 'footnotes', ''),
(96, 52, 'footnotes', ''),
(98, 30, '_edit_last', '1'),
(99, 30, 'icon', '38'),
(100, 30, '_icon', 'field_67bda1643aa4d'),
(101, 52, 'icon', '51'),
(102, 52, '_icon', 'field_67bda1643aa4d'),
(103, 53, '_wp_attached_file', '2025/02/0_TRANSPARENCY.svg'),
(104, 53, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:27:\"/2025/02/0_TRANSPARENCY.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"0_TRANSPARENCY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"0_TRANSPARENCY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"0_TRANSPARENCY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"0_TRANSPARENCY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"0_TRANSPARENCY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:18:\"0_TRANSPARENCY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(107, 54, 'footnotes', ''),
(109, 54, 'icon', '53'),
(110, 54, '_icon', 'field_67bda1643aa4d'),
(113, 55, 'footnotes', ''),
(115, 55, 'icon', ''),
(116, 55, '_icon', 'field_67bda1643aa4d'),
(119, 56, 'footnotes', ''),
(121, 56, 'icon', '38'),
(122, 56, '_icon', 'field_67bda1643aa4d'),
(123, 57, '_wp_attached_file', '2025/02/0_03_CHILDRENS_POLICY.svg'),
(124, 57, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:34:\"/2025/02/0_03_CHILDRENS_POLICY.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:25:\"0_03_CHILDRENS_POLICY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"0_03_CHILDRENS_POLICY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"0_03_CHILDRENS_POLICY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:25:\"0_03_CHILDRENS_POLICY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:25:\"0_03_CHILDRENS_POLICY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:25:\"0_03_CHILDRENS_POLICY.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(126, 18, 'inline_featured_image', ''),
(127, 18, 'footnotes', ''),
(129, 58, 'footnotes', ''),
(131, 18, '_edit_last', '1'),
(132, 18, 'icon', '57'),
(133, 18, '_icon', 'field_67bda1643aa4d'),
(134, 58, 'icon', '57'),
(135, 58, '_icon', 'field_67bda1643aa4d'),
(138, 1, '_edit_last', '1'),
(141, 1, '_edit_lock', '1742847239:1'),
(142, 63, '_edit_lock', '1744214959:1'),
(147, 63, '_wp_old_date', '2025-03-12'),
(148, 26, '_wp_page_template', 'page-about-us.php'),
(149, 26, '_edit_last', '1'),
(150, 26, 'icon', ''),
(151, 26, '_icon', 'field_67bda1643aa4d'),
(152, 27, 'icon', ''),
(153, 27, '_icon', 'field_67bda1643aa4d'),
(154, 6, '_edit_last', '1'),
(155, 6, '_wp_page_template', 'paget-get-child.php'),
(156, 18, '_wp_page_template', 'page-department-details.php'),
(157, 65, '_edit_lock', '1744810999:1'),
(158, 65, '_wp_page_template', 'page-contact-us.php'),
(159, 65, '_edit_last', '1'),
(160, 65, 'icon', ''),
(161, 65, '_icon', 'field_67bda1643aa4d'),
(162, 66, 'icon', ''),
(163, 66, '_icon', 'field_67bda1643aa4d'),
(164, 67, '_edit_lock', '1744209311:1'),
(165, 67, '_wp_page_template', 'page-course-child.php'),
(166, 67, '_edit_last', '1'),
(167, 67, 'icon', ''),
(168, 67, '_icon', 'field_67bda1643aa4d'),
(169, 68, 'icon', ''),
(170, 68, '_icon', 'field_67bda1643aa4d'),
(171, 69, '_edit_lock', '1743061827:1'),
(172, 69, '_wp_page_template', 'page-course-listing.php'),
(173, 69, '_edit_last', '1'),
(174, 69, 'icon', ''),
(175, 69, '_icon', 'field_67bda1643aa4d'),
(176, 70, 'icon', ''),
(177, 70, '_icon', 'field_67bda1643aa4d'),
(178, 71, '_edit_lock', '1741814713:1'),
(179, 71, '_wp_page_template', 'page-events-list.php'),
(180, 71, '_edit_last', '1'),
(181, 71, 'icon', ''),
(182, 71, '_icon', 'field_67bda1643aa4d'),
(183, 72, 'icon', ''),
(184, 72, '_icon', 'field_67bda1643aa4d'),
(185, 73, '_edit_lock', '1744211004:1'),
(186, 73, '_wp_page_template', 'page-course-detail.php'),
(187, 73, '_edit_last', '1'),
(188, 73, 'icon', ''),
(189, 73, '_icon', 'field_67bda1643aa4d'),
(190, 74, 'icon', ''),
(191, 74, '_icon', 'field_67bda1643aa4d'),
(192, 76, '_edit_lock', '1743044436:1'),
(197, 76, '_wp_old_slug', 'starts-your-career-with-tti-education'),
(198, 79, '_edit_last', '1'),
(199, 79, '_edit_lock', '1743084600:1'),
(203, 63, 'inline_featured_image', ''),
(204, 63, 'footnotes', ''),
(206, 82, 'footnotes', ''),
(208, 63, '_edit_last', '1'),
(211, 63, 'start_date', '20250409'),
(212, 63, '_start_date', 'field_67e13df2c6e1d'),
(213, 63, 'end_date', '20250415'),
(214, 63, '_end_date', 'field_67e13e0cc6e1e'),
(215, 82, 'start_date', '20250324'),
(216, 82, '_start_date', 'field_67e13df2c6e1d'),
(217, 82, 'end_date', '20250325'),
(218, 82, '_end_date', 'field_67e13e0cc6e1e'),
(221, 63, '_wp_old_slug', 'bhutan-international-course'),
(222, 84, 'footnotes', ''),
(225, 84, 'start_date', '20250324'),
(226, 84, '_start_date', 'field_67e13df2c6e1d'),
(227, 84, 'end_date', '20250325'),
(228, 84, '_end_date', 'field_67e13e0cc6e1e'),
(229, 85, 'footnotes', ''),
(232, 85, 'start_date', '20250324'),
(233, 85, '_start_date', 'field_67e13df2c6e1d'),
(234, 85, 'end_date', '20250325'),
(235, 85, '_end_date', 'field_67e13e0cc6e1e'),
(236, 86, '_wp_attached_file', '2024/03/wallpaperflare.com_wallpaper.jpg'),
(237, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1080;s:4:\"file\";s:40:\"2024/03/wallpaperflare.com_wallpaper.jpg\";s:8:\"filesize\";i:1668918;s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5394;}s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8460;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39925;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64843;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1536x648.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:648;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:129175;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-2048x864.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:204414;}s:9:\"width-box\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20123;}s:9:\"event-box\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53904;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38150;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10101;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13888;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:41:\"wallpaperflare.com_wallpaper-1920x900.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:201902;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:40:\"wallpaperflare.com_wallpaper-525x431.jpg\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37051;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 63, '_thumbnail_id', '93'),
(241, 87, '_wp_attached_file', '2024/03/WhatsApp-Image-2025-03-19-at-9.58.58-PM.jpeg'),
(242, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:607;s:4:\"file\";s:52:\"2024/03/WhatsApp-Image-2025-03-19-at-9.58.58-PM.jpeg\";s:8:\"filesize\";i:263046;s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7923;}s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16053;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83424;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:137012;}s:9:\"width-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-390x280.jpeg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31522;}s:9:\"event-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-910x392.jpeg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93861;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-680x350.jpeg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64034;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-235x195.jpeg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14831;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-280x280.jpeg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23465;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-525x431.jpeg\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60282;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 88, '_wp_attached_file', '2024/03/Screenshot-2025-03-22-202337.png'),
(246, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2229;s:6:\"height\";i:1017;s:4:\"file\";s:40:\"2024/03/Screenshot-2025-03-22-202337.png\";s:8:\"filesize\";i:172760;s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11089;}s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15216;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-768x350.png\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70163;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"Screenshot-2025-03-22-202337-1024x467.png\";s:5:\"width\";i:1024;s:6:\"height\";i:467;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:113117;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"Screenshot-2025-03-22-202337-1536x701.png\";s:5:\"width\";i:1536;s:6:\"height\";i:701;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:201568;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:41:\"Screenshot-2025-03-22-202337-2048x934.png\";s:5:\"width\";i:2048;s:6:\"height\";i:934;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:307536;}s:9:\"width-box\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-390x280.png\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41074;}s:9:\"event-box\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-910x392.png\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84264;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-680x350.png\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68404;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-235x195.png\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19846;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-280x280.png\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30011;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:41:\"Screenshot-2025-03-22-202337-1920x900.png\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:285886;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:40:\"Screenshot-2025-03-22-202337-525x431.png\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:73964;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 89, 'footnotes', ''),
(257, 89, 'start_date', '20250326'),
(258, 89, '_start_date', 'field_67e13df2c6e1d'),
(259, 89, 'end_date', '20250326'),
(260, 89, '_end_date', 'field_67e13e0cc6e1e'),
(263, 90, 'footnotes', ''),
(267, 90, 'start_date', '20250324'),
(268, 90, '_start_date', 'field_67e13df2c6e1d'),
(269, 90, 'end_date', '20250326'),
(270, 90, '_end_date', 'field_67e13e0cc6e1e'),
(273, 91, 'footnotes', ''),
(277, 91, 'start_date', '20250325'),
(278, 91, '_start_date', 'field_67e13df2c6e1d'),
(279, 91, 'end_date', '20250326'),
(280, 91, '_end_date', 'field_67e13e0cc6e1e'),
(281, 73, '_thumbnail_id', '139'),
(284, 92, 'footnotes', ''),
(286, 92, 'start_date', '20250324'),
(287, 92, '_start_date', 'field_67e13df2c6e1d'),
(288, 92, 'end_date', '20250326'),
(289, 92, '_end_date', 'field_67e13e0cc6e1e'),
(290, 93, '_wp_attached_file', '2024/03/IMG-20241216-WA0054.jpg'),
(291, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:739;s:4:\"file\";s:31:\"2024/03/IMG-20241216-WA0054.jpg\";s:8:\"filesize\";i:155593;s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10556;}s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19985;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-768x443.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89756;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"IMG-20241216-WA0054-1024x591.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:591;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133561;}s:9:\"width-box\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38114;}s:9:\"event-box\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83502;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69857;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18415;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28903;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:31:\"IMG-20241216-WA0054-525x431.jpg\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64887;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 94, '_wp_attached_file', '2024/03/Gyalsey-1.jpg'),
(297, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1097;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2024/03/Gyalsey-1.jpg\";s:8:\"filesize\";i:185332;s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8238;}s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-300x219.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19169;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-768x560.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80671;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"Gyalsey-1-1024x747.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:747;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:119459;}s:9:\"width-box\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28217;}s:9:\"event-box\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61476;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50678;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14086;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22874;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:21:\"Gyalsey-1-525x431.jpg\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50449;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 95, '_wp_attached_file', '2025/03/wallpaperflare.com_wallpaper-1-scaled.jpg'),
(301, 95, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:49:\"2025/03/wallpaperflare.com_wallpaper-1-scaled.jpg\";s:8:\"filesize\";i:291665;s:5:\"sizes\";a:13:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5489;}s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9032;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41423;}s:5:\"large\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67348;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132113;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:44:\"wallpaperflare.com_wallpaper-1-2048x1152.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:207652;}s:9:\"width-box\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17586;}s:9:\"event-box\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44214;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31614;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9189;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14147;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:43:\"wallpaperflare.com_wallpaper-1-1920x900.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:166440;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:42:\"wallpaperflare.com_wallpaper-1-525x431.jpg\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33283;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:34:\"wallpaperflare.com_wallpaper-1.jpg\";}'),
(304, 76, '_thumbnail_id', '123'),
(309, 96, 'footnotes', ''),
(313, 96, 'start_date', '20250325'),
(314, 96, '_start_date', 'field_67e13df2c6e1d'),
(315, 96, 'end_date', '20250326'),
(316, 96, '_end_date', 'field_67e13e0cc6e1e'),
(319, 97, 'footnotes', ''),
(323, 97, 'start_date', '20250324'),
(324, 97, '_start_date', 'field_67e13df2c6e1d'),
(325, 97, 'end_date', '20250326'),
(326, 97, '_end_date', 'field_67e13e0cc6e1e'),
(331, 98, '_wp_attached_file', '2025/02/WhatsApp-Image-2025-03-19-at-9.58.58-PM.jpeg'),
(332, 98, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:607;s:4:\"file\";s:52:\"2025/02/WhatsApp-Image-2025-03-19-at-9.58.58-PM.jpeg\";s:8:\"filesize\";i:263046;s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7923;}s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16053;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:83424;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:137012;}s:9:\"width-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-390x280.jpeg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31522;}s:9:\"event-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-910x392.jpeg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:93861;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-680x350.jpeg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64034;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-235x195.jpeg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14831;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-280x280.jpeg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23465;}s:24:\"big-blog-box_old_525x431\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2025-03-19-at-9.58.58-PM-525x431.jpeg\";s:5:\"width\";i:525;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:60282;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 1, 'start_date', ''),
(337, 1, '_start_date', 'field_67e13df2c6e1d'),
(338, 1, 'end_date', ''),
(339, 1, '_end_date', 'field_67e13e0cc6e1e'),
(340, 62, 'start_date', ''),
(341, 62, '_start_date', 'field_67e13df2c6e1d'),
(342, 62, 'end_date', ''),
(343, 62, '_end_date', 'field_67e13e0cc6e1e'),
(344, 100, '_edit_lock', '1742842896:1'),
(345, 100, '_edit_last', '1'),
(346, 100, 'icon', ''),
(347, 100, '_icon', 'field_67bda1643aa4d'),
(348, 101, 'icon', ''),
(349, 101, '_icon', 'field_67bda1643aa4d'),
(350, 102, '_edit_lock', '1742845153:1'),
(352, 102, '_edit_last', '1'),
(353, 102, 'icon', ''),
(354, 102, '_icon', 'field_67bda1643aa4d'),
(355, 103, 'icon', ''),
(356, 103, '_icon', 'field_67bda1643aa4d'),
(357, 104, '_wp_attached_file', '2025/03/logo@2x.png'),
(358, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:332;s:6:\"height\";i:345;s:4:\"file\";s:19:\"2025/03/logo@2x.png\";s:8:\"filesize\";i:39533;s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"logo@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15074;}s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"logo@2x-289x300.png\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38078;}s:9:\"width-box\";a:5:{s:4:\"file\";s:19:\"logo@2x-332x280.png\";s:5:\"width\";i:332;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34170;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:19:\"logo@2x-235x195.png\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24703;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:19:\"logo@2x-280x280.png\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35635;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 102, '_thumbnail_id', '104'),
(360, 105, '_edit_lock', '1742845997:1'),
(365, 105, '_thumbnail_id', '86'),
(372, 1, '_thumbnail_id', '98'),
(375, 108, '_edit_lock', '1742846713:1'),
(378, 108, '_thumbnail_id', '88'),
(385, 110, 'footnotes', ''),
(387, 110, 'start_date', '20250323'),
(388, 110, '_start_date', 'field_67e13df2c6e1d'),
(389, 110, 'end_date', '20250324'),
(390, 110, '_end_date', 'field_67e13e0cc6e1e'),
(397, 111, 'footnotes', ''),
(401, 111, 'start_date', '20250324'),
(402, 111, '_start_date', 'field_67e13df2c6e1d'),
(403, 111, 'end_date', '20250325'),
(404, 111, '_end_date', 'field_67e13e0cc6e1e'),
(407, 112, 'footnotes', ''),
(411, 112, 'start_date', '20250325'),
(412, 112, '_start_date', 'field_67e13df2c6e1d'),
(413, 112, 'end_date', '20250326'),
(414, 112, '_end_date', 'field_67e13e0cc6e1e'),
(417, 113, 'footnotes', ''),
(421, 113, 'start_date', '20250324'),
(422, 113, '_start_date', 'field_67e13df2c6e1d'),
(423, 113, 'end_date', '20250326'),
(424, 113, '_end_date', 'field_67e13e0cc6e1e'),
(427, 114, 'footnotes', ''),
(431, 114, 'start_date', '20250325'),
(432, 114, '_start_date', 'field_67e13df2c6e1d'),
(433, 114, 'end_date', '20250326'),
(434, 114, '_end_date', 'field_67e13e0cc6e1e'),
(443, 115, 'footnotes', ''),
(447, 115, 'start_date', '20250325'),
(448, 115, '_start_date', 'field_67e13df2c6e1d'),
(449, 115, 'end_date', '20250327'),
(450, 115, '_end_date', 'field_67e13e0cc6e1e'),
(455, 116, 'footnotes', ''),
(459, 116, 'start_date', '20250324'),
(460, 116, '_start_date', 'field_67e13df2c6e1d'),
(461, 116, 'end_date', '20250327'),
(462, 116, '_end_date', 'field_67e13e0cc6e1e'),
(465, 117, 'footnotes', ''),
(469, 117, 'start_date', '20250325'),
(470, 117, '_start_date', 'field_67e13df2c6e1d'),
(471, 117, 'end_date', '20250326'),
(472, 117, '_end_date', 'field_67e13e0cc6e1e'),
(475, 118, 'footnotes', ''),
(479, 118, 'start_date', '20250324'),
(480, 118, '_start_date', 'field_67e13df2c6e1d'),
(481, 118, 'end_date', '20250326'),
(482, 118, '_end_date', 'field_67e13e0cc6e1e'),
(485, 119, 'footnotes', ''),
(489, 119, 'start_date', '20250323'),
(490, 119, '_start_date', 'field_67e13df2c6e1d'),
(491, 119, 'end_date', '20250324'),
(492, 119, '_end_date', 'field_67e13e0cc6e1e'),
(495, 120, 'footnotes', ''),
(499, 120, 'start_date', '20250324'),
(500, 120, '_start_date', 'field_67e13df2c6e1d'),
(501, 120, 'end_date', '20250325'),
(502, 120, '_end_date', 'field_67e13e0cc6e1e'),
(503, 2, '_edit_lock', '1742850308:1'),
(504, 2, '_edit_last', '1'),
(505, 2, 'icon', ''),
(506, 2, '_icon', 'field_67bda1643aa4d'),
(507, 121, 'icon', ''),
(508, 121, '_icon', 'field_67bda1643aa4d'),
(511, 122, 'footnotes', ''),
(515, 122, 'start_date', '20250323'),
(516, 122, '_start_date', 'field_67e13df2c6e1d'),
(517, 122, 'end_date', '20250324'),
(518, 122, '_end_date', 'field_67e13e0cc6e1e'),
(519, 123, '_wp_attached_file', '2025/03/default_pic.jpg'),
(520, 123, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2025/03/default_pic.jpg\";s:8:\"filesize\";i:636923;s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"default_pic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8031;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"default_pic-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16764;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"default_pic-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97193;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"default_pic-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:165392;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"default_pic-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:345467;}s:9:\"width-box\";a:5:{s:4:\"file\";s:23:\"default_pic-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33711;}s:9:\"event-box\";a:5:{s:4:\"file\";s:23:\"default_pic-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108872;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:23:\"default_pic-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72041;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:23:\"default_pic-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15298;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:23:\"default_pic-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24321;}s:9:\"about-box\";a:5:{s:4:\"file\";s:23:\"default_pic-650x540.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:107673;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:24:\"default_pic-1920x900.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:495123;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(523, 99, '_edit_last', '1'),
(524, 99, '_edit_lock', '1743110192:1'),
(526, 69, '_thumbnail_id', '98'),
(527, 125, '_edit_last', '1'),
(528, 125, '_edit_lock', '1743059882:1'),
(529, 127, '_edit_last', '1'),
(530, 127, '_edit_lock', '1744127017:1'),
(533, 73, 'bqfc_level', 'nc2'),
(534, 73, '_bqfc_level', 'field_67e4fc3ed1601'),
(535, 73, 'durations', '16 months'),
(536, 73, '_durations', 'field_67e4fc4ed1602'),
(537, 73, 'qualification', 'Class 10'),
(538, 73, '_qualification', 'field_67e50267d1603'),
(548, 73, 'inline_featured_image', ''),
(549, 73, 'footnotes', ''),
(551, 132, 'footnotes', ''),
(553, 132, 'icon', ''),
(554, 132, '_icon', 'field_67bda1643aa4d'),
(555, 132, 'bqfc_level', '2'),
(556, 132, '_bqfc_level', 'field_67e4fc3ed1601'),
(557, 132, 'durations', '16 months'),
(558, 132, '_durations', 'field_67e4fc4ed1602'),
(559, 132, 'qualification', 'Class 10'),
(560, 132, '_qualification', 'field_67e50267d1603'),
(561, 138, 'footnotes', ''),
(562, 138, 'icon', ''),
(563, 138, '_icon', 'field_67bda1643aa4d'),
(564, 138, 'bqfc_level', '2'),
(565, 138, '_bqfc_level', 'field_67e4fc3ed1601'),
(566, 138, 'durations', '16 months'),
(567, 138, '_durations', 'field_67e4fc4ed1602'),
(568, 138, 'qualification', 'Class 10'),
(569, 138, '_qualification', 'field_67e50267d1603'),
(570, 139, '_wp_attached_file', '2025/03/f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1.jpg'),
(571, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1536;s:4:\"file\";s:64:\"2025/03/f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1.jpg\";s:8:\"filesize\";i:299897;s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7042;}s:6:\"medium\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14200;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55255;}s:5:\"large\";a:5:{s:4:\"file\";s:65:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82782;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:65:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145878;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:66:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-2048x1229.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:216655;}s:9:\"width-box\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24031;}s:9:\"event-box\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52713;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41154;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12580;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:64:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17563;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:65:\"f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1-1920x900.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:163677;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(576, 143, 'footnotes', ''),
(578, 73, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(579, 73, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(580, 73, 'traing_outcome_1_outcome', 'Service suspension system'),
(581, 73, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(582, 73, 'traing_outcome_2_outcome', 'Service steering system'),
(583, 73, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(584, 73, 'traing_outcome_3_outcome', 'Service brake system'),
(585, 73, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(586, 73, 'traing_outcome_4_outcome', 'Overhaul power train'),
(587, 73, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(588, 73, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(589, 73, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(590, 73, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(591, 73, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(592, 73, 'traing_outcome', '7'),
(593, 73, '_traing_outcome', 'field_67e51266480fb'),
(594, 143, 'icon', ''),
(595, 143, '_icon', 'field_67bda1643aa4d'),
(596, 143, 'bqfc_level', '2'),
(597, 143, '_bqfc_level', 'field_67e4fc3ed1601'),
(598, 143, 'durations', '16 months'),
(599, 143, '_durations', 'field_67e4fc4ed1602'),
(600, 143, 'qualification', 'Class 10'),
(601, 143, '_qualification', 'field_67e50267d1603'),
(602, 143, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(603, 143, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(604, 143, 'traing_outcome_1_outcome', 'Service suspension system'),
(605, 143, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(606, 143, 'traing_outcome_2_outcome', 'Service steering system'),
(607, 143, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(608, 143, 'traing_outcome_3_outcome', 'Service brake system'),
(609, 143, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(610, 143, 'traing_outcome_4_outcome', 'Overhaul power train'),
(611, 143, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(612, 143, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(613, 143, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(614, 143, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(615, 143, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(616, 143, 'traing_outcome', '7'),
(617, 143, '_traing_outcome', 'field_67e51266480fb'),
(622, 152, 'footnotes', ''),
(624, 73, 'course_duration_hours', ''),
(625, 73, '_course_duration_hours', 'field_67e51d398869a'),
(626, 73, 'trainer_&_trainee_ratio_0_practical', '1:12');
INSERT INTO `tti_bt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(627, 73, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(628, 73, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(629, 73, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(630, 73, 'trainer_&_trainee_ratio', ''),
(631, 73, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(632, 73, 'entry_requirement_0_requirement', 'Passed Class X'),
(633, 73, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(634, 73, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(635, 73, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(636, 73, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(637, 73, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(638, 73, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(639, 73, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(640, 73, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(641, 73, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(642, 73, 'entry_requirement', '5'),
(643, 73, '_entry_requirement', 'field_67e519d1e6b2e'),
(644, 152, 'icon', ''),
(645, 152, '_icon', 'field_67bda1643aa4d'),
(646, 152, 'bqfc_level', '2'),
(647, 152, '_bqfc_level', 'field_67e4fc3ed1601'),
(648, 152, 'durations', '16 months'),
(649, 152, '_durations', 'field_67e4fc4ed1602'),
(650, 152, 'qualification', 'Class 10'),
(651, 152, '_qualification', 'field_67e50267d1603'),
(652, 152, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(653, 152, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(654, 152, 'traing_outcome_1_outcome', 'Service suspension system'),
(655, 152, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(656, 152, 'traing_outcome_2_outcome', 'Service steering system'),
(657, 152, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(658, 152, 'traing_outcome_3_outcome', 'Service brake system'),
(659, 152, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(660, 152, 'traing_outcome_4_outcome', 'Overhaul power train'),
(661, 152, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(662, 152, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(663, 152, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(664, 152, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(665, 152, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(666, 152, 'traing_outcome', '7'),
(667, 152, '_traing_outcome', 'field_67e51266480fb'),
(668, 152, 'course_duration_hours', 'Hours [792.5 (Institute Training) + 576 (OJT)]=1368.5 Hours'),
(669, 152, '_course_duration_hours', 'field_67e519b5e6b2a'),
(670, 152, 'trainer_&_trainee_ratio_0_practical', '1:12'),
(671, 152, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(672, 152, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(673, 152, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(674, 152, 'trainer_&_trainee_ratio', '1'),
(675, 152, '_trainer_&_trainee_ratio', 'field_67e519c1e6b2c'),
(676, 152, 'entry_requirement_0_requirement', 'Passed Class X'),
(677, 152, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(678, 152, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(679, 152, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(680, 152, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(681, 152, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(682, 152, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(683, 152, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(684, 152, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(685, 152, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(686, 152, 'entry_requirement', '5'),
(687, 152, '_entry_requirement', 'field_67e519d1e6b2e'),
(690, 155, 'footnotes', ''),
(692, 73, 'course_duration_hours_0_institute_training', '792.5'),
(693, 73, '_course_duration_hours_0_institute_training', 'field_67e51c04bce6e'),
(694, 73, 'course_duration_hours_0_ojt', '576'),
(695, 73, '_course_duration_hours_0_ojt', 'field_67e51c1abce6f'),
(696, 155, 'icon', ''),
(697, 155, '_icon', 'field_67bda1643aa4d'),
(698, 155, 'bqfc_level', '2'),
(699, 155, '_bqfc_level', 'field_67e4fc3ed1601'),
(700, 155, 'durations', '16 months'),
(701, 155, '_durations', 'field_67e4fc4ed1602'),
(702, 155, 'qualification', 'Class 10'),
(703, 155, '_qualification', 'field_67e50267d1603'),
(704, 155, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(705, 155, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(706, 155, 'traing_outcome_1_outcome', 'Service suspension system'),
(707, 155, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(708, 155, 'traing_outcome_2_outcome', 'Service steering system'),
(709, 155, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(710, 155, 'traing_outcome_3_outcome', 'Service brake system'),
(711, 155, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(712, 155, 'traing_outcome_4_outcome', 'Overhaul power train'),
(713, 155, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(714, 155, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(715, 155, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(716, 155, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(717, 155, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(718, 155, 'traing_outcome', '7'),
(719, 155, '_traing_outcome', 'field_67e51266480fb'),
(720, 155, 'course_duration_hours', '1'),
(721, 155, '_course_duration_hours', 'field_67e519b5e6b2a'),
(722, 155, 'trainer_&_trainee_ratio_0_practical', '1:12'),
(723, 155, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(724, 155, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(725, 155, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(726, 155, 'trainer_&_trainee_ratio', '1'),
(727, 155, '_trainer_&_trainee_ratio', 'field_67e519c1e6b2c'),
(728, 155, 'entry_requirement_0_requirement', 'Passed Class X'),
(729, 155, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(730, 155, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(731, 155, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(732, 155, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(733, 155, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(734, 155, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(735, 155, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(736, 155, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(737, 155, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(738, 155, 'entry_requirement', '5'),
(739, 155, '_entry_requirement', 'field_67e519d1e6b2e'),
(740, 155, 'course_duration_hours_0_institute_training', '792.5'),
(741, 155, '_course_duration_hours_0_institute_training', 'field_67e51c04bce6e'),
(742, 155, 'course_duration_hours_0_ojt', '576'),
(743, 155, '_course_duration_hours_0_ojt', 'field_67e51c1abce6f'),
(746, 159, 'footnotes', ''),
(748, 73, 'course_duration_hours_institute_training', '792.5'),
(749, 73, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(750, 73, 'course_duration_hours_ojt', '576'),
(751, 73, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(752, 159, 'icon', ''),
(753, 159, '_icon', 'field_67bda1643aa4d'),
(754, 159, 'bqfc_level', '2'),
(755, 159, '_bqfc_level', 'field_67e4fc3ed1601'),
(756, 159, 'durations', '16 months'),
(757, 159, '_durations', 'field_67e4fc4ed1602'),
(758, 159, 'qualification', 'Class 10'),
(759, 159, '_qualification', 'field_67e50267d1603'),
(760, 159, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(761, 159, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(762, 159, 'traing_outcome_1_outcome', 'Service suspension system'),
(763, 159, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(764, 159, 'traing_outcome_2_outcome', 'Service steering system'),
(765, 159, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(766, 159, 'traing_outcome_3_outcome', 'Service brake system'),
(767, 159, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(768, 159, 'traing_outcome_4_outcome', 'Overhaul power train'),
(769, 159, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(770, 159, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(771, 159, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(772, 159, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(773, 159, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(774, 159, 'traing_outcome', '7'),
(775, 159, '_traing_outcome', 'field_67e51266480fb'),
(776, 159, 'course_duration_hours', ''),
(777, 159, '_course_duration_hours', 'field_67e51d398869a'),
(778, 159, 'trainer_&_trainee_ratio_0_practical', '1:12'),
(779, 159, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(780, 159, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(781, 159, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(782, 159, 'trainer_&_trainee_ratio', '1'),
(783, 159, '_trainer_&_trainee_ratio', 'field_67e519c1e6b2c'),
(784, 159, 'entry_requirement_0_requirement', 'Passed Class X'),
(785, 159, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(786, 159, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(787, 159, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(788, 159, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(789, 159, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(790, 159, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(791, 159, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(792, 159, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(793, 159, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(794, 159, 'entry_requirement', '5'),
(795, 159, '_entry_requirement', 'field_67e519d1e6b2e'),
(796, 159, 'course_duration_hours_0_institute_training', '792.5'),
(797, 159, '_course_duration_hours_0_institute_training', 'field_67e51c04bce6e'),
(798, 159, 'course_duration_hours_0_ojt', '576'),
(799, 159, '_course_duration_hours_0_ojt', 'field_67e51c1abce6f'),
(800, 159, 'course_duration_hours_institute_training', '792.5'),
(801, 159, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(802, 159, 'course_duration_hours_ojt', '576'),
(803, 159, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(806, 163, 'footnotes', ''),
(808, 73, 'trainer_&_trainee_ratio_practical', '1:12'),
(809, 73, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(810, 73, 'trainer_&_trainee_ratio_theory', '1:20'),
(811, 73, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(812, 163, 'icon', ''),
(813, 163, '_icon', 'field_67bda1643aa4d'),
(814, 163, 'bqfc_level', '2'),
(815, 163, '_bqfc_level', 'field_67e4fc3ed1601'),
(816, 163, 'durations', '16 months'),
(817, 163, '_durations', 'field_67e4fc4ed1602'),
(818, 163, 'qualification', 'Class 10'),
(819, 163, '_qualification', 'field_67e50267d1603'),
(820, 163, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(821, 163, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(822, 163, 'traing_outcome_1_outcome', 'Service suspension system'),
(823, 163, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(824, 163, 'traing_outcome_2_outcome', 'Service steering system'),
(825, 163, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(826, 163, 'traing_outcome_3_outcome', 'Service brake system'),
(827, 163, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(828, 163, 'traing_outcome_4_outcome', 'Overhaul power train'),
(829, 163, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(830, 163, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(831, 163, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(832, 163, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(833, 163, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(834, 163, 'traing_outcome', '7'),
(835, 163, '_traing_outcome', 'field_67e51266480fb'),
(836, 163, 'course_duration_hours', ''),
(837, 163, '_course_duration_hours', 'field_67e51d398869a'),
(838, 163, 'trainer_&_trainee_ratio_0_practical', '1:12'),
(839, 163, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(840, 163, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(841, 163, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(842, 163, 'trainer_&_trainee_ratio', ''),
(843, 163, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(844, 163, 'entry_requirement_0_requirement', 'Passed Class X'),
(845, 163, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(846, 163, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(847, 163, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(848, 163, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(849, 163, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(850, 163, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(851, 163, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(852, 163, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(853, 163, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(854, 163, 'entry_requirement', '5'),
(855, 163, '_entry_requirement', 'field_67e519d1e6b2e'),
(856, 163, 'course_duration_hours_0_institute_training', '792.5'),
(857, 163, '_course_duration_hours_0_institute_training', 'field_67e51c04bce6e'),
(858, 163, 'course_duration_hours_0_ojt', '576'),
(859, 163, '_course_duration_hours_0_ojt', 'field_67e51c1abce6f'),
(860, 163, 'course_duration_hours_institute_training', '792.5'),
(861, 163, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(862, 163, 'course_duration_hours_ojt', '576'),
(863, 163, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(864, 163, 'trainer_&_trainee_ratio_practical', '1:12'),
(865, 163, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(866, 163, 'trainer_&_trainee_ratio_theory', '1:20'),
(867, 163, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(870, 165, 'footnotes', ''),
(872, 73, 'category', 'Auto Machanic'),
(873, 73, '_category', 'field_67e521cdb50b0'),
(874, 73, 'training_outcome', ''),
(875, 73, '_training_outcome', 'field_67e51266480fb'),
(876, 165, 'icon', ''),
(877, 165, '_icon', 'field_67bda1643aa4d'),
(878, 165, 'bqfc_level', '2'),
(879, 165, '_bqfc_level', 'field_67e4fc3ed1601'),
(880, 165, 'durations', '16 months'),
(881, 165, '_durations', 'field_67e4fc4ed1602'),
(882, 165, 'qualification', 'Class 10'),
(883, 165, '_qualification', 'field_67e50267d1603'),
(884, 165, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(885, 165, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(886, 165, 'traing_outcome_1_outcome', 'Service suspension system'),
(887, 165, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(888, 165, 'traing_outcome_2_outcome', 'Service steering system'),
(889, 165, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(890, 165, 'traing_outcome_3_outcome', 'Service brake system'),
(891, 165, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(892, 165, 'traing_outcome_4_outcome', 'Overhaul power train'),
(893, 165, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(894, 165, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(895, 165, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(896, 165, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(897, 165, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(898, 165, 'traing_outcome', '7'),
(899, 165, '_traing_outcome', 'field_67e51266480fb'),
(900, 165, 'course_duration_hours', ''),
(901, 165, '_course_duration_hours', 'field_67e51d398869a'),
(902, 165, 'trainer_&_trainee_ratio_0_practical', '1:12'),
(903, 165, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(904, 165, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(905, 165, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(906, 165, 'trainer_&_trainee_ratio', ''),
(907, 165, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(908, 165, 'entry_requirement_0_requirement', 'Passed Class X'),
(909, 165, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(910, 165, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(911, 165, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(912, 165, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(913, 165, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(914, 165, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(915, 165, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(916, 165, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(917, 165, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(918, 165, 'entry_requirement', '5'),
(919, 165, '_entry_requirement', 'field_67e519d1e6b2e'),
(920, 165, 'course_duration_hours_0_institute_training', '792.5'),
(921, 165, '_course_duration_hours_0_institute_training', 'field_67e51c04bce6e'),
(922, 165, 'course_duration_hours_0_ojt', '576'),
(923, 165, '_course_duration_hours_0_ojt', 'field_67e51c1abce6f'),
(924, 165, 'course_duration_hours_institute_training', '792.5'),
(925, 165, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(926, 165, 'course_duration_hours_ojt', '576'),
(927, 165, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(928, 165, 'trainer_&_trainee_ratio_practical', '1:12'),
(929, 165, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(930, 165, 'trainer_&_trainee_ratio_theory', '1:20'),
(931, 165, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(932, 165, 'category', 'Auto Machanic'),
(933, 165, '_category', 'field_67e521cdb50b0'),
(934, 165, 'training_outcome', ''),
(935, 165, '_training_outcome', 'field_67e51266480fb'),
(938, 167, 'footnotes', ''),
(940, 73, 'course_difficulty', 'Beginner'),
(941, 73, '_course_difficulty', 'field_67e527af3ab07'),
(942, 167, 'icon', ''),
(943, 167, '_icon', 'field_67bda1643aa4d'),
(944, 167, 'bqfc_level', 'nc2'),
(945, 167, '_bqfc_level', 'field_67e4fc3ed1601'),
(946, 167, 'durations', '16 months'),
(947, 167, '_durations', 'field_67e4fc4ed1602'),
(948, 167, 'qualification', 'Class 10'),
(949, 167, '_qualification', 'field_67e50267d1603'),
(950, 167, 'traing_outcome_0_outcome', 'Demonstrate professionalism development, safety and workshop practices'),
(951, 167, '_traing_outcome_0_outcome', 'field_67e512b6a52e0'),
(952, 167, 'traing_outcome_1_outcome', 'Service suspension system'),
(953, 167, '_traing_outcome_1_outcome', 'field_67e512b6a52e0'),
(954, 167, 'traing_outcome_2_outcome', 'Service steering system'),
(955, 167, '_traing_outcome_2_outcome', 'field_67e512b6a52e0'),
(956, 167, 'traing_outcome_3_outcome', 'Service brake system'),
(957, 167, '_traing_outcome_3_outcome', 'field_67e512b6a52e0'),
(958, 167, 'traing_outcome_4_outcome', 'Overhaul power train'),
(959, 167, '_traing_outcome_4_outcome', 'field_67e512b6a52e0'),
(960, 167, 'traing_outcome_5_outcome', 'Service engine auxiliary system'),
(961, 167, '_traing_outcome_5_outcome', 'field_67e512b6a52e0'),
(962, 167, 'traing_outcome_6_outcome', 'Perform basic auto electrical works'),
(963, 167, '_traing_outcome_6_outcome', 'field_67e512b6a52e0'),
(964, 167, 'traing_outcome', '7'),
(965, 167, '_traing_outcome', 'field_67e51266480fb'),
(966, 167, 'course_duration_hours', ''),
(967, 167, '_course_duration_hours', 'field_67e51d398869a'),
(968, 167, 'trainer_&_trainee_ratio_0_practical', '1:12'),
(969, 167, '_trainer_&_trainee_ratio_0_practical', 'field_67e519c1e6b2d'),
(970, 167, 'trainer_&_trainee_ratio_0_theory', '1:20'),
(971, 167, '_trainer_&_trainee_ratio_0_theory', 'field_67e51aac3b3ea'),
(972, 167, 'trainer_&_trainee_ratio', ''),
(973, 167, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(974, 167, 'entry_requirement_0_requirement', 'Passed Class X'),
(975, 167, '_entry_requirement_0_requirement', 'field_67e519d1e6b2f'),
(976, 167, 'entry_requirement_1_requirement', 'Copy of Valid CID'),
(977, 167, '_entry_requirement_1_requirement', 'field_67e519d1e6b2f'),
(978, 167, 'entry_requirement_2_requirement', 'Copy of Valid Security Clearance certificate'),
(979, 167, '_entry_requirement_2_requirement', 'field_67e519d1e6b2f'),
(980, 167, 'entry_requirement_3_requirement', 'Copy of NOC for inservice candidates'),
(981, 167, '_entry_requirement_3_requirement', 'field_67e519d1e6b2f'),
(982, 167, 'entry_requirement_4_requirement', 'Copy of Medical fitness certificate'),
(983, 167, '_entry_requirement_4_requirement', 'field_67e519d1e6b2f'),
(984, 167, 'entry_requirement', '5'),
(985, 167, '_entry_requirement', 'field_67e519d1e6b2e'),
(986, 167, 'course_duration_hours_0_institute_training', '792.5'),
(987, 167, '_course_duration_hours_0_institute_training', 'field_67e51c04bce6e'),
(988, 167, 'course_duration_hours_0_ojt', '576'),
(989, 167, '_course_duration_hours_0_ojt', 'field_67e51c1abce6f'),
(990, 167, 'course_duration_hours_institute_training', '792.5'),
(991, 167, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(992, 167, 'course_duration_hours_ojt', '576'),
(993, 167, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(994, 167, 'trainer_&_trainee_ratio_practical', '1:12'),
(995, 167, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(996, 167, 'trainer_&_trainee_ratio_theory', '1:20'),
(997, 167, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(998, 167, 'category', 'Auto Machanic'),
(999, 167, '_category', 'field_67e521cdb50b0'),
(1000, 167, 'training_outcome', ''),
(1001, 167, '_training_outcome', 'field_67e51266480fb'),
(1002, 167, 'course_difficulty', 'Beginner'),
(1003, 167, '_course_difficulty', 'field_67e527af3ab07'),
(1004, 168, '_edit_lock', '1744131196:1'),
(1005, 168, '_wp_page_template', 'page-course-detail.php'),
(1007, 168, 'inline_featured_image', ''),
(1008, 168, 'footnotes', ''),
(1010, 169, 'footnotes', ''),
(1012, 168, '_edit_last', '1'),
(1013, 168, 'category', 'Automobile '),
(1014, 168, '_category', 'field_67e521cdb50b0'),
(1015, 168, 'course_difficulty', 'Beginer'),
(1016, 168, '_course_difficulty', 'field_67e527af3ab07'),
(1017, 168, 'bqfc_level', 'nc3'),
(1018, 168, '_bqfc_level', 'field_67e4fc3ed1601'),
(1019, 168, 'durations', '2 Years'),
(1020, 168, '_durations', 'field_67e4fc4ed1602'),
(1021, 168, 'course_duration_hours_institute_training', ''),
(1022, 168, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1023, 168, 'course_duration_hours_ojt', ''),
(1024, 168, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1025, 168, 'course_duration_hours', ''),
(1026, 168, '_course_duration_hours', 'field_67e51d398869a'),
(1027, 168, 'trainer_&_trainee_ratio_practical', '1:12'),
(1028, 168, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1029, 168, 'trainer_&_trainee_ratio_theory', '1:20'),
(1030, 168, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1031, 168, 'trainer_&_trainee_ratio', ''),
(1032, 168, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1033, 168, 'training_outcome', ''),
(1034, 168, '_training_outcome', 'field_67e51266480fb'),
(1035, 168, 'entry_requirement', ''),
(1036, 168, '_entry_requirement', 'field_67e519d1e6b2e'),
(1037, 168, 'icon', ''),
(1038, 168, '_icon', 'field_67bda1643aa4d'),
(1039, 169, 'category', 'Automobile '),
(1040, 169, '_category', 'field_67e521cdb50b0'),
(1041, 169, 'course_difficulty', 'Beginer'),
(1042, 169, '_course_difficulty', 'field_67e527af3ab07'),
(1043, 169, 'bqfc_level', '2'),
(1044, 169, '_bqfc_level', 'field_67e4fc3ed1601'),
(1045, 169, 'durations', '2 Years'),
(1046, 169, '_durations', 'field_67e4fc4ed1602'),
(1047, 169, 'course_duration_hours_institute_training', '792.5'),
(1048, 169, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1049, 169, 'course_duration_hours_ojt', '576'),
(1050, 169, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1051, 169, 'course_duration_hours', ''),
(1052, 169, '_course_duration_hours', 'field_67e51d398869a'),
(1053, 169, 'trainer_&_trainee_ratio_practical', '1:12'),
(1054, 169, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1055, 169, 'trainer_&_trainee_ratio_theory', '1:20'),
(1056, 169, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1057, 169, 'trainer_&_trainee_ratio', ''),
(1058, 169, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1059, 169, 'training_outcome', ''),
(1060, 169, '_training_outcome', 'field_67e51266480fb'),
(1061, 169, 'entry_requirement', ''),
(1062, 169, '_entry_requirement', 'field_67e519d1e6b2e'),
(1063, 169, 'icon', ''),
(1064, 169, '_icon', 'field_67bda1643aa4d'),
(1065, 168, '_thumbnail_id', '123'),
(1066, 170, '_edit_lock', '1743072153:1'),
(1067, 170, '_wp_page_template', 'page-staffs-listing.php'),
(1068, 170, '_edit_last', '1'),
(1069, 170, 'icon', ''),
(1070, 170, '_icon', 'field_67bda1643aa4d'),
(1071, 171, 'icon', ''),
(1072, 171, '_icon', 'field_67bda1643aa4d'),
(1073, 172, '_edit_lock', '1743074029:1'),
(1074, 172, '_edit_last', '1'),
(1075, 172, 'icon', ''),
(1076, 172, '_icon', 'field_67bda1643aa4d'),
(1077, 173, 'icon', ''),
(1078, 173, '_icon', 'field_67bda1643aa4d'),
(1079, 172, '_thumbnail_id', '183'),
(1080, 172, '_wp_page_template', 'default'),
(1081, 174, '_wp_attached_file', '2025/03/Picture1.png'),
(1082, 174, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1006;s:6:\"height\";i:1336;s:4:\"file\";s:20:\"2025/03/Picture1.png\";s:8:\"filesize\";i:1957046;s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Picture1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36767;}s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Picture1-226x300.png\";s:5:\"width\";i:226;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:91478;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"Picture1-768x1020.png\";s:5:\"width\";i:768;s:6:\"height\";i:1020;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:613274;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"Picture1-771x1024.png\";s:5:\"width\";i:771;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:616822;}s:9:\"width-box\";a:5:{s:4:\"file\";s:20:\"Picture1-390x280.png\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:120097;}s:9:\"event-box\";a:5:{s:4:\"file\";s:20:\"Picture1-910x392.png\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:253275;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:20:\"Picture1-680x350.png\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:197364;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:20:\"Picture1-235x195.png\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63534;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:20:\"Picture1-280x280.png\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101014;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:21:\"Picture1-1006x900.png\";s:5:\"width\";i:1006;s:6:\"height\";i:900;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:625011;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1085, 175, '_edit_last', '1'),
(1086, 175, '_edit_lock', '1743077987:1'),
(1088, 172, 'inline_featured_image', ''),
(1089, 172, 'footnotes', ''),
(1091, 180, 'footnotes', ''),
(1093, 172, 'designation', 'Principal'),
(1094, 172, '_designation', 'field_67e52d8715cfa'),
(1095, 172, 'email', 'swangmo@tti.gov.bt'),
(1096, 172, '_email', 'field_67e52da215cfb'),
(1097, 172, 'number', ''),
(1098, 172, '_number', 'field_67e52daa15cfc'),
(1099, 180, 'icon', ''),
(1100, 180, '_icon', 'field_67bda1643aa4d'),
(1101, 180, 'designation', 'Principal'),
(1102, 180, '_designation', 'field_67e52d8715cfa'),
(1103, 180, 'email', 'swangmo@tti.gov.bt'),
(1104, 180, '_email', 'field_67e52da215cfb'),
(1105, 180, 'number', ''),
(1106, 180, '_number', 'field_67e52daa15cfc'),
(1107, 181, '_edit_lock', '1743073396:1'),
(1108, 181, '_edit_last', '1'),
(1109, 181, 'icon', ''),
(1110, 181, '_icon', 'field_67bda1643aa4d'),
(1111, 181, 'designation', ''),
(1112, 181, '_designation', 'field_67e52d8715cfa'),
(1113, 181, 'email', ''),
(1114, 181, '_email', 'field_67e52da215cfb'),
(1115, 181, 'number', ''),
(1116, 181, '_number', 'field_67e52daa15cfc'),
(1117, 182, 'icon', ''),
(1118, 182, '_icon', 'field_67bda1643aa4d'),
(1119, 182, 'designation', ''),
(1120, 182, '_designation', 'field_67e52d8715cfa'),
(1121, 182, 'email', ''),
(1122, 182, '_email', 'field_67e52da215cfb'),
(1123, 182, 'number', ''),
(1124, 182, '_number', 'field_67e52daa15cfc'),
(1125, 183, '_wp_attached_file', '2025/03/6769264_60111-scaled.jpg'),
(1126, 183, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:32:\"2025/03/6769264_60111-scaled.jpg\";s:8:\"filesize\";i:147234;s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"6769264_60111-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3143;}s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"6769264_60111-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6804;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"6769264_60111-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22855;}s:5:\"large\";a:5:{s:4:\"file\";s:27:\"6769264_60111-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34866;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"6769264_60111-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64140;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:27:\"6769264_60111-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102277;}s:9:\"width-box\";a:5:{s:4:\"file\";s:25:\"6769264_60111-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8521;}s:9:\"event-box\";a:5:{s:4:\"file\";s:25:\"6769264_60111-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15979;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:25:\"6769264_60111-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12233;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:25:\"6769264_60111-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5047;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:25:\"6769264_60111-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6400;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:26:\"6769264_60111-1920x900.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49545;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:64:\"businessman character avatar isolated vector illustration design\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:37:\"businessman character avatar isolated\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:30:{i:0;s:3:\"man\";i:1;s:9:\"character\";i:2;s:9:\"gentleman\";i:3;s:8:\"business\";i:4;s:6:\"avatar\";i:5;s:11:\"businessman\";i:6;s:4:\"icon\";i:7;s:6:\"person\";i:8;s:12:\"illustration\";i:9;s:6:\"vector\";i:10;s:8:\"isolated\";i:11;s:9:\"beautiful\";i:12;s:5:\"young\";i:13;s:4:\"male\";i:14;s:3:\"boy\";i:15;s:6:\"symbol\";i:16;s:5:\"adult\";i:17;s:4:\"cute\";i:18;s:4:\"face\";i:19;s:5:\"model\";i:20;s:7:\"cartoon\";i:21;s:10:\"expression\";i:22;s:6:\"design\";i:23;s:8:\"portrait\";i:24;s:7:\"fashion\";i:25;s:5:\"human\";i:26;s:7:\"emotion\";i:27;s:10:\"stereotype\";i:28;s:5:\"happy\";i:29;s:7:\"success\";}}s:14:\"original_image\";s:17:\"6769264_60111.jpg\";}'),
(1127, 184, '_edit_lock', '1743074021:1'),
(1128, 184, '_thumbnail_id', '183'),
(1130, 184, 'inline_featured_image', ''),
(1131, 184, 'footnotes', ''),
(1133, 185, 'footnotes', ''),
(1135, 184, '_edit_last', '1'),
(1136, 184, 'icon', ''),
(1137, 184, '_icon', 'field_67bda1643aa4d'),
(1138, 184, 'designation', 'Automobile(HoD)'),
(1139, 184, '_designation', 'field_67e52d8715cfa'),
(1140, 184, 'email', 'ldorji@tti.gov.bt'),
(1141, 184, '_email', 'field_67e52da215cfb'),
(1142, 184, 'number', ''),
(1143, 184, '_number', 'field_67e52daa15cfc'),
(1144, 185, 'icon', ''),
(1145, 185, '_icon', 'field_67bda1643aa4d'),
(1146, 185, 'designation', 'Automobile(HoD)'),
(1147, 185, '_designation', 'field_67e52d8715cfa'),
(1148, 185, 'email', 'ldorji@tti.gov.bt'),
(1149, 185, '_email', 'field_67e52da215cfb'),
(1150, 185, 'number', ''),
(1151, 185, '_number', 'field_67e52daa15cfc'),
(1152, 186, '_edit_lock', '1743073998:1'),
(1153, 186, '_edit_last', '1'),
(1154, 186, 'icon', ''),
(1155, 186, '_icon', 'field_67bda1643aa4d'),
(1156, 186, 'designation', ''),
(1157, 186, '_designation', 'field_67e52d8715cfa'),
(1158, 186, 'email', ''),
(1159, 186, '_email', 'field_67e52da215cfb'),
(1160, 186, 'number', ''),
(1161, 186, '_number', 'field_67e52daa15cfc'),
(1162, 187, 'icon', ''),
(1163, 187, '_icon', 'field_67bda1643aa4d'),
(1164, 187, 'designation', ''),
(1165, 187, '_designation', 'field_67e52d8715cfa'),
(1166, 187, 'email', ''),
(1167, 187, '_email', 'field_67e52da215cfb'),
(1168, 187, 'number', ''),
(1169, 187, '_number', 'field_67e52daa15cfc'),
(1170, 184, '_wp_page_template', 'default'),
(1171, 188, '_edit_lock', '1743082253:1'),
(1172, 188, '_wp_page_template', 'page-event-details.php'),
(1173, 188, '_edit_last', '1'),
(1174, 188, 'icon', ''),
(1175, 188, '_icon', 'field_67bda1643aa4d'),
(1176, 189, 'icon', ''),
(1177, 189, '_icon', 'field_67bda1643aa4d'),
(1178, 188, '_thumbnail_id', '139'),
(1180, 188, 'inline_featured_image', ''),
(1181, 188, 'footnotes', ''),
(1183, 190, 'footnotes', ''),
(1185, 188, 'date', '20250328'),
(1186, 188, '_date', 'field_67e50d819eb21'),
(1187, 188, 'venue', 'TTI, Thimphu'),
(1188, 188, '_venue', 'field_67e50d939eb22'),
(1189, 188, 'start_time', '09:00:00'),
(1190, 188, '_start_time', 'field_67e50dbc9eb23'),
(1191, 188, 'end_time', '12:00:00'),
(1192, 188, '_end_time', 'field_67e50dcc9eb24'),
(1193, 188, 'organizer', 'TTi-Thimphu'),
(1194, 188, '_organizer', 'field_67e50e54f898f'),
(1195, 190, 'icon', ''),
(1196, 190, '_icon', 'field_67bda1643aa4d'),
(1197, 190, 'date', '20250328'),
(1198, 190, '_date', 'field_67e50d819eb21'),
(1199, 190, 'venue', 'TTI, Thimphu'),
(1200, 190, '_venue', 'field_67e50d939eb22'),
(1201, 190, 'start_time', '09:00:00'),
(1202, 190, '_start_time', 'field_67e50dbc9eb23'),
(1203, 190, 'end_time', '12:00:00'),
(1204, 190, '_end_time', 'field_67e50dcc9eb24'),
(1205, 190, 'organizer', 'TTi-Thimphu'),
(1206, 190, '_organizer', 'field_67e50e54f898f'),
(1209, 193, 'footnotes', ''),
(1211, 188, 'number', ''),
(1212, 188, '_number', 'field_67e55127a6d4e'),
(1213, 188, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3540.994309513601!2d89.65414011165397!3d27.43828807623911!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e193aa55e58e39%3A0xd49f253f544fbdd3!2sSAMU!5e0!3m2!1sen!2sbt!4v1743081925744!5m2!1sen!2sbt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1214, 188, '_map', 'field_67e5514f3f7ef'),
(1215, 193, 'icon', ''),
(1216, 193, '_icon', 'field_67bda1643aa4d'),
(1217, 193, 'date', '20250328'),
(1218, 193, '_date', 'field_67e50d819eb21'),
(1219, 193, 'venue', 'TTI, Thimphu'),
(1220, 193, '_venue', 'field_67e50d939eb22'),
(1221, 193, 'start_time', '09:00:00'),
(1222, 193, '_start_time', 'field_67e50dbc9eb23'),
(1223, 193, 'end_time', '12:00:00'),
(1224, 193, '_end_time', 'field_67e50dcc9eb24'),
(1225, 193, 'organizer', 'TTi-Thimphu'),
(1226, 193, '_organizer', 'field_67e50e54f898f'),
(1227, 193, 'number', ''),
(1228, 193, '_number', 'field_67e55127a6d4e'),
(1229, 193, 'map', ''),
(1230, 193, '_map', 'field_67e5514f3f7ef'),
(1233, 194, 'footnotes', ''),
(1235, 194, 'icon', ''),
(1236, 194, '_icon', 'field_67bda1643aa4d'),
(1237, 194, 'date', '20250328'),
(1238, 194, '_date', 'field_67e50d819eb21'),
(1239, 194, 'venue', 'TTI, Thimphu'),
(1240, 194, '_venue', 'field_67e50d939eb22'),
(1241, 194, 'start_time', '09:00:00'),
(1242, 194, '_start_time', 'field_67e50dbc9eb23'),
(1243, 194, 'end_time', '12:00:00'),
(1244, 194, '_end_time', 'field_67e50dcc9eb24'),
(1245, 194, 'organizer', 'TTi-Thimphu'),
(1246, 194, '_organizer', 'field_67e50e54f898f'),
(1247, 194, 'number', ''),
(1248, 194, '_number', 'field_67e55127a6d4e'),
(1249, 194, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3540.994309513601!2d89.65414011165397!3d27.43828807623911!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e193aa55e58e39%3A0xd49f253f544fbdd3!2sSAMU!5e0!3m2!1sen!2sbt!4v1743081925744!5m2!1sen!2sbt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1250, 194, '_map', 'field_67e5514f3f7ef'),
(1251, 195, '_edit_lock', '1743083759:1'),
(1252, 195, '_edit_last', '1'),
(1253, 195, 'icon', ''),
(1254, 195, '_icon', 'field_67bda1643aa4d'),
(1255, 196, 'icon', ''),
(1256, 196, '_icon', 'field_67bda1643aa4d'),
(1257, 195, '_wp_page_template', 'page-downloads-list.php'),
(1258, 197, '_edit_lock', '1743084344:1'),
(1259, 197, '_edit_last', '1'),
(1260, 197, 'icon', ''),
(1261, 197, '_icon', 'field_67bda1643aa4d'),
(1262, 198, 'icon', ''),
(1263, 198, '_icon', 'field_67bda1643aa4d'),
(1264, 200, '_edit_last', '1'),
(1265, 200, '_edit_lock', '1743085615:1'),
(1267, 197, 'inline_featured_image', ''),
(1268, 197, 'footnotes', ''),
(1270, 202, 'footnotes', ''),
(1272, 197, 'download_files', '94'),
(1273, 197, '_download_files', 'field_67e559f576f44'),
(1274, 202, 'icon', ''),
(1275, 202, '_icon', 'field_67bda1643aa4d'),
(1276, 202, 'download_files', '94'),
(1277, 202, '_download_files', 'field_67e559f576f44'),
(1278, 203, '_edit_lock', '1743084662:1'),
(1280, 203, 'inline_featured_image', ''),
(1281, 203, 'footnotes', ''),
(1283, 204, 'footnotes', ''),
(1285, 203, '_edit_last', '1'),
(1286, 203, 'download_files', '41'),
(1287, 203, '_download_files', 'field_67e559f576f44'),
(1288, 203, 'icon', ''),
(1289, 203, '_icon', 'field_67bda1643aa4d'),
(1290, 204, 'download_files', '41'),
(1291, 204, '_download_files', 'field_67e559f576f44'),
(1292, 204, 'icon', ''),
(1293, 204, '_icon', 'field_67bda1643aa4d'),
(1294, 205, 'icon', ''),
(1295, 205, '_icon', 'field_67bda1643aa4d'),
(1296, 206, '_edit_last', '1'),
(1297, 206, '_edit_lock', '1744301342:1'),
(1298, 26, '_thumbnail_id', '261'),
(1300, 26, 'inline_featured_image', ''),
(1301, 26, 'footnotes', ''),
(1303, 213, 'footnotes', ''),
(1305, 26, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1306, 26, '_vision', 'field_67e560d2d2d45'),
(1307, 26, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1308, 26, '_mission', 'field_67e560c4d2d44'),
(1309, 26, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1310, 26, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1311, 26, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1312, 26, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1313, 26, 'objectives', '2'),
(1314, 26, '_objectives', 'field_67e560dbd2d46'),
(1315, 26, 'core_value_0_i_care', 'Integrity'),
(1316, 26, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1317, 26, 'core_value_1_i_care', 'Collaboration'),
(1318, 26, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1319, 26, 'core_value_2_i_care', 'Adaptability'),
(1320, 26, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1321, 26, 'core_value_3_i_care', 'Responsibility'),
(1322, 26, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1323, 26, 'core_value_4_i_care', 'Excellence'),
(1324, 26, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1325, 26, 'core_value', '5'),
(1326, 26, '_core_value', 'field_67e560fdd2d48'),
(1327, 213, 'icon', ''),
(1328, 213, '_icon', 'field_67bda1643aa4d'),
(1329, 213, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1330, 213, '_vision', 'field_67e560d2d2d45'),
(1331, 213, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1332, 213, '_mission', 'field_67e560c4d2d44'),
(1333, 213, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1334, 213, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1335, 213, 'objectives_1_objectives', '2.	To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1336, 213, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1337, 213, 'objectives', '2'),
(1338, 213, '_objectives', 'field_67e560dbd2d46'),
(1339, 213, 'core_value_0_i_care', 'Integrity'),
(1340, 213, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1341, 213, 'core_value_1_i_care', 'Collaboration'),
(1342, 213, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1343, 213, 'core_value_2_i_care', 'Adaptability'),
(1344, 213, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1345, 213, 'core_value_3_i_care', 'Responsibility'),
(1346, 213, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1347, 213, 'core_value_4_i_care', 'Excellence'),
(1348, 213, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1349, 213, 'core_value', '5'),
(1350, 213, '_core_value', 'field_67e560fdd2d48'),
(1351, 214, '_edit_last', '1'),
(1352, 214, '_edit_lock', '1743089074:1'),
(1354, 65, 'inline_featured_image', ''),
(1355, 65, 'footnotes', ''),
(1357, 218, 'footnotes', ''),
(1359, 65, 'email', 'ttithimphu@gmail.com/ttithimphu@tti.gov.bt'),
(1360, 65, '_email', 'field_67e56980b7c41'),
(1361, 65, 'our_address', 'Serbithang, Thimphu, Bhutan'),
(1362, 65, '_our_address', 'field_67e5698cb7c42'),
(1363, 65, 'phone_number', '02-336348'),
(1364, 65, '_phone_number', 'field_67e56aa8b7c43'),
(1365, 218, 'icon', ''),
(1366, 218, '_icon', 'field_67bda1643aa4d'),
(1367, 218, 'email', 'ttithimphu@gmail.com/ttithimphu@tti.gov.bt'),
(1368, 218, '_email', 'field_67e56980b7c41'),
(1369, 218, 'our_address', 'Serbithang, Thimphu, Bhutan'),
(1370, 218, '_our_address', 'field_67e5698cb7c42'),
(1371, 218, 'phone_number', '02-336348'),
(1372, 218, '_phone_number', 'field_67e56aa8b7c43'),
(1375, 220, 'footnotes', ''),
(1377, 65, 'map_google_embed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3541.802954344084!2d89.65426537609166!3d27.413076176352543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e1930063e6fb67%3A0x77a00e95f9bcce11!2sTTI%20Thimphu!5e0!3m2!1sen!2sbt!4v1743088562950!5m2!1sen!2sbt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1378, 65, '_map_google_embed', 'field_67e56b8bc1351'),
(1379, 220, 'icon', ''),
(1380, 220, '_icon', 'field_67bda1643aa4d'),
(1381, 220, 'email', 'ttithimphu@gmail.com/ttithimphu@tti.gov.bt'),
(1382, 220, '_email', 'field_67e56980b7c41'),
(1383, 220, 'our_address', 'Serbithang, Thimphu, Bhutan'),
(1384, 220, '_our_address', 'field_67e5698cb7c42'),
(1385, 220, 'phone_number', '02-336348'),
(1386, 220, '_phone_number', 'field_67e56aa8b7c43'),
(1387, 220, 'map_google_embed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3541.802954344084!2d89.65426537609166!3d27.413076176352543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e1930063e6fb67%3A0x77a00e95f9bcce11!2sTTI%20Thimphu!5e0!3m2!1sen!2sbt!4v1743088562950!5m2!1sen!2sbt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1388, 220, '_map_google_embed', 'field_67e56b8bc1351'),
(1391, 223, '_edit_lock', '1743105780:1'),
(1393, 225, '_edit_lock', '1743108946:1'),
(1401, 225, 'inline_featured_image', ''),
(1402, 225, 'footnotes', ''),
(1404, 228, 'footnotes', ''),
(1406, 225, '_edit_last', '1'),
(1409, 225, 'date', '20250417'),
(1410, 225, '_date', 'field_67e50d819eb21'),
(1411, 225, 'venue', 'Serbithang, TTI Thimphu'),
(1412, 225, '_venue', 'field_67e50d939eb22'),
(1413, 225, 'start_time', '10:00:00'),
(1414, 225, '_start_time', 'field_67e50dbc9eb23'),
(1415, 225, 'end_time', '14:00:00'),
(1416, 225, '_end_time', 'field_67e50dcc9eb24'),
(1417, 225, 'number', ''),
(1418, 225, '_number', 'field_67e55127a6d4e'),
(1419, 225, 'organizer', 'Best Project'),
(1420, 225, '_organizer', 'field_67e50e54f898f'),
(1421, 225, 'address', 'Serbithang, TTI Thimphu'),
(1422, 225, '_address', 'field_67e5524499154'),
(1423, 225, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3541.802954344084!2d89.65426537609166!3d27.413076176352543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e1930063e6fb67%3A0x77a00e95f9bcce11!2sTTI%20Thimphu!5e0!3m2!1sen!2sbt!4v1743106103568!5m2!1sen!2sbt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1424, 225, '_map', 'field_67e5514f3f7ef'),
(1425, 228, 'date', '20250417'),
(1426, 228, '_date', 'field_67e50d819eb21'),
(1427, 228, 'venue', 'Serbithang, TTI Thimphu'),
(1428, 228, '_venue', 'field_67e50d939eb22'),
(1429, 228, 'start_time', '10:00:00'),
(1430, 228, '_start_time', 'field_67e50dbc9eb23'),
(1431, 228, 'end_time', '14:00:00'),
(1432, 228, '_end_time', 'field_67e50dcc9eb24'),
(1433, 228, 'number', ''),
(1434, 228, '_number', 'field_67e55127a6d4e'),
(1435, 228, 'organizer', 'Best Project'),
(1436, 228, '_organizer', 'field_67e50e54f898f'),
(1437, 228, 'address', 'Serbithang, TTI Thimphu'),
(1438, 228, '_address', 'field_67e5524499154'),
(1439, 228, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3541.802954344084!2d89.65426537609166!3d27.413076176352543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e1930063e6fb67%3A0x77a00e95f9bcce11!2sTTI%20Thimphu!5e0!3m2!1sen!2sbt!4v1743106103568!5m2!1sen!2sbt\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(1440, 228, '_map', 'field_67e5514f3f7ef'),
(1441, 225, '_thumbnail_id', '123'),
(1444, 225, '_wp_page_template', ''),
(1451, 229, 'footnotes', ''),
(1453, 229, 'category', 'Automobile '),
(1454, 229, '_category', 'field_67e521cdb50b0'),
(1455, 229, 'course_difficulty', 'Beginer'),
(1456, 229, '_course_difficulty', 'field_67e527af3ab07'),
(1457, 229, 'bqfc_level', '2'),
(1458, 229, '_bqfc_level', 'field_67e4fc3ed1601'),
(1459, 229, 'durations', '2 Years'),
(1460, 229, '_durations', 'field_67e4fc4ed1602'),
(1461, 229, 'course_duration_hours_institute_training', ''),
(1462, 229, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1463, 229, 'course_duration_hours_ojt', ''),
(1464, 229, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1465, 229, 'course_duration_hours', ''),
(1466, 229, '_course_duration_hours', 'field_67e51d398869a'),
(1467, 229, 'trainer_&_trainee_ratio_practical', '1:12'),
(1468, 229, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1469, 229, 'trainer_&_trainee_ratio_theory', '1:20'),
(1470, 229, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1471, 229, 'trainer_&_trainee_ratio', ''),
(1472, 229, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1473, 229, 'training_outcome', ''),
(1474, 229, '_training_outcome', 'field_67e51266480fb'),
(1475, 229, 'entry_requirement', ''),
(1476, 229, '_entry_requirement', 'field_67e519d1e6b2e'),
(1477, 229, 'icon', ''),
(1478, 229, '_icon', 'field_67bda1643aa4d'),
(1485, 232, 'footnotes', ''),
(1489, 232, 'start_date', '20250403'),
(1490, 232, '_start_date', 'field_67e13df2c6e1d'),
(1491, 232, 'end_date', '20250406'),
(1492, 232, '_end_date', 'field_67e13e0cc6e1e'),
(1495, 234, 'footnotes', ''),
(1497, 234, 'category', 'Automobile '),
(1498, 234, '_category', 'field_67e521cdb50b0'),
(1499, 234, 'course_difficulty', 'Beginer'),
(1500, 234, '_course_difficulty', 'field_67e527af3ab07'),
(1501, 234, 'bqfc_level', 'nc3'),
(1502, 234, '_bqfc_level', 'field_67e4fc3ed1601'),
(1503, 234, 'durations', '2 Years'),
(1504, 234, '_durations', 'field_67e4fc4ed1602'),
(1505, 234, 'course_duration_hours_institute_training', ''),
(1506, 234, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1507, 234, 'course_duration_hours_ojt', ''),
(1508, 234, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1509, 234, 'course_duration_hours', ''),
(1510, 234, '_course_duration_hours', 'field_67e51d398869a'),
(1511, 234, 'trainer_&_trainee_ratio_practical', '1:12'),
(1512, 234, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1513, 234, 'trainer_&_trainee_ratio_theory', '1:20'),
(1514, 234, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1515, 234, 'trainer_&_trainee_ratio', ''),
(1516, 234, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1517, 234, 'training_outcome', ''),
(1518, 234, '_training_outcome', 'field_67e51266480fb'),
(1519, 234, 'entry_requirement', ''),
(1520, 234, '_entry_requirement', 'field_67e519d1e6b2e'),
(1521, 234, 'icon', ''),
(1522, 234, '_icon', 'field_67bda1643aa4d'),
(1523, 235, '_edit_lock', '1744131295:1');
INSERT INTO `tti_bt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1524, 235, '_wp_page_template', 'page-course-detail.php'),
(1526, 235, 'inline_featured_image', ''),
(1527, 235, 'footnotes', ''),
(1529, 236, 'footnotes', ''),
(1531, 235, '_edit_last', '1'),
(1532, 235, 'category', 'Automobiles'),
(1533, 235, '_category', 'field_67e521cdb50b0'),
(1534, 235, 'course_difficulty', ''),
(1535, 235, '_course_difficulty', 'field_67e527af3ab07'),
(1536, 235, 'bqfc_level', 'diploma'),
(1537, 235, '_bqfc_level', 'field_67e4fc3ed1601'),
(1538, 235, 'durations', '2 years'),
(1539, 235, '_durations', 'field_67e4fc4ed1602'),
(1540, 235, 'course_duration_hours_institute_training', ''),
(1541, 235, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1542, 235, 'course_duration_hours_ojt', ''),
(1543, 235, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1544, 235, 'course_duration_hours', ''),
(1545, 235, '_course_duration_hours', 'field_67e51d398869a'),
(1546, 235, 'trainer_&_trainee_ratio_practical', ''),
(1547, 235, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1548, 235, 'trainer_&_trainee_ratio_theory', ''),
(1549, 235, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1550, 235, 'trainer_&_trainee_ratio', ''),
(1551, 235, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1552, 235, 'training_outcome', ''),
(1553, 235, '_training_outcome', 'field_67e51266480fb'),
(1554, 235, 'entry_requirement', ''),
(1555, 235, '_entry_requirement', 'field_67e519d1e6b2e'),
(1556, 235, 'icon', ''),
(1557, 235, '_icon', 'field_67bda1643aa4d'),
(1558, 236, 'category', ''),
(1559, 236, '_category', 'field_67e521cdb50b0'),
(1560, 236, 'course_difficulty', ''),
(1561, 236, '_course_difficulty', 'field_67e527af3ab07'),
(1562, 236, 'bqfc_level', 'diploma'),
(1563, 236, '_bqfc_level', 'field_67e4fc3ed1601'),
(1564, 236, 'durations', ''),
(1565, 236, '_durations', 'field_67e4fc4ed1602'),
(1566, 236, 'course_duration_hours_institute_training', ''),
(1567, 236, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1568, 236, 'course_duration_hours_ojt', ''),
(1569, 236, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1570, 236, 'course_duration_hours', ''),
(1571, 236, '_course_duration_hours', 'field_67e51d398869a'),
(1572, 236, 'trainer_&_trainee_ratio_practical', ''),
(1573, 236, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1574, 236, 'trainer_&_trainee_ratio_theory', ''),
(1575, 236, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1576, 236, 'trainer_&_trainee_ratio', ''),
(1577, 236, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1578, 236, 'training_outcome', ''),
(1579, 236, '_training_outcome', 'field_67e51266480fb'),
(1580, 236, 'entry_requirement', ''),
(1581, 236, '_entry_requirement', 'field_67e519d1e6b2e'),
(1582, 236, 'icon', ''),
(1583, 236, '_icon', 'field_67bda1643aa4d'),
(1586, 237, 'footnotes', ''),
(1588, 237, 'category', ''),
(1589, 237, '_category', 'field_67e521cdb50b0'),
(1590, 237, 'course_difficulty', ''),
(1591, 237, '_course_difficulty', 'field_67e527af3ab07'),
(1592, 237, 'bqfc_level', 'diploma'),
(1593, 237, '_bqfc_level', 'field_67e4fc3ed1601'),
(1594, 237, 'durations', '2 years'),
(1595, 237, '_durations', 'field_67e4fc4ed1602'),
(1596, 237, 'course_duration_hours_institute_training', ''),
(1597, 237, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1598, 237, 'course_duration_hours_ojt', ''),
(1599, 237, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1600, 237, 'course_duration_hours', ''),
(1601, 237, '_course_duration_hours', 'field_67e51d398869a'),
(1602, 237, 'trainer_&_trainee_ratio_practical', ''),
(1603, 237, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1604, 237, 'trainer_&_trainee_ratio_theory', ''),
(1605, 237, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1606, 237, 'trainer_&_trainee_ratio', ''),
(1607, 237, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1608, 237, 'training_outcome', ''),
(1609, 237, '_training_outcome', 'field_67e51266480fb'),
(1610, 237, 'entry_requirement', ''),
(1611, 237, '_entry_requirement', 'field_67e519d1e6b2e'),
(1612, 237, 'icon', ''),
(1613, 237, '_icon', 'field_67bda1643aa4d'),
(1616, 238, 'footnotes', ''),
(1618, 238, 'category', 'Automobiles'),
(1619, 238, '_category', 'field_67e521cdb50b0'),
(1620, 238, 'course_difficulty', ''),
(1621, 238, '_course_difficulty', 'field_67e527af3ab07'),
(1622, 238, 'bqfc_level', 'diploma'),
(1623, 238, '_bqfc_level', 'field_67e4fc3ed1601'),
(1624, 238, 'durations', '2 years'),
(1625, 238, '_durations', 'field_67e4fc4ed1602'),
(1626, 238, 'course_duration_hours_institute_training', ''),
(1627, 238, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1628, 238, 'course_duration_hours_ojt', ''),
(1629, 238, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1630, 238, 'course_duration_hours', ''),
(1631, 238, '_course_duration_hours', 'field_67e51d398869a'),
(1632, 238, 'trainer_&_trainee_ratio_practical', ''),
(1633, 238, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(1634, 238, 'trainer_&_trainee_ratio_theory', ''),
(1635, 238, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(1636, 238, 'trainer_&_trainee_ratio', ''),
(1637, 238, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(1638, 238, 'training_outcome', ''),
(1639, 238, '_training_outcome', 'field_67e51266480fb'),
(1640, 238, 'entry_requirement', ''),
(1641, 238, '_entry_requirement', 'field_67e519d1e6b2e'),
(1642, 238, 'icon', ''),
(1643, 238, '_icon', 'field_67bda1643aa4d'),
(1646, 239, 'footnotes', ''),
(1650, 239, 'start_date', '20250409'),
(1651, 239, '_start_date', 'field_67e13df2c6e1d'),
(1652, 239, 'end_date', '20250412'),
(1653, 239, '_end_date', 'field_67e13e0cc6e1e'),
(1656, 240, 'footnotes', ''),
(1660, 240, 'start_date', '20250409'),
(1661, 240, '_start_date', 'field_67e13df2c6e1d'),
(1662, 240, 'end_date', '20250415'),
(1663, 240, '_end_date', 'field_67e13e0cc6e1e'),
(1666, 63, '_pingme', '1'),
(1667, 63, '_encloseme', '1'),
(1668, 34, '_wp_page_template', 'page-staffs-listing.php'),
(1669, 69, '_wp_trash_meta_status', 'publish'),
(1670, 69, '_wp_trash_meta_time', '1744295019'),
(1671, 69, '_wp_desired_post_slug', 'auto-mechanic'),
(1672, 168, '_wp_trash_meta_status', 'publish'),
(1673, 168, '_wp_trash_meta_time', '1744295019'),
(1674, 168, '_wp_desired_post_slug', 'automobile-mechanic'),
(1675, 73, '_wp_trash_meta_status', 'publish'),
(1676, 73, '_wp_trash_meta_time', '1744295019'),
(1677, 73, '_wp_desired_post_slug', 'digital-marketing-at-samu'),
(1678, 235, '_wp_trash_meta_status', 'publish'),
(1679, 235, '_wp_trash_meta_time', '1744295019'),
(1680, 235, '_wp_desired_post_slug', 'diploma-in'),
(1681, 18, '_wp_trash_meta_status', 'publish'),
(1682, 18, '_wp_trash_meta_time', '1744295019'),
(1683, 18, '_wp_desired_post_slug', 'academic'),
(1684, 8, '_wp_trash_meta_status', 'publish'),
(1685, 8, '_wp_trash_meta_time', '1744295020'),
(1686, 8, '_wp_desired_post_slug', 'carpentry'),
(1687, 24, '_wp_trash_meta_status', 'publish'),
(1688, 24, '_wp_trash_meta_time', '1744295020'),
(1689, 24, '_wp_desired_post_slug', 'driving'),
(1690, 22, '_wp_trash_meta_status', 'publish'),
(1691, 22, '_wp_trash_meta_time', '1744295021'),
(1692, 22, '_wp_desired_post_slug', 'earthmoving'),
(1693, 10, '_wp_trash_meta_status', 'publish'),
(1694, 10, '_wp_trash_meta_time', '1744295021'),
(1695, 10, '_wp_desired_post_slug', 'masonry'),
(1696, 13, '_wp_trash_meta_status', 'publish'),
(1697, 13, '_wp_trash_meta_time', '1744295022'),
(1698, 13, '_wp_desired_post_slug', 'plumbing'),
(1699, 15, '_wp_trash_meta_status', 'publish'),
(1700, 15, '_wp_trash_meta_time', '1744295022'),
(1701, 15, '_wp_desired_post_slug', 'welding'),
(1706, 245, 'footnotes', ''),
(1708, 245, 'icon', ''),
(1709, 245, '_icon', 'field_67bda1643aa4d'),
(1710, 245, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1711, 245, '_vision', 'field_67e560d2d2d45'),
(1712, 245, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1713, 245, '_mission', 'field_67e560c4d2d44'),
(1714, 245, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1715, 245, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1716, 245, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1717, 245, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1718, 245, 'objectives', '2'),
(1719, 245, '_objectives', 'field_67e560dbd2d46'),
(1720, 245, 'core_value_0_i_care', 'Integrity'),
(1721, 245, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1722, 245, 'core_value_1_i_care', 'Collaboration'),
(1723, 245, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1724, 245, 'core_value_2_i_care', 'Adaptability'),
(1725, 245, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1726, 245, 'core_value_3_i_care', 'Responsibility'),
(1727, 245, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1728, 245, 'core_value_4_i_care', 'Excellence'),
(1729, 245, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1730, 245, 'core_value', '5'),
(1731, 245, '_core_value', 'field_67e560fdd2d48'),
(1732, 246, 'footnotes', ''),
(1733, 26, 'zorig_commitments', '1'),
(1734, 26, '_zorig_commitments', 'field_67f7ebc92b901'),
(1735, 26, 'youtube_links', ''),
(1736, 26, '_youtube_links', 'field_67f7ebe313479'),
(1737, 246, 'icon', ''),
(1738, 246, '_icon', 'field_67bda1643aa4d'),
(1739, 246, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1740, 246, '_vision', 'field_67e560d2d2d45'),
(1741, 246, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1742, 246, '_mission', 'field_67e560c4d2d44'),
(1743, 246, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1744, 246, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1745, 246, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1746, 246, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1747, 246, 'objectives', '2'),
(1748, 246, '_objectives', 'field_67e560dbd2d46'),
(1749, 246, 'core_value_0_i_care', 'Integrity'),
(1750, 246, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1751, 246, 'core_value_1_i_care', 'Collaboration'),
(1752, 246, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1753, 246, 'core_value_2_i_care', 'Adaptability'),
(1754, 246, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1755, 246, 'core_value_3_i_care', 'Responsibility'),
(1756, 246, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1757, 246, 'core_value_4_i_care', 'Excellence'),
(1758, 246, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1759, 246, 'core_value', '5'),
(1760, 246, '_core_value', 'field_67e560fdd2d48'),
(1761, 246, 'zorig_commitments', ''),
(1762, 246, '_zorig_commitments', 'field_67f7ebc92b901'),
(1763, 246, 'youtube_links', ''),
(1764, 246, '_youtube_links', 'field_67f7ebe313479'),
(1767, 247, 'footnotes', ''),
(1769, 26, 'zorig_commitments_0_commitments', 'Integrity'),
(1770, 26, '_zorig_commitments_0_commitments', 'field_67f7ebc92b902'),
(1771, 247, 'icon', ''),
(1772, 247, '_icon', 'field_67bda1643aa4d'),
(1773, 247, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1774, 247, '_vision', 'field_67e560d2d2d45'),
(1775, 247, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1776, 247, '_mission', 'field_67e560c4d2d44'),
(1777, 247, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1778, 247, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1779, 247, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1780, 247, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1781, 247, 'objectives', '2'),
(1782, 247, '_objectives', 'field_67e560dbd2d46'),
(1783, 247, 'core_value_0_i_care', 'Integrity'),
(1784, 247, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1785, 247, 'core_value_1_i_care', 'Collaboration'),
(1786, 247, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1787, 247, 'core_value_2_i_care', 'Adaptability'),
(1788, 247, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1789, 247, 'core_value_3_i_care', 'Responsibility'),
(1790, 247, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1791, 247, 'core_value_4_i_care', 'Excellence'),
(1792, 247, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1793, 247, 'core_value', '5'),
(1794, 247, '_core_value', 'field_67e560fdd2d48'),
(1795, 247, 'zorig_commitments', '1'),
(1796, 247, '_zorig_commitments', 'field_67f7ebc92b901'),
(1797, 247, 'youtube_links', ''),
(1798, 247, '_youtube_links', 'field_67f7ebe313479'),
(1799, 247, 'zorig_commitments_0_commitments', 'Integrity'),
(1800, 247, '_zorig_commitments_0_commitments', 'field_67f7ebc92b902'),
(1801, 248, '_edit_lock', '1744302293:1'),
(1802, 248, '_edit_last', '1'),
(1803, 248, 'icon', ''),
(1804, 248, '_icon', 'field_67bda1643aa4d'),
(1805, 249, 'icon', ''),
(1806, 249, '_icon', 'field_67bda1643aa4d'),
(1807, 250, 'icon', ''),
(1808, 250, '_icon', 'field_67bda1643aa4d'),
(1809, 251, '_edit_last', '1'),
(1810, 251, '_edit_lock', '1744303334:1'),
(1814, 248, 'inline_featured_image', ''),
(1815, 248, 'footnotes', ''),
(1817, 257, 'footnotes', ''),
(1819, 248, 'one', '2.9'),
(1820, 248, '_one', 'field_67f7edb05bab3'),
(1821, 248, 'two', '10'),
(1822, 248, '_two', 'field_67f7edcf5bab4'),
(1823, 248, 'three', '30'),
(1824, 248, '_three', 'field_67f7edd95bab5'),
(1825, 248, 'four', '30'),
(1826, 248, '_four', 'field_67f7ede25bab6'),
(1827, 257, 'icon', ''),
(1828, 257, '_icon', 'field_67bda1643aa4d'),
(1829, 257, 'one', '2.9'),
(1830, 257, '_one', 'field_67f7edb05bab3'),
(1831, 257, 'two', '10'),
(1832, 257, '_two', 'field_67f7edcf5bab4'),
(1833, 257, 'three', '30'),
(1834, 257, '_three', 'field_67f7edd95bab5'),
(1835, 257, 'four', '30'),
(1836, 257, '_four', 'field_67f7ede25bab6'),
(1837, 258, 'footnotes', ''),
(1838, 258, 'icon', ''),
(1839, 258, '_icon', 'field_67bda1643aa4d'),
(1840, 258, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1841, 258, '_vision', 'field_67e560d2d2d45'),
(1842, 258, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1843, 258, '_mission', 'field_67e560c4d2d44'),
(1844, 258, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1845, 258, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1846, 258, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1847, 258, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1848, 258, 'objectives', '2'),
(1849, 258, '_objectives', 'field_67e560dbd2d46'),
(1850, 258, 'core_value_0_i_care', 'Integrity'),
(1851, 258, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1852, 258, 'core_value_1_i_care', 'Collaboration'),
(1853, 258, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1854, 258, 'core_value_2_i_care', 'Adaptability'),
(1855, 258, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1856, 258, 'core_value_3_i_care', 'Responsibility'),
(1857, 258, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1858, 258, 'core_value_4_i_care', 'Excellence'),
(1859, 258, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1860, 258, 'core_value', '5'),
(1861, 258, '_core_value', 'field_67e560fdd2d48'),
(1862, 258, 'zorig_commitments', '1'),
(1863, 258, '_zorig_commitments', 'field_67f7ebc92b901'),
(1864, 258, 'youtube_links', ''),
(1865, 258, '_youtube_links', 'field_67f7ebe313479'),
(1866, 258, 'zorig_commitments_0_commitments', 'Integrity'),
(1867, 258, '_zorig_commitments_0_commitments', 'field_67f7ebc92b902'),
(1868, 259, 'footnotes', ''),
(1869, 259, 'icon', ''),
(1870, 259, '_icon', 'field_67bda1643aa4d'),
(1871, 259, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1872, 259, '_vision', 'field_67e560d2d2d45'),
(1873, 259, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1874, 259, '_mission', 'field_67e560c4d2d44'),
(1875, 259, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1876, 259, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1877, 259, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1878, 259, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1879, 259, 'objectives', '2'),
(1880, 259, '_objectives', 'field_67e560dbd2d46'),
(1881, 259, 'core_value_0_i_care', 'Integrity'),
(1882, 259, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1883, 259, 'core_value_1_i_care', 'Collaboration'),
(1884, 259, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1885, 259, 'core_value_2_i_care', 'Adaptability'),
(1886, 259, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1887, 259, 'core_value_3_i_care', 'Responsibility'),
(1888, 259, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1889, 259, 'core_value_4_i_care', 'Excellence'),
(1890, 259, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1891, 259, 'core_value', '5'),
(1892, 259, '_core_value', 'field_67e560fdd2d48'),
(1893, 259, 'zorig_commitments', '1'),
(1894, 259, '_zorig_commitments', 'field_67f7ebc92b901'),
(1895, 259, 'youtube_links', ''),
(1896, 259, '_youtube_links', 'field_67f7ebe313479'),
(1897, 259, 'zorig_commitments_0_commitments', 'Integrity'),
(1898, 259, '_zorig_commitments_0_commitments', 'field_67f7ebc92b902'),
(1899, 260, 'footnotes', ''),
(1900, 260, 'icon', ''),
(1901, 260, '_icon', 'field_67bda1643aa4d'),
(1902, 260, 'vision', 'To be a regionally leading and innovative TVET institute developing market responsive and internationally certified technical workforce'),
(1903, 260, '_vision', 'field_67e560d2d2d45'),
(1904, 260, 'mission', 'A socially responsible institute that provides quality training to qualify for national and international skilled workforce in Automobile, Refrigeration and Air Conditioning, and Information Technology.'),
(1905, 260, '_mission', 'field_67e560c4d2d44'),
(1906, 260, 'objectives_0_objectives', 'To act as a hub for other TTIs and private training providers in   demonstrating advanced technology, training didactics, regional linkages, and international certifications.'),
(1907, 260, '_objectives_0_objectives', 'field_67e560f3d2d47'),
(1908, 260, 'objectives_1_objectives', 'To pursue active collaboration with local and international     industries and institutes for improving the quality and relevance of training and placement outcomes;'),
(1909, 260, '_objectives_1_objectives', 'field_67e560f3d2d47'),
(1910, 260, 'objectives', '2'),
(1911, 260, '_objectives', 'field_67e560dbd2d46'),
(1912, 260, 'core_value_0_i_care', 'Integrity'),
(1913, 260, '_core_value_0_i_care', 'field_67e560fdd2d49'),
(1914, 260, 'core_value_1_i_care', 'Collaboration'),
(1915, 260, '_core_value_1_i_care', 'field_67e560fdd2d49'),
(1916, 260, 'core_value_2_i_care', 'Adaptability'),
(1917, 260, '_core_value_2_i_care', 'field_67e560fdd2d49'),
(1918, 260, 'core_value_3_i_care', 'Responsibility'),
(1919, 260, '_core_value_3_i_care', 'field_67e560fdd2d49'),
(1920, 260, 'core_value_4_i_care', 'Excellence'),
(1921, 260, '_core_value_4_i_care', 'field_67e560fdd2d49'),
(1922, 260, 'core_value', '5'),
(1923, 260, '_core_value', 'field_67e560fdd2d48'),
(1924, 260, 'zorig_commitments', '1'),
(1925, 260, '_zorig_commitments', 'field_67f7ebc92b901'),
(1926, 260, 'youtube_links', ''),
(1927, 260, '_youtube_links', 'field_67f7ebe313479'),
(1928, 260, 'zorig_commitments_0_commitments', 'Integrity'),
(1929, 260, '_zorig_commitments_0_commitments', 'field_67f7ebc92b902'),
(1930, 261, '_wp_attached_file', '2025/04/default_pic.jpg'),
(1931, 261, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2025/04/default_pic.jpg\";s:8:\"filesize\";i:636923;s:5:\"sizes\";a:12:{s:9:\"about-box\";a:5:{s:4:\"file\";s:23:\"default_pic-650x540.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:107673;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"default_pic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8031;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"default_pic-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16764;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"default_pic-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97193;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"default_pic-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:165392;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"default_pic-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:345467;}s:9:\"width-box\";a:5:{s:4:\"file\";s:23:\"default_pic-390x280.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33711;}s:9:\"event-box\";a:5:{s:4:\"file\";s:23:\"default_pic-910x392.jpg\";s:5:\"width\";i:910;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:108872;}s:12:\"big-blog-box\";a:5:{s:4:\"file\";s:23:\"default_pic-680x350.jpg\";s:5:\"width\";i:680;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72041;}s:10:\"blog-thumb\";a:5:{s:4:\"file\";s:23:\"default_pic-235x195.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15298;}s:9:\"staff-box\";a:5:{s:4:\"file\";s:23:\"default_pic-280x280.jpg\";s:5:\"width\";i:280;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24321;}s:10:\"slider-box\";a:5:{s:4:\"file\";s:24:\"default_pic-1920x900.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:495123;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1932, 262, '_edit_lock', '1744303317:1'),
(1933, 262, '_edit_last', '1'),
(1934, 262, 'icon', ''),
(1935, 262, '_icon', 'field_67bda1643aa4d'),
(1936, 263, 'icon', ''),
(1937, 263, '_icon', 'field_67bda1643aa4d'),
(1938, 264, '_edit_lock', '1744313403:1'),
(1939, 264, '_edit_last', '1'),
(1940, 264, 'icon', ''),
(1941, 264, '_icon', 'field_67bda1643aa4d'),
(1942, 265, 'icon', ''),
(1943, 265, '_icon', 'field_67bda1643aa4d'),
(1944, 266, '_edit_lock', '1744304091:1'),
(1945, 266, '_edit_last', '1'),
(1946, 266, 'icon', ''),
(1947, 266, '_icon', 'field_67bda1643aa4d'),
(1948, 267, 'icon', ''),
(1949, 267, '_icon', 'field_67bda1643aa4d'),
(1950, 223, '_wp_trash_meta_status', 'draft'),
(1951, 223, '_wp_trash_meta_time', '1744313484'),
(1952, 223, '_wp_desired_post_slug', ''),
(1953, 269, '_edit_lock', '1744313971:1'),
(1954, 269, '_wp_page_template', 'page-child-listing.php'),
(1955, 269, '_edit_last', '1'),
(1956, 269, 'type', ''),
(1957, 269, '_type', 'field_67e4fb909a722'),
(1958, 270, 'type', ''),
(1959, 270, '_type', 'field_67e4fb909a722'),
(1964, 273, '_edit_lock', '1744313836:1'),
(1965, 274, '_edit_lock', '1744314002:1'),
(1966, 276, '_edit_lock', '1744314015:1'),
(1967, 278, '_edit_lock', '1744314031:1'),
(1968, 280, '_edit_lock', '1744314047:1'),
(1969, 282, '_edit_lock', '1744315677:1'),
(1970, 285, 'footnotes', ''),
(1971, 286, 'footnotes', ''),
(1972, 287, 'footnotes', ''),
(1973, 287, '_acf_changed', ''),
(1974, 288, 'footnotes', ''),
(1975, 289, '_edit_lock', '1744810069:1'),
(1976, 289, '_wp_page_template', 'page-course-detail.php'),
(1978, 289, 'inline_featured_image', ''),
(1979, 289, 'footnotes', ''),
(1981, 290, 'footnotes', ''),
(1983, 289, '_edit_last', '1'),
(1984, 289, 'category', 'Wood Carving'),
(1985, 289, '_category', 'field_67e521cdb50b0'),
(1986, 289, 'course_difficulty', ''),
(1987, 289, '_course_difficulty', 'field_67e527af3ab07'),
(1988, 289, 'bqfc_level', 'nc2'),
(1989, 289, '_bqfc_level', 'field_67e4fc3ed1601'),
(1990, 289, 'durations', '18 Months'),
(1991, 289, '_durations', 'field_67e4fc4ed1602'),
(1992, 289, 'course_duration_hours_institute_training', ''),
(1993, 289, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(1994, 289, 'course_duration_hours_ojt', ''),
(1995, 289, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(1996, 289, 'course_duration_hours', ''),
(1997, 289, '_course_duration_hours', 'field_67e51d398869a'),
(1998, 289, 'trainer_&_trainee_ratio_practical', ''),
(1999, 289, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2000, 289, 'trainer_&_trainee_ratio_theory', ''),
(2001, 289, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2002, 289, 'trainer_&_trainee_ratio', ''),
(2003, 289, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2004, 289, 'training_outcome', ''),
(2005, 289, '_training_outcome', 'field_67e51266480fb'),
(2006, 289, 'entry_requirement', ''),
(2007, 289, '_entry_requirement', 'field_67e519d1e6b2e'),
(2008, 289, 'icon', ''),
(2009, 289, '_icon', 'field_67bda1643aa4d'),
(2010, 290, 'category', 'Wood Carving'),
(2011, 290, '_category', 'field_67e521cdb50b0'),
(2012, 290, 'course_difficulty', ''),
(2013, 290, '_course_difficulty', 'field_67e527af3ab07'),
(2014, 290, 'bqfc_level', 'nc2'),
(2015, 290, '_bqfc_level', 'field_67e4fc3ed1601'),
(2016, 290, 'durations', '18 Months'),
(2017, 290, '_durations', 'field_67e4fc4ed1602'),
(2018, 290, 'course_duration_hours_institute_training', ''),
(2019, 290, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2020, 290, 'course_duration_hours_ojt', ''),
(2021, 290, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2022, 290, 'course_duration_hours', ''),
(2023, 290, '_course_duration_hours', 'field_67e51d398869a'),
(2024, 290, 'trainer_&_trainee_ratio_practical', ''),
(2025, 290, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2026, 290, 'trainer_&_trainee_ratio_theory', ''),
(2027, 290, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2028, 290, 'trainer_&_trainee_ratio', ''),
(2029, 290, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2030, 290, 'training_outcome', ''),
(2031, 290, '_training_outcome', 'field_67e51266480fb'),
(2032, 290, 'entry_requirement', ''),
(2033, 290, '_entry_requirement', 'field_67e519d1e6b2e'),
(2034, 290, 'icon', ''),
(2035, 290, '_icon', 'field_67bda1643aa4d'),
(2036, 262, '_wp_trash_meta_status', 'publish'),
(2037, 262, '_wp_trash_meta_time', '1744810077'),
(2038, 262, '_wp_desired_post_slug', 'technical'),
(2039, 264, '_wp_trash_meta_status', 'publish'),
(2040, 264, '_wp_trash_meta_time', '1744810081'),
(2041, 264, '_wp_desired_post_slug', 'academic'),
(2042, 266, '_wp_trash_meta_status', 'publish'),
(2043, 266, '_wp_trash_meta_time', '1744810084'),
(2044, 266, '_wp_desired_post_slug', 'administration'),
(2045, 291, '_edit_lock', '1744810167:1'),
(2046, 291, '_wp_page_template', 'page-course-detail.php'),
(2048, 291, 'inline_featured_image', ''),
(2049, 291, 'footnotes', ''),
(2051, 292, 'footnotes', ''),
(2053, 291, '_edit_last', '1'),
(2054, 291, 'category', 'Wood Carving'),
(2055, 291, '_category', 'field_67e521cdb50b0'),
(2056, 291, 'course_difficulty', ''),
(2057, 291, '_course_difficulty', 'field_67e527af3ab07'),
(2058, 291, 'bqfc_level', 'nc3'),
(2059, 291, '_bqfc_level', 'field_67e4fc3ed1601'),
(2060, 291, 'durations', '16 Months'),
(2061, 291, '_durations', 'field_67e4fc4ed1602'),
(2062, 291, 'course_duration_hours_institute_training', ''),
(2063, 291, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2064, 291, 'course_duration_hours_ojt', ''),
(2065, 291, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2066, 291, 'course_duration_hours', ''),
(2067, 291, '_course_duration_hours', 'field_67e51d398869a'),
(2068, 291, 'trainer_&_trainee_ratio_practical', ''),
(2069, 291, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2070, 291, 'trainer_&_trainee_ratio_theory', ''),
(2071, 291, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2072, 291, 'trainer_&_trainee_ratio', ''),
(2073, 291, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2074, 291, 'training_outcome', ''),
(2075, 291, '_training_outcome', 'field_67e51266480fb'),
(2076, 291, 'entry_requirement', ''),
(2077, 291, '_entry_requirement', 'field_67e519d1e6b2e'),
(2078, 291, 'icon', ''),
(2079, 291, '_icon', 'field_67bda1643aa4d'),
(2080, 292, 'category', 'Wood Carving'),
(2081, 292, '_category', 'field_67e521cdb50b0'),
(2082, 292, 'course_difficulty', ''),
(2083, 292, '_course_difficulty', 'field_67e527af3ab07'),
(2084, 292, 'bqfc_level', 'nc2'),
(2085, 292, '_bqfc_level', 'field_67e4fc3ed1601'),
(2086, 292, 'durations', '16 Months'),
(2087, 292, '_durations', 'field_67e4fc4ed1602'),
(2088, 292, 'course_duration_hours_institute_training', ''),
(2089, 292, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2090, 292, 'course_duration_hours_ojt', ''),
(2091, 292, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2092, 292, 'course_duration_hours', ''),
(2093, 292, '_course_duration_hours', 'field_67e51d398869a'),
(2094, 292, 'trainer_&_trainee_ratio_practical', ''),
(2095, 292, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2096, 292, 'trainer_&_trainee_ratio_theory', ''),
(2097, 292, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2098, 292, 'trainer_&_trainee_ratio', ''),
(2099, 292, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2100, 292, 'training_outcome', ''),
(2101, 292, '_training_outcome', 'field_67e51266480fb'),
(2102, 292, 'entry_requirement', ''),
(2103, 292, '_entry_requirement', 'field_67e519d1e6b2e'),
(2104, 292, 'icon', ''),
(2105, 292, '_icon', 'field_67bda1643aa4d'),
(2106, 293, '_edit_lock', '1744810158:1'),
(2109, 294, 'footnotes', ''),
(2111, 294, 'category', 'Wood Carving'),
(2112, 294, '_category', 'field_67e521cdb50b0'),
(2113, 294, 'course_difficulty', ''),
(2114, 294, '_course_difficulty', 'field_67e527af3ab07'),
(2115, 294, 'bqfc_level', 'nc3'),
(2116, 294, '_bqfc_level', 'field_67e4fc3ed1601'),
(2117, 294, 'durations', '16 Months'),
(2118, 294, '_durations', 'field_67e4fc4ed1602'),
(2119, 294, 'course_duration_hours_institute_training', ''),
(2120, 294, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2121, 294, 'course_duration_hours_ojt', ''),
(2122, 294, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2123, 294, 'course_duration_hours', ''),
(2124, 294, '_course_duration_hours', 'field_67e51d398869a'),
(2125, 294, 'trainer_&_trainee_ratio_practical', ''),
(2126, 294, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2127, 294, 'trainer_&_trainee_ratio_theory', ''),
(2128, 294, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2129, 294, 'trainer_&_trainee_ratio', ''),
(2130, 294, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2131, 294, 'training_outcome', ''),
(2132, 294, '_training_outcome', 'field_67e51266480fb'),
(2133, 294, 'entry_requirement', ''),
(2134, 294, '_entry_requirement', 'field_67e519d1e6b2e'),
(2135, 294, 'icon', ''),
(2136, 294, '_icon', 'field_67bda1643aa4d'),
(2137, 295, '_edit_lock', '1744810232:1'),
(2138, 295, '_wp_page_template', 'page-course-detail.php'),
(2140, 295, 'inline_featured_image', ''),
(2141, 295, 'footnotes', ''),
(2143, 296, 'footnotes', ''),
(2145, 295, '_edit_last', '1'),
(2146, 295, 'category', 'Painting'),
(2147, 295, '_category', 'field_67e521cdb50b0'),
(2148, 295, 'course_difficulty', ''),
(2149, 295, '_course_difficulty', 'field_67e527af3ab07'),
(2150, 295, 'bqfc_level', 'nc2'),
(2151, 295, '_bqfc_level', 'field_67e4fc3ed1601'),
(2152, 295, 'durations', '18 Months'),
(2153, 295, '_durations', 'field_67e4fc4ed1602'),
(2154, 295, 'course_duration_hours_institute_training', ''),
(2155, 295, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2156, 295, 'course_duration_hours_ojt', ''),
(2157, 295, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2158, 295, 'course_duration_hours', ''),
(2159, 295, '_course_duration_hours', 'field_67e51d398869a'),
(2160, 295, 'trainer_&_trainee_ratio_practical', ''),
(2161, 295, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2162, 295, 'trainer_&_trainee_ratio_theory', ''),
(2163, 295, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2164, 295, 'trainer_&_trainee_ratio', ''),
(2165, 295, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2166, 295, 'training_outcome', ''),
(2167, 295, '_training_outcome', 'field_67e51266480fb'),
(2168, 295, 'entry_requirement', ''),
(2169, 295, '_entry_requirement', 'field_67e519d1e6b2e'),
(2170, 295, 'icon', ''),
(2171, 295, '_icon', 'field_67bda1643aa4d'),
(2172, 296, 'category', 'Painting'),
(2173, 296, '_category', 'field_67e521cdb50b0'),
(2174, 296, 'course_difficulty', ''),
(2175, 296, '_course_difficulty', 'field_67e527af3ab07'),
(2176, 296, 'bqfc_level', 'nc2'),
(2177, 296, '_bqfc_level', 'field_67e4fc3ed1601'),
(2178, 296, 'durations', '18 Months'),
(2179, 296, '_durations', 'field_67e4fc4ed1602'),
(2180, 296, 'course_duration_hours_institute_training', ''),
(2181, 296, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2182, 296, 'course_duration_hours_ojt', ''),
(2183, 296, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2184, 296, 'course_duration_hours', ''),
(2185, 296, '_course_duration_hours', 'field_67e51d398869a'),
(2186, 296, 'trainer_&_trainee_ratio_practical', ''),
(2187, 296, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2188, 296, 'trainer_&_trainee_ratio_theory', ''),
(2189, 296, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2190, 296, 'trainer_&_trainee_ratio', ''),
(2191, 296, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2192, 296, 'training_outcome', ''),
(2193, 296, '_training_outcome', 'field_67e51266480fb'),
(2194, 296, 'entry_requirement', ''),
(2195, 296, '_entry_requirement', 'field_67e519d1e6b2e'),
(2196, 296, 'icon', ''),
(2197, 296, '_icon', 'field_67bda1643aa4d'),
(2198, 297, '_edit_lock', '1744810288:1'),
(2199, 297, '_wp_page_template', 'page-course-detail.php'),
(2201, 297, 'inline_featured_image', ''),
(2202, 297, 'footnotes', ''),
(2204, 298, 'footnotes', ''),
(2206, 297, '_edit_last', '1'),
(2207, 297, 'category', 'Painting'),
(2208, 297, '_category', 'field_67e521cdb50b0'),
(2209, 297, 'course_difficulty', ''),
(2210, 297, '_course_difficulty', 'field_67e527af3ab07'),
(2211, 297, 'bqfc_level', 'nc3'),
(2212, 297, '_bqfc_level', 'field_67e4fc3ed1601'),
(2213, 297, 'durations', '24 Months'),
(2214, 297, '_durations', 'field_67e4fc4ed1602'),
(2215, 297, 'course_duration_hours_institute_training', ''),
(2216, 297, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2217, 297, 'course_duration_hours_ojt', ''),
(2218, 297, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2219, 297, 'course_duration_hours', ''),
(2220, 297, '_course_duration_hours', 'field_67e51d398869a'),
(2221, 297, 'trainer_&_trainee_ratio_practical', ''),
(2222, 297, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2223, 297, 'trainer_&_trainee_ratio_theory', ''),
(2224, 297, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2225, 297, 'trainer_&_trainee_ratio', ''),
(2226, 297, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2227, 297, 'training_outcome', ''),
(2228, 297, '_training_outcome', 'field_67e51266480fb'),
(2229, 297, 'entry_requirement', ''),
(2230, 297, '_entry_requirement', 'field_67e519d1e6b2e'),
(2231, 297, 'icon', ''),
(2232, 297, '_icon', 'field_67bda1643aa4d'),
(2233, 298, 'category', 'Painting'),
(2234, 298, '_category', 'field_67e521cdb50b0'),
(2235, 298, 'course_difficulty', ''),
(2236, 298, '_course_difficulty', 'field_67e527af3ab07'),
(2237, 298, 'bqfc_level', 'nc3'),
(2238, 298, '_bqfc_level', 'field_67e4fc3ed1601'),
(2239, 298, 'durations', '24 Months'),
(2240, 298, '_durations', 'field_67e4fc4ed1602'),
(2241, 298, 'course_duration_hours_institute_training', ''),
(2242, 298, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2243, 298, 'course_duration_hours_ojt', ''),
(2244, 298, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2245, 298, 'course_duration_hours', ''),
(2246, 298, '_course_duration_hours', 'field_67e51d398869a'),
(2247, 298, 'trainer_&_trainee_ratio_practical', ''),
(2248, 298, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2249, 298, 'trainer_&_trainee_ratio_theory', ''),
(2250, 298, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2251, 298, 'trainer_&_trainee_ratio', ''),
(2252, 298, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2253, 298, 'training_outcome', ''),
(2254, 298, '_training_outcome', 'field_67e51266480fb'),
(2255, 298, 'entry_requirement', ''),
(2256, 298, '_entry_requirement', 'field_67e519d1e6b2e'),
(2257, 298, 'icon', ''),
(2258, 298, '_icon', 'field_67bda1643aa4d'),
(2259, 299, '_edit_lock', '1744810361:1'),
(2260, 299, '_wp_page_template', 'page-course-detail.php'),
(2262, 299, 'inline_featured_image', ''),
(2263, 299, 'footnotes', ''),
(2265, 300, 'footnotes', ''),
(2267, 299, '_edit_last', '1'),
(2268, 299, 'category', 'Painting'),
(2269, 299, '_category', 'field_67e521cdb50b0'),
(2270, 299, 'course_difficulty', ''),
(2271, 299, '_course_difficulty', 'field_67e527af3ab07'),
(2272, 299, 'bqfc_level', 'diploma'),
(2273, 299, '_bqfc_level', 'field_67e4fc3ed1601'),
(2274, 299, 'durations', '24 Months'),
(2275, 299, '_durations', 'field_67e4fc4ed1602'),
(2276, 299, 'course_duration_hours_institute_training', ''),
(2277, 299, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2278, 299, 'course_duration_hours_ojt', ''),
(2279, 299, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2280, 299, 'course_duration_hours', ''),
(2281, 299, '_course_duration_hours', 'field_67e51d398869a'),
(2282, 299, 'trainer_&_trainee_ratio_practical', ''),
(2283, 299, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2284, 299, 'trainer_&_trainee_ratio_theory', ''),
(2285, 299, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2286, 299, 'trainer_&_trainee_ratio', ''),
(2287, 299, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2288, 299, 'training_outcome', ''),
(2289, 299, '_training_outcome', 'field_67e51266480fb'),
(2290, 299, 'entry_requirement', ''),
(2291, 299, '_entry_requirement', 'field_67e519d1e6b2e'),
(2292, 299, 'icon', ''),
(2293, 299, '_icon', 'field_67bda1643aa4d'),
(2294, 300, 'category', 'Painting'),
(2295, 300, '_category', 'field_67e521cdb50b0'),
(2296, 300, 'course_difficulty', ''),
(2297, 300, '_course_difficulty', 'field_67e527af3ab07'),
(2298, 300, 'bqfc_level', 'nc2'),
(2299, 300, '_bqfc_level', 'field_67e4fc3ed1601'),
(2300, 300, 'durations', '24 Months'),
(2301, 300, '_durations', 'field_67e4fc4ed1602'),
(2302, 300, 'course_duration_hours_institute_training', ''),
(2303, 300, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2304, 300, 'course_duration_hours_ojt', ''),
(2305, 300, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2306, 300, 'course_duration_hours', ''),
(2307, 300, '_course_duration_hours', 'field_67e51d398869a'),
(2308, 300, 'trainer_&_trainee_ratio_practical', ''),
(2309, 300, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2310, 300, 'trainer_&_trainee_ratio_theory', ''),
(2311, 300, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2312, 300, 'trainer_&_trainee_ratio', ''),
(2313, 300, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2314, 300, 'training_outcome', ''),
(2315, 300, '_training_outcome', 'field_67e51266480fb'),
(2316, 300, 'entry_requirement', ''),
(2317, 300, '_entry_requirement', 'field_67e519d1e6b2e'),
(2318, 300, 'icon', ''),
(2319, 300, '_icon', 'field_67bda1643aa4d'),
(2322, 301, 'footnotes', ''),
(2324, 301, 'category', 'Painting'),
(2325, 301, '_category', 'field_67e521cdb50b0'),
(2326, 301, 'course_difficulty', ''),
(2327, 301, '_course_difficulty', 'field_67e527af3ab07'),
(2328, 301, 'bqfc_level', 'diploma'),
(2329, 301, '_bqfc_level', 'field_67e4fc3ed1601'),
(2330, 301, 'durations', '24 Months'),
(2331, 301, '_durations', 'field_67e4fc4ed1602'),
(2332, 301, 'course_duration_hours_institute_training', ''),
(2333, 301, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2334, 301, 'course_duration_hours_ojt', ''),
(2335, 301, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2336, 301, 'course_duration_hours', ''),
(2337, 301, '_course_duration_hours', 'field_67e51d398869a'),
(2338, 301, 'trainer_&_trainee_ratio_practical', ''),
(2339, 301, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2340, 301, 'trainer_&_trainee_ratio_theory', ''),
(2341, 301, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2342, 301, 'trainer_&_trainee_ratio', ''),
(2343, 301, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2344, 301, 'training_outcome', ''),
(2345, 301, '_training_outcome', 'field_67e51266480fb'),
(2346, 301, 'entry_requirement', ''),
(2347, 301, '_entry_requirement', 'field_67e519d1e6b2e'),
(2348, 301, 'icon', ''),
(2349, 301, '_icon', 'field_67bda1643aa4d'),
(2350, 302, '_edit_lock', '1744810418:1'),
(2351, 302, '_wp_page_template', 'page-course-detail.php'),
(2353, 302, 'inline_featured_image', ''),
(2354, 302, 'footnotes', ''),
(2356, 303, 'footnotes', ''),
(2358, 302, '_edit_last', '1'),
(2359, 302, 'category', 'Gold & Silver Smithy '),
(2360, 302, '_category', 'field_67e521cdb50b0'),
(2361, 302, 'course_difficulty', ''),
(2362, 302, '_course_difficulty', 'field_67e527af3ab07'),
(2363, 302, 'bqfc_level', 'nc2'),
(2364, 302, '_bqfc_level', 'field_67e4fc3ed1601'),
(2365, 302, 'durations', '12 Months'),
(2366, 302, '_durations', 'field_67e4fc4ed1602'),
(2367, 302, 'course_duration_hours_institute_training', ''),
(2368, 302, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2369, 302, 'course_duration_hours_ojt', ''),
(2370, 302, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2371, 302, 'course_duration_hours', ''),
(2372, 302, '_course_duration_hours', 'field_67e51d398869a'),
(2373, 302, 'trainer_&_trainee_ratio_practical', ''),
(2374, 302, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2375, 302, 'trainer_&_trainee_ratio_theory', ''),
(2376, 302, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2377, 302, 'trainer_&_trainee_ratio', ''),
(2378, 302, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2379, 302, 'training_outcome', ''),
(2380, 302, '_training_outcome', 'field_67e51266480fb'),
(2381, 302, 'entry_requirement', ''),
(2382, 302, '_entry_requirement', 'field_67e519d1e6b2e'),
(2383, 302, 'icon', ''),
(2384, 302, '_icon', 'field_67bda1643aa4d'),
(2385, 303, 'category', 'Gold & Silver Smithy '),
(2386, 303, '_category', 'field_67e521cdb50b0'),
(2387, 303, 'course_difficulty', ''),
(2388, 303, '_course_difficulty', 'field_67e527af3ab07'),
(2389, 303, 'bqfc_level', 'nc2'),
(2390, 303, '_bqfc_level', 'field_67e4fc3ed1601'),
(2391, 303, 'durations', '12 Months'),
(2392, 303, '_durations', 'field_67e4fc4ed1602'),
(2393, 303, 'course_duration_hours_institute_training', ''),
(2394, 303, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2395, 303, 'course_duration_hours_ojt', ''),
(2396, 303, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2397, 303, 'course_duration_hours', ''),
(2398, 303, '_course_duration_hours', 'field_67e51d398869a'),
(2399, 303, 'trainer_&_trainee_ratio_practical', ''),
(2400, 303, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2401, 303, 'trainer_&_trainee_ratio_theory', ''),
(2402, 303, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2403, 303, 'trainer_&_trainee_ratio', ''),
(2404, 303, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2405, 303, 'training_outcome', ''),
(2406, 303, '_training_outcome', 'field_67e51266480fb'),
(2407, 303, 'entry_requirement', ''),
(2408, 303, '_entry_requirement', 'field_67e519d1e6b2e'),
(2409, 303, 'icon', ''),
(2410, 303, '_icon', 'field_67bda1643aa4d'),
(2411, 304, '_edit_lock', '1744810501:1'),
(2412, 304, '_wp_page_template', 'page-course-detail.php'),
(2414, 304, 'inline_featured_image', ''),
(2415, 304, 'footnotes', ''),
(2417, 305, 'footnotes', ''),
(2419, 304, '_edit_last', '1'),
(2420, 304, 'category', 'Gold & Silver Smithy '),
(2421, 304, '_category', 'field_67e521cdb50b0'),
(2422, 304, 'course_difficulty', ''),
(2423, 304, '_course_difficulty', 'field_67e527af3ab07'),
(2424, 304, 'bqfc_level', 'nc3'),
(2425, 304, '_bqfc_level', 'field_67e4fc3ed1601'),
(2426, 304, 'durations', '13 Months'),
(2427, 304, '_durations', 'field_67e4fc4ed1602'),
(2428, 304, 'course_duration_hours_institute_training', ''),
(2429, 304, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2430, 304, 'course_duration_hours_ojt', ''),
(2431, 304, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2432, 304, 'course_duration_hours', ''),
(2433, 304, '_course_duration_hours', 'field_67e51d398869a'),
(2434, 304, 'trainer_&_trainee_ratio_practical', ''),
(2435, 304, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2436, 304, 'trainer_&_trainee_ratio_theory', ''),
(2437, 304, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2438, 304, 'trainer_&_trainee_ratio', ''),
(2439, 304, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2440, 304, 'training_outcome', ''),
(2441, 304, '_training_outcome', 'field_67e51266480fb'),
(2442, 304, 'entry_requirement', ''),
(2443, 304, '_entry_requirement', 'field_67e519d1e6b2e'),
(2444, 304, 'icon', ''),
(2445, 304, '_icon', 'field_67bda1643aa4d'),
(2446, 305, 'category', 'Gold & Silver Smithy '),
(2447, 305, '_category', 'field_67e521cdb50b0'),
(2448, 305, 'course_difficulty', ''),
(2449, 305, '_course_difficulty', 'field_67e527af3ab07'),
(2450, 305, 'bqfc_level', 'nc2'),
(2451, 305, '_bqfc_level', 'field_67e4fc3ed1601'),
(2452, 305, 'durations', '13 Months'),
(2453, 305, '_durations', 'field_67e4fc4ed1602'),
(2454, 305, 'course_duration_hours_institute_training', ''),
(2455, 305, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2456, 305, 'course_duration_hours_ojt', ''),
(2457, 305, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2458, 305, 'course_duration_hours', ''),
(2459, 305, '_course_duration_hours', 'field_67e51d398869a'),
(2460, 305, 'trainer_&_trainee_ratio_practical', ''),
(2461, 305, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2462, 305, 'trainer_&_trainee_ratio_theory', ''),
(2463, 305, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2464, 305, 'trainer_&_trainee_ratio', ''),
(2465, 305, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2466, 305, 'training_outcome', ''),
(2467, 305, '_training_outcome', 'field_67e51266480fb'),
(2468, 305, 'entry_requirement', ''),
(2469, 305, '_entry_requirement', 'field_67e519d1e6b2e'),
(2470, 305, 'icon', ''),
(2471, 305, '_icon', 'field_67bda1643aa4d'),
(2472, 306, '_edit_lock', '1744810340:1'),
(2475, 307, 'footnotes', ''),
(2477, 307, 'category', 'Gold & Silver Smithy '),
(2478, 307, '_category', 'field_67e521cdb50b0'),
(2479, 307, 'course_difficulty', ''),
(2480, 307, '_course_difficulty', 'field_67e527af3ab07'),
(2481, 307, 'bqfc_level', 'nc3'),
(2482, 307, '_bqfc_level', 'field_67e4fc3ed1601'),
(2483, 307, 'durations', '13 Months'),
(2484, 307, '_durations', 'field_67e4fc4ed1602'),
(2485, 307, 'course_duration_hours_institute_training', ''),
(2486, 307, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2487, 307, 'course_duration_hours_ojt', ''),
(2488, 307, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2489, 307, 'course_duration_hours', ''),
(2490, 307, '_course_duration_hours', 'field_67e51d398869a'),
(2491, 307, 'trainer_&_trainee_ratio_practical', ''),
(2492, 307, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2493, 307, 'trainer_&_trainee_ratio_theory', ''),
(2494, 307, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2495, 307, 'trainer_&_trainee_ratio', ''),
(2496, 307, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2497, 307, 'training_outcome', ''),
(2498, 307, '_training_outcome', 'field_67e51266480fb'),
(2499, 307, 'entry_requirement', ''),
(2500, 307, '_entry_requirement', 'field_67e519d1e6b2e'),
(2501, 307, 'icon', ''),
(2502, 307, '_icon', 'field_67bda1643aa4d'),
(2503, 308, '_edit_lock', '1744810553:1'),
(2504, 308, '_wp_page_template', 'page-course-detail.php'),
(2506, 308, 'inline_featured_image', ''),
(2507, 308, 'footnotes', ''),
(2509, 309, 'footnotes', ''),
(2511, 308, '_edit_last', '1'),
(2512, 308, 'category', 'Embroidery '),
(2513, 308, '_category', 'field_67e521cdb50b0'),
(2514, 308, 'course_difficulty', ''),
(2515, 308, '_course_difficulty', 'field_67e527af3ab07'),
(2516, 308, 'bqfc_level', 'nc2'),
(2517, 308, '_bqfc_level', 'field_67e4fc3ed1601'),
(2518, 308, 'durations', '17 months'),
(2519, 308, '_durations', 'field_67e4fc4ed1602'),
(2520, 308, 'course_duration_hours_institute_training', ''),
(2521, 308, '_course_duration_hours_institute_training', 'field_67e51d518869b');
INSERT INTO `tti_bt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2522, 308, 'course_duration_hours_ojt', ''),
(2523, 308, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2524, 308, 'course_duration_hours', ''),
(2525, 308, '_course_duration_hours', 'field_67e51d398869a'),
(2526, 308, 'trainer_&_trainee_ratio_practical', ''),
(2527, 308, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2528, 308, 'trainer_&_trainee_ratio_theory', ''),
(2529, 308, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2530, 308, 'trainer_&_trainee_ratio', ''),
(2531, 308, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2532, 308, 'training_outcome', ''),
(2533, 308, '_training_outcome', 'field_67e51266480fb'),
(2534, 308, 'entry_requirement', ''),
(2535, 308, '_entry_requirement', 'field_67e519d1e6b2e'),
(2536, 308, 'icon', ''),
(2537, 308, '_icon', 'field_67bda1643aa4d'),
(2538, 309, 'category', 'Embroidery '),
(2539, 309, '_category', 'field_67e521cdb50b0'),
(2540, 309, 'course_difficulty', ''),
(2541, 309, '_course_difficulty', 'field_67e527af3ab07'),
(2542, 309, 'bqfc_level', 'nc2'),
(2543, 309, '_bqfc_level', 'field_67e4fc3ed1601'),
(2544, 309, 'durations', '17 months'),
(2545, 309, '_durations', 'field_67e4fc4ed1602'),
(2546, 309, 'course_duration_hours_institute_training', ''),
(2547, 309, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2548, 309, 'course_duration_hours_ojt', ''),
(2549, 309, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2550, 309, 'course_duration_hours', ''),
(2551, 309, '_course_duration_hours', 'field_67e51d398869a'),
(2552, 309, 'trainer_&_trainee_ratio_practical', ''),
(2553, 309, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2554, 309, 'trainer_&_trainee_ratio_theory', ''),
(2555, 309, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2556, 309, 'trainer_&_trainee_ratio', ''),
(2557, 309, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2558, 309, 'training_outcome', ''),
(2559, 309, '_training_outcome', 'field_67e51266480fb'),
(2560, 309, 'entry_requirement', ''),
(2561, 309, '_entry_requirement', 'field_67e519d1e6b2e'),
(2562, 309, 'icon', ''),
(2563, 309, '_icon', 'field_67bda1643aa4d'),
(2564, 310, '_edit_lock', '1744810607:1'),
(2565, 310, '_wp_page_template', 'page-course-detail.php'),
(2567, 310, 'inline_featured_image', ''),
(2568, 310, 'footnotes', ''),
(2570, 311, 'footnotes', ''),
(2572, 310, '_edit_last', '1'),
(2573, 310, 'category', 'Embroidery '),
(2574, 310, '_category', 'field_67e521cdb50b0'),
(2575, 310, 'course_difficulty', ''),
(2576, 310, '_course_difficulty', 'field_67e527af3ab07'),
(2577, 310, 'bqfc_level', 'nc3'),
(2578, 310, '_bqfc_level', 'field_67e4fc3ed1601'),
(2579, 310, 'durations', '15 months'),
(2580, 310, '_durations', 'field_67e4fc4ed1602'),
(2581, 310, 'course_duration_hours_institute_training', ''),
(2582, 310, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2583, 310, 'course_duration_hours_ojt', ''),
(2584, 310, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2585, 310, 'course_duration_hours', ''),
(2586, 310, '_course_duration_hours', 'field_67e51d398869a'),
(2587, 310, 'trainer_&_trainee_ratio_practical', ''),
(2588, 310, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2589, 310, 'trainer_&_trainee_ratio_theory', ''),
(2590, 310, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2591, 310, 'trainer_&_trainee_ratio', ''),
(2592, 310, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2593, 310, 'training_outcome', ''),
(2594, 310, '_training_outcome', 'field_67e51266480fb'),
(2595, 310, 'entry_requirement', ''),
(2596, 310, '_entry_requirement', 'field_67e519d1e6b2e'),
(2597, 310, 'icon', ''),
(2598, 310, '_icon', 'field_67bda1643aa4d'),
(2599, 311, 'category', 'Embroidery '),
(2600, 311, '_category', 'field_67e521cdb50b0'),
(2601, 311, 'course_difficulty', ''),
(2602, 311, '_course_difficulty', 'field_67e527af3ab07'),
(2603, 311, 'bqfc_level', 'nc3'),
(2604, 311, '_bqfc_level', 'field_67e4fc3ed1601'),
(2605, 311, 'durations', '15 months'),
(2606, 311, '_durations', 'field_67e4fc4ed1602'),
(2607, 311, 'course_duration_hours_institute_training', ''),
(2608, 311, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2609, 311, 'course_duration_hours_ojt', ''),
(2610, 311, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2611, 311, 'course_duration_hours', ''),
(2612, 311, '_course_duration_hours', 'field_67e51d398869a'),
(2613, 311, 'trainer_&_trainee_ratio_practical', ''),
(2614, 311, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2615, 311, 'trainer_&_trainee_ratio_theory', ''),
(2616, 311, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2617, 311, 'trainer_&_trainee_ratio', ''),
(2618, 311, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2619, 311, 'training_outcome', ''),
(2620, 311, '_training_outcome', 'field_67e51266480fb'),
(2621, 311, 'entry_requirement', ''),
(2622, 311, '_entry_requirement', 'field_67e519d1e6b2e'),
(2623, 311, 'icon', ''),
(2624, 311, '_icon', 'field_67bda1643aa4d'),
(2625, 312, '_edit_lock', '1744810785:1'),
(2626, 312, '_wp_page_template', 'page-course-detail.php'),
(2628, 312, 'inline_featured_image', ''),
(2629, 312, 'footnotes', ''),
(2631, 313, 'footnotes', ''),
(2633, 312, '_edit_last', '1'),
(2634, 312, 'category', 'Tailoring '),
(2635, 312, '_category', 'field_67e521cdb50b0'),
(2636, 312, 'course_difficulty', ''),
(2637, 312, '_course_difficulty', 'field_67e527af3ab07'),
(2638, 312, 'bqfc_level', 'nc2'),
(2639, 312, '_bqfc_level', 'field_67e4fc3ed1601'),
(2640, 312, 'durations', '12 Months'),
(2641, 312, '_durations', 'field_67e4fc4ed1602'),
(2642, 312, 'course_duration_hours_institute_training', ''),
(2643, 312, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2644, 312, 'course_duration_hours_ojt', ''),
(2645, 312, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2646, 312, 'course_duration_hours', ''),
(2647, 312, '_course_duration_hours', 'field_67e51d398869a'),
(2648, 312, 'trainer_&_trainee_ratio_practical', ''),
(2649, 312, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2650, 312, 'trainer_&_trainee_ratio_theory', ''),
(2651, 312, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2652, 312, 'trainer_&_trainee_ratio', ''),
(2653, 312, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2654, 312, 'training_outcome', ''),
(2655, 312, '_training_outcome', 'field_67e51266480fb'),
(2656, 312, 'entry_requirement', ''),
(2657, 312, '_entry_requirement', 'field_67e519d1e6b2e'),
(2658, 312, 'icon', ''),
(2659, 312, '_icon', 'field_67bda1643aa4d'),
(2660, 313, 'category', 'Tailoring '),
(2661, 313, '_category', 'field_67e521cdb50b0'),
(2662, 313, 'course_difficulty', ''),
(2663, 313, '_course_difficulty', 'field_67e527af3ab07'),
(2664, 313, 'bqfc_level', 'nc2'),
(2665, 313, '_bqfc_level', 'field_67e4fc3ed1601'),
(2666, 313, 'durations', '12 Months'),
(2667, 313, '_durations', 'field_67e4fc4ed1602'),
(2668, 313, 'course_duration_hours_institute_training', ''),
(2669, 313, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2670, 313, 'course_duration_hours_ojt', ''),
(2671, 313, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2672, 313, 'course_duration_hours', ''),
(2673, 313, '_course_duration_hours', 'field_67e51d398869a'),
(2674, 313, 'trainer_&_trainee_ratio_practical', ''),
(2675, 313, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2676, 313, 'trainer_&_trainee_ratio_theory', ''),
(2677, 313, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2678, 313, 'trainer_&_trainee_ratio', ''),
(2679, 313, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2680, 313, 'training_outcome', ''),
(2681, 313, '_training_outcome', 'field_67e51266480fb'),
(2682, 313, 'entry_requirement', ''),
(2683, 313, '_entry_requirement', 'field_67e519d1e6b2e'),
(2684, 313, 'icon', ''),
(2685, 313, '_icon', 'field_67bda1643aa4d'),
(2686, 314, '_edit_lock', '1744810757:1'),
(2687, 314, '_wp_page_template', 'page-course-detail.php'),
(2689, 314, 'inline_featured_image', ''),
(2690, 314, 'footnotes', ''),
(2692, 315, 'footnotes', ''),
(2694, 314, '_edit_last', '1'),
(2695, 314, 'category', 'Tailoring'),
(2696, 314, '_category', 'field_67e521cdb50b0'),
(2697, 314, 'course_difficulty', ''),
(2698, 314, '_course_difficulty', 'field_67e527af3ab07'),
(2699, 314, 'bqfc_level', 'nc3'),
(2700, 314, '_bqfc_level', 'field_67e4fc3ed1601'),
(2701, 314, 'durations', '12 Months'),
(2702, 314, '_durations', 'field_67e4fc4ed1602'),
(2703, 314, 'course_duration_hours_institute_training', ''),
(2704, 314, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2705, 314, 'course_duration_hours_ojt', ''),
(2706, 314, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2707, 314, 'course_duration_hours', ''),
(2708, 314, '_course_duration_hours', 'field_67e51d398869a'),
(2709, 314, 'trainer_&_trainee_ratio_practical', ''),
(2710, 314, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2711, 314, 'trainer_&_trainee_ratio_theory', ''),
(2712, 314, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2713, 314, 'trainer_&_trainee_ratio', ''),
(2714, 314, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2715, 314, 'training_outcome', ''),
(2716, 314, '_training_outcome', 'field_67e51266480fb'),
(2717, 314, 'entry_requirement', ''),
(2718, 314, '_entry_requirement', 'field_67e519d1e6b2e'),
(2719, 314, 'icon', ''),
(2720, 314, '_icon', 'field_67bda1643aa4d'),
(2721, 315, 'category', 'Tailoring'),
(2722, 315, '_category', 'field_67e521cdb50b0'),
(2723, 315, 'course_difficulty', ''),
(2724, 315, '_course_difficulty', 'field_67e527af3ab07'),
(2725, 315, 'bqfc_level', 'nc3'),
(2726, 315, '_bqfc_level', 'field_67e4fc3ed1601'),
(2727, 315, 'durations', '12 Months'),
(2728, 315, '_durations', 'field_67e4fc4ed1602'),
(2729, 315, 'course_duration_hours_institute_training', ''),
(2730, 315, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2731, 315, 'course_duration_hours_ojt', ''),
(2732, 315, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2733, 315, 'course_duration_hours', ''),
(2734, 315, '_course_duration_hours', 'field_67e51d398869a'),
(2735, 315, 'trainer_&_trainee_ratio_practical', ''),
(2736, 315, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2737, 315, 'trainer_&_trainee_ratio_theory', ''),
(2738, 315, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2739, 315, 'trainer_&_trainee_ratio', ''),
(2740, 315, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2741, 315, 'training_outcome', ''),
(2742, 315, '_training_outcome', 'field_67e51266480fb'),
(2743, 315, 'entry_requirement', ''),
(2744, 315, '_entry_requirement', 'field_67e519d1e6b2e'),
(2745, 315, 'icon', ''),
(2746, 315, '_icon', 'field_67bda1643aa4d'),
(2747, 316, '_edit_lock', '1744810844:1'),
(2748, 316, '_wp_page_template', 'page-course-detail.php'),
(2750, 316, 'inline_featured_image', ''),
(2751, 316, 'footnotes', ''),
(2753, 317, 'footnotes', ''),
(2755, 316, '_edit_last', '1'),
(2756, 316, 'category', 'Weaving '),
(2757, 316, '_category', 'field_67e521cdb50b0'),
(2758, 316, 'course_difficulty', ''),
(2759, 316, '_course_difficulty', 'field_67e527af3ab07'),
(2760, 316, 'bqfc_level', 'nc2'),
(2761, 316, '_bqfc_level', 'field_67e4fc3ed1601'),
(2762, 316, 'durations', '24 Months'),
(2763, 316, '_durations', 'field_67e4fc4ed1602'),
(2764, 316, 'course_duration_hours_institute_training', ''),
(2765, 316, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2766, 316, 'course_duration_hours_ojt', ''),
(2767, 316, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2768, 316, 'course_duration_hours', ''),
(2769, 316, '_course_duration_hours', 'field_67e51d398869a'),
(2770, 316, 'trainer_&_trainee_ratio_practical', ''),
(2771, 316, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2772, 316, 'trainer_&_trainee_ratio_theory', ''),
(2773, 316, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2774, 316, 'trainer_&_trainee_ratio', ''),
(2775, 316, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2776, 316, 'training_outcome', ''),
(2777, 316, '_training_outcome', 'field_67e51266480fb'),
(2778, 316, 'entry_requirement', ''),
(2779, 316, '_entry_requirement', 'field_67e519d1e6b2e'),
(2780, 316, 'icon', ''),
(2781, 316, '_icon', 'field_67bda1643aa4d'),
(2782, 317, 'category', 'Weaving '),
(2783, 317, '_category', 'field_67e521cdb50b0'),
(2784, 317, 'course_difficulty', ''),
(2785, 317, '_course_difficulty', 'field_67e527af3ab07'),
(2786, 317, 'bqfc_level', 'nc2'),
(2787, 317, '_bqfc_level', 'field_67e4fc3ed1601'),
(2788, 317, 'durations', '24 Months'),
(2789, 317, '_durations', 'field_67e4fc4ed1602'),
(2790, 317, 'course_duration_hours_institute_training', ''),
(2791, 317, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2792, 317, 'course_duration_hours_ojt', ''),
(2793, 317, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2794, 317, 'course_duration_hours', ''),
(2795, 317, '_course_duration_hours', 'field_67e51d398869a'),
(2796, 317, 'trainer_&_trainee_ratio_practical', ''),
(2797, 317, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2798, 317, 'trainer_&_trainee_ratio_theory', ''),
(2799, 317, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2800, 317, 'trainer_&_trainee_ratio', ''),
(2801, 317, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2802, 317, 'training_outcome', ''),
(2803, 317, '_training_outcome', 'field_67e51266480fb'),
(2804, 317, 'entry_requirement', ''),
(2805, 317, '_entry_requirement', 'field_67e519d1e6b2e'),
(2806, 317, 'icon', ''),
(2807, 317, '_icon', 'field_67bda1643aa4d'),
(2808, 318, '_edit_lock', '1744810896:1'),
(2809, 318, '_wp_page_template', 'page-course-detail.php'),
(2811, 318, 'inline_featured_image', ''),
(2812, 318, 'footnotes', ''),
(2814, 319, 'footnotes', ''),
(2816, 318, '_edit_last', '1'),
(2817, 318, 'category', 'Sculpture '),
(2818, 318, '_category', 'field_67e521cdb50b0'),
(2819, 318, 'course_difficulty', ''),
(2820, 318, '_course_difficulty', 'field_67e527af3ab07'),
(2821, 318, 'bqfc_level', 'nc2'),
(2822, 318, '_bqfc_level', 'field_67e4fc3ed1601'),
(2823, 318, 'durations', '14 Months'),
(2824, 318, '_durations', 'field_67e4fc4ed1602'),
(2825, 318, 'course_duration_hours_institute_training', ''),
(2826, 318, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2827, 318, 'course_duration_hours_ojt', ''),
(2828, 318, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2829, 318, 'course_duration_hours', ''),
(2830, 318, '_course_duration_hours', 'field_67e51d398869a'),
(2831, 318, 'trainer_&_trainee_ratio_practical', ''),
(2832, 318, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2833, 318, 'trainer_&_trainee_ratio_theory', ''),
(2834, 318, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2835, 318, 'trainer_&_trainee_ratio', ''),
(2836, 318, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2837, 318, 'training_outcome', ''),
(2838, 318, '_training_outcome', 'field_67e51266480fb'),
(2839, 318, 'entry_requirement', ''),
(2840, 318, '_entry_requirement', 'field_67e519d1e6b2e'),
(2841, 318, 'icon', ''),
(2842, 318, '_icon', 'field_67bda1643aa4d'),
(2843, 319, 'category', 'Sculpture '),
(2844, 319, '_category', 'field_67e521cdb50b0'),
(2845, 319, 'course_difficulty', ''),
(2846, 319, '_course_difficulty', 'field_67e527af3ab07'),
(2847, 319, 'bqfc_level', 'nc2'),
(2848, 319, '_bqfc_level', 'field_67e4fc3ed1601'),
(2849, 319, 'durations', '14 Months'),
(2850, 319, '_durations', 'field_67e4fc4ed1602'),
(2851, 319, 'course_duration_hours_institute_training', ''),
(2852, 319, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2853, 319, 'course_duration_hours_ojt', ''),
(2854, 319, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2855, 319, 'course_duration_hours', ''),
(2856, 319, '_course_duration_hours', 'field_67e51d398869a'),
(2857, 319, 'trainer_&_trainee_ratio_practical', ''),
(2858, 319, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2859, 319, 'trainer_&_trainee_ratio_theory', ''),
(2860, 319, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2861, 319, 'trainer_&_trainee_ratio', ''),
(2862, 319, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2863, 319, 'training_outcome', ''),
(2864, 319, '_training_outcome', 'field_67e51266480fb'),
(2865, 319, 'entry_requirement', ''),
(2866, 319, '_entry_requirement', 'field_67e519d1e6b2e'),
(2867, 319, 'icon', ''),
(2868, 319, '_icon', 'field_67bda1643aa4d'),
(2869, 320, '_edit_lock', '1744810950:1'),
(2870, 320, '_wp_page_template', 'page-course-detail.php'),
(2872, 320, 'inline_featured_image', ''),
(2873, 320, 'footnotes', ''),
(2875, 321, 'footnotes', ''),
(2877, 320, '_edit_last', '1'),
(2878, 320, 'category', 'Sculpture '),
(2879, 320, '_category', 'field_67e521cdb50b0'),
(2880, 320, 'course_difficulty', ''),
(2881, 320, '_course_difficulty', 'field_67e527af3ab07'),
(2882, 320, 'bqfc_level', 'nc3'),
(2883, 320, '_bqfc_level', 'field_67e4fc3ed1601'),
(2884, 320, 'durations', '24 Months'),
(2885, 320, '_durations', 'field_67e4fc4ed1602'),
(2886, 320, 'course_duration_hours_institute_training', ''),
(2887, 320, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2888, 320, 'course_duration_hours_ojt', ''),
(2889, 320, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2890, 320, 'course_duration_hours', ''),
(2891, 320, '_course_duration_hours', 'field_67e51d398869a'),
(2892, 320, 'trainer_&_trainee_ratio_practical', ''),
(2893, 320, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2894, 320, 'trainer_&_trainee_ratio_theory', ''),
(2895, 320, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2896, 320, 'trainer_&_trainee_ratio', ''),
(2897, 320, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2898, 320, 'training_outcome', ''),
(2899, 320, '_training_outcome', 'field_67e51266480fb'),
(2900, 320, 'entry_requirement', ''),
(2901, 320, '_entry_requirement', 'field_67e519d1e6b2e'),
(2902, 320, 'icon', ''),
(2903, 320, '_icon', 'field_67bda1643aa4d'),
(2904, 321, 'category', 'Sculpture '),
(2905, 321, '_category', 'field_67e521cdb50b0'),
(2906, 321, 'course_difficulty', ''),
(2907, 321, '_course_difficulty', 'field_67e527af3ab07'),
(2908, 321, 'bqfc_level', 'nc3'),
(2909, 321, '_bqfc_level', 'field_67e4fc3ed1601'),
(2910, 321, 'durations', '24 Months'),
(2911, 321, '_durations', 'field_67e4fc4ed1602'),
(2912, 321, 'course_duration_hours_institute_training', ''),
(2913, 321, '_course_duration_hours_institute_training', 'field_67e51d518869b'),
(2914, 321, 'course_duration_hours_ojt', ''),
(2915, 321, '_course_duration_hours_ojt', 'field_67e51d578869c'),
(2916, 321, 'course_duration_hours', ''),
(2917, 321, '_course_duration_hours', 'field_67e51d398869a'),
(2918, 321, 'trainer_&_trainee_ratio_practical', ''),
(2919, 321, '_trainer_&_trainee_ratio_practical', 'field_67e51f3d11232'),
(2920, 321, 'trainer_&_trainee_ratio_theory', ''),
(2921, 321, '_trainer_&_trainee_ratio_theory', 'field_67e51f4511233'),
(2922, 321, 'trainer_&_trainee_ratio', ''),
(2923, 321, '_trainer_&_trainee_ratio', 'field_67e51f291122f'),
(2924, 321, 'training_outcome', ''),
(2925, 321, '_training_outcome', 'field_67e51266480fb'),
(2926, 321, 'entry_requirement', ''),
(2927, 321, '_entry_requirement', 'field_67e519d1e6b2e'),
(2928, 321, 'icon', ''),
(2929, 321, '_icon', 'field_67bda1643aa4d'),
(2930, 322, '_edit_lock', '1744811128:1'),
(2931, 323, '_edit_lock', '1744811175:1');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_posts`
--

CREATE TABLE `tti_bt_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_posts`
--

INSERT INTO `tti_bt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-02-19 02:37:00', '2025-02-19 02:37:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-03-24 20:13:59', '2025-03-24 20:13:59', '', 0, 'https://czc.samu.bt/?p=1', 0, 'post', '', 1),
(2, 1, '2025-02-19 02:37:00', '2025-02-19 02:37:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://czc.samu.bt/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-03-25 03:05:08', '2025-03-24 21:05:08', '', 0, 'https://czc.samu.bt/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-02-19 02:37:00', '2025-02-19 02:37:00', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://czc.samu.bt.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-02-19 02:37:00', '2025-02-19 02:37:00', '', 0, 'https://czc.samu.bt/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-02-19 02:37:03', '2025-02-19 02:37:03', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-02-19 02:37:03', '2025-02-19 02:37:03', '', 0, 'https://czc.samu.bt/2025/02/19/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2025-02-25 06:48:01', '2025-02-25 06:48:01', '', 'Departments', '', 'publish', 'closed', 'closed', '', 'departments', '', '', '2025-04-09 20:31:00', '2025-04-09 14:31:00', '', 0, 'https://czc.samu.bt/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-02-25 06:48:01', '2025-02-25 06:48:01', '', 'Departments', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-02-25 06:48:01', '2025-02-25 06:48:01', '', 6, 'https://czc.samu.bt/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-02-25 06:48:37', '2025-02-25 06:48:37', '', 'Carpentry', '', 'trash', 'closed', 'closed', '', 'carpentry__trashed', '', '', '2025-04-10 20:23:40', '2025-04-10 14:23:40', '', 6, 'https://czc.samu.bt/?page_id=8', 0, 'page', '', 0),
(9, 1, '2025-02-25 06:48:37', '2025-02-25 06:48:37', '', 'Carpentry', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2025-02-25 06:48:37', '2025-02-25 06:48:37', '', 8, 'https://czc.samu.bt/?p=9', 0, 'revision', '', 0),
(10, 1, '2025-02-25 06:48:52', '2025-02-25 06:48:52', '', 'Masonry', '', 'trash', 'closed', 'closed', '', 'masonry__trashed', '', '', '2025-04-10 20:23:41', '2025-04-10 14:23:41', '', 6, 'https://czc.samu.bt/?page_id=10', 0, 'page', '', 0),
(11, 1, '2025-02-25 06:48:52', '2025-02-25 06:48:52', '', 'Masonry', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-02-25 06:48:52', '2025-02-25 06:48:52', '', 10, 'https://czc.samu.bt/?p=11', 0, 'revision', '', 0),
(13, 1, '2025-02-25 06:49:08', '2025-02-25 06:49:08', '', 'Plumbing', '', 'trash', 'closed', 'closed', '', 'plumbing__trashed', '', '', '2025-04-10 20:23:42', '2025-04-10 14:23:42', '', 6, 'https://czc.samu.bt/?page_id=13', 0, 'page', '', 0),
(14, 1, '2025-02-25 06:49:08', '2025-02-25 06:49:08', '', 'Plumbing', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2025-02-25 06:49:08', '2025-02-25 06:49:08', '', 13, 'https://czc.samu.bt/?p=14', 0, 'revision', '', 0),
(15, 1, '2025-02-25 06:49:19', '2025-02-25 06:49:19', '', 'Welding', '', 'trash', 'closed', 'closed', '', 'welding__trashed', '', '', '2025-04-10 20:23:42', '2025-04-10 14:23:42', '', 6, 'https://czc.samu.bt/?page_id=15', 0, 'page', '', 0),
(16, 1, '2025-02-25 06:49:19', '2025-02-25 06:49:19', '', 'Welding', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-02-25 06:49:19', '2025-02-25 06:49:19', '', 15, 'https://czc.samu.bt/?p=16', 0, 'revision', '', 0),
(18, 1, '2025-02-25 06:49:38', '2025-02-25 06:49:38', '', 'Academic', '', 'trash', 'closed', 'closed', '', 'academic__trashed', '', '', '2025-04-10 20:23:39', '2025-04-10 14:23:39', '', 6, 'https://czc.samu.bt/?page_id=18', 0, 'page', '', 0),
(19, 1, '2025-02-25 06:49:38', '2025-02-25 06:49:38', '', 'Academic', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-02-25 06:49:38', '2025-02-25 06:49:38', '', 18, 'https://czc.samu.bt/?p=19', 0, 'revision', '', 0),
(20, 1, '2025-02-25 06:49:51', '2025-02-25 06:49:51', '', 'Automobile', '', 'publish', 'closed', 'closed', '', 'automobile', '', '', '2025-02-25 06:49:51', '2025-02-25 06:49:51', '', 6, 'https://czc.samu.bt/?page_id=20', 0, 'page', '', 0),
(21, 1, '2025-02-25 06:49:51', '2025-02-25 06:49:51', '', 'Automobile', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2025-02-25 06:49:51', '2025-02-25 06:49:51', '', 20, 'https://czc.samu.bt/?p=21', 0, 'revision', '', 0),
(22, 1, '2025-02-25 06:50:06', '2025-02-25 06:50:06', '', 'Earthmoving', '', 'trash', 'closed', 'closed', '', 'earthmoving__trashed', '', '', '2025-04-10 20:23:41', '2025-04-10 14:23:41', '', 6, 'https://czc.samu.bt/?page_id=22', 0, 'page', '', 0),
(23, 1, '2025-02-25 06:50:06', '2025-02-25 06:50:06', '', 'Earthmoving', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2025-02-25 06:50:06', '2025-02-25 06:50:06', '', 22, 'https://czc.samu.bt/?p=23', 0, 'revision', '', 0),
(24, 1, '2025-02-25 06:50:19', '2025-02-25 06:50:19', '', 'Driving', '', 'trash', 'closed', 'closed', '', 'driving__trashed', '', '', '2025-04-10 20:23:41', '2025-04-10 14:23:41', '', 6, 'https://czc.samu.bt/?page_id=24', 0, 'page', '', 0),
(25, 1, '2025-02-25 06:50:19', '2025-02-25 06:50:19', '', 'Driving', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2025-02-25 06:50:19', '2025-02-25 06:50:19', '', 24, 'https://czc.samu.bt/?p=25', 0, 'revision', '', 0),
(26, 1, '2025-02-25 10:04:47', '2025-02-25 10:04:47', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2025-04-10 22:37:55', '2025-04-10 16:37:55', '', 0, 'https://czc.samu.bt/?page_id=26', 0, 'page', '', 0),
(27, 1, '2025-02-25 10:04:47', '2025-02-25 10:04:47', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-02-25 10:04:47', '2025-02-25 10:04:47', '', 26, 'https://czc.samu.bt/?p=27', 0, 'revision', '', 0),
(28, 1, '2025-02-25 10:05:35', '2025-02-25 10:05:35', '<!-- wp:paragraph -->\n<p>The National Institute for Zorig Chusum is located at Tashi Gephelling, Kawa Jangsa in Thimphu. It is the premier Institute established to preserve and promote traditional arts and crafts of Bhutan in 1971. It started as a Painting school with 30 students and two Instructors under the Ministry of Development. The course duration was indefinite and students left the school when they felt it was time for them to leave. Most students were usually asked, “Don’t you think you learned enough to leave now?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>The students were paid Nu 120/- as stipend then. In contrast to what the name of the school suggests, students were taught only “Shing Tshen gi Rimo” (drawing of House Painting) and were sent out to learn how to paint by actually involving in the real work of painting. It was much later that the measurement of statues (“Ku Thig”) was introduced. In 1986, the training duration was decided to be 11 years with entry qualification of class VI passed. A few years later, the duration was further reduced to 8 years. A year later, in 1985 the institute was transferred to the Ministry of Finance, then to the Ministry of Cultural Affairs.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>In 1999 when the National Technical Training Authority (NTTA) took over the charge of overall administration of VTIs, two IZCs were also subsumed under the same umbrella of NTTA, which later became full flagged Ministry of Labor and Human Resources in 2003. It was in 1999 the training duration was further reduced to 6 years, but with entry qualification requirement of class X passed. 2017 saw a big change with the appointment of the new leadership from non-technical background. The institute then started working in line with BVQF and got all courses accredited by Department of Occupational Standard, thereby reducing the training duration significantly to anywhere between 1 to 3 years to get a National Certification III.</p>\n<!-- /wp:paragraph -->', 'Brief History', '', 'publish', 'closed', 'closed', '', 'brief-history', '', '', '2025-04-16 19:19:08', '2025-04-16 13:19:08', '', 26, 'https://czc.samu.bt/?page_id=28', 0, 'page', '', 0),
(29, 1, '2025-02-25 10:05:35', '2025-02-25 10:05:35', '', 'Brief History', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-02-25 10:05:35', '2025-02-25 10:05:35', '', 28, 'https://czc.samu.bt/?p=29', 0, 'revision', '', 0),
(30, 1, '2025-02-25 10:05:50', '2025-02-25 10:05:50', '<!-- wp:paragraph -->\n<p><strong>Vision</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a premier training institute that nurtures exemplary craftsmanship in Zorig Chusum (13 Arts and Crafts)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Mission</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Institute shall strive to preserve and promote traditional arts and crafts through quality training, research and by reviving the dying traditional arts and crafts of Bhutan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mission &amp; Vission', '', 'publish', 'closed', 'closed', '', 'mission-vission', '', '', '2025-04-16 19:22:01', '2025-04-16 13:22:01', '', 26, 'https://czc.samu.bt/?page_id=30', 0, 'page', '', 0),
(31, 1, '2025-02-25 10:05:50', '2025-02-25 10:05:50', '', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2025-02-25 10:05:50', '2025-02-25 10:05:50', '', 30, 'https://czc.samu.bt/?p=31', 0, 'revision', '', 0),
(32, 1, '2025-02-25 10:06:09', '2025-02-25 10:06:09', '<!-- wp:list {\"ordered\":true} -->\n<ol class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Commitment to quality</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to lifelong learning</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to enterprise</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to dignity of labor</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to integrity</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Core Values', '', 'publish', 'closed', 'closed', '', 'core-values', '', '', '2025-04-16 19:19:34', '2025-04-16 13:19:34', '', 26, 'https://czc.samu.bt/?page_id=32', 0, 'page', '', 0),
(33, 1, '2025-02-25 10:06:09', '2025-02-25 10:06:09', '', 'Core Values', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-02-25 10:06:09', '2025-02-25 10:06:09', '', 32, 'https://czc.samu.bt/?p=33', 0, 'revision', '', 0),
(34, 1, '2025-02-25 10:06:26', '2025-02-25 10:06:26', '', 'Faculty Profile', '', 'publish', 'closed', 'closed', '', 'faculty-profile', '', '', '2025-04-09 21:21:57', '2025-04-09 15:21:57', '', 26, 'https://czc.samu.bt/?page_id=34', 0, 'page', '', 0),
(35, 1, '2025-02-25 10:06:26', '2025-02-25 10:06:26', '', 'Faculty Profile', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2025-02-25 10:06:26', '2025-02-25 10:06:26', '', 34, 'https://czc.samu.bt/?p=35', 0, 'revision', '', 0),
(36, 1, '2025-02-25 10:54:55', '2025-02-25 10:54:55', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"67\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Page Icon', 'page-icon', 'publish', 'closed', 'closed', '', 'group_67bda163b461b', '', '', '2025-04-10 22:44:52', '2025-04-10 16:44:52', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(37, 1, '2025-02-25 10:54:55', '2025-02-25 10:54:55', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_67bda1643aa4d', '', '', '2025-02-25 10:54:55', '2025-02-25 10:54:55', '', 36, 'https://czc.samu.bt/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 1, '2025-02-25 10:56:30', '2025-02-25 10:56:30', '', '0_27_ARCHIVES', '', 'inherit', 'open', 'closed', '', '0_27_archives', '', '', '2025-02-25 10:56:30', '2025-02-25 10:56:30', '', 28, 'https://czc.samu.bt/wp-content/uploads/2025/02/0_27_ARCHIVES.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2025-02-25 10:56:35', '2025-02-25 10:56:35', '', 'Brief History', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-02-25 10:56:35', '2025-02-25 10:56:35', '', 28, 'https://czc.samu.bt/?p=39', 0, 'revision', '', 0),
(41, 1, '2025-02-25 10:56:45', '2025-02-25 10:56:45', '', '0_27_ARCHIVES', '', 'inherit', 'open', 'closed', '', '0_27_archives-2', '', '', '2025-02-25 10:56:45', '2025-02-25 10:56:45', '', 28, 'https://czc.samu.bt/wp-content/uploads/2025/02/0_27_ARCHIVES.svg', 0, 'attachment', 'image/svg+xml', 0),
(42, 1, '2025-02-25 10:56:49', '2025-02-25 10:56:49', '', 'Brief History', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-02-25 10:56:49', '2025-02-25 10:56:49', '', 28, 'https://czc.samu.bt/?p=42', 0, 'revision', '', 0),
(43, 1, '2025-02-25 11:03:02', '2025-02-25 11:03:02', '', 'Brief History', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-02-25 11:03:02', '2025-02-25 11:03:02', '', 28, 'https://czc.samu.bt/?p=43', 0, 'revision', '', 0),
(44, 1, '2025-02-25 11:15:12', '2025-02-25 11:15:12', '', 'Brief History', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-02-25 11:15:12', '2025-02-25 11:15:12', '', 28, 'https://czc.samu.bt/?p=44', 0, 'revision', '', 0),
(45, 1, '2025-02-25 11:36:15', '2025-02-25 11:36:15', '', 'Core_values_white', '', 'inherit', 'open', 'closed', '', 'core_values_white', '', '', '2025-02-25 11:36:15', '2025-02-25 11:36:15', '', 32, 'https://czc.samu.bt/wp-content/uploads/2025/02/Core_values_white.svg', 0, 'attachment', 'image/svg+xml', 0),
(46, 1, '2025-02-25 11:36:18', '2025-02-25 11:36:18', '', 'Core Values', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-02-25 11:36:18', '2025-02-25 11:36:18', '', 32, 'https://czc.samu.bt/?p=46', 0, 'revision', '', 0),
(48, 1, '2025-02-25 11:38:05', '2025-02-25 11:38:05', '', 'Faculty Profile', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2025-02-25 11:38:05', '2025-02-25 11:38:05', '', 34, 'https://czc.samu.bt/?p=48', 0, 'revision', '', 0),
(49, 1, '2025-02-25 11:38:41', '2025-02-25 11:38:41', '', '0_13_ORGANOGRAM', '', 'inherit', 'open', 'closed', '', '0_13_organogram-2', '', '', '2025-02-25 11:38:41', '2025-02-25 11:38:41', '', 34, 'https://czc.samu.bt/wp-content/uploads/2025/02/0_13_ORGANOGRAM-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(50, 1, '2025-02-25 11:38:49', '2025-02-25 11:38:49', '', 'Faculty Profile', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2025-02-25 11:38:49', '2025-02-25 11:38:49', '', 34, 'https://czc.samu.bt/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-02-25 11:40:54', '2025-02-25 11:40:54', '', '0_Creativity', '', 'inherit', 'open', 'closed', '', '0_creativity', '', '', '2025-02-25 11:40:54', '2025-02-25 11:40:54', '', 30, 'https://czc.samu.bt/wp-content/uploads/2025/02/0_Creativity.svg', 0, 'attachment', 'image/svg+xml', 0),
(52, 1, '2025-02-25 11:40:57', '2025-02-25 11:40:57', '', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2025-02-25 11:40:57', '2025-02-25 11:40:57', '', 30, 'https://czc.samu.bt/?p=52', 0, 'revision', '', 0),
(53, 1, '2025-02-25 11:41:33', '2025-02-25 11:41:33', '', '0_TRANSPARENCY', '', 'inherit', 'open', 'closed', '', '0_transparency', '', '', '2025-02-25 11:41:33', '2025-02-25 11:41:33', '', 30, 'https://czc.samu.bt/wp-content/uploads/2025/02/0_TRANSPARENCY.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2025-02-25 11:41:37', '2025-02-25 11:41:37', '', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2025-02-25 11:41:37', '2025-02-25 11:41:37', '', 30, 'https://czc.samu.bt/?p=54', 0, 'revision', '', 0),
(55, 1, '2025-02-25 11:41:57', '2025-02-25 11:41:57', '', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2025-02-25 11:41:57', '2025-02-25 11:41:57', '', 30, 'https://czc.samu.bt/?p=55', 0, 'revision', '', 0),
(56, 1, '2025-02-25 11:56:06', '2025-02-25 11:56:06', '', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2025-02-25 11:56:06', '2025-02-25 11:56:06', '', 30, 'https://czc.samu.bt/?p=56', 0, 'revision', '', 0),
(57, 1, '2025-02-25 19:52:55', '2025-02-25 19:52:55', '', '0_03_CHILDRENS_POLICY', '', 'inherit', 'open', 'closed', '', '0_03_childrens_policy', '', '', '2025-02-25 19:52:55', '2025-02-25 19:52:55', '', 18, 'https://czc.samu.bt/wp-content/uploads/2025/02/0_03_CHILDRENS_POLICY.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2025-02-25 19:52:59', '2025-02-25 19:52:59', '', 'Academic', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-02-25 19:52:59', '2025-02-25 19:52:59', '', 18, 'https://czc.samu.bt/?p=58', 0, 'revision', '', 0),
(62, 1, '2025-03-12 14:02:07', '2025-03-12 14:02:07', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-03-12 14:02:07', '2025-03-12 14:02:07', '', 1, 'https://czc.samu.bt/?p=62', 0, 'revision', '', 0),
(63, 1, '2024-03-12 14:12:00', '2024-03-12 14:12:00', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'publish', 'open', 'open', '', 'his-royal-highness-the-gyalsey-jigme-namgyel-wangchuck-the-crown-prince-of-bhutan-happy-birthday', '', '', '2025-04-09 21:06:45', '2025-04-09 15:06:45', '', 0, 'https://czc.samu.bt/?p=63', 0, 'post', '', 0),
(64, 1, '2025-03-12 14:12:49', '2025-03-12 14:12:49', '', 'Bhutan International Course', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-12 14:12:49', '2025-03-12 14:12:49', '', 63, 'https://czc.samu.bt/?p=64', 0, 'revision', '', 0),
(65, 1, '2025-03-12 20:53:12', '2025-03-12 20:53:12', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2025-03-27 21:16:24', '2025-03-27 15:16:24', '', 0, 'https://czc.samu.bt/?page_id=65', 0, 'page', '', 0),
(66, 1, '2025-03-12 20:53:12', '2025-03-12 20:53:12', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2025-03-12 20:53:12', '2025-03-12 20:53:12', '', 65, 'https://czc.samu.bt/?p=66', 0, 'revision', '', 0),
(67, 1, '2025-03-12 21:00:21', '2025-03-12 21:00:21', '', 'Courses', '', 'publish', 'closed', 'closed', '', 'courses', '', '', '2025-04-09 20:35:11', '2025-04-09 14:35:11', '', 0, 'https://czc.samu.bt/?page_id=67', 0, 'page', '', 0),
(68, 1, '2025-03-12 21:00:21', '2025-03-12 21:00:21', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2025-03-12 21:00:21', '2025-03-12 21:00:21', '', 67, 'https://czc.samu.bt/?p=68', 0, 'revision', '', 0),
(69, 1, '2025-03-12 21:12:02', '2025-03-12 21:12:02', '', 'Auto Mechanic', '', 'trash', 'closed', 'closed', '', 'auto-mechanic__trashed', '', '', '2025-04-10 20:23:39', '2025-04-10 14:23:39', '', 67, 'https://czc.samu.bt/?page_id=69', 0, 'page', '', 0),
(70, 1, '2025-03-12 21:12:02', '2025-03-12 21:12:02', '', 'Auto Mechanic', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2025-03-12 21:12:02', '2025-03-12 21:12:02', '', 69, 'https://czc.samu.bt/?p=70', 0, 'revision', '', 0),
(71, 1, '2025-03-12 21:20:21', '2025-03-12 21:20:21', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2025-03-12 21:20:21', '2025-03-12 21:20:21', '', 0, 'https://czc.samu.bt/?page_id=71', 0, 'page', '', 0),
(72, 1, '2025-03-12 21:20:21', '2025-03-12 21:20:21', '', 'Events', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2025-03-12 21:20:21', '2025-03-12 21:20:21', '', 71, 'https://czc.samu.bt/?p=72', 0, 'revision', '', 0),
(73, 1, '2025-03-12 21:25:35', '2025-03-12 21:25:35', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'trash', 'closed', 'closed', '', 'digital-marketing-at-samu__trashed', '', '', '2025-04-10 20:23:39', '2025-04-10 14:23:39', '', 69, 'https://czc.samu.bt/?page_id=73', 0, 'page', '', 0),
(74, 1, '2025-03-12 21:25:35', '2025-03-12 21:25:35', '', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-12 21:25:35', '2025-03-12 21:25:35', '', 73, 'https://czc.samu.bt/?p=74', 0, 'revision', '', 0),
(76, 1, '2025-03-24 09:39:04', '2025-03-24 09:39:04', '', 'Starts Your Career With TTI', '', 'publish', 'open', 'open', '', 'starts-your-career-with-tti', '', '', '2025-03-25 03:15:37', '2025-03-24 21:15:37', '', 0, 'https://czc.samu.bt/?p=76', 0, 'post', '', 0),
(77, 1, '2025-03-24 09:38:52', '2025-03-24 09:38:52', '', 'Starts Your Career With TTI Education', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2025-03-24 09:38:52', '2025-03-24 09:38:52', '', 76, 'https://czc.samu.bt/?p=77', 0, 'revision', '', 0),
(78, 1, '2025-03-24 09:40:50', '2025-03-24 09:40:50', '', 'Starts Your Career With TTI', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2025-03-24 09:40:50', '2025-03-24 09:40:50', '', 76, 'https://czc.samu.bt/?p=78', 0, 'revision', '', 0),
(79, 1, '2025-03-24 11:12:31', '2025-03-24 11:12:31', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"category:spotlight\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'SpotLight', 'spotlight', 'publish', 'closed', 'closed', '', 'group_67e13df288871', '', '', '2025-03-24 20:17:53', '2025-03-24 20:17:53', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2025-03-24 11:12:31', '2025-03-24 11:12:31', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"Y-m-d\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:0;}', 'Start Date', 'start_date', 'publish', 'closed', 'closed', '', 'field_67e13df2c6e1d', '', '', '2025-03-24 20:17:52', '2025-03-24 20:17:52', '', 79, 'https://czc.samu.bt/?post_type=acf-field&#038;p=80', 0, 'acf-field', '', 0),
(81, 1, '2025-03-24 11:12:31', '2025-03-24 11:12:31', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"Y-m-d\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:0;}', 'End Date', 'end_date', 'publish', 'closed', 'closed', '', 'field_67e13e0cc6e1e', '', '', '2025-03-24 20:17:53', '2025-03-24 20:17:53', '', 79, 'https://czc.samu.bt/?post_type=acf-field&#038;p=81', 1, 'acf-field', '', 0),
(82, 1, '2025-03-24 11:12:56', '2025-03-24 11:12:56', '', 'Bhutan International Course', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:12:56', '2025-03-24 11:12:56', '', 63, 'https://czc.samu.bt/?p=82', 0, 'revision', '', 0),
(84, 1, '2025-03-24 11:14:20', '2025-03-24 11:14:20', '', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:14:20', '2025-03-24 11:14:20', '', 63, 'https://czc.samu.bt/?p=84', 0, 'revision', '', 0),
(85, 1, '2025-03-24 11:15:00', '2025-03-24 11:15:00', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:15:00', '2025-03-24 11:15:00', '', 63, 'https://czc.samu.bt/?p=85', 0, 'revision', '', 0),
(86, 1, '2025-03-24 11:15:16', '2025-03-24 11:15:16', '', 'wallpaperflare.com_wallpaper', '', 'inherit', 'open', 'closed', '', 'wallpaperflare-com_wallpaper', '', '', '2025-03-24 11:15:16', '2025-03-24 11:15:16', '', 63, 'https://czc.samu.bt/wp-content/uploads/2024/03/wallpaperflare.com_wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2025-03-24 11:16:13', '2025-03-24 11:16:13', '', 'WhatsApp Image 2025-03-19 at 9.58.58 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2025-03-19-at-9-58-58-pm', '', '', '2025-03-24 11:16:13', '2025-03-24 11:16:13', '', 63, 'https://czc.samu.bt/wp-content/uploads/2024/03/WhatsApp-Image-2025-03-19-at-9.58.58-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2025-03-24 11:17:52', '2025-03-24 11:17:52', '', 'Screenshot 2025-03-22 202337', '', 'inherit', 'open', 'closed', '', 'screenshot-2025-03-22-202337', '', '', '2025-03-24 11:17:52', '2025-03-24 11:17:52', '', 63, 'https://czc.samu.bt/wp-content/uploads/2024/03/Screenshot-2025-03-22-202337.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2025-03-24 11:37:59', '2025-03-24 11:37:59', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:37:59', '2025-03-24 11:37:59', '', 63, 'https://czc.samu.bt/?p=89', 0, 'revision', '', 0),
(90, 1, '2025-03-24 11:39:28', '2025-03-24 11:39:28', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:39:28', '2025-03-24 11:39:28', '', 63, 'https://czc.samu.bt/?p=90', 0, 'revision', '', 0),
(91, 1, '2025-03-24 11:45:15', '2025-03-24 11:45:15', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:45:15', '2025-03-24 11:45:15', '', 63, 'https://czc.samu.bt/?p=91', 0, 'revision', '', 0),
(92, 1, '2025-03-24 11:57:48', '2025-03-24 11:57:48', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 11:57:48', '2025-03-24 11:57:48', '', 63, 'https://czc.samu.bt/?p=92', 0, 'revision', '', 0),
(93, 1, '2025-03-24 11:58:17', '2025-03-24 11:58:17', '', 'IMG-20241216-WA0054', '', 'inherit', 'open', 'closed', '', 'img-20241216-wa0054', '', '', '2025-03-24 11:58:17', '2025-03-24 11:58:17', '', 63, 'https://czc.samu.bt/wp-content/uploads/2024/03/IMG-20241216-WA0054.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2025-03-24 11:59:14', '2025-03-24 11:59:14', '', 'Gyalsey-1', '', 'inherit', 'open', 'closed', '', 'gyalsey-1', '', '', '2025-03-24 11:59:14', '2025-03-24 11:59:14', '', 63, 'https://czc.samu.bt/wp-content/uploads/2024/03/Gyalsey-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2025-03-24 12:18:23', '2025-03-24 12:18:23', '', 'wallpaperflare.com_wallpaper (1)', '', 'inherit', 'open', 'closed', '', 'wallpaperflare-com_wallpaper-1', '', '', '2025-03-24 12:18:23', '2025-03-24 12:18:23', '', 76, 'https://czc.samu.bt/wp-content/uploads/2025/03/wallpaperflare.com_wallpaper-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2025-03-24 14:07:08', '2025-03-24 14:07:08', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 14:07:08', '2025-03-24 14:07:08', '', 63, 'https://czc.samu.bt/?p=96', 0, 'revision', '', 0),
(97, 1, '2025-03-24 14:08:35', '2025-03-24 14:08:35', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 14:08:35', '2025-03-24 14:08:35', '', 63, 'https://czc.samu.bt/?p=97', 0, 'revision', '', 0),
(98, 1, '2025-03-24 15:17:37', '2025-03-24 15:17:37', '', 'WhatsApp Image 2025-03-19 at 9.58.58 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2025-03-19-at-9-58-58-pm-2', '', '', '2025-03-24 15:17:37', '2025-03-24 15:17:37', '', 1, 'https://czc.samu.bt/wp-content/uploads/2025/02/WhatsApp-Image-2025-03-19-at-9.58.58-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2025-03-27 14:35:37', '2025-03-27 08:35:37', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"page-event-details.php\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category:events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Events', 'events', 'publish', 'closed', 'closed', '', 'group_67e50d8139678', '', '', '2025-03-28 02:06:36', '2025-03-27 20:06:36', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2025-03-24 18:59:20', '2025-03-24 18:59:20', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2025-03-24 18:59:21', '2025-03-24 18:59:21', '', 0, 'https://czc.samu.bt/?page_id=100', 0, 'page', '', 0),
(101, 1, '2025-03-24 18:59:20', '2025-03-24 18:59:20', '', 'Partners', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2025-03-24 18:59:20', '2025-03-24 18:59:20', '', 100, 'https://czc.samu.bt/?p=101', 0, 'revision', '', 0),
(102, 1, '2025-03-24 19:02:13', '2025-03-24 19:02:13', '', 'RUB', '', 'publish', 'closed', 'closed', '', 'rub', '', '', '2025-03-24 19:03:11', '2025-03-24 19:03:11', '', 100, 'https://czc.samu.bt/?page_id=102', 0, 'page', '', 0),
(103, 1, '2025-03-24 19:02:13', '2025-03-24 19:02:13', '', 'RUB', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-03-24 19:02:13', '2025-03-24 19:02:13', '', 102, 'https://czc.samu.bt/?p=103', 0, 'revision', '', 0),
(104, 1, '2025-03-24 19:03:07', '2025-03-24 19:03:07', '', 'logo@2x', '', 'inherit', 'open', 'closed', '', 'logo2x', '', '', '2025-03-24 19:03:07', '2025-03-24 19:03:07', '', 102, 'https://czc.samu.bt/wp-content/uploads/2025/03/logo@2x.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2025-03-24 19:42:19', '2025-03-24 19:42:19', '', 'Vacancy at TTI-Thimphu for IT Instructor', '', 'publish', 'open', 'open', '', 'vacancy-at-tti-thimphu', '', '', '2025-03-24 19:46:11', '2025-03-24 19:46:11', '', 0, 'https://czc.samu.bt/?p=105', 0, 'post', '', 0),
(106, 1, '2025-03-24 19:42:19', '2025-03-24 19:42:19', '', 'Vacancy at TTI-Thimphu', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2025-03-24 19:42:19', '2025-03-24 19:42:19', '', 105, 'https://czc.samu.bt/?p=106', 0, 'revision', '', 0),
(107, 1, '2025-03-24 19:46:11', '2025-03-24 19:46:11', '', 'Vacancy at TTI-Thimphu for IT Instructor', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2025-03-24 19:46:11', '2025-03-24 19:46:11', '', 105, 'https://czc.samu.bt/?p=107', 0, 'revision', '', 0),
(108, 1, '2025-03-24 20:02:10', '2025-03-24 20:02:10', '', 'Vacany for Cook', '', 'publish', 'open', 'open', '', 'vacany-for-cook', '', '', '2025-03-24 20:04:45', '2025-03-24 20:04:45', '', 0, 'https://czc.samu.bt/?p=108', 0, 'post', '', 0),
(109, 1, '2025-03-24 20:02:10', '2025-03-24 20:02:10', '', 'Vacany for Cook', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2025-03-24 20:02:10', '2025-03-24 20:02:10', '', 108, 'https://czc.samu.bt/?p=109', 0, 'revision', '', 0),
(110, 1, '2025-03-24 20:05:33', '2025-03-24 20:05:33', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:05:33', '2025-03-24 20:05:33', '', 63, 'https://czc.samu.bt/?p=110', 0, 'revision', '', 0),
(111, 1, '2025-03-24 20:07:57', '2025-03-24 20:07:57', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:07:57', '2025-03-24 20:07:57', '', 63, 'https://czc.samu.bt/?p=111', 0, 'revision', '', 0),
(112, 1, '2025-03-24 20:08:13', '2025-03-24 20:08:13', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:08:13', '2025-03-24 20:08:13', '', 63, 'https://czc.samu.bt/?p=112', 0, 'revision', '', 0),
(113, 1, '2025-03-24 20:10:10', '2025-03-24 20:10:10', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:10:10', '2025-03-24 20:10:10', '', 63, 'https://czc.samu.bt/?p=113', 0, 'revision', '', 0),
(114, 1, '2025-03-24 20:11:59', '2025-03-24 20:11:59', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:11:59', '2025-03-24 20:11:59', '', 63, 'https://czc.samu.bt/?p=114', 0, 'revision', '', 0),
(115, 1, '2025-03-24 20:22:38', '2025-03-24 20:22:38', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:22:38', '2025-03-24 20:22:38', '', 63, 'https://czc.samu.bt/?p=115', 0, 'revision', '', 0),
(116, 1, '2025-03-24 20:23:28', '2025-03-24 20:23:28', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-24 20:23:28', '2025-03-24 20:23:28', '', 63, 'https://czc.samu.bt/?p=116', 0, 'revision', '', 0),
(117, 1, '2025-03-25 02:24:17', '2025-03-24 20:24:17', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-25 02:24:17', '2025-03-24 20:24:17', '', 63, 'https://czc.samu.bt/?p=117', 0, 'revision', '', 0),
(118, 1, '2025-03-25 02:24:28', '2025-03-24 20:24:28', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-25 02:24:28', '2025-03-24 20:24:28', '', 63, 'https://czc.samu.bt/?p=118', 0, 'revision', '', 0),
(119, 1, '2025-03-25 02:25:52', '2025-03-24 20:25:52', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-25 02:25:52', '2025-03-24 20:25:52', '', 63, 'https://czc.samu.bt/?p=119', 0, 'revision', '', 0),
(120, 1, '2025-03-25 02:26:10', '2025-03-24 20:26:10', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-25 02:26:10', '2025-03-24 20:26:10', '', 63, 'https://czc.samu.bt/?p=120', 0, 'revision', '', 0);
INSERT INTO `tti_bt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2025-03-25 03:01:24', '2025-03-24 21:01:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://czc.samu.bt/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-03-25 03:01:24', '2025-03-24 21:01:24', '', 2, 'https://czc.samu.bt/?p=121', 0, 'revision', '', 0),
(122, 1, '2025-03-25 03:12:46', '2025-03-24 21:12:46', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-03-25 03:12:46', '2025-03-24 21:12:46', '', 63, 'https://czc.samu.bt/?p=122', 0, 'revision', '', 0),
(123, 1, '2025-03-25 03:15:33', '2025-03-24 21:15:33', '', 'default_pic', '', 'inherit', 'open', 'closed', '', 'default_pic', '', '', '2025-03-25 03:15:33', '2025-03-24 21:15:33', '', 76, 'https://czc.samu.bt/wp-content/uploads/2025/03/default_pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2025-03-27 13:17:56', '2025-03-27 07:17:56', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"page-course-child.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Course Child', 'course-child', 'publish', 'closed', 'closed', '', 'group_67e4fb9021ace', '', '', '2025-03-27 13:17:56', '2025-03-27 07:17:56', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2025-03-27 13:17:56', '2025-03-27 07:17:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_67e4fb909a722', '', '', '2025-03-27 13:17:56', '2025-03-27 07:17:56', '', 125, 'https://czc.samu.bt/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2025-03-27 13:47:56', '2025-03-27 07:47:56', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"page-course-detail.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Course Details', 'course-details', 'publish', 'closed', 'closed', '', 'group_67e4fc3e83dd0', '', '', '2025-03-31 21:53:29', '2025-03-31 15:53:29', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=127', 0, 'acf-field-group', '', 0),
(128, 1, '2025-03-27 13:47:56', '2025-03-27 07:47:56', 'a:15:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"nc2\";s:4:\"NC 2\";s:3:\"nc3\";s:4:\"NC 3\";s:7:\"diploma\";s:7:\"Diploma\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:1;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'BQFC Level', 'bqfc_level', 'publish', 'closed', 'closed', '', 'field_67e4fc3ed1601', '', '', '2025-03-31 21:53:29', '2025-03-31 15:53:29', '', 127, 'https://czc.samu.bt/?post_type=acf-field&#038;p=128', 2, 'acf-field', '', 0),
(129, 1, '2025-03-27 13:47:56', '2025-03-27 07:47:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Durations', 'durations', 'publish', 'closed', 'closed', '', 'field_67e4fc4ed1602', '', '', '2025-03-27 16:26:09', '2025-03-27 10:26:09', '', 127, 'https://czc.samu.bt/?post_type=acf-field&#038;p=129', 3, 'acf-field', '', 0),
(132, 1, '2025-03-27 13:52:01', '2025-03-27 07:52:01', '', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 13:52:01', '2025-03-27 07:52:01', '', 73, 'https://czc.samu.bt/?p=132', 0, 'revision', '', 0),
(133, 1, '2025-03-27 14:35:37', '2025-03-27 08:35:37', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:0;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_67e50d819eb21', '', '', '2025-03-27 14:35:37', '2025-03-27 08:35:37', '', 99, 'https://czc.samu.bt/?post_type=acf-field&p=133', 0, 'acf-field', '', 0),
(134, 1, '2025-03-27 14:35:37', '2025-03-27 08:35:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Venue', 'venue', 'publish', 'closed', 'closed', '', 'field_67e50d939eb22', '', '', '2025-03-27 14:35:37', '2025-03-27 08:35:37', '', 99, 'https://czc.samu.bt/?post_type=acf-field&p=134', 1, 'acf-field', '', 0),
(135, 1, '2025-03-27 14:35:37', '2025-03-27 08:35:37', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";s:17:\"allow_in_bindings\";i:0;}', 'Start Time', 'start_time', 'publish', 'closed', 'closed', '', 'field_67e50dbc9eb23', '', '', '2025-03-27 14:35:37', '2025-03-27 08:35:37', '', 99, 'https://czc.samu.bt/?post_type=acf-field&p=135', 2, 'acf-field', '', 0),
(136, 1, '2025-03-27 14:35:37', '2025-03-27 08:35:37', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";s:17:\"allow_in_bindings\";i:0;}', 'End Time', 'end_time', 'publish', 'closed', 'closed', '', 'field_67e50dcc9eb24', '', '', '2025-03-27 14:35:37', '2025-03-27 08:35:37', '', 99, 'https://czc.samu.bt/?post_type=acf-field&p=136', 3, 'acf-field', '', 0),
(137, 1, '2025-03-27 14:37:54', '2025-03-27 08:37:54', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Organizer', 'organizer', 'publish', 'closed', 'closed', '', 'field_67e50e54f898f', '', '', '2025-03-27 19:22:59', '2025-03-27 13:22:59', '', 99, 'https://czc.samu.bt/?post_type=acf-field&#038;p=137', 5, 'acf-field', '', 0),
(138, 1, '2025-03-27 14:50:56', '2025-03-27 08:50:56', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 14:50:56', '2025-03-27 08:50:56', '', 73, 'https://czc.samu.bt/?p=138', 0, 'revision', '', 0),
(139, 1, '2025-03-27 14:51:39', '2025-03-27 08:51:39', '', 'f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled', '', 'inherit', 'open', 'closed', '', 'f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled', '', '', '2025-03-27 14:51:39', '2025-03-27 08:51:39', '', 73, 'https://czc.samu.bt/wp-content/uploads/2025/03/f9cc1d_702445d1ee854b3c9c4b209122c1c381_mv2-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2025-03-27 14:56:12', '2025-03-27 08:56:12', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Training Outcome', 'training_outcome', 'publish', 'closed', 'closed', '', 'field_67e51266480fb', '', '', '2025-03-27 16:26:09', '2025-03-27 10:26:09', '', 127, 'https://czc.samu.bt/?post_type=acf-field&#038;p=141', 6, 'acf-field', '', 0),
(142, 1, '2025-03-27 14:56:35', '2025-03-27 08:56:35', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'OutCome', 'outcome', 'publish', 'closed', 'closed', '', 'field_67e512b6a52e0', '', '', '2025-03-27 14:56:35', '2025-03-27 08:56:35', '', 141, 'https://czc.samu.bt/?post_type=acf-field&p=142', 0, 'acf-field', '', 0),
(143, 1, '2025-03-27 15:15:06', '2025-03-27 09:15:06', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 15:15:06', '2025-03-27 09:15:06', '', 73, 'https://czc.samu.bt/?p=143', 0, 'revision', '', 0),
(148, 1, '2025-03-27 15:27:19', '2025-03-27 09:27:19', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Entry Requirement', 'entry_requirement', 'publish', 'closed', 'closed', '', 'field_67e519d1e6b2e', '', '', '2025-03-27 16:26:10', '2025-03-27 10:26:10', '', 127, 'https://czc.samu.bt/?post_type=acf-field&#038;p=148', 7, 'acf-field', '', 0),
(149, 1, '2025-03-27 15:27:19', '2025-03-27 09:27:19', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Requirement', 'requirement', 'publish', 'closed', 'closed', '', 'field_67e519d1e6b2f', '', '', '2025-03-27 15:31:11', '2025-03-27 09:31:11', '', 148, 'https://czc.samu.bt/?post_type=acf-field&#038;p=149', 0, 'acf-field', '', 0),
(152, 1, '2025-03-27 15:32:26', '2025-03-27 09:32:26', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 15:32:26', '2025-03-27 09:32:26', '', 73, 'https://czc.samu.bt/?p=152', 0, 'revision', '', 0),
(155, 1, '2025-03-27 15:37:25', '2025-03-27 09:37:25', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 15:37:25', '2025-03-27 09:37:25', '', 73, 'https://czc.samu.bt/?p=155', 0, 'revision', '', 0),
(156, 1, '2025-03-27 15:41:54', '2025-03-27 09:41:54', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Course Duration (Hours)', 'course_duration_hours', 'publish', 'closed', 'closed', '', 'field_67e51d398869a', '', '', '2025-03-27 16:26:09', '2025-03-27 10:26:09', '', 127, 'https://czc.samu.bt/?post_type=acf-field&#038;p=156', 4, 'acf-field', '', 0),
(157, 1, '2025-03-27 15:41:54', '2025-03-27 09:41:54', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Institute Training', 'institute_training', 'publish', 'closed', 'closed', '', 'field_67e51d518869b', '', '', '2025-03-27 15:41:54', '2025-03-27 09:41:54', '', 156, 'https://czc.samu.bt/?post_type=acf-field&p=157', 0, 'acf-field', '', 0),
(158, 1, '2025-03-27 15:41:54', '2025-03-27 09:41:54', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'OJT', 'ojt', 'publish', 'closed', 'closed', '', 'field_67e51d578869c', '', '', '2025-03-27 15:41:54', '2025-03-27 09:41:54', '', 156, 'https://czc.samu.bt/?post_type=acf-field&p=158', 1, 'acf-field', '', 0),
(159, 1, '2025-03-27 15:44:30', '2025-03-27 09:44:30', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 15:44:30', '2025-03-27 09:44:30', '', 73, 'https://czc.samu.bt/?p=159', 0, 'revision', '', 0),
(160, 1, '2025-03-27 15:50:13', '2025-03-27 09:50:13', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Trainer & Trainee Ratio', 'trainer_&_trainee_ratio', 'publish', 'closed', 'closed', '', 'field_67e51f291122f', '', '', '2025-03-27 16:26:09', '2025-03-27 10:26:09', '', 127, 'https://czc.samu.bt/?post_type=acf-field&#038;p=160', 5, 'acf-field', '', 0),
(161, 1, '2025-03-27 15:50:13', '2025-03-27 09:50:13', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Practical', 'practical', 'publish', 'closed', 'closed', '', 'field_67e51f3d11232', '', '', '2025-03-27 15:50:13', '2025-03-27 09:50:13', '', 160, 'https://czc.samu.bt/?post_type=acf-field&p=161', 0, 'acf-field', '', 0),
(162, 1, '2025-03-27 15:50:13', '2025-03-27 09:50:13', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Theory', 'theory', 'publish', 'closed', 'closed', '', 'field_67e51f4511233', '', '', '2025-03-27 15:50:13', '2025-03-27 09:50:13', '', 160, 'https://czc.samu.bt/?post_type=acf-field&p=162', 1, 'acf-field', '', 0),
(163, 1, '2025-03-27 15:50:38', '2025-03-27 09:50:38', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 15:50:38', '2025-03-27 09:50:38', '', 73, 'https://czc.samu.bt/?p=163', 0, 'revision', '', 0),
(164, 1, '2025-03-27 16:00:56', '2025-03-27 10:00:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'field_67e521cdb50b0', '', '', '2025-03-27 16:00:56', '2025-03-27 10:00:56', '', 127, 'https://czc.samu.bt/?post_type=acf-field&p=164', 0, 'acf-field', '', 0),
(165, 1, '2025-03-27 16:20:04', '2025-03-27 10:20:04', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 16:20:04', '2025-03-27 10:20:04', '', 73, 'https://czc.samu.bt/?p=165', 0, 'revision', '', 0),
(166, 1, '2025-03-27 16:26:09', '2025-03-27 10:26:09', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Course Difficulty', 'course_difficulty', 'publish', 'closed', 'closed', '', 'field_67e527af3ab07', '', '', '2025-03-27 16:26:09', '2025-03-27 10:26:09', '', 127, 'https://czc.samu.bt/?post_type=acf-field&p=166', 1, 'acf-field', '', 0),
(167, 1, '2025-03-27 16:26:28', '2025-03-27 10:26:28', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>At SAMU, our digital marketing efforts are designed to amplify our brand presence, connect with our audience, and deliver impactful results in the ever-evolving online landscape. We leverage a data-driven approach to develop strategies that maximize engagement, boost visibility, and foster long-lasting relationships with our customers. By combining SEO, social media marketing, content creation, and targeted advertising, we ensure that our brand reaches the right audience at the right time. Our goal is to create meaningful digital experiences that align with our organizational vision and drive measurable growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>Through innovative campaigns and a deep understanding of digital platforms, SAMU\'s marketing team ensures that we stay ahead of industry trends. From crafting compelling narratives that resonate with our audience to using advanced analytics for performance optimization, our efforts are focused on achieving tangible results. Whether it\'s building brand awareness, increasing web traffic, or generating leads, SAMU’s digital marketing initiatives prioritize creativity, precision, and adaptability to deliver excellence across all digital channels.</p>\n<!-- /wp:paragraph -->', 'Digital Marketing at SAMU', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2025-03-27 16:26:28', '2025-03-27 10:26:28', '', 73, 'https://czc.samu.bt/?p=167', 0, 'revision', '', 0),
(168, 1, '2025-03-27 16:34:42', '2025-03-27 10:34:42', '<!-- wp:paragraph -->\n<p>This course equips individuals with the knowledge, skills, and attitudes to become competent Auto Mechanics, enabling them to work in an automobile workshop, demonstrate professionalism, safety, and perform basic auto-electrical works.</p>\n<!-- /wp:paragraph -->', 'Automobile mechanic', '', 'trash', 'closed', 'closed', '', 'automobile-mechanic__trashed', '', '', '2025-04-10 20:23:39', '2025-04-10 14:23:39', '', 69, 'https://czc.samu.bt/?page_id=168', 0, 'page', '', 0),
(169, 1, '2025-03-27 16:34:42', '2025-03-27 10:34:42', '<!-- wp:paragraph -->\n<p>This course equips individuals with the knowledge, skills, and attitudes to become competent Auto Mechanics, enabling them to work in an automobile workshop, demonstrate professionalism, safety, and perform basic auto-electrical works.</p>\n<!-- /wp:paragraph -->', 'Automobile mechanic', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2025-03-27 16:34:42', '2025-03-27 10:34:42', '', 168, 'https://czc.samu.bt/?p=169', 0, 'revision', '', 0),
(170, 1, '2025-03-27 16:42:31', '2025-03-27 10:42:31', '', 'Staff Profile', '', 'publish', 'closed', 'closed', '', 'staff-profile', '', '', '2025-03-27 16:42:32', '2025-03-27 10:42:32', '', 0, 'https://czc.samu.bt/?page_id=170', 0, 'page', '', 0),
(171, 1, '2025-03-27 16:42:31', '2025-03-27 10:42:31', '', 'Staff Profile', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2025-03-27 16:42:31', '2025-03-27 10:42:31', '', 170, 'https://czc.samu.bt/?p=171', 0, 'revision', '', 0),
(172, 1, '2025-03-27 16:42:43', '2025-03-27 10:42:43', '', 'Sonam Wangmo', '', 'publish', 'closed', 'closed', '', 'jigme-lepcha', '', '', '2025-03-27 17:10:51', '2025-03-27 11:10:51', '', 181, 'https://czc.samu.bt/?page_id=172', 0, 'page', '', 0),
(173, 1, '2025-03-27 16:42:43', '2025-03-27 10:42:43', '', 'Jigme Lepcha', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2025-03-27 16:42:43', '2025-03-27 10:42:43', '', 172, 'https://czc.samu.bt/?p=173', 0, 'revision', '', 0),
(174, 1, '2025-03-27 16:50:39', '2025-03-27 10:50:39', '', 'Picture1', '', 'inherit', 'open', 'closed', '', 'picture1', '', '', '2025-03-27 16:50:39', '2025-03-27 10:50:39', '', 172, 'https://czc.samu.bt/wp-content/uploads/2025/03/Picture1.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2025-03-27 16:51:49', '2025-03-27 10:51:49', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"170\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Staff Profiles', 'staff-profiles', 'publish', 'closed', 'closed', '', 'group_67e52d87731b7', '', '', '2025-03-27 16:51:49', '2025-03-27 10:51:49', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=175', 0, 'acf-field-group', '', 0),
(177, 1, '2025-03-27 16:51:48', '2025-03-27 10:51:48', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Designation', 'designation', 'publish', 'closed', 'closed', '', 'field_67e52d8715cfa', '', '', '2025-03-27 16:51:48', '2025-03-27 10:51:48', '', 175, 'https://czc.samu.bt/?post_type=acf-field&p=177', 0, 'acf-field', '', 0),
(178, 1, '2025-03-27 16:51:48', '2025-03-27 10:51:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_67e52da215cfb', '', '', '2025-03-27 16:51:48', '2025-03-27 10:51:48', '', 175, 'https://czc.samu.bt/?post_type=acf-field&p=178', 1, 'acf-field', '', 0),
(179, 1, '2025-03-27 16:51:48', '2025-03-27 10:51:48', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Number', 'number', 'publish', 'closed', 'closed', '', 'field_67e52daa15cfc', '', '', '2025-03-27 16:51:48', '2025-03-27 10:51:48', '', 175, 'https://czc.samu.bt/?post_type=acf-field&p=179', 2, 'acf-field', '', 0),
(180, 1, '2025-03-27 16:52:15', '2025-03-27 10:52:15', '', 'Sonam Wangmo', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2025-03-27 16:52:15', '2025-03-27 10:52:15', '', 172, 'https://czc.samu.bt/?p=180', 0, 'revision', '', 0),
(181, 1, '2025-03-27 17:03:15', '2025-03-27 11:03:15', '', 'Principal', '', 'publish', 'closed', 'closed', '', 'principal', '', '', '2025-03-27 17:03:15', '2025-03-27 11:03:15', '', 170, 'https://czc.samu.bt/?page_id=181', 0, 'page', '', 0),
(182, 1, '2025-03-27 17:03:15', '2025-03-27 11:03:15', '', 'Principal', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2025-03-27 17:03:15', '2025-03-27 11:03:15', '', 181, 'https://czc.samu.bt/?p=182', 0, 'revision', '', 0),
(183, 1, '2025-03-27 17:10:39', '2025-03-27 11:10:39', '', 'businessman character avatar isolated', 'businessman character avatar isolated vector illustration design', 'inherit', 'open', 'closed', '', 'businessman-character-avatar-isolated', '', '', '2025-03-27 17:10:39', '2025-03-27 11:10:39', '', 172, 'https://czc.samu.bt/wp-content/uploads/2025/03/6769264_60111.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2025-03-27 17:12:57', '2025-03-27 11:12:57', '', ' Leki Dorji', '', 'publish', 'closed', 'closed', '', 'leki-dorji', '', '', '2025-03-27 17:13:41', '2025-03-27 11:13:41', '', 186, 'https://czc.samu.bt/?page_id=184', 0, 'page', '', 0),
(185, 1, '2025-03-27 17:12:57', '2025-03-27 11:12:57', '', ' Leki Dorji', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2025-03-27 17:12:57', '2025-03-27 11:12:57', '', 184, 'https://czc.samu.bt/?p=185', 0, 'revision', '', 0),
(186, 1, '2025-03-27 17:13:17', '2025-03-27 11:13:17', '', 'Automobiles', '', 'publish', 'closed', 'closed', '', 'automobiles', '', '', '2025-03-27 17:13:17', '2025-03-27 11:13:17', '', 170, 'https://czc.samu.bt/?page_id=186', 0, 'page', '', 0),
(187, 1, '2025-03-27 17:13:17', '2025-03-27 11:13:17', '', 'Automobiles', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2025-03-27 17:13:17', '2025-03-27 11:13:17', '', 186, 'https://czc.samu.bt/?p=187', 0, 'revision', '', 0),
(188, 1, '2025-03-27 18:56:35', '2025-03-27 12:56:35', '', 'Training slot available', '', 'publish', 'closed', 'closed', '', 'training-slot-available', '', '', '2025-03-27 19:25:42', '2025-03-27 13:25:42', '', 71, 'https://czc.samu.bt/?page_id=188', 0, 'page', '', 0),
(189, 1, '2025-03-27 18:56:35', '2025-03-27 12:56:35', '', 'Training slot available', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2025-03-27 18:56:35', '2025-03-27 12:56:35', '', 188, 'https://czc.samu.bt/?p=189', 0, 'revision', '', 0),
(190, 1, '2025-03-27 19:00:51', '2025-03-27 13:00:51', '', 'Training slot available', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2025-03-27 19:00:51', '2025-03-27 13:00:51', '', 188, 'https://czc.samu.bt/?p=190', 0, 'revision', '', 0),
(191, 1, '2025-03-27 19:22:59', '2025-03-27 13:22:59', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Number', 'number', 'publish', 'closed', 'closed', '', 'field_67e55127a6d4e', '', '', '2025-03-27 19:22:59', '2025-03-27 13:22:59', '', 99, 'https://czc.samu.bt/?post_type=acf-field&p=191', 4, 'acf-field', '', 0),
(192, 1, '2025-03-27 19:23:42', '2025-03-27 13:23:42', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_67e5514f3f7ef', '', '', '2025-03-27 20:00:16', '2025-03-27 14:00:16', '', 99, 'https://czc.samu.bt/?post_type=acf-field&#038;p=192', 7, 'acf-field', '', 0),
(193, 1, '2025-03-27 19:24:36', '2025-03-27 13:24:36', '', 'Training slot available', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2025-03-27 19:24:36', '2025-03-27 13:24:36', '', 188, 'https://czc.samu.bt/?p=193', 0, 'revision', '', 0),
(194, 1, '2025-03-27 19:25:40', '2025-03-27 13:25:40', '', 'Training slot available', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2025-03-27 19:25:40', '2025-03-27 13:25:40', '', 188, 'https://czc.samu.bt/?p=194', 0, 'revision', '', 0),
(195, 1, '2025-03-27 19:55:27', '2025-03-27 13:55:27', '', 'Downloads', '', 'publish', 'closed', 'closed', '', 'downloads', '', '', '2025-03-27 19:55:37', '2025-03-27 13:55:37', '', 0, 'https://czc.samu.bt/?page_id=195', 0, 'page', '', 0),
(196, 1, '2025-03-27 19:55:27', '2025-03-27 13:55:27', '', 'Downloads', '', 'inherit', 'closed', 'closed', '', '195-revision-v1', '', '', '2025-03-27 19:55:27', '2025-03-27 13:55:27', '', 195, 'https://czc.samu.bt/?p=196', 0, 'revision', '', 0),
(197, 1, '2025-03-27 19:56:07', '2025-03-27 13:56:07', '', 'Leave Form', '', 'publish', 'closed', 'closed', '', 'leave-form', '', '', '2025-03-27 20:02:07', '2025-03-27 14:02:07', '', 195, 'https://czc.samu.bt/?page_id=197', 0, 'page', '', 0),
(198, 1, '2025-03-27 19:56:07', '2025-03-27 13:56:07', '', 'Leave Form', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2025-03-27 19:56:07', '2025-03-27 13:56:07', '', 197, 'https://czc.samu.bt/?p=198', 0, 'revision', '', 0),
(199, 1, '2025-03-27 20:00:16', '2025-03-27 14:00:16', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_67e5524499154', '', '', '2025-03-27 20:00:16', '2025-03-27 14:00:16', '', 99, 'https://czc.samu.bt/?post_type=acf-field&p=199', 6, 'acf-field', '', 0),
(200, 1, '2025-03-27 20:00:44', '2025-03-27 14:00:44', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"195\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Download Lists', 'download-lists', 'publish', 'closed', 'closed', '', 'group_67e559f515dce', '', '', '2025-03-27 20:03:39', '2025-03-27 14:03:39', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=200', 0, 'acf-field-group', '', 0),
(201, 1, '2025-03-27 20:00:44', '2025-03-27 14:00:44', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}', 'Download Files', 'download_files', 'publish', 'closed', 'closed', '', 'field_67e559f576f44', '', '', '2025-03-27 20:03:39', '2025-03-27 14:03:39', '', 200, 'https://czc.samu.bt/?post_type=acf-field&#038;p=201', 0, 'acf-field', '', 0),
(202, 1, '2025-03-27 20:01:49', '2025-03-27 14:01:49', '', 'Leave Form', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2025-03-27 20:01:49', '2025-03-27 14:01:49', '', 197, 'https://czc.samu.bt/?p=202', 0, 'revision', '', 0),
(203, 1, '2025-03-27 20:06:12', '2025-03-27 14:06:12', '', 'TA/DA Forms', '', 'publish', 'closed', 'closed', '', 'ta-da-forms', '', '', '2025-03-27 20:06:13', '2025-03-27 14:06:13', '', 195, 'https://czc.samu.bt/?page_id=203', 0, 'page', '', 0),
(204, 1, '2025-03-27 20:06:12', '2025-03-27 14:06:12', '', 'TA/DA Forms', '', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2025-03-27 20:06:12', '2025-03-27 14:06:12', '', 203, 'https://czc.samu.bt/?p=204', 0, 'revision', '', 0),
(205, 1, '2025-03-27 20:26:25', '2025-03-27 14:26:25', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.<br>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market.<br>The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-03-27 20:26:25', '2025-03-27 14:26:25', '', 26, 'https://czc.samu.bt/?p=205', 0, 'revision', '', 0),
(206, 1, '2025-03-27 20:30:56', '2025-03-27 14:30:56', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-about-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'About Us', 'about-us', 'publish', 'closed', 'closed', '', 'group_67e560c4b6d8f', '', '', '2025-04-10 22:04:11', '2025-04-10 16:04:11', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=206', 0, 'acf-field-group', '', 0),
(207, 1, '2025-03-27 20:30:55', '2025-03-27 14:30:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Vision', 'vision', 'publish', 'closed', 'closed', '', 'field_67e560d2d2d45', '', '', '2025-03-27 20:30:55', '2025-03-27 14:30:55', '', 206, 'https://czc.samu.bt/?post_type=acf-field&p=207', 0, 'acf-field', '', 0),
(208, 1, '2025-03-27 20:30:55', '2025-03-27 14:30:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Mission', 'mission', 'publish', 'closed', 'closed', '', 'field_67e560c4d2d44', '', '', '2025-03-27 20:30:55', '2025-03-27 14:30:55', '', 206, 'https://czc.samu.bt/?post_type=acf-field&p=208', 1, 'acf-field', '', 0),
(209, 1, '2025-03-27 20:30:55', '2025-03-27 14:30:55', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Objectives', 'objectives', 'publish', 'closed', 'closed', '', 'field_67e560dbd2d46', '', '', '2025-03-27 20:30:55', '2025-03-27 14:30:55', '', 206, 'https://czc.samu.bt/?post_type=acf-field&p=209', 2, 'acf-field', '', 0),
(210, 1, '2025-03-27 20:30:56', '2025-03-27 14:30:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Objectives', 'objectives', 'publish', 'closed', 'closed', '', 'field_67e560f3d2d47', '', '', '2025-03-27 20:30:56', '2025-03-27 14:30:56', '', 209, 'https://czc.samu.bt/?post_type=acf-field&p=210', 0, 'acf-field', '', 0),
(211, 1, '2025-03-27 20:30:56', '2025-03-27 14:30:56', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Core Value', 'core_value', 'publish', 'closed', 'closed', '', 'field_67e560fdd2d48', '', '', '2025-04-10 22:03:45', '2025-04-10 16:03:45', '', 206, 'https://czc.samu.bt/?post_type=acf-field&#038;p=211', 4, 'acf-field', '', 0);
INSERT INTO `tti_bt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(212, 1, '2025-03-27 20:30:56', '2025-03-27 14:30:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'I CARE', 'i_care', 'publish', 'closed', 'closed', '', 'field_67e560fdd2d49', '', '', '2025-03-27 20:30:56', '2025-03-27 14:30:56', '', 211, 'https://czc.samu.bt/?post_type=acf-field&p=212', 0, 'acf-field', '', 0),
(213, 1, '2025-03-27 20:31:57', '2025-03-27 14:31:57', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.<br>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market.<br>The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-03-27 20:31:57', '2025-03-27 14:31:57', '', 26, 'https://czc.samu.bt/?p=213', 0, 'revision', '', 0),
(214, 1, '2025-03-27 21:11:50', '2025-03-27 15:11:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"page-contact-us.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Contact Us', 'contact-us', 'publish', 'closed', 'closed', '', 'group_67e5697fedd95', '', '', '2025-03-27 21:15:35', '2025-03-27 15:15:35', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=214', 0, 'acf-field-group', '', 0),
(215, 1, '2025-03-27 21:11:50', '2025-03-27 15:11:50', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_67e56980b7c41', '', '', '2025-03-27 21:11:50', '2025-03-27 15:11:50', '', 214, 'https://czc.samu.bt/?post_type=acf-field&p=215', 0, 'acf-field', '', 0),
(216, 1, '2025-03-27 21:11:50', '2025-03-27 15:11:50', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Our Address', 'our_address', 'publish', 'closed', 'closed', '', 'field_67e5698cb7c42', '', '', '2025-03-27 21:11:50', '2025-03-27 15:11:50', '', 214, 'https://czc.samu.bt/?post_type=acf-field&p=216', 1, 'acf-field', '', 0),
(217, 1, '2025-03-27 21:11:50', '2025-03-27 15:11:50', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_67e56aa8b7c43', '', '', '2025-03-27 21:11:50', '2025-03-27 15:11:50', '', 214, 'https://czc.samu.bt/?post_type=acf-field&p=217', 2, 'acf-field', '', 0),
(218, 1, '2025-03-27 21:12:41', '2025-03-27 15:12:41', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2025-03-27 21:12:41', '2025-03-27 15:12:41', '', 65, 'https://czc.samu.bt/?p=218', 0, 'revision', '', 0),
(219, 1, '2025-03-27 21:15:35', '2025-03-27 15:15:35', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Map Google Embed', 'map_google_embed', 'publish', 'closed', 'closed', '', 'field_67e56b8bc1351', '', '', '2025-03-27 21:15:35', '2025-03-27 15:15:35', '', 214, 'https://czc.samu.bt/?post_type=acf-field&p=219', 3, 'acf-field', '', 0),
(220, 1, '2025-03-27 21:16:24', '2025-03-27 15:16:24', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2025-03-27 21:16:24', '2025-03-27 15:16:24', '', 65, 'https://czc.samu.bt/?p=220', 0, 'revision', '', 0),
(223, 1, '2025-04-11 01:31:24', '2025-04-10 19:31:24', '', 'Mission &amp; Vision', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2025-04-11 01:31:24', '2025-04-10 19:31:24', '', 0, 'https://czc.samu.bt/?page_id=223', 0, 'page', '', 0),
(225, 1, '2025-03-28 02:06:13', '2025-03-27 20:06:13', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>We are thrilled to announce the launch of our brand-new website, designed to provide you with a seamless and engaging user experience! With a fresh, modern design and enhanced functionality, our website is built to keep you informed, connected, and inspired. Whether you’re here to explore our services, learn more about what we offer, or stay updated with the latest news and events, the new site is your go-to destination.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>The redesigned platform is user-friendly, mobile-responsive, and packed with new features like intuitive navigation, detailed resources, and interactive elements to make your visit more rewarding. We invite you to explore our website and discover all the exciting updates we\'ve made just for you. Your feedback is invaluable, so don\'t hesitate to share your thoughts as we continue to improve and grow together!</p>\n<!-- /wp:paragraph -->', 'New Website Launch', '', 'publish', 'open', 'open', '', 'new-website-launch', '', '', '2025-03-28 02:26:28', '2025-03-27 20:26:28', '', 0, 'https://czc.samu.bt/?p=225', 0, 'post', '', 0),
(226, 1, '2025-03-28 02:06:13', '2025-03-27 20:06:13', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>We are thrilled to announce the launch of our brand-new website, designed to provide you with a seamless and engaging user experience! With a fresh, modern design and enhanced functionality, our website is built to keep you informed, connected, and inspired. Whether you’re here to explore our services, learn more about what we offer, or stay updated with the latest news and events, the new site is your go-to destination.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>The redesigned platform is user-friendly, mobile-responsive, and packed with new features like intuitive navigation, detailed resources, and interactive elements to make your visit more rewarding. We invite you to explore our website and discover all the exciting updates we\'ve made just for you. Your feedback is invaluable, so don\'t hesitate to share your thoughts as we continue to improve and grow together!</p>\n<!-- /wp:paragraph -->', 'New Website Launch', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2025-03-28 02:06:13', '2025-03-27 20:06:13', '', 225, 'https://czc.samu.bt/?p=226', 0, 'revision', '', 0),
(228, 1, '2025-03-28 02:08:34', '2025-03-27 20:08:34', '<!-- wp:paragraph {\"className\":\"\"} -->\n<p>We are thrilled to announce the launch of our brand-new website, designed to provide you with a seamless and engaging user experience! With a fresh, modern design and enhanced functionality, our website is built to keep you informed, connected, and inspired. Whether you’re here to explore our services, learn more about what we offer, or stay updated with the latest news and events, the new site is your go-to destination.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"\"} -->\n<p>The redesigned platform is user-friendly, mobile-responsive, and packed with new features like intuitive navigation, detailed resources, and interactive elements to make your visit more rewarding. We invite you to explore our website and discover all the exciting updates we\'ve made just for you. Your feedback is invaluable, so don\'t hesitate to share your thoughts as we continue to improve and grow together!</p>\n<!-- /wp:paragraph -->', 'New Website Launch', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2025-03-28 02:08:34', '2025-03-27 20:08:34', '', 225, 'https://czc.samu.bt/?p=228', 0, 'revision', '', 0),
(229, 1, '2025-03-28 02:45:46', '2025-03-27 20:45:46', '<!-- wp:paragraph -->\n<p>This course equips individuals with the knowledge, skills, and attitudes to become competent Auto Mechanics, enabling them to work in an automobile workshop, demonstrate professionalism, safety, and perform basic auto-electrical works.</p>\n<!-- /wp:paragraph -->', 'Automobile mechanic', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2025-03-28 02:45:46', '2025-03-27 20:45:46', '', 168, 'https://czc.samu.bt/?p=229', 0, 'revision', '', 0),
(232, 1, '2025-04-03 21:54:28', '2025-04-03 15:54:28', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-04-03 21:54:28', '2025-04-03 15:54:28', '', 63, 'https://czc.samu.bt/?p=232', 0, 'revision', '', 0),
(234, 1, '2025-04-08 21:49:31', '2025-04-08 15:49:31', '<!-- wp:paragraph -->\n<p>This course equips individuals with the knowledge, skills, and attitudes to become competent Auto Mechanics, enabling them to work in an automobile workshop, demonstrate professionalism, safety, and perform basic auto-electrical works.</p>\n<!-- /wp:paragraph -->', 'Automobile mechanic', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2025-04-08 21:49:31', '2025-04-08 15:49:31', '', 168, 'https://czc.samu.bt/?p=234', 0, 'revision', '', 0),
(235, 1, '2025-04-08 22:33:58', '2025-04-08 16:33:58', '', 'Diploma in', '', 'trash', 'closed', 'closed', '', 'diploma-in__trashed', '', '', '2025-04-10 20:23:39', '2025-04-10 14:23:39', '', 69, 'https://czc.samu.bt/?page_id=235', 0, 'page', '', 0),
(236, 1, '2025-04-08 22:33:58', '2025-04-08 16:33:58', '', 'Diploma in', '', 'inherit', 'closed', 'closed', '', '235-revision-v1', '', '', '2025-04-08 22:33:58', '2025-04-08 16:33:58', '', 235, 'https://czc.samu.bt/?p=236', 0, 'revision', '', 0),
(237, 1, '2025-04-08 22:43:56', '2025-04-08 16:43:56', '', 'Diploma in', '', 'inherit', 'closed', 'closed', '', '235-revision-v1', '', '', '2025-04-08 22:43:56', '2025-04-08 16:43:56', '', 235, 'https://czc.samu.bt/?p=237', 0, 'revision', '', 0),
(238, 1, '2025-04-08 22:44:43', '2025-04-08 16:44:43', '', 'Diploma in', '', 'inherit', 'closed', 'closed', '', '235-revision-v1', '', '', '2025-04-08 22:44:43', '2025-04-08 16:44:43', '', 235, 'https://czc.samu.bt/?p=238', 0, 'revision', '', 0),
(239, 1, '2025-04-09 21:04:45', '2025-04-09 15:04:45', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-04-09 21:04:45', '2025-04-09 15:04:45', '', 63, 'https://czc.samu.bt/?p=239', 0, 'revision', '', 0),
(240, 1, '2025-04-09 21:04:54', '2025-04-09 15:04:54', '<!-- wp:paragraph -->\n<p>Wishing His Royal Highness, Gyalsey Jigme Namgyel Wangchuck, a joyful birthday filled with blessings, happiness, and prosperity!</p>\n<!-- /wp:paragraph -->', 'His Royal Highness, the Gyalsey, Jigme Namgyel Wangchuck, the Crown Prince of Bhutan, Happy birthday', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2025-04-09 21:04:54', '2025-04-09 15:04:54', '', 63, 'https://czc.samu.bt/?p=240', 0, 'revision', '', 0),
(241, 1, '2025-04-10 22:03:45', '2025-04-10 16:03:45', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Zorig Commitments', 'zorig_commitments', 'publish', 'closed', 'closed', '', 'field_67f7ebc92b901', '', '', '2025-04-10 22:03:45', '2025-04-10 16:03:45', '', 206, 'https://czc.samu.bt/?post_type=acf-field&p=241', 3, 'acf-field', '', 0),
(242, 1, '2025-04-10 22:03:45', '2025-04-10 16:03:45', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Commitments', 'commitments', 'publish', 'closed', 'closed', '', 'field_67f7ebc92b902', '', '', '2025-04-10 22:03:45', '2025-04-10 16:03:45', '', 241, 'https://czc.samu.bt/?post_type=acf-field&p=242', 0, 'acf-field', '', 0),
(244, 1, '2025-04-10 22:04:11', '2025-04-10 16:04:11', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'YouTube Links', 'youtube_links', 'publish', 'closed', 'closed', '', 'field_67f7ebe313479', '', '', '2025-04-10 22:04:11', '2025-04-10 16:04:11', '', 206, 'https://czc.samu.bt/?post_type=acf-field&p=244', 5, 'acf-field', '', 0),
(245, 1, '2025-04-10 22:04:21', '2025-04-10 16:04:21', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.<br>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market.<br>The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-04-10 22:04:21', '2025-04-10 16:04:21', '', 26, 'https://czc.samu.bt/?p=245', 0, 'revision', '', 0),
(246, 1, '2025-04-10 22:04:39', '2025-04-10 16:04:39', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-04-10 22:04:39', '2025-04-10 16:04:39', '', 26, 'https://czc.samu.bt/?p=246', 0, 'revision', '', 0),
(247, 1, '2025-04-10 22:09:35', '2025-04-10 16:09:35', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-04-10 22:09:35', '2025-04-10 16:09:35', '', 26, 'https://czc.samu.bt/?p=247', 0, 'revision', '', 0),
(248, 1, '2025-04-10 22:10:55', '2025-04-10 16:10:55', '<!-- wp:paragraph -->\n<p><strong>Zorig Counters</strong> is a specialized unit dedicated to crafting high-quality counters and display solutions with precision and durability. Combining modern techniques with traditional craftsmanship, Zorig Counters delivers customized designs that cater to a wide range of commercial and institutional needs. With a focus on functionality and aesthetic appeal, each piece is built to elevate the workspace it serves.</p>\n<!-- /wp:paragraph -->', 'Zorig Counters', '', 'publish', 'closed', 'closed', '', 'zorig-counters', '', '', '2025-04-10 22:14:03', '2025-04-10 16:14:03', '', 0, 'https://czc.samu.bt/?page_id=248', 0, 'page', '', 0),
(249, 1, '2025-04-10 22:10:55', '2025-04-10 16:10:55', '', 'Zorig Counters', '', 'inherit', 'closed', 'closed', '', '248-revision-v1', '', '', '2025-04-10 22:10:55', '2025-04-10 16:10:55', '', 248, 'https://czc.samu.bt/?p=249', 0, 'revision', '', 0),
(250, 1, '2025-04-10 22:11:22', '2025-04-10 16:11:22', '<!-- wp:paragraph -->\n<p><strong>Zorig Counters</strong> is a specialized unit dedicated to crafting high-quality counters and display solutions with precision and durability. Combining modern techniques with traditional craftsmanship, Zorig Counters delivers customized designs that cater to a wide range of commercial and institutional needs. With a focus on functionality and aesthetic appeal, each piece is built to elevate the workspace it serves.</p>\n<!-- /wp:paragraph -->', 'Zorig Counters', '', 'inherit', 'closed', 'closed', '', '248-revision-v1', '', '', '2025-04-10 22:11:22', '2025-04-10 16:11:22', '', 248, 'https://czc.samu.bt/?p=250', 0, 'revision', '', 0),
(251, 1, '2025-04-10 22:12:33', '2025-04-10 16:12:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"248\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Zorig Counters', 'zorig-counters', 'publish', 'closed', 'closed', '', 'group_67f7edb0c91dd', '', '', '2025-04-10 22:12:33', '2025-04-10 16:12:33', '', 0, 'https://czc.samu.bt/?post_type=acf-field-group&#038;p=251', 0, 'acf-field-group', '', 0),
(252, 1, '2025-04-10 22:12:33', '2025-04-10 16:12:33', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'One', 'one', 'publish', 'closed', 'closed', '', 'field_67f7edb05bab3', '', '', '2025-04-10 22:12:33', '2025-04-10 16:12:33', '', 251, 'https://czc.samu.bt/?post_type=acf-field&p=252', 0, 'acf-field', '', 0),
(253, 1, '2025-04-10 22:12:33', '2025-04-10 16:12:33', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Two', 'two', 'publish', 'closed', 'closed', '', 'field_67f7edcf5bab4', '', '', '2025-04-10 22:12:33', '2025-04-10 16:12:33', '', 251, 'https://czc.samu.bt/?post_type=acf-field&p=253', 1, 'acf-field', '', 0),
(254, 1, '2025-04-10 22:12:33', '2025-04-10 16:12:33', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Three', 'three', 'publish', 'closed', 'closed', '', 'field_67f7edd95bab5', '', '', '2025-04-10 22:12:33', '2025-04-10 16:12:33', '', 251, 'https://czc.samu.bt/?post_type=acf-field&p=254', 2, 'acf-field', '', 0),
(255, 1, '2025-04-10 22:12:33', '2025-04-10 16:12:33', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Four', 'four', 'publish', 'closed', 'closed', '', 'field_67f7ede25bab6', '', '', '2025-04-10 22:12:33', '2025-04-10 16:12:33', '', 251, 'https://czc.samu.bt/?post_type=acf-field&p=255', 3, 'acf-field', '', 0),
(257, 1, '2025-04-10 22:14:02', '2025-04-10 16:14:02', '<!-- wp:paragraph -->\n<p><strong>Zorig Counters</strong> is a specialized unit dedicated to crafting high-quality counters and display solutions with precision and durability. Combining modern techniques with traditional craftsmanship, Zorig Counters delivers customized designs that cater to a wide range of commercial and institutional needs. With a focus on functionality and aesthetic appeal, each piece is built to elevate the workspace it serves.</p>\n<!-- /wp:paragraph -->', 'Zorig Counters', '', 'inherit', 'closed', 'closed', '', '248-revision-v1', '', '', '2025-04-10 22:14:02', '2025-04-10 16:14:02', '', 248, 'https://czc.samu.bt/?p=257', 0, 'revision', '', 0),
(258, 1, '2025-04-10 22:29:09', '2025-04-10 16:29:09', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market. The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-04-10 22:29:09', '2025-04-10 16:29:09', '', 26, 'https://czc.samu.bt/?p=258', 0, 'revision', '', 0),
(259, 1, '2025-04-10 22:29:27', '2025-04-10 16:29:27', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-04-10 22:29:27', '2025-04-10 16:29:27', '', 26, 'https://czc.samu.bt/?p=259', 0, 'revision', '', 0),
(260, 1, '2025-04-10 22:29:41', '2025-04-10 16:29:41', '<!-- wp:paragraph -->\n<p>The Technical Training Institute -Thimphu (TTIT) is located in Serbithang, Thimphu. It was established in 2008 to provide automobile-related training to school leavers and unemployed youths in the country.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>As per the market demand the institute diversified the courses and offer training to meet the imminent skills shortage in the market.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The trained and experienced national trainer offer high quality training in Heating Ventilation and Air Conditioning (HVAC), Automobile, Automotive Technology, Panel Beating, Digital Marketing and Refrigeration Air Conditioning (RAC) courses. Institute is also closely working with partner institute to offer Graphic design course.</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2025-04-10 22:29:41', '2025-04-10 16:29:41', '', 26, 'https://czc.samu.bt/?p=260', 0, 'revision', '', 0),
(261, 1, '2025-04-10 22:34:31', '2025-04-10 16:34:31', '', 'default_pic', '', 'inherit', 'open', 'closed', '', 'default_pic-2', '', '', '2025-04-10 22:34:31', '2025-04-10 16:34:31', '', 26, 'https://czc.samu.bt/wp-content/uploads/2025/04/default_pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2025-04-10 22:41:46', '2025-04-10 16:41:46', '<!-- wp:paragraph -->\n<p>The Technical Department headed by Head of Department is responsible for imparting the smooth functioning of the department. This department primarily focuses on imparting hard skills related course which includes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>• Automobile Technician<br>• HVAC Technician<br>• RAC Technician<br>• Panel Beater</p>\n<!-- /wp:paragraph -->', 'Technical', '', 'trash', 'closed', 'closed', '', 'technical__trashed', '', '', '2025-04-16 19:27:57', '2025-04-16 13:27:57', '', 67, 'https://czc.samu.bt/?page_id=262', 0, 'page', '', 0),
(263, 1, '2025-04-10 22:41:46', '2025-04-10 16:41:46', '<!-- wp:paragraph -->\n<p>The Technical Department headed by Head of Department is responsible for imparting the smooth functioning of the department. This department primarily focuses on imparting hard skills related course which includes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>• Automobile Technician<br>• HVAC Technician<br>• RAC Technician<br>• Panel Beater</p>\n<!-- /wp:paragraph -->', 'Technical', '', 'inherit', 'closed', 'closed', '', '262-revision-v1', '', '', '2025-04-10 22:41:46', '2025-04-10 16:41:46', '', 262, 'https://czc.samu.bt/?p=263', 0, 'revision', '', 0),
(264, 1, '2025-04-10 22:42:37', '2025-04-10 16:42:37', '<!-- wp:paragraph -->\n<p>Academic Department is headed by Head of Department and is responsible for imparting academic subject to the trainees. This department focuses mainly to impart value added subject like:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>• English<br>• Math<br>• Dzongkha &amp;<br>• ICT</p>\n<!-- /wp:paragraph -->', 'Academic', '', 'trash', 'closed', 'closed', '', 'academic__trashed', '', '', '2025-04-16 19:28:01', '2025-04-16 13:28:01', '', 67, 'https://czc.samu.bt/?page_id=264', 0, 'page', '', 0),
(265, 1, '2025-04-10 22:42:37', '2025-04-10 16:42:37', '<!-- wp:paragraph -->\n<p>Academic Department is headed by Head of Department and is responsible for imparting academic subject to the trainees. This department focuses mainly to impart value added subject like:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>• English<br>• Math<br>• Dzongkha &amp;<br>• ICT</p>\n<!-- /wp:paragraph -->', 'Academic', '', 'inherit', 'closed', 'closed', '', '264-revision-v1', '', '', '2025-04-10 22:42:37', '2025-04-10 16:42:37', '', 264, 'https://czc.samu.bt/?p=265', 0, 'revision', '', 0),
(266, 1, '2025-04-10 22:44:06', '2025-04-10 16:44:06', '<!-- wp:paragraph -->\n<p>Warden<br>Pema Choden, 17947409<br>Matron<br>Tenzin Dolma, 17920449</p>\n<!-- /wp:paragraph -->', 'Administration', '', 'trash', 'closed', 'closed', '', 'administration__trashed', '', '', '2025-04-16 19:28:04', '2025-04-16 13:28:04', '', 67, 'https://czc.samu.bt/?page_id=266', 0, 'page', '', 0),
(267, 1, '2025-04-10 22:44:06', '2025-04-10 16:44:06', '<!-- wp:paragraph -->\n<p>Warden<br>Pema Choden, 17947409<br>Matron<br>Tenzin Dolma, 17920449</p>\n<!-- /wp:paragraph -->', 'Administration', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2025-04-10 22:44:06', '2025-04-10 16:44:06', '', 266, 'https://czc.samu.bt/?p=267', 0, 'revision', '', 0),
(268, 1, '2025-04-11 01:31:24', '2025-04-10 19:31:24', '', 'Mission &amp; Vision', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2025-04-11 01:31:24', '2025-04-10 19:31:24', '', 223, 'https://czc.samu.bt/?p=268', 0, 'revision', '', 0),
(269, 1, '2025-04-11 01:31:56', '2025-04-10 19:31:56', '<!-- wp:paragraph -->\n<p>Student Services at our institute are designed to support and enhance the overall learning experience of every student. From the moment of enrollment to graduation, we provide comprehensive assistance including academic guidance, counseling, career support, and access to resources such as libraries, workshops, and training tools. We are committed to creating a safe, inclusive, and engaging environment that empowers students to succeed both personally and professionally.</p>\n<!-- /wp:paragraph -->', 'Student Services', '', 'publish', 'closed', 'closed', '', 'student-services', '', '', '2025-04-11 01:39:24', '2025-04-10 19:39:24', '', 0, 'https://czc.samu.bt/?page_id=269', 0, 'page', '', 0),
(270, 1, '2025-04-11 01:31:56', '2025-04-10 19:31:56', '', 'Student Services', '', 'inherit', 'closed', 'closed', '', '269-revision-v1', '', '', '2025-04-11 01:31:56', '2025-04-10 19:31:56', '', 269, 'https://czc.samu.bt/?p=270', 0, 'revision', '', 0),
(272, 1, '2025-04-11 01:39:24', '2025-04-10 19:39:24', '<!-- wp:paragraph -->\n<p>Student Services at our institute are designed to support and enhance the overall learning experience of every student. From the moment of enrollment to graduation, we provide comprehensive assistance including academic guidance, counseling, career support, and access to resources such as libraries, workshops, and training tools. We are committed to creating a safe, inclusive, and engaging environment that empowers students to succeed both personally and professionally.</p>\n<!-- /wp:paragraph -->', 'Student Services', '', 'inherit', 'closed', 'closed', '', '269-revision-v1', '', '', '2025-04-11 01:39:24', '2025-04-10 19:39:24', '', 269, 'https://czc.samu.bt/?p=272', 0, 'revision', '', 0),
(273, 1, '2025-04-11 01:39:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-04-11 01:39:38', '0000-00-00 00:00:00', '', 0, 'https://czc.samu.bt/?p=273', 0, 'post', '', 0),
(274, 1, '2025-04-11 01:39:55', '2025-04-10 19:39:55', '', 'LMS', '', 'publish', 'closed', 'closed', '', 'lms', '', '', '2025-04-11 01:39:55', '2025-04-10 19:39:55', '', 269, 'https://czc.samu.bt/?page_id=274', 0, 'page', '', 0),
(275, 1, '2025-04-11 01:39:55', '2025-04-10 19:39:55', '', 'LMS', '', 'inherit', 'closed', 'closed', '', '274-revision-v1', '', '', '2025-04-11 01:39:55', '2025-04-10 19:39:55', '', 274, 'https://czc.samu.bt/?p=275', 0, 'revision', '', 0),
(276, 1, '2025-04-11 01:40:14', '2025-04-10 19:40:14', '', 'Admission', '', 'publish', 'closed', 'closed', '', 'admission', '', '', '2025-04-11 01:40:14', '2025-04-10 19:40:14', '', 269, 'https://czc.samu.bt/?page_id=276', 0, 'page', '', 0),
(277, 1, '2025-04-11 01:40:14', '2025-04-10 19:40:14', '', 'Admission', '', 'inherit', 'closed', 'closed', '', '276-revision-v1', '', '', '2025-04-11 01:40:14', '2025-04-10 19:40:14', '', 276, 'https://czc.samu.bt/?p=277', 0, 'revision', '', 0),
(278, 1, '2025-04-11 01:40:29', '2025-04-10 19:40:29', '', 'Accommodation', '', 'publish', 'closed', 'closed', '', 'accommodation', '', '', '2025-04-11 01:40:29', '2025-04-10 19:40:29', '', 269, 'https://czc.samu.bt/?page_id=278', 0, 'page', '', 0),
(279, 1, '2025-04-11 01:40:29', '2025-04-10 19:40:29', '', 'Accommodation', '', 'inherit', 'closed', 'closed', '', '278-revision-v1', '', '', '2025-04-11 01:40:29', '2025-04-10 19:40:29', '', 278, 'https://czc.samu.bt/?p=279', 0, 'revision', '', 0),
(280, 1, '2025-04-11 01:40:46', '2025-04-10 19:40:46', '', 'Campus Life', '', 'publish', 'closed', 'closed', '', 'campus-life', '', '', '2025-04-11 01:40:46', '2025-04-10 19:40:46', '', 269, 'https://czc.samu.bt/?page_id=280', 0, 'page', '', 0),
(281, 1, '2025-04-11 01:40:46', '2025-04-10 19:40:46', '', 'Campus Life', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2025-04-11 01:40:46', '2025-04-10 19:40:46', '', 280, 'https://czc.samu.bt/?p=281', 0, 'revision', '', 0),
(282, 1, '2025-04-11 01:41:01', '2025-04-10 19:41:01', '', 'International Students', '', 'publish', 'closed', 'closed', '', 'international-students', '', '', '2025-04-11 01:41:01', '2025-04-10 19:41:01', '', 269, 'https://czc.samu.bt/?page_id=282', 0, 'page', '', 0),
(283, 1, '2025-04-11 01:41:01', '2025-04-10 19:41:01', '', 'International Students', '', 'inherit', 'closed', 'closed', '', '282-revision-v1', '', '', '2025-04-11 01:41:01', '2025-04-10 19:41:01', '', 282, 'https://czc.samu.bt/?p=283', 0, 'revision', '', 0),
(284, 1, '2025-04-16 19:14:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-04-16 19:14:25', '0000-00-00 00:00:00', '', 0, 'https://czc.samu.bt/?p=284', 0, 'post', '', 0),
(285, 1, '2025-04-16 19:19:08', '2025-04-16 13:19:08', '<!-- wp:paragraph -->\n<p>The National Institute for Zorig Chusum is located at Tashi Gephelling, Kawa Jangsa in Thimphu. It is the premier Institute established to preserve and promote traditional arts and crafts of Bhutan in 1971. It started as a Painting school with 30 students and two Instructors under the Ministry of Development. The course duration was indefinite and students left the school when they felt it was time for them to leave. Most students were usually asked, “Don’t you think you learned enough to leave now?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>The students were paid Nu 120/- as stipend then. In contrast to what the name of the school suggests, students were taught only “Shing Tshen gi Rimo” (drawing of House Painting) and were sent out to learn how to paint by actually involving in the real work of painting. It was much later that the measurement of statues (“Ku Thig”) was introduced. In 1986, the training duration was decided to be 11 years with entry qualification of class VI passed. A few years later, the duration was further reduced to 8 years. A year later, in 1985 the institute was transferred to the Ministry of Finance, then to the Ministry of Cultural Affairs.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>In 1999 when the National Technical Training Authority (NTTA) took over the charge of overall administration of VTIs, two IZCs were also subsumed under the same umbrella of NTTA, which later became full flagged Ministry of Labor and Human Resources in 2003. It was in 1999 the training duration was further reduced to 6 years, but with entry qualification requirement of class X passed. 2017 saw a big change with the appointment of the new leadership from non-technical background. The institute then started working in line with BVQF and got all courses accredited by Department of Occupational Standard, thereby reducing the training duration significantly to anywhere between 1 to 3 years to get a National Certification III.</p>\n<!-- /wp:paragraph -->', 'Brief History', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-04-16 19:19:08', '2025-04-16 13:19:08', '', 28, 'https://czc.samu.bt/?p=285', 0, 'revision', '', 0),
(286, 1, '2025-04-16 19:19:34', '2025-04-16 13:19:34', '<!-- wp:list {\"ordered\":true} -->\n<ol class=\"wp-block-list\"><!-- wp:list-item -->\n<li>Commitment to quality</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to lifelong learning</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to enterprise</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to dignity of labor</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commitment to integrity</li>\n<!-- /wp:list-item --></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Core Values', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-04-16 19:19:34', '2025-04-16 13:19:34', '', 32, 'https://czc.samu.bt/?p=286', 0, 'revision', '', 0),
(287, 1, '2025-04-16 19:21:50', '2025-04-16 13:21:50', '<!-- wp:paragraph -->\n<p><strong>Vision</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a premier training institute that nurtures exemplary craftsmanship in Zorig Chusum (13 Arts and Crafts)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-autosave-v1', '', '', '2025-04-16 19:21:50', '2025-04-16 13:21:50', '', 30, 'https://czc.samu.bt/?p=287', 0, 'revision', '', 0),
(288, 1, '2025-04-16 19:22:01', '2025-04-16 13:22:01', '<!-- wp:paragraph -->\n<p><strong>Vision</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a premier training institute that nurtures exemplary craftsmanship in Zorig Chusum (13 Arts and Crafts)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Mission</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Institute shall strive to preserve and promote traditional arts and crafts through quality training, research and by reviving the dying traditional arts and crafts of Bhutan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mission &amp; Vission', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2025-04-16 19:22:01', '2025-04-16 13:22:01', '', 30, 'https://czc.samu.bt/?p=288', 0, 'revision', '', 0),
(289, 1, '2025-04-16 19:27:46', '2025-04-16 13:27:46', '<!-- wp:paragraph -->\n<p>This course focuses on carving and modeling Bhutanese iconographies.</p>\n<!-- /wp:paragraph -->', 'Woodcarving NC II', '', 'publish', 'closed', 'closed', '', 'woodcarving-nc-ii', '', '', '2025-04-16 19:27:48', '2025-04-16 13:27:48', '', 67, 'https://czc.samu.bt/?page_id=289', 0, 'page', '', 0),
(290, 1, '2025-04-16 19:27:46', '2025-04-16 13:27:46', '<!-- wp:paragraph -->\n<p>This course focuses on carving and modeling Bhutanese iconographies.</p>\n<!-- /wp:paragraph -->', 'Woodcarving NC II', '', 'inherit', 'closed', 'closed', '', '289-revision-v1', '', '', '2025-04-16 19:27:46', '2025-04-16 13:27:46', '', 289, 'https://czc.samu.bt/?p=290', 0, 'revision', '', 0),
(291, 1, '2025-04-16 19:29:01', '2025-04-16 13:29:01', '', 'Woodcarving NC III', '', 'publish', 'closed', 'closed', '', 'woodcarving-nc-iii', '', '', '2025-04-16 19:29:26', '2025-04-16 13:29:26', '', 67, 'https://czc.samu.bt/?page_id=291', 0, 'page', '', 0),
(292, 1, '2025-04-16 19:29:01', '2025-04-16 13:29:01', '', 'Woodcarving NC III', '', 'inherit', 'closed', 'closed', '', '291-revision-v1', '', '', '2025-04-16 19:29:01', '2025-04-16 13:29:01', '', 291, 'https://czc.samu.bt/?p=292', 0, 'revision', '', 0),
(293, 1, '2025-04-16 19:29:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-04-16 19:29:06', '0000-00-00 00:00:00', '', 0, 'https://czc.samu.bt/?page_id=293', 0, 'page', '', 0),
(294, 1, '2025-04-16 19:29:24', '2025-04-16 13:29:24', '', 'Woodcarving NC III', '', 'inherit', 'closed', 'closed', '', '291-revision-v1', '', '', '2025-04-16 19:29:24', '2025-04-16 13:29:24', '', 291, 'https://czc.samu.bt/?p=294', 0, 'revision', '', 0),
(295, 1, '2025-04-16 19:30:17', '2025-04-16 13:30:17', '<!-- wp:paragraph -->\n<p>This course offers comprehensive training in wood and traditional house paintings, leading to National Certification Level II.</p>\n<!-- /wp:paragraph -->', 'Painting NC II', '', 'publish', 'closed', 'closed', '', 'painting-nc-ii', '', '', '2025-04-16 19:30:18', '2025-04-16 13:30:18', '', 67, 'https://czc.samu.bt/?page_id=295', 0, 'page', '', 0),
(296, 1, '2025-04-16 19:30:17', '2025-04-16 13:30:17', '<!-- wp:paragraph -->\n<p>This course offers comprehensive training in wood and traditional house paintings, leading to National Certification Level II.</p>\n<!-- /wp:paragraph -->', 'Painting NC II', '', 'inherit', 'closed', 'closed', '', '295-revision-v1', '', '', '2025-04-16 19:30:17', '2025-04-16 13:30:17', '', 295, 'https://czc.samu.bt/?p=296', 0, 'revision', '', 0),
(297, 1, '2025-04-16 19:31:25', '2025-04-16 13:31:25', '<!-- wp:paragraph -->\n<p>This course focuses on Bhutanese scroll and mural paintings, culminating in National Certification Level III.</p>\n<!-- /wp:paragraph -->', 'Painting NC III', '', 'publish', 'closed', 'closed', '', 'painting-nc-iii', '', '', '2025-04-16 19:31:26', '2025-04-16 13:31:26', '', 67, 'https://czc.samu.bt/?page_id=297', 0, 'page', '', 0),
(298, 1, '2025-04-16 19:31:25', '2025-04-16 13:31:25', '<!-- wp:paragraph -->\n<p>This course focuses on Bhutanese scroll and mural paintings, culminating in National Certification Level III.</p>\n<!-- /wp:paragraph -->', 'Painting NC III', '', 'inherit', 'closed', 'closed', '', '297-revision-v1', '', '', '2025-04-16 19:31:25', '2025-04-16 13:31:25', '', 297, 'https://czc.samu.bt/?p=298', 0, 'revision', '', 0),
(299, 1, '2025-04-16 19:32:25', '2025-04-16 13:32:25', '<!-- wp:paragraph -->\n<p>The course provides in-depth training in traditional Bhutanese painting, equipping learners with specialized skills and expertise in the field.</p>\n<!-- /wp:paragraph -->', 'Painting National Diploma', '', 'publish', 'closed', 'closed', '', 'painting-national-diploma', '', '', '2025-04-16 19:32:38', '2025-04-16 13:32:38', '', 67, 'https://czc.samu.bt/?page_id=299', 0, 'page', '', 0),
(300, 1, '2025-04-16 19:32:25', '2025-04-16 13:32:25', '<!-- wp:paragraph -->\n<p>The course provides in-depth training in traditional Bhutanese painting, equipping learners with specialized skills and expertise in the field.</p>\n<!-- /wp:paragraph -->', 'Painting National Diploma', '', 'inherit', 'closed', 'closed', '', '299-revision-v1', '', '', '2025-04-16 19:32:25', '2025-04-16 13:32:25', '', 299, 'https://czc.samu.bt/?p=300', 0, 'revision', '', 0),
(301, 1, '2025-04-16 19:32:37', '2025-04-16 13:32:37', '<!-- wp:paragraph -->\n<p>The course provides in-depth training in traditional Bhutanese painting, equipping learners with specialized skills and expertise in the field.</p>\n<!-- /wp:paragraph -->', 'Painting National Diploma', '', 'inherit', 'closed', 'closed', '', '299-revision-v1', '', '', '2025-04-16 19:32:37', '2025-04-16 13:32:37', '', 299, 'https://czc.samu.bt/?p=301', 0, 'revision', '', 0),
(302, 1, '2025-04-16 19:33:30', '2025-04-16 13:33:30', '<!-- wp:paragraph -->\n<p>This course provides training in engraving animal models, along with some types of religious iconographies</p>\n<!-- /wp:paragraph -->', 'Gold &amp; Silver Smithy NC II', '', 'publish', 'closed', 'closed', '', 'gold-silver-smithy-nc-ii', '', '', '2025-04-16 19:33:31', '2025-04-16 13:33:31', '', 67, 'https://czc.samu.bt/?page_id=302', 0, 'page', '', 0),
(303, 1, '2025-04-16 19:33:30', '2025-04-16 13:33:30', '<!-- wp:paragraph -->\n<p>This course provides training in engraving animal models, along with some types of religious iconographies</p>\n<!-- /wp:paragraph -->', 'Gold &amp; Silver Smithy NC II', '', 'inherit', 'closed', 'closed', '', '302-revision-v1', '', '', '2025-04-16 19:33:30', '2025-04-16 13:33:30', '', 302, 'https://czc.samu.bt/?p=303', 0, 'revision', '', 0),
(304, 1, '2025-04-16 19:34:29', '2025-04-16 13:34:29', '<!-- wp:paragraph -->\n<p>This course focuses on engraving Bhutanese religious iconographies and crafting jewelry.</p>\n<!-- /wp:paragraph -->', 'Gold &amp; Silver Smithy NC III', '', 'publish', 'closed', 'closed', '', 'gold-silver-smithy-nc-iii', '', '', '2025-04-16 19:34:56', '2025-04-16 13:34:56', '', 67, 'https://czc.samu.bt/?page_id=304', 0, 'page', '', 0),
(305, 1, '2025-04-16 19:34:29', '2025-04-16 13:34:29', '<!-- wp:paragraph -->\n<p>This course focuses on engraving Bhutanese religious iconographies and crafting jewelry.</p>\n<!-- /wp:paragraph -->', 'Gold &amp; Silver Smithy NC III', '', 'inherit', 'closed', 'closed', '', '304-revision-v1', '', '', '2025-04-16 19:34:29', '2025-04-16 13:34:29', '', 304, 'https://czc.samu.bt/?p=305', 0, 'revision', '', 0),
(306, 1, '2025-04-16 19:34:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-04-16 19:34:35', '0000-00-00 00:00:00', '', 0, 'https://czc.samu.bt/?page_id=306', 0, 'page', '', 0),
(307, 1, '2025-04-16 19:34:56', '2025-04-16 13:34:56', '<!-- wp:paragraph -->\n<p>This course focuses on engraving Bhutanese religious iconographies and crafting jewelry.</p>\n<!-- /wp:paragraph -->', 'Gold &amp; Silver Smithy NC III', '', 'inherit', 'closed', 'closed', '', '304-revision-v1', '', '', '2025-04-16 19:34:56', '2025-04-16 13:34:56', '', 304, 'https://czc.samu.bt/?p=307', 0, 'revision', '', 0),
(308, 1, '2025-04-16 19:35:50', '2025-04-16 13:35:50', '<!-- wp:paragraph -->\n<p>The course focuses on embroidering as well as crafting traditional Bhutanese boots (Dralham).</p>\n<!-- /wp:paragraph -->', 'Embroidery NC II', '', 'publish', 'closed', 'closed', '', 'embroidery-nc-ii', '', '', '2025-04-16 19:35:51', '2025-04-16 13:35:51', '', 67, 'https://czc.samu.bt/?page_id=308', 0, 'page', '', 0),
(309, 1, '2025-04-16 19:35:50', '2025-04-16 13:35:50', '<!-- wp:paragraph -->\n<p>The course focuses on embroidering as well as crafting traditional Bhutanese boots (Dralham).</p>\n<!-- /wp:paragraph -->', 'Embroidery NC II', '', 'inherit', 'closed', 'closed', '', '308-revision-v1', '', '', '2025-04-16 19:35:50', '2025-04-16 13:35:50', '', 308, 'https://czc.samu.bt/?p=309', 0, 'revision', '', 0),
(310, 1, '2025-04-16 19:36:45', '2025-04-16 13:36:45', '<!-- wp:paragraph -->\n<p>Embroidery NC III (Duration 15 months): It specializes in embroidering intricate statues on fabrics, further refining the skills of artisans in this traditional craft.</p>\n<!-- /wp:paragraph -->', 'Embroidery NC III', '', 'publish', 'closed', 'closed', '', 'embroidery-nc-iii', '', '', '2025-04-16 19:36:45', '2025-04-16 13:36:45', '', 67, 'https://czc.samu.bt/?page_id=310', 0, 'page', '', 0),
(311, 1, '2025-04-16 19:36:45', '2025-04-16 13:36:45', '<!-- wp:paragraph -->\n<p>Embroidery NC III (Duration 15 months): It specializes in embroidering intricate statues on fabrics, further refining the skills of artisans in this traditional craft.</p>\n<!-- /wp:paragraph -->', 'Embroidery NC III', '', 'inherit', 'closed', 'closed', '', '310-revision-v1', '', '', '2025-04-16 19:36:45', '2025-04-16 13:36:45', '', 310, 'https://czc.samu.bt/?p=311', 0, 'revision', '', 0),
(312, 1, '2025-04-16 19:38:01', '2025-04-16 13:38:01', '<!-- wp:paragraph -->\n<p>This course provides training in stitching and designing Bhutanese traditional attire, including kira, tego, Shanja Tego, and wonju. gho</p>\n<!-- /wp:paragraph -->', 'Tailoring NC II', '', 'publish', 'closed', 'closed', '', 'tailoring-nc-ii', '', '', '2025-04-16 19:38:02', '2025-04-16 13:38:02', '', 67, 'https://czc.samu.bt/?page_id=312', 0, 'page', '', 0),
(313, 1, '2025-04-16 19:38:01', '2025-04-16 13:38:01', '<!-- wp:paragraph -->\n<p>This course provides training in stitching and designing Bhutanese traditional attire, including kira, tego, Shanja Tego, and wonju. gho</p>\n<!-- /wp:paragraph -->', 'Tailoring NC II', '', 'inherit', 'closed', 'closed', '', '312-revision-v1', '', '', '2025-04-16 19:38:01', '2025-04-16 13:38:01', '', 312, 'https://czc.samu.bt/?p=313', 0, 'revision', '', 0),
(314, 1, '2025-04-16 19:39:12', '2025-04-16 13:39:12', '<!-- wp:paragraph -->\n<p>This course focuses on designing and stitching Bhutanese religious decorative pieces and monk’s dress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Tailoring NC III', '', 'publish', 'closed', 'closed', '', 'tailoring-nc-iii', '', '', '2025-04-16 19:39:13', '2025-04-16 13:39:13', '', 67, 'https://czc.samu.bt/?page_id=314', 0, 'page', '', 0),
(315, 1, '2025-04-16 19:39:12', '2025-04-16 13:39:12', '<!-- wp:paragraph -->\n<p>This course focuses on designing and stitching Bhutanese religious decorative pieces and monk’s dress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Tailoring NC III', '', 'inherit', 'closed', 'closed', '', '314-revision-v1', '', '', '2025-04-16 19:39:12', '2025-04-16 13:39:12', '', 314, 'https://czc.samu.bt/?p=315', 0, 'revision', '', 0);
INSERT INTO `tti_bt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(316, 1, '2025-04-16 19:40:41', '2025-04-16 13:40:41', '<!-- wp:paragraph -->\n<p>It is a course on Bhutanese Handloom weaving and dyeing of fabrics.</p>\n<!-- /wp:paragraph -->', 'Weaving', '', 'publish', 'closed', 'closed', '', 'weaving', '', '', '2025-04-16 19:40:42', '2025-04-16 13:40:42', '', 67, 'https://czc.samu.bt/?page_id=316', 0, 'page', '', 0),
(317, 1, '2025-04-16 19:40:41', '2025-04-16 13:40:41', '<!-- wp:paragraph -->\n<p>It is a course on Bhutanese Handloom weaving and dyeing of fabrics.</p>\n<!-- /wp:paragraph -->', 'Weaving', '', 'inherit', 'closed', 'closed', '', '316-revision-v1', '', '', '2025-04-16 19:40:41', '2025-04-16 13:40:41', '', 316, 'https://czc.samu.bt/?p=317', 0, 'revision', '', 0),
(318, 1, '2025-04-16 19:41:31', '2025-04-16 13:41:31', '<!-- wp:paragraph -->\n<p>Sculpture NC II (Course Duration: 14 Months): The course focuses on making some of the Bhutanese iconographies and statues.</p>\n<!-- /wp:paragraph -->', 'Sculpture NC II', '', 'publish', 'closed', 'closed', '', 'sculpture-nc-ii', '', '', '2025-04-16 19:41:32', '2025-04-16 13:41:32', '', 67, 'https://czc.samu.bt/?page_id=318', 0, 'page', '', 0),
(319, 1, '2025-04-16 19:41:31', '2025-04-16 13:41:31', '<!-- wp:paragraph -->\n<p>Sculpture NC II (Course Duration: 14 Months): The course focuses on making some of the Bhutanese iconographies and statues.</p>\n<!-- /wp:paragraph -->', 'Sculpture NC II', '', 'inherit', 'closed', 'closed', '', '318-revision-v1', '', '', '2025-04-16 19:41:31', '2025-04-16 13:41:31', '', 318, 'https://czc.samu.bt/?p=319', 0, 'revision', '', 0),
(320, 1, '2025-04-16 19:42:27', '2025-04-16 13:42:27', '<!-- wp:paragraph -->\n<p>Sculpture NC III (Course Duration: 24 Months): It is a course on Bhutanese mask making (using clay/PaperMache), Statue making and some human/animal modellings</p>\n<!-- /wp:paragraph -->', 'Sculpture NC III', '', 'publish', 'closed', 'closed', '', 'sculpture-nc-iii', '', '', '2025-04-16 19:42:28', '2025-04-16 13:42:28', '', 67, 'https://czc.samu.bt/?page_id=320', 0, 'page', '', 0),
(321, 1, '2025-04-16 19:42:27', '2025-04-16 13:42:27', '<!-- wp:paragraph -->\n<p>Sculpture NC III (Course Duration: 24 Months): It is a course on Bhutanese mask making (using clay/PaperMache), Statue making and some human/animal modellings</p>\n<!-- /wp:paragraph -->', 'Sculpture NC III', '', 'inherit', 'closed', 'closed', '', '320-revision-v1', '', '', '2025-04-16 19:42:27', '2025-04-16 13:42:27', '', 320, 'https://czc.samu.bt/?p=321', 0, 'revision', '', 0),
(322, 1, '2025-04-16 19:43:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-04-16 19:43:12', '0000-00-00 00:00:00', '', 0, 'https://czc.samu.bt/?page_id=322', 0, 'page', '', 0),
(323, 1, '2025-04-16 19:45:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-04-16 19:45:44', '0000-00-00 00:00:00', '', 0, 'https://czc.samu.bt/?page_id=323', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_termmeta`
--

CREATE TABLE `tti_bt_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_terms`
--

CREATE TABLE `tti_bt_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_terms`
--

INSERT INTO `tti_bt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'SpotLight', 'spotlight', 0),
(3, 'Announcements', 'announcements', 0),
(4, 'Blog', 'blog', 0),
(5, 'Slider', 'slider', 0),
(6, 'Career', 'career', 0),
(7, 'Tender', 'tender', 0),
(8, 'Events', 'events', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_term_relationships`
--

CREATE TABLE `tti_bt_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_term_relationships`
--

INSERT INTO `tti_bt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(63, 2, 0),
(76, 5, 0),
(105, 6, 0),
(108, 6, 0),
(108, 7, 0),
(225, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_term_taxonomy`
--

CREATE TABLE `tti_bt_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_term_taxonomy`
--

INSERT INTO `tti_bt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_usermeta`
--

CREATE TABLE `tti_bt_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_usermeta`
--

INSERT INTO `tti_bt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tti_bt_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tti_bt_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'tti_bt_dashboard_quick_press_last_post_id', '284'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'tti_bt_persisted_preferences', 'a:4:{s:4:\"core\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:23:\"isPublishSidebarEnabled\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:0;}s:9:\"_modified\";s:24:\"2025-03-12T14:12:56.758Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(20, 1, 'tti_bt_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(21, 1, 'tti_bt_user-settings-time', '1744809766'),
(22, 1, 'session_tokens', 'a:1:{s:64:\"30d3386a57489e416594c502dbe809c65c16dfd9026111cf3b344542ab456cf9\";a:4:{s:10:\"expiration\";i:1744982063;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36\";s:5:\"login\";i:1744809263;}}'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'edit_page_per_page', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_users`
--

CREATE TABLE `tti_bt_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tti_bt_users`
--

INSERT INTO `tti_bt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3v.VMMtP0bW3lzPZ3M525hhrZuU.c/', 'admin', 'ldjigme@gmail.com', 'https://czc.samu.bt', '2025-02-19 02:37:00', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_bouncevisits`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_bouncevisits` (
`visitId` bigint unsigned
,`visitLastActionTime` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_browsers`
--

CREATE TABLE `tti_bt_wsm_browsers` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_browsers`
--

INSERT INTO `tti_bt_wsm_browsers` (`id`, `name`) VALUES
(1, 'Mozilla Firefox'),
(2, 'Google Chrome'),
(3, 'Opera'),
(4, 'Safari'),
(5, 'Internet Explorer'),
(6, 'Micorsoft Edge'),
(7, 'Torch'),
(8, 'Maxthon'),
(9, 'SeaMonkey'),
(10, 'Avant Browser'),
(11, 'Deepnet Explorer'),
(12, 'UE Browser');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_countries`
--

CREATE TABLE `tti_bt_wsm_countries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `alpha2Code` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `alpha3Code` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `numericCode` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_countries`
--

INSERT INTO `tti_bt_wsm_countries` (`id`, `name`, `alpha2Code`, `alpha3Code`, `numericCode`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4),
(2, '&Aring;land Islands', 'AX', 'ALA', 248),
(3, 'Albania', 'AL', 'ALB', 8),
(4, 'Algeria', 'DZ', 'DZA', 12),
(5, 'American Samoa', 'AS', 'ASM', 16),
(6, 'Andorra', 'AD', 'AND', 20),
(7, 'Angola', 'AO', 'AGO', 24),
(8, 'Anguilla', 'AI', 'AIA', 660),
(9, 'Antarctica', 'AQ', 'ATA', 10),
(10, 'Antigua and Barbuda', 'AG', 'ATG', 28),
(11, 'Argentina', 'AR', 'ARG', 32),
(12, 'Armenia', 'AM', 'ARM', 51),
(13, 'Aruba', 'AW', 'ABW', 533),
(14, 'Australia', 'AU', 'AUS', 36),
(15, 'Austria', 'AT', 'AUT', 40),
(16, 'Azerbaijan', 'AZ', 'AZE', 31),
(17, 'Bahamas', 'BS', 'BHS', 44),
(18, 'Bahrain', 'BH', 'BHR', 48),
(19, 'Bangladesh', 'BD', 'BGD', 50),
(20, 'Barbados', 'BB', 'BRB', 52),
(21, 'Belarus', 'BY', 'BLR', 112),
(22, 'Belgium', 'BE', 'BEL', 56),
(23, 'Belize', 'BZ', 'BLZ', 84),
(24, 'Benin', 'BJ', 'BEN', 204),
(25, 'Bermuda', 'BM', 'BMU', 60),
(26, 'Bhutan', 'BT', 'BTN', 64),
(27, 'Bolivia, Plurinational State of', 'BO', 'BOL', 68),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 535),
(29, 'Bosnia and Herzegovina', 'BA', 'BIH', 70),
(30, 'Botswana', 'BW', 'BWA', 72),
(31, 'Bouvet Island', 'BV', 'BVT', 74),
(32, 'Brazil', 'BR', 'BRA', 76),
(33, 'British Indian Ocean Territory', 'IO', 'IOT', 86),
(34, 'Brunei Darussalam', 'BN', 'BRN', 96),
(35, 'Bulgaria', 'BG', 'BGR', 100),
(36, 'Burkina Faso', 'BF', 'BFA', 854),
(37, 'Burundi', 'BI', 'BDI', 108),
(38, 'Cambodia', 'KH', 'KHM', 116),
(39, 'Cameroon', 'CM', 'CMR', 120),
(40, 'Canada', 'CA', 'CAN', 124),
(41, 'Cape Verde', 'CV', 'CPV', 132),
(42, 'Cayman Islands', 'KY', 'CYM', 136),
(43, 'Central African Republic', 'CF', 'CAF', 140),
(44, 'Chad', 'TD', 'TCD', 148),
(45, 'Chile', 'CL', 'CHL', 152),
(46, 'China', 'CN', 'CHN', 156),
(47, 'Christmas Island', 'CX', 'CXR', 162),
(48, 'Cocos (Keeling) Islands', 'CC', 'CCK', 166),
(49, 'Colombia', 'CO', 'COL', 170),
(50, 'Comoros', 'KM', 'COM', 174),
(51, 'Congo', 'CG', 'COG', 178),
(52, 'Congo, the Democratic Republic of the', 'CD', 'COD', 180),
(53, 'Cook Islands', 'CK', 'COK', 184),
(54, 'Costa Rica', 'CR', 'CRI', 188),
(55, 'C&ocirc;te d\'\'Ivoire', 'CI', 'CIV', 384),
(56, 'Croatia', 'HR', 'HRV', 191),
(57, 'Cuba', 'CU', 'CUB', 192),
(58, 'Cura', 'CW', 'CUW', 531),
(59, 'Cyprus', 'CY', 'CYP', 196),
(60, 'Czech Republic', 'CZ', 'CZE', 203),
(61, 'Denmark', 'DK', 'DNK', 208),
(62, 'Djibouti', 'DJ', 'DJI', 262),
(63, 'Dominica', 'DM', 'DMA', 212),
(64, 'Dominican Republic', 'DO', 'DOM', 214),
(65, 'Ecuador', 'EC', 'ECU', 218),
(66, 'Egypt', 'EG', 'EGY', 818),
(67, 'El Salvador', 'SV', 'SLV', 222),
(68, 'Equatorial Guinea', 'GQ', 'GNQ', 226),
(69, 'Eritrea', 'ER', 'ERI', 232),
(70, 'Estonia', 'EE', 'EST', 233),
(71, 'Ethiopia', 'ET', 'ETH', 231),
(72, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 238),
(73, 'Faroe Islands', 'FO', 'FRO', 234),
(74, 'Fiji', 'FJ', 'FJI', 242),
(75, 'Finland', 'FI', 'FIN', 246),
(76, 'France', 'FR', 'FRA', 250),
(77, 'French Guiana', 'GF', 'GUF', 254),
(78, 'French Polynesia', 'PF', 'PYF', 258),
(79, 'French Southern Territories', 'TF', 'ATF', 260),
(80, 'Gabon', 'GA', 'GAB', 266),
(81, 'Gambia', 'GM', 'GMB', 270),
(82, 'Georgia', 'GE', 'GEO', 268),
(83, 'Germany', 'DE', 'DEU', 276),
(84, 'Ghana', 'GH', 'GHA', 288),
(85, 'Gibraltar', 'GI', 'GIB', 292),
(86, 'Greece', 'GR', 'GRC', 300),
(87, 'Greenland', 'GL', 'GRL', 304),
(88, 'Grenada', 'GD', 'GRD', 308),
(89, 'Guadeloupe', 'GP', 'GLP', 312),
(90, 'Guam', 'GU', 'GUM', 316),
(91, 'Guatemala', 'GT', 'GTM', 320),
(92, 'Guernsey', 'GG', 'GGY', 831),
(93, 'Guinea', 'GN', 'GIN', 324),
(94, 'Guinea-Bissau', 'GW', 'GNB', 624),
(95, 'Guyana', 'GY', 'GUY', 328),
(96, 'Haiti', 'HT', 'HTI', 332),
(97, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334),
(98, 'Holy See (Vatican City State)', 'VA', 'VAT', 336),
(99, 'Honduras', 'HN', 'HND', 340),
(100, 'Hong Kong', 'HK', 'HKG', 344),
(101, 'Hungary', 'HU', 'HUN', 348),
(102, 'Iceland', 'IS', 'ISL', 352),
(103, 'India', 'IN', 'IND', 356),
(104, 'Indonesia', 'ID', 'IDN', 360),
(105, 'Iran, Islamic Republic of', 'IR', 'IRN', 364),
(106, 'Iraq', 'IQ', 'IRQ', 368),
(107, 'Ireland', 'IE', 'IRL', 372),
(108, 'Isle of Man', 'IM', 'IMN', 833),
(109, 'Israel', 'IL', 'ISR', 376),
(110, 'Italy', 'IT', 'ITA', 380),
(111, 'Jamaica', 'JM', 'JAM', 388),
(112, 'Japan', 'JP', 'JPN', 392),
(113, 'Jersey', 'JE', 'JEY', 832),
(114, 'Jordan', 'JO', 'JOR', 400),
(115, 'Kazakhstan', 'KZ', 'KAZ', 398),
(116, 'Kenya', 'KE', 'KEN', 404),
(117, 'Kiribati', 'KI', 'KIR', 296),
(118, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 408),
(119, 'Korea, Republic of', 'KR', 'KOR', 410),
(120, 'Kuwait', 'KW', 'KWT', 414),
(121, 'Kyrgyzstan', 'KG', 'KGZ', 417),
(122, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 418),
(123, 'Latvia', 'LV', 'LVA', 428),
(124, 'Lebanon', 'LB', 'LBN', 422),
(125, 'Lesotho', 'LS', 'LSO', 426),
(126, 'Liberia', 'LR', 'LBR', 430),
(127, 'Libya', 'LY', 'LBY', 434),
(128, 'Liechtenstein', 'LI', 'LIE', 438),
(129, 'Lithuania', 'LT', 'LTU', 440),
(130, 'Luxembourg', 'LU', 'LUX', 442),
(131, 'Macao', 'MO', 'MAC', 446),
(132, 'Macedonia, the former Yugoslav Republic of', 'MK', 'MKD', 807),
(133, 'Madagascar', 'MG', 'MDG', 450),
(134, 'Malawi', 'MW', 'MWI', 454),
(135, 'Malaysia', 'MY', 'MYS', 458),
(136, 'Maldives', 'MV', 'MDV', 462),
(137, 'Mali', 'ML', 'MLI', 466),
(138, 'Malta', 'MT', 'MLT', 470),
(139, 'Marshall Islands', 'MH', 'MHL', 584),
(140, 'Martinique', 'MQ', 'MTQ', 474),
(141, 'Mauritania', 'MR', 'MRT', 478),
(142, 'Mauritius', 'MU', 'MUS', 480),
(143, 'Mayotte', 'YT', 'MYT', 175),
(144, 'Mexico', 'MX', 'MEX', 484),
(145, 'Micronesia, Federated States of', 'FM', 'FSM', 583),
(146, 'Moldova, Republic of', 'MD', 'MDA', 498),
(147, 'Monaco', 'MC', 'MCO', 492),
(148, 'Mongolia', 'MN', 'MNG', 496),
(149, 'Montenegro', 'ME', 'MNE', 499),
(150, 'Montserrat', 'MS', 'MSR', 500),
(151, 'Morocco', 'MA', 'MAR', 504),
(152, 'Mozambique', 'MZ', 'MOZ', 508),
(153, 'Myanmar', 'MM', 'MMR', 104),
(154, 'Namibia', 'NA', 'NAM', 516),
(155, 'Nauru', 'NR', 'NRU', 520),
(156, 'Nepal', 'NP', 'NPL', 524),
(157, 'Netherlands', 'NL', 'NLD', 528),
(158, 'New Caledonia', 'NC', 'NCL', 540),
(159, 'New Zealand', 'NZ', 'NZL', 554),
(160, 'Nicaragua', 'NI', 'NIC', 558),
(161, 'Niger', 'NE', 'NER', 562),
(162, 'Nigeria', 'NG', 'NGA', 566),
(163, 'Niue', 'NU', 'NIU', 570),
(164, 'Norfolk Island', 'NF', 'NFK', 574),
(165, 'Northern Mariana Islands', 'MP', 'MNP', 580),
(166, 'Norway', 'NO', 'NOR', 578),
(167, 'Oman', 'OM', 'OMN', 512),
(168, 'Pakistan', 'PK', 'PAK', 586),
(169, 'Palau', 'PW', 'PLW', 585),
(170, 'Palestine, State of', 'PS', 'PSE', 275),
(171, 'Panama', 'PA', 'PAN', 591),
(172, 'Papua New Guinea', 'PG', 'PNG', 598),
(173, 'Paraguay', 'PY', 'PRY', 600),
(174, 'Peru', 'PE', 'PER', 604),
(175, 'Philippines', 'PH', 'PHL', 608),
(176, 'Pitcairn', 'PN', 'PCN', 612),
(177, 'Poland', 'PL', 'POL', 616),
(178, 'Portugal', 'PT', 'PRT', 620),
(179, 'Puerto Rico', 'PR', 'PRI', 630),
(180, 'Qatar', 'QA', 'QAT', 634),
(181, 'R&eacute;union', 'RE', 'REU', 638),
(182, 'Romania', 'RO', 'ROU', 642),
(183, 'Russian Federation', 'RU', 'RUS', 643),
(184, 'Rwanda', 'RW', 'RWA', 646),
(185, 'Saint Barth&eacute;lemy', 'BL', 'BLM', 652),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 654),
(187, 'Saint Kitts and Nevis', 'KN', 'KNA', 659),
(188, 'Saint Lucia', 'LC', 'LCA', 662),
(189, 'Saint Martin (French part)', 'MF', 'MAF', 663),
(190, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666),
(191, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670),
(192, 'Samoa', 'WS', 'WSM', 882),
(193, 'San Marino', 'SM', 'SMR', 674),
(194, 'Sao Tome and Principe', 'ST', 'STP', 678),
(195, 'Saudi Arabia', 'SA', 'SAU', 682),
(196, 'Senegal', 'SN', 'SEN', 686),
(197, 'Serbia', 'RS', 'SRB', 688),
(198, 'Seychelles', 'SC', 'SYC', 690),
(199, 'Sierra Leone', 'SL', 'SLE', 694),
(200, 'Singapore', 'SG', 'SGP', 702),
(201, 'Sint Maarten (Dutch part)', 'SX', 'SXM', 534),
(202, 'Slovakia', 'SK', 'SVK', 703),
(203, 'Slovenia', 'SI', 'SVN', 705),
(204, 'Solomon Islands', 'SB', 'SLB', 90),
(205, 'Somalia', 'SO', 'SOM', 706),
(206, 'South Africa', 'ZA', 'ZAF', 710),
(207, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239),
(208, 'South Sudan', 'SS', 'SSD', 728),
(209, 'Spain', 'ES', 'ESP', 724),
(210, 'Sri Lanka', 'LK', 'LKA', 144),
(211, 'Sudan', 'SD', 'SDN', 729),
(212, 'Suriname', 'SR', 'SUR', 740),
(213, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744),
(214, 'Swaziland', 'SZ', 'SWZ', 748),
(215, 'Sweden', 'SE', 'SWE', 752),
(216, 'Switzerland', 'CH', 'CHE', 756),
(217, 'Syrian Arab Republic', 'SY', 'SYR', 760),
(218, 'Taiwan, Province of China', 'TW', 'TWN', 158),
(219, 'Tajikistan', 'TJ', 'TJK', 762),
(220, 'Tanzania, United Republic of', 'TZ', 'TZA', 834),
(221, 'Thailand', 'TH', 'THA', 764),
(222, 'Timor-Leste', 'TL', 'TLS', 626),
(223, 'Togo', 'TG', 'TGO', 768),
(224, 'Tokelau', 'TK', 'TKL', 772),
(225, 'Tonga', 'TO', 'TON', 776),
(226, 'Trinidad and Tobago', 'TT', 'TTO', 780),
(227, 'Tunisia', 'TN', 'TUN', 788),
(228, 'Turkey', 'TR', 'TUR', 792),
(229, 'Turkmenistan', 'TM', 'TKM', 795),
(230, 'Turks and Caicos Islands', 'TC', 'TCA', 796),
(231, 'Tuvalu', 'TV', 'TUV', 798),
(232, 'Uganda', 'UG', 'UGA', 800),
(233, 'Ukraine', 'UA', 'UKR', 804),
(234, 'United Arab Emirates', 'AE', 'ARE', 784),
(235, 'United Kingdom', 'GB', 'GBR', 826),
(236, 'United States', 'US', 'USA', 840),
(237, 'United States Minor Outlying Islands', 'UM', 'UMI', 581),
(238, 'Uruguay', 'UY', 'URY', 858),
(239, 'Uzbekistan', 'UZ', 'UZB', 860),
(240, 'Vanuatu', 'VU', 'VUT', 548),
(241, 'Venezuela, Bolivarian Republic of', 'VE', 'VEN', 862),
(242, 'Viet Nam', 'VN', 'VNM', 704),
(243, 'Virgin Islands, British', 'VG', 'VGB', 92),
(244, 'Virgin Islands, U.S.', 'VI', 'VIR', 850),
(245, 'Wallis and Futuna', 'WF', 'WLF', 876),
(246, 'Western Sahara', 'EH', 'ESH', 732),
(247, 'Yemen', 'YE', 'YEM', 887),
(248, 'Zambia', 'ZM', 'ZMB', 894),
(249, 'Zimbabwe', 'ZW', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_dailyhourlyreport`
--

CREATE TABLE `tti_bt_wsm_dailyhourlyreport` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `reportDate` datetime NOT NULL,
  `content` text NOT NULL,
  `timezone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_datewisebounce`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_datewisebounce` (
`bounce` bigint
,`recordDate` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_datewisebouncerate`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_datewisebouncerate` (
`bounce` bigint
,`bRatePageViews` decimal(27,4)
,`bRateVisitors` decimal(27,4)
,`pageViews` decimal(42,0)
,`recordDate` varchar(10)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_datewisefirstvisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_datewisefirstvisitors` (
`recordDate` varchar(10)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_datewisepageviews`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_datewisepageviews` (
`pageViews` decimal(42,0)
,`recordDate` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_datewisevisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_datewisevisitors` (
`recordDate` varchar(10)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_datewise_report`
--

CREATE TABLE `tti_bt_wsm_datewise_report` (
  `id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `normal` int NOT NULL DEFAULT '0',
  `hour` int NOT NULL DEFAULT '0',
  `search_engine` varchar(255) NOT NULL DEFAULT '',
  `browser` int NOT NULL DEFAULT '0',
  `screen` int NOT NULL DEFAULT '0',
  `country` int NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `operating_system` int NOT NULL DEFAULT '0',
  `url_id` int NOT NULL DEFAULT '0',
  `total_page_views` int NOT NULL DEFAULT '0',
  `total_visitors` int NOT NULL DEFAULT '0',
  `total_first_time_visitors` int NOT NULL DEFAULT '0',
  `total_bounce` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_hourwisebounce`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_hourwisebounce` (
`bounce` bigint
,`hour` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_hourwisebouncerate`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_hourwisebouncerate` (
`bounce` bigint
,`bRatePageViews` decimal(27,4)
,`bRateVisitors` decimal(27,4)
,`hour` int
,`pageViews` decimal(42,0)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_hourwisefirstvisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_hourwisefirstvisitors` (
`hour` int
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_hourwisepageviews`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_hourwisepageviews` (
`hour` int
,`pageViews` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_hourwisevisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_hourwisevisitors` (
`hour` int
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_loguniquevisit`
--

CREATE TABLE `tti_bt_wsm_loguniquevisit` (
  `id` bigint UNSIGNED NOT NULL,
  `siteId` int UNSIGNED NOT NULL,
  `visitorId` varchar(20) NOT NULL,
  `visitLastActionTime` datetime NOT NULL,
  `configId` varchar(20) NOT NULL,
  `ipAddress` varchar(16) NOT NULL,
  `userId` varchar(200) DEFAULT NULL,
  `firstActionVisitTime` datetime NOT NULL,
  `daysSinceFirstVisit` smallint UNSIGNED DEFAULT NULL,
  `returningVisitor` tinyint(1) DEFAULT NULL,
  `visitCount` int UNSIGNED NOT NULL,
  `visitEntryURLId` int UNSIGNED DEFAULT NULL,
  `visitExitURLId` int UNSIGNED DEFAULT '0',
  `visitTotalActions` int UNSIGNED DEFAULT NULL,
  `refererUrlId` int DEFAULT NULL,
  `browserLang` varchar(20) DEFAULT NULL,
  `browserId` int UNSIGNED DEFAULT NULL,
  `deviceType` varchar(20) DEFAULT NULL,
  `oSystemId` int UNSIGNED DEFAULT NULL,
  `currentLocalTime` time DEFAULT NULL,
  `daysSinceLastVisit` smallint UNSIGNED DEFAULT NULL,
  `totalTimeVisit` int UNSIGNED NOT NULL,
  `resolutionId` int UNSIGNED DEFAULT NULL,
  `cookie` tinyint(1) DEFAULT NULL,
  `director` tinyint(1) DEFAULT NULL,
  `flash` tinyint(1) DEFAULT NULL,
  `gears` tinyint(1) DEFAULT NULL,
  `java` tinyint(1) DEFAULT NULL,
  `pdf` tinyint(1) DEFAULT NULL,
  `quicktime` tinyint(1) DEFAULT NULL,
  `realplayer` tinyint(1) DEFAULT NULL,
  `silverlight` tinyint(1) DEFAULT NULL,
  `windowsmedia` tinyint(1) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `countryId` int UNSIGNED NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `regionId` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_logvisit`
--

CREATE TABLE `tti_bt_wsm_logvisit` (
  `id` bigint UNSIGNED NOT NULL,
  `siteId` int UNSIGNED NOT NULL,
  `visitorId` varchar(20) NOT NULL,
  `visitId` bigint UNSIGNED NOT NULL,
  `refererUrlId` int UNSIGNED DEFAULT '0',
  `keyword` varchar(200) DEFAULT NULL,
  `serverTime` datetime NOT NULL,
  `timeSpentRef` int UNSIGNED NOT NULL,
  `URLId` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_monthlydailyreport`
--

CREATE TABLE `tti_bt_wsm_monthlydailyreport` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `reportMonthYear` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `timezone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_monthwisebounce`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_monthwisebounce` (
`bounce` bigint
,`recordMonth` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_monthwisebouncerate`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_monthwisebouncerate` (
`bounce` bigint
,`bRatePageViews` decimal(27,4)
,`bRateVisitors` decimal(27,4)
,`pageViews` decimal(42,0)
,`recordMonth` varchar(7)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_monthwisefirstvisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_monthwisefirstvisitors` (
`recordMonth` varchar(7)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_monthwisepageviews`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_monthwisepageviews` (
`pageViews` decimal(42,0)
,`recordMonth` varchar(7)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_monthwisevisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_monthwisevisitors` (
`recordMonth` varchar(7)
,`visitors` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_monthwise_report`
--

CREATE TABLE `tti_bt_wsm_monthwise_report` (
  `id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `normal` int NOT NULL DEFAULT '0',
  `hour` int NOT NULL DEFAULT '0',
  `search_engine` varchar(255) NOT NULL DEFAULT '',
  `browser` int NOT NULL DEFAULT '0',
  `screen` int NOT NULL DEFAULT '0',
  `country` int NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `operating_system` int NOT NULL DEFAULT '0',
  `url_id` int NOT NULL DEFAULT '0',
  `total_page_views` int NOT NULL DEFAULT '0',
  `total_visitors` int NOT NULL DEFAULT '0',
  `total_first_time_visitors` int NOT NULL DEFAULT '0',
  `total_bounce` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_osystems`
--

CREATE TABLE `tti_bt_wsm_osystems` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_osystems`
--

INSERT INTO `tti_bt_wsm_osystems` (`id`, `name`) VALUES
(1, 'Windows 98'),
(2, 'Windows CE'),
(3, 'Linux'),
(4, 'Unix'),
(5, 'Windows 2000'),
(6, 'Windows XP'),
(7, 'Windows 8'),
(8, 'Windows 10'),
(9, 'Mac OS'),
(10, 'Android'),
(11, 'IOS');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_pageviews`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_pageviews` (
`countryId` int unsigned
,`keyword` varchar(200)
,`refererUrlId` int unsigned
,`regionId` tinyint
,`totalViews` bigint
,`URLId` int unsigned
,`visitId` bigint unsigned
,`visitLastActionTime` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_regions`
--

CREATE TABLE `tti_bt_wsm_regions` (
  `id` tinyint UNSIGNED NOT NULL,
  `code` char(2) NOT NULL COMMENT 'Region code',
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_regions`
--

INSERT INTO `tti_bt_wsm_regions` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Africa'),
(2, 'AN', 'Antarctica'),
(3, 'AS', 'Asia'),
(4, 'EU', 'Europe'),
(5, 'NA', 'North America'),
(6, 'OC', 'Oceania'),
(7, 'SA', 'South America');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_resolutions`
--

CREATE TABLE `tti_bt_wsm_resolutions` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_resolutions`
--

INSERT INTO `tti_bt_wsm_resolutions` (`id`, `name`) VALUES
(1, '640x480'),
(2, '800x600'),
(3, '960x720'),
(4, '1024x768'),
(5, '1280x960'),
(6, '1400x1050'),
(7, '1440x1080'),
(8, '1600x1200'),
(9, '1856x1392'),
(10, '1920x1440'),
(11, '2048x1536'),
(12, '1280x800'),
(13, '1440x900'),
(14, '1680x1050'),
(15, '1920x1200'),
(16, '2560x1600'),
(17, '1024x576'),
(18, '1152x648'),
(19, '1280x720'),
(20, '1366x768'),
(21, '1600x900'),
(22, '1920x1080'),
(23, '2560x1440'),
(24, '3840x2160');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_searchengines`
--

CREATE TABLE `tti_bt_wsm_searchengines` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_searchengines`
--

INSERT INTO `tti_bt_wsm_searchengines` (`id`, `name`) VALUES
(1, 'Google'),
(2, 'Bing'),
(3, 'Yahoo'),
(4, 'Baidu'),
(5, 'AOL'),
(6, 'Ask'),
(7, 'Excite'),
(8, 'Duck Duck Go'),
(9, 'WolframAlpha'),
(10, 'Yandex'),
(11, 'Lycos'),
(12, 'Chacha');

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_toolbars`
--

CREATE TABLE `tti_bt_wsm_toolbars` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tti_bt_wsm_toolbars`
--

INSERT INTO `tti_bt_wsm_toolbars` (`id`, `name`) VALUES
(1, 'Alexa'),
(2, 'AOL'),
(3, 'Bing'),
(4, 'Data'),
(5, 'Google'),
(6, 'Kiwee'),
(7, 'Mirar'),
(8, 'Windows Live'),
(9, 'Yahoo');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_uniquevisitors`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_uniquevisitors` (
`firstVisitTime` datetime
,`id` bigint unsigned
,`refererUrlId` int
,`totalTimeVisit` decimal(32,0)
,`visitorId` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_url_log`
--

CREATE TABLE `tti_bt_wsm_url_log` (
  `id` int UNSIGNED NOT NULL,
  `pageId` int UNSIGNED DEFAULT NULL,
  `title` text,
  `hash` varchar(20) NOT NULL,
  `protocol` varchar(10) NOT NULL,
  `url` text,
  `searchEngine` int UNSIGNED DEFAULT NULL,
  `toolBar` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tti_bt_wsm_visitorinfo`
-- (See below for the actual view)
--
CREATE TABLE `tti_bt_wsm_visitorinfo` (
`alpha2Code` varchar(2)
,`browser` varchar(255)
,`city` varchar(255)
,`country` varchar(255)
,`deviceType` varchar(20)
,`hits` bigint
,`ipAddress` varchar(16)
,`latitude` decimal(9,6)
,`longitude` decimal(9,6)
,`osystem` varchar(255)
,`refUrl` mediumtext
,`resolution` varchar(255)
,`searchEngine` varchar(255)
,`serverTime` datetime
,`title` text
,`toolBar` varchar(255)
,`url` mediumtext
,`urlId` int unsigned
,`userId` varchar(200)
,`visitId` bigint unsigned
,`visitLastActionTime` datetime
,`visitorId` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_yearlymonthlyreport`
--

CREATE TABLE `tti_bt_wsm_yearlymonthlyreport` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `reportYear` varchar(10) NOT NULL,
  `content` text NOT NULL,
  `timezone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tti_bt_wsm_yearwise_report`
--

CREATE TABLE `tti_bt_wsm_yearwise_report` (
  `id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `normal` int NOT NULL DEFAULT '0',
  `hour` int NOT NULL DEFAULT '0',
  `search_engine` varchar(255) NOT NULL DEFAULT '',
  `browser` int NOT NULL DEFAULT '0',
  `screen` int NOT NULL DEFAULT '0',
  `country` int NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '',
  `operating_system` int NOT NULL DEFAULT '0',
  `url_id` int NOT NULL DEFAULT '0',
  `total_page_views` int NOT NULL DEFAULT '0',
  `total_visitors` int NOT NULL DEFAULT '0',
  `total_first_time_visitors` int NOT NULL DEFAULT '0',
  `total_bounce` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_bouncevisits`
--
DROP TABLE IF EXISTS `tti_bt_wsm_bouncevisits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_bouncevisits`  AS SELECT `tti_bt_wsm_pageviews`.`visitId` AS `visitId`, `tti_bt_wsm_pageviews`.`visitLastActionTime` AS `visitLastActionTime` FROM `tti_bt_wsm_pageviews` GROUP BY `tti_bt_wsm_pageviews`.`visitId` HAVING (count(`tti_bt_wsm_pageviews`.`URLId`) = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_datewisebounce`
--
DROP TABLE IF EXISTS `tti_bt_wsm_datewisebounce`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_datewisebounce`  AS SELECT date_format(convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-%d') AS `recordDate`, count(0) AS `bounce` FROM `tti_bt_wsm_bouncevisits` GROUP BY date_format(convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-%d') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_datewisebouncerate`
--
DROP TABLE IF EXISTS `tti_bt_wsm_datewisebouncerate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_datewisebouncerate`  AS SELECT `dwb`.`recordDate` AS `recordDate`, `dwb`.`bounce` AS `bounce`, `dwp`.`pageViews` AS `pageViews`, `dwv`.`visitors` AS `visitors`, ((`dwb`.`bounce` / `dwp`.`pageViews`) * 100) AS `bRatePageViews`, ((`dwb`.`bounce` / `dwv`.`visitors`) * 100) AS `bRateVisitors` FROM ((`tti_bt_wsm_datewisebounce` `dwb` left join `tti_bt_wsm_datewisepageviews` `dwp` on((`dwb`.`recordDate` = `dwp`.`recordDate`))) left join `tti_bt_wsm_datewisevisitors` `dwv` on((`dwb`.`recordDate` = `dwv`.`recordDate`))) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_datewisefirstvisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_datewisefirstvisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_datewisefirstvisitors`  AS SELECT date_format(convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00'),'%Y-%m-%d') AS `recordDate`, count(`tti_bt_wsm_uniquevisitors`.`visitorId`) AS `visitors` FROM `tti_bt_wsm_uniquevisitors` GROUP BY date_format(convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00'),'%Y-%m-%d') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_datewisepageviews`
--
DROP TABLE IF EXISTS `tti_bt_wsm_datewisepageviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_datewisepageviews`  AS SELECT date_format(convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-%d') AS `recordDate`, sum(`tti_bt_wsm_pageviews`.`totalViews`) AS `pageViews` FROM `tti_bt_wsm_pageviews` GROUP BY date_format(convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-%d') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_datewisevisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_datewisevisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_datewisevisitors`  AS SELECT date_format(convert_tz(`tti_bt_wsm_loguniquevisit`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-%d') AS `recordDate`, count(0) AS `visitors` FROM `tti_bt_wsm_loguniquevisit` GROUP BY date_format(convert_tz(`tti_bt_wsm_loguniquevisit`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-%d') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_hourwisebounce`
--
DROP TABLE IF EXISTS `tti_bt_wsm_hourwisebounce`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_hourwisebounce`  AS SELECT hour(convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00')) AS `hour`, count(0) AS `bounce` FROM `tti_bt_wsm_bouncevisits` WHERE (convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00') >= '2025-03-06 00:00:00') GROUP BY hour(convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00')) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_hourwisebouncerate`
--
DROP TABLE IF EXISTS `tti_bt_wsm_hourwisebouncerate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_hourwisebouncerate`  AS SELECT `hwb`.`hour` AS `hour`, `hwb`.`bounce` AS `bounce`, `hwp`.`pageViews` AS `pageViews`, `hwv`.`visitors` AS `visitors`, ((`hwb`.`bounce` / `hwp`.`pageViews`) * 100) AS `bRatePageViews`, ((`hwb`.`bounce` / `hwv`.`visitors`) * 100) AS `bRateVisitors` FROM ((`tti_bt_wsm_hourwisebounce` `hwb` left join `tti_bt_wsm_hourwisepageviews` `hwp` on((`hwb`.`hour` = `hwp`.`hour`))) left join `tti_bt_wsm_hourwisevisitors` `hwv` on((`hwb`.`hour` = `hwv`.`hour`))) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_hourwisefirstvisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_hourwisefirstvisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_hourwisefirstvisitors`  AS SELECT hour(convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00')) AS `hour`, count(0) AS `visitors` FROM `tti_bt_wsm_uniquevisitors` WHERE (convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00') >= '2025-03-06 00:00:00') GROUP BY hour(convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00')) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_hourwisepageviews`
--
DROP TABLE IF EXISTS `tti_bt_wsm_hourwisepageviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_hourwisepageviews`  AS SELECT hour(convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00')) AS `hour`, sum(`tti_bt_wsm_pageviews`.`totalViews`) AS `pageViews` FROM `tti_bt_wsm_pageviews` WHERE (convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00') >= '2025-03-06 00:00:00') GROUP BY hour(convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00')) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_hourwisevisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_hourwisevisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_hourwisevisitors`  AS SELECT hour(convert_tz(`tti_bt_wsm_loguniquevisit`.`firstActionVisitTime`,'+00:00','+00:00')) AS `hour`, count(0) AS `visitors` FROM `tti_bt_wsm_loguniquevisit` WHERE (convert_tz(`tti_bt_wsm_loguniquevisit`.`firstActionVisitTime`,'+00:00','+00:00') >= '2025-03-06 00:00:00') GROUP BY hour(convert_tz(`tti_bt_wsm_loguniquevisit`.`firstActionVisitTime`,'+00:00','+00:00')) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_monthwisebounce`
--
DROP TABLE IF EXISTS `tti_bt_wsm_monthwisebounce`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_monthwisebounce`  AS SELECT date_format(convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m') AS `recordMonth`, count(0) AS `bounce` FROM `tti_bt_wsm_bouncevisits` GROUP BY date_format(convert_tz(`tti_bt_wsm_bouncevisits`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m-') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_monthwisebouncerate`
--
DROP TABLE IF EXISTS `tti_bt_wsm_monthwisebouncerate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_monthwisebouncerate`  AS SELECT `mwb`.`recordMonth` AS `recordMonth`, `mwb`.`bounce` AS `bounce`, `mwp`.`pageViews` AS `pageViews`, `mwv`.`visitors` AS `visitors`, ((`mwb`.`bounce` / `mwp`.`pageViews`) * 100) AS `bRatePageViews`, ((`mwb`.`bounce` / `mwv`.`visitors`) * 100) AS `bRateVisitors` FROM ((`tti_bt_wsm_monthwisebounce` `mwb` left join `tti_bt_wsm_monthwisepageviews` `mwp` on((`mwb`.`recordMonth` = `mwp`.`recordMonth`))) left join `tti_bt_wsm_monthwisevisitors` `mwv` on((`mwb`.`recordMonth` = `mwv`.`recordMonth`))) ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_monthwisefirstvisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_monthwisefirstvisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_monthwisefirstvisitors`  AS SELECT date_format(convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00'),'%Y-%m') AS `recordMonth`, count(`tti_bt_wsm_uniquevisitors`.`visitorId`) AS `visitors` FROM `tti_bt_wsm_uniquevisitors` GROUP BY date_format(convert_tz(`tti_bt_wsm_uniquevisitors`.`firstVisitTime`,'+00:00','+00:00'),'%Y-%m') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_monthwisepageviews`
--
DROP TABLE IF EXISTS `tti_bt_wsm_monthwisepageviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_monthwisepageviews`  AS SELECT date_format(convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m') AS `recordMonth`, sum(`tti_bt_wsm_pageviews`.`totalViews`) AS `pageViews` FROM `tti_bt_wsm_pageviews` GROUP BY date_format(convert_tz(`tti_bt_wsm_pageviews`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_monthwisevisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_monthwisevisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_monthwisevisitors`  AS SELECT date_format(convert_tz(`tti_bt_wsm_loguniquevisit`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m') AS `recordMonth`, count(0) AS `visitors` FROM `tti_bt_wsm_loguniquevisit` GROUP BY date_format(convert_tz(`tti_bt_wsm_loguniquevisit`.`visitLastActionTime`,'+00:00','+00:00'),'%Y-%m') ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_pageviews`
--
DROP TABLE IF EXISTS `tti_bt_wsm_pageviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_pageviews`  AS SELECT `lv`.`visitId` AS `visitId`, `lv`.`URLId` AS `URLId`, `lv`.`keyword` AS `keyword`, `lv`.`refererUrlId` AS `refererUrlId`, `lu`.`countryId` AS `countryId`, `lu`.`regionId` AS `regionId`, count(0) AS `totalViews`, max(`lv`.`serverTime`) AS `visitLastActionTime` FROM (`tti_bt_wsm_logvisit` `lv` left join `tti_bt_wsm_loguniquevisit` `lu` on((`lv`.`visitId` = `lu`.`id`))) GROUP BY `lv`.`visitId`, `lv`.`URLId` ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_uniquevisitors`
--
DROP TABLE IF EXISTS `tti_bt_wsm_uniquevisitors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_uniquevisitors`  AS SELECT `lu`.`id` AS `id`, `lu`.`visitorId` AS `visitorId`, sum(`lu`.`totalTimeVisit`) AS `totalTimeVisit`, min(`lv`.`serverTime`) AS `firstVisitTime`, `lu`.`refererUrlId` AS `refererUrlId` FROM (`tti_bt_wsm_loguniquevisit` `lu` left join `tti_bt_wsm_logvisit` `lv` on((`lv`.`visitId` = `lu`.`id`))) GROUP BY `lu`.`visitorId` ;

-- --------------------------------------------------------

--
-- Structure for view `tti_bt_wsm_visitorinfo`
--
DROP TABLE IF EXISTS `tti_bt_wsm_visitorinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tti_bt_wsm_visitorinfo`  AS SELECT `lv`.`visitId` AS `visitId`, `lu`.`userId` AS `userId`, `lv`.`serverTime` AS `serverTime`, `lu`.`visitLastActionTime` AS `visitLastActionTime`, `lv`.`URLId` AS `urlId`, count(`lv`.`URLId`) AS `hits`, `ul`.`title` AS `title`, concat(`ul`.`protocol`,`ul`.`url`) AS `url`, concat(`ul2`.`protocol`,`ul2`.`url`) AS `refUrl`, `lu`.`visitorId` AS `visitorId`, `lu`.`ipAddress` AS `ipAddress`, `lu`.`city` AS `city`, `c`.`alpha2Code` AS `alpha2Code`, `c`.`name` AS `country`, `lu`.`deviceType` AS `deviceType`, `b`.`name` AS `browser`, `os`.`name` AS `osystem`, `lu`.`latitude` AS `latitude`, `lu`.`longitude` AS `longitude`, `r`.`name` AS `resolution`, `se`.`name` AS `searchEngine`, `tb`.`name` AS `toolBar` FROM (((((((((`tti_bt_wsm_logvisit` `lv` left join `tti_bt_wsm_loguniquevisit` `lu` on((`lu`.`id` = `lv`.`visitId`))) left join `tti_bt_wsm_countries` `c` on((`c`.`id` = `lu`.`countryId`))) left join `tti_bt_wsm_browsers` `b` on((`b`.`id` = `lu`.`browserId`))) left join `tti_bt_wsm_resolutions` `r` on((`r`.`id` = `lu`.`resolutionId`))) left join `tti_bt_wsm_url_log` `ul` on((`lv`.`URLId` = `ul`.`id`))) left join `tti_bt_wsm_url_log` `ul2` on((`lv`.`refererUrlId` = `ul2`.`id`))) left join `tti_bt_wsm_searchengines` `se` on((`se`.`id` = `ul`.`searchEngine`))) left join `tti_bt_wsm_toolbars` `tb` on((`tb`.`id` = `ul`.`toolBar`))) left join `tti_bt_wsm_osystems` `os` on((`os`.`id` = `lu`.`oSystemId`))) GROUP BY `lv`.`visitId`, `lv`.`URLId` ORDER BY `lv`.`visitId` DESC, `lv`.`serverTime` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ahc_browsers`
--
ALTER TABLE `ahc_browsers`
  ADD PRIMARY KEY (`bsr_id`);

--
-- Indexes for table `ahc_countries`
--
ALTER TABLE `ahc_countries`
  ADD PRIMARY KEY (`ctr_id`);

--
-- Indexes for table `ahc_daily_visitors_stats`
--
ALTER TABLE `ahc_daily_visitors_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ahc_hits`
--
ALTER TABLE `ahc_hits`
  ADD PRIMARY KEY (`hit_id`);

--
-- Indexes for table `ahc_keywords`
--
ALTER TABLE `ahc_keywords`
  ADD PRIMARY KEY (`kwd_id`);

--
-- Indexes for table `ahc_online_users`
--
ALTER TABLE `ahc_online_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ahc_recent_visitors`
--
ALTER TABLE `ahc_recent_visitors`
  ADD PRIMARY KEY (`vtr_id`);

--
-- Indexes for table `ahc_refering_sites`
--
ALTER TABLE `ahc_refering_sites`
  ADD PRIMARY KEY (`rfr_id`);

--
-- Indexes for table `ahc_searching_visits`
--
ALTER TABLE `ahc_searching_visits`
  ADD PRIMARY KEY (`vtsh_id`);

--
-- Indexes for table `ahc_search_engines`
--
ALTER TABLE `ahc_search_engines`
  ADD PRIMARY KEY (`srh_id`);

--
-- Indexes for table `ahc_settings`
--
ALTER TABLE `ahc_settings`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `ahc_title_traffic`
--
ALTER TABLE `ahc_title_traffic`
  ADD PRIMARY KEY (`til_id`);

--
-- Indexes for table `ahc_visitors`
--
ALTER TABLE `ahc_visitors`
  ADD PRIMARY KEY (`vst_id`),
  ADD KEY `idx_vst_date` (`vst_date`);

--
-- Indexes for table `ahc_visits_time`
--
ALTER TABLE `ahc_visits_time`
  ADD PRIMARY KEY (`vtm_id`);

--
-- Indexes for table `tti_bt_commentmeta`
--
ALTER TABLE `tti_bt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tti_bt_comments`
--
ALTER TABLE `tti_bt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `tti_bt_links`
--
ALTER TABLE `tti_bt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `tti_bt_options`
--
ALTER TABLE `tti_bt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `tti_bt_postmeta`
--
ALTER TABLE `tti_bt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tti_bt_posts`
--
ALTER TABLE `tti_bt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `tti_bt_termmeta`
--
ALTER TABLE `tti_bt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tti_bt_terms`
--
ALTER TABLE `tti_bt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `tti_bt_term_relationships`
--
ALTER TABLE `tti_bt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `tti_bt_term_taxonomy`
--
ALTER TABLE `tti_bt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `tti_bt_usermeta`
--
ALTER TABLE `tti_bt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tti_bt_users`
--
ALTER TABLE `tti_bt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `tti_bt_wsm_browsers`
--
ALTER TABLE `tti_bt_wsm_browsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_countries`
--
ALTER TABLE `tti_bt_wsm_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tti_bt_wsm_dailyhourlyreport`
--
ALTER TABLE `tti_bt_wsm_dailyhourlyreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_datewise_report`
--
ALTER TABLE `tti_bt_wsm_datewise_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_loguniquevisit`
--
ALTER TABLE `tti_bt_wsm_loguniquevisit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_config_datetime` (`configId`,`visitLastActionTime`),
  ADD KEY `index_datetime` (`visitLastActionTime`),
  ADD KEY `index_idvisitor` (`visitorId`);

--
-- Indexes for table `tti_bt_wsm_logvisit`
--
ALTER TABLE `tti_bt_wsm_logvisit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_visitId` (`visitId`),
  ADD KEY `index_siteId_serverTime` (`siteId`,`serverTime`);

--
-- Indexes for table `tti_bt_wsm_monthlydailyreport`
--
ALTER TABLE `tti_bt_wsm_monthlydailyreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_monthwise_report`
--
ALTER TABLE `tti_bt_wsm_monthwise_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_osystems`
--
ALTER TABLE `tti_bt_wsm_osystems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_regions`
--
ALTER TABLE `tti_bt_wsm_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_resolutions`
--
ALTER TABLE `tti_bt_wsm_resolutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_searchengines`
--
ALTER TABLE `tti_bt_wsm_searchengines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_toolbars`
--
ALTER TABLE `tti_bt_wsm_toolbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_url_log`
--
ALTER TABLE `tti_bt_wsm_url_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_hash` (`hash`),
  ADD KEY `index_pageid` (`pageId`);

--
-- Indexes for table `tti_bt_wsm_yearlymonthlyreport`
--
ALTER TABLE `tti_bt_wsm_yearlymonthlyreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tti_bt_wsm_yearwise_report`
--
ALTER TABLE `tti_bt_wsm_yearwise_report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ahc_browsers`
--
ALTER TABLE `ahc_browsers`
  MODIFY `bsr_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ahc_countries`
--
ALTER TABLE `ahc_countries`
  MODIFY `ctr_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `ahc_daily_visitors_stats`
--
ALTER TABLE `ahc_daily_visitors_stats`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ahc_hits`
--
ALTER TABLE `ahc_hits`
  MODIFY `hit_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ahc_keywords`
--
ALTER TABLE `ahc_keywords`
  MODIFY `kwd_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ahc_online_users`
--
ALTER TABLE `ahc_online_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ahc_recent_visitors`
--
ALTER TABLE `ahc_recent_visitors`
  MODIFY `vtr_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ahc_refering_sites`
--
ALTER TABLE `ahc_refering_sites`
  MODIFY `rfr_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ahc_searching_visits`
--
ALTER TABLE `ahc_searching_visits`
  MODIFY `vtsh_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ahc_search_engines`
--
ALTER TABLE `ahc_search_engines`
  MODIFY `srh_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ahc_settings`
--
ALTER TABLE `ahc_settings`
  MODIFY `set_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ahc_title_traffic`
--
ALTER TABLE `ahc_title_traffic`
  MODIFY `til_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ahc_visitors`
--
ALTER TABLE `ahc_visitors`
  MODIFY `vst_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ahc_visits_time`
--
ALTER TABLE `ahc_visits_time`
  MODIFY `vtm_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tti_bt_commentmeta`
--
ALTER TABLE `tti_bt_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_comments`
--
ALTER TABLE `tti_bt_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tti_bt_links`
--
ALTER TABLE `tti_bt_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_options`
--
ALTER TABLE `tti_bt_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1687;

--
-- AUTO_INCREMENT for table `tti_bt_postmeta`
--
ALTER TABLE `tti_bt_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2932;

--
-- AUTO_INCREMENT for table `tti_bt_posts`
--
ALTER TABLE `tti_bt_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `tti_bt_termmeta`
--
ALTER TABLE `tti_bt_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_terms`
--
ALTER TABLE `tti_bt_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tti_bt_term_taxonomy`
--
ALTER TABLE `tti_bt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tti_bt_usermeta`
--
ALTER TABLE `tti_bt_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tti_bt_users`
--
ALTER TABLE `tti_bt_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_browsers`
--
ALTER TABLE `tti_bt_wsm_browsers`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_countries`
--
ALTER TABLE `tti_bt_wsm_countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_dailyhourlyreport`
--
ALTER TABLE `tti_bt_wsm_dailyhourlyreport`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_datewise_report`
--
ALTER TABLE `tti_bt_wsm_datewise_report`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_loguniquevisit`
--
ALTER TABLE `tti_bt_wsm_loguniquevisit`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_logvisit`
--
ALTER TABLE `tti_bt_wsm_logvisit`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_monthlydailyreport`
--
ALTER TABLE `tti_bt_wsm_monthlydailyreport`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_monthwise_report`
--
ALTER TABLE `tti_bt_wsm_monthwise_report`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_osystems`
--
ALTER TABLE `tti_bt_wsm_osystems`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_regions`
--
ALTER TABLE `tti_bt_wsm_regions`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_resolutions`
--
ALTER TABLE `tti_bt_wsm_resolutions`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_searchengines`
--
ALTER TABLE `tti_bt_wsm_searchengines`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_toolbars`
--
ALTER TABLE `tti_bt_wsm_toolbars`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_url_log`
--
ALTER TABLE `tti_bt_wsm_url_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_yearlymonthlyreport`
--
ALTER TABLE `tti_bt_wsm_yearlymonthlyreport`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tti_bt_wsm_yearwise_report`
--
ALTER TABLE `tti_bt_wsm_yearwise_report`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
