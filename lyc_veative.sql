-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 11:01 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyc_veative`
--

-- --------------------------------------------------------

--
-- Table structure for table `cm_adm_master_country`
--

CREATE TABLE `cm_adm_master_country` (
  `COUNTRY_ID` int(5) NOT NULL,
  `ISO2` char(2) DEFAULT NULL,
  `SHORT_NAME` varchar(80) NOT NULL DEFAULT '',
  `LONG_NAME` varchar(80) NOT NULL DEFAULT '',
  `ISO3` char(3) DEFAULT NULL,
  `ISO_4217` varchar(3) NOT NULL,
  `NUMCODE` varchar(6) DEFAULT NULL,
  `UN_MEMBER` varchar(12) DEFAULT NULL,
  `CALLING_CODE` varchar(8) DEFAULT NULL,
  `CCTLD` varchar(5) DEFAULT NULL,
  `STATUS_FLAG` enum('A','I') NOT NULL DEFAULT 'I' COMMENT 'A-Active, I-Inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cm_adm_master_country`
--

INSERT INTO `cm_adm_master_country` (`COUNTRY_ID`, `ISO2`, `SHORT_NAME`, `LONG_NAME`, `ISO3`, `ISO_4217`, `NUMCODE`, `UN_MEMBER`, `CALLING_CODE`, `CCTLD`, `STATUS_FLAG`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 'AFN', '004', 'yes', '+93', '.af', 'I'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', 'EUR', '248', 'no', '+358', '.ax', 'I'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', 'ALL', '008', 'yes', '+355', '.al', 'I'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', 'DZD', '012', 'yes', '+213', '.dz', 'I'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', 'USD', '016', 'no', '+1684', '.as', 'I'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', 'EUR', '020', 'yes', '+376', '.ad', 'I'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', 'AOA', '024', 'yes', '+244', '.ao', 'I'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', 'XCD', '660', 'no', '+1264', '.ai', 'I'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '', '010', 'no', '+672', '.aq', 'I'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 'XCD', '028', 'yes', '+1268', '.ag', 'I'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', 'ARS', '032', 'yes', '+54', '.ar', 'I'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', 'AMD', '051', 'yes', '+374', '.am', 'I'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', 'AWG', '533', 'no', '+297', '.aw', 'I'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', 'AUD', '036', 'yes', '+61', '.au', 'I'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', 'EUR', '040', 'yes', '+43', '.at', 'I'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 'AZN', '031', 'yes', '+994', '.az', 'I'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', 'BSD', '044', 'yes', '+1242', '.bs', 'I'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 'BHD', '048', 'yes', '+973', '.bh', 'I'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', 'BDT', '050', 'yes', '+880', '.bd', 'I'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', 'BBD', '052', 'yes', '+1246', '.bb', 'I'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', 'BYN', '112', 'yes', '+375', '.by', 'I'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 'EUR', '056', 'yes', '+32', '.be', 'I'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', 'BZD', '084', 'yes', '+501', '.bz', 'I'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', 'XOF', '204', 'yes', '+229', '.bj', 'I'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', 'BMD', '060', 'no', '+1441', '.bm', 'I'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 'BTN', '064', 'yes', '+975', '.bt', 'I'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', 'BOB', '068', 'yes', '+591', '.bo', 'I'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', 'USD', '535', 'no', '+599', '.bq', 'I'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 'BAM', '070', 'yes', '+387', '.ba', 'I'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', 'BWP', '072', 'yes', '+267', '.bw', 'I'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '', '074', 'no', '+NONE', '.bv', 'I'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 'BRL', '076', 'yes', '+55', '.br', 'I'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', 'USD', '086', 'no', '+246', '.io', 'I'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', 'BND', '096', 'yes', '+673', '.bn', 'I'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 'BGN', '100', 'yes', '+359', '.bg', 'I'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 'XOF', '854', 'yes', '+226', '.bf', 'I'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', 'BIF', '108', 'yes', '+257', '.bi', 'I'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 'KHR', '116', 'yes', '+855', '.kh', 'I'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 'XAF', '120', 'yes', '+237', '.cm', 'I'),
(40, 'CA', 'Canada', 'Canada', 'CAN', 'CAD', '124', 'yes', '+1', '.ca', 'I'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '', '132', 'yes', '+238', '.cv', 'I'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', 'KYD', '136', 'no', '+1345', '.ky', 'I'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', 'XAF', '140', 'yes', '+236', '.cf', 'I'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', 'XAF', '148', 'yes', '+235', '.td', 'I'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', 'CLP', '152', 'yes', '+56', '.cl', 'I'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', 'CNY', '156', 'yes', '+86', '.cn', 'I'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', 'AUD', '162', 'no', '+61', '.cx', 'I'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 'AUD', '166', 'no', '+61', '.cc', 'I'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', 'COP', '170', 'yes', '+57', '.co', 'I'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', 'KMF', '174', 'yes', '+269', '.km', 'I'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', 'XAF', '178', 'yes', '+242', '.cg', 'I'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '', '184', 'some', '+682', '.ck', 'I'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 'CRC', '188', 'yes', '+506', '.cr', 'I'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '', '384', 'yes', '+225', '.ci', 'I'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', 'HRK', '191', 'yes', '+385', '.hr', 'I'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', 'CUP', '192', 'yes', '+53', '.cu', 'I'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', 'ANG', '531', 'no', '+599', '.cw', 'I'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 'EUR', '196', 'yes', '+357', '.cy', 'I'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', 'CZK', '203', 'yes', '+420', '.cz', 'I'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', 'CDF', '180', 'yes', '+243', '.cd', 'I'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 'DKK', '208', 'yes', '+45', '.dk', 'I'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 'DJF', '262', 'yes', '+253', '.dj', 'I'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 'XCD', '212', 'yes', '+767', '.dm', 'I'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 'DOP', '214', 'yes', '+1809 ', '.do', 'I'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 'USD', '218', 'yes', '+593', '.ec', 'I'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 'EGP', '818', 'yes', '+20', '.eg', 'I'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 'USD', '222', 'yes', '+503', '.sv', 'I'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 'XAF', '226', 'yes', '+240', '.gq', 'I'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', 'ERN', '232', 'yes', '+291', '.er', 'I'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', 'EUR', '233', 'yes', '+372', '.ee', 'I'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 'ETB', '231', 'yes', '+251', '.et', 'I'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', 'FKP', '238', 'no', '+500', '.fk', 'I'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '', '234', 'no', '+298', '.fo', 'I'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', 'FJD', '242', 'yes', '+679', '.fj', 'I'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', 'EUR', '246', 'yes', '+358', '.fi', 'I'),
(76, 'FR', 'France', 'French Republic', 'FRA', 'EUR', '250', 'yes', '+33', '.fr', 'I'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', 'EUR', '254', 'no', '+594', '.gf', 'I'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', 'XPF', '258', 'no', '+689', '.pf', 'I'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '', '260', 'no', NULL, '.tf', 'I'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', 'XAF', '266', 'yes', '+241', '.ga', 'I'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', 'GMD', '270', 'yes', '+220', '.gm', 'I'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', 'GEL', '268', 'yes', '+995', '.ge', 'I'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', 'EUR', '276', 'yes', '+49', '.de', 'I'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', 'GHS', '288', 'yes', '+233', '.gh', 'I'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', 'GIP', '292', 'no', '+350', '.gi', 'I'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', 'EUR', '300', 'yes', '+30', '.gr', 'I'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', 'DKK', '304', 'no', '+299', '.gl', 'I'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', 'XCD', '308', 'yes', '+473', '.gd', 'I'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', 'EUR', '312', 'no', '+590', '.gp', 'I'),
(90, 'GU', 'Guam', 'Guam', 'GUM', 'USD', '316', 'no', '+671', '.gu', 'I'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 'GTQ', '320', 'yes', '+502', '.gt', 'I'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', 'GGP', '831', 'no', '+44', '.gg', 'I'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', 'GNF', '324', 'yes', '+224', '.gn', 'I'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 'XOF', '624', 'yes', '+245', '.gw', 'I'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 'GYD', '328', 'yes', '+592', '.gy', 'I'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', 'HTG', '332', 'yes', '+509', '.ht', 'I'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '', '334', 'no', '+NONE', '.hm', 'I'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', 'HNL', '340', 'yes', '+504', '.hn', 'I'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', 'HKD', '344', 'no', '+852', '.hk', 'I'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', 'HUF', '348', 'yes', '+36', '.hu', 'I'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', 'ISK', '352', 'yes', '+354', '.is', 'I'),
(102, 'IN', 'India', 'Republic of India', 'IND', 'INR', '356', 'yes', '+91', '.in', 'A'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 'IDR', '360', 'yes', '+62', '.id', 'I'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 'IRR', '364', 'yes', '+98', '.ir', 'I'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 'IQD', '368', 'yes', '+964', '.iq', 'I'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', 'EUR', '372', 'yes', '+353', '.ie', 'I'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', 'IMP', '833', 'no', '+44', '.im', 'I'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', 'EUR', '380', 'yes', '+39', '.jm', 'I'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', 'JMD', '388', 'yes', '+876', '.jm', 'I'),
(111, 'JP', 'Japan', 'Japan', 'JPN', 'JPY', '392', 'yes', '+81', '.jp', 'I'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', 'JEP', '832', 'no', '+44', '.je', 'I'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 'JOD', '400', 'yes', '+962', '.jo', 'I'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 'KZT', '398', 'yes', '+7', '.kz', 'I'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', 'KES', '404', 'yes', '+254', '.ke', 'I'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 'AUD', '296', 'yes', '+686', '.ki', 'I'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', 'EUR', '---', 'some', '+381', '', 'I'),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', 'KWD', '414', 'yes', '+965', '.kw', 'I'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', 'KGS', '417', 'yes', '+996', '.kg', 'I'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', 'LAK', '418', 'yes', '+856', '.la', 'I'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', 'EUR', '428', 'yes', '+371', '.lv', 'I'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', 'LBP', '422', 'yes', '+961', '.lb', 'I'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 'LSL', '426', 'yes', '+266', '.ls', 'I'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', 'LRD', '430', 'yes', '+231', '.lr', 'I'),
(125, 'LY', 'Libya', 'Libya', 'LBY', 'LYD', '434', 'yes', '+218', '.ly', 'I'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 'CHF', '438', 'yes', '+423', '.li', 'I'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 'EUR', '440', 'yes', '+370', '.lt', 'I'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 'EUR', '442', 'yes', '+352', '.lu', 'I'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', 'MOP', '446', 'no', '+853', '.mo', 'I'),
(130, 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 'MKD', 'MKD', '807', 'yes', '+389', '.mk', 'I'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 'MGA', '450', 'yes', '+261', '.mg', 'I'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', 'MWK', '454', 'yes', '+265', '.mw', 'I'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', 'MYR', '458', 'yes', '+60', '.my', 'I'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', 'MVR', '462', 'yes', '+960', '.mv', 'I'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', 'XOF', '466', 'yes', '+223', '.ml', 'I'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', 'EUR', '470', 'yes', '+356', '.mt', 'I'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 'USD', '584', 'yes', '+692', '.mh', 'I'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', 'EUR', '474', 'no', '+596', '.mq', 'I'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 'MRO', '478', 'yes', '+222', '.mr', 'I'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 'MUR', '480', 'yes', '+230', '.mu', 'I'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', 'EUR', '175', 'no', '+262', '.yt', 'I'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', 'MXN', '484', 'yes', '+52', '.mx', 'I'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 'USD', '583', 'yes', '+691', '.fm', 'I'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', 'MDL', '498', 'yes', '+373', '.md', 'I'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', 'EUR', '492', 'yes', '+377', '.mc', 'I'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', 'MNT', '496', 'yes', '+976', '.mn', 'I'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', 'EUR', '499', 'yes', '+382', '.me', 'I'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', 'XCD', '500', 'no', '+664', '.ms', 'I'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 'MAD', '504', 'yes', '+212', '.ma', 'I'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 'MZN', '508', 'yes', '+258', '.mz', 'I'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', 'MMK', '104', 'yes', '+95', '.mm', 'I'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', 'NAD', '516', 'yes', '+264', '.na', 'I'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', 'AUD', '520', 'yes', '+674', '.nr', 'I'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', 'NPR', '524', 'yes', '+977', '.np', 'I'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 'EUR', '528', 'yes', '+31', '.nl', 'I'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', 'XPF', '540', 'no', '+687', '.nc', 'I'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', 'NZD', '554', 'yes', '+64', '.nz', 'I'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 'NIO', '558', 'yes', '+505', '.ni', 'I'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', 'XOF', '562', 'yes', '+227', '.ne', 'I'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 'NGN', '566', 'yes', '+234', '.ng', 'I'),
(161, 'NU', 'Niue', 'Niue', 'NIU', 'NZD', '570', 'some', '+683', '.nu', 'I'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 'AUD', '574', 'no', '+672', '.nf', 'I'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', 'KPW', '408', 'yes', '+850', '.kp', 'I'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', 'USD', '580', 'no', '+670', '.mp', 'I'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', 'NOK', '578', 'yes', '+47', '.no', 'I'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', 'OMR', '512', 'yes', '+968', '.om', 'A'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 'PKR', '586', 'yes', '+92', '.pk', 'I'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', 'USD', '585', 'yes', '+680', '.pw', 'I'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', 'ILS', '275', 'some', '+970', '.ps', 'I'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', 'USD', '591', 'yes', '+507', '.pa', 'I'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 'PGK', '598', 'yes', '+675', '.pg', 'I'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 'PYG', '600', 'yes', '+595', '.py', 'I'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', 'PEN', '604', 'yes', '+51', '.pe', 'I'),
(174, 'PH', 'Phillipines', 'Republic of the Philippines', 'PHL', 'PHP', '608', 'yes', '+63', '.ph', 'I'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', 'NZD', '612', 'no', '+NONE', '.pn', 'I'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', 'PLN', '616', 'yes', '+48', '.pl', 'I'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', 'EUR', '620', 'yes', '+351', '.pt', 'I'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 'USD', '630', 'no', '+939', '.pr', 'I'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', 'QAR', '634', 'yes', '+974', '.qa', 'A'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', 'EUR', '638', 'no', '+262', '.re', 'I'),
(181, 'RO', 'Romania', 'Romania', 'ROU', 'RON', '642', 'yes', '+40', '.ro', 'I'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', 'RUB', '643', 'yes', '+7', '.ru', 'A'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 'RWF', '646', 'yes', '+250', '.rw', 'I'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', 'EUR', '652', 'no', '+590', '.bl', 'I'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', 'SHP', '654', 'no', '+290', '.sh', 'I'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', 'XCD', '659', 'yes', '+869', '.kn', 'I'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 'XCD', '662', 'yes', '+758', '.lc', 'I'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', 'EUR', '663', 'no', '+590', '.mf', 'I'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 'EUR', '666', 'no', '+508', '.pm', 'I'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 'XCD', '670', 'yes', '+784', '.vc', 'I'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', 'WST', '882', 'yes', '+685', '.ws', 'I'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', 'EUR', '674', 'yes', '+378', '.sm', 'I'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', 'STD', '678', 'yes', '+239', '.st', 'I'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 'SAR', '682', 'yes', '+966', '.sa', 'I'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', 'XOF', '686', 'yes', '+221', '.sn', 'I'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', 'RSD', '688', 'yes', '+381', '.rs', 'I'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 'SCR', '690', 'yes', '+248', '.sc', 'I'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 'SLL', '694', 'yes', '+232', '.sl', 'I'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', 'SGD', '702', 'yes', '+65', '.sg', 'I'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', 'ANG', '534', 'no', '+721', '.sx', 'I'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', 'EUR', '703', 'yes', '+421', '.sk', 'I'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 'EUR', '705', 'yes', '+386', '.si', 'I'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 'SBD', '090', 'yes', '+677', '.sb', 'I'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', 'SOS', '706', 'yes', '+252', '.so', 'I'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 'ZAR', '710', 'yes', '+27', '.za', 'I'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 'GBP', '239', 'no', '+500', '.gs', 'I'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', 'KRW', '410', 'yes', '+82', '.kr', 'A'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', 'SSP', '728', 'yes', '+211', '.ss', 'I'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', 'EUR', '724', 'yes', '+34', '.es', 'A'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 'LKR', '144', 'yes', '+94', '.lk', 'I'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', 'SDG', '729', 'yes', '+249', '.sd', 'I'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', 'SRD', '740', 'yes', '+597', '.sr', 'I'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', 'NOK', '744', 'no', '+47', '.sj', 'I'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 'SZL', '748', 'yes', '+268', '.sz', 'I'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 'SEK', '752', 'yes', '+46', '.se', 'I'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', 'CHF', '756', 'yes', '+41', '.ch', 'I'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', 'SYP', '760', 'yes', '+963', '.sy', 'I'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', 'TWD', '158', 'former', '+886', '.tw', 'I'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 'TJS', '762', 'yes', '+992', '.tj', 'I'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 'TZS', '834', 'yes', '+255', '.tz', 'I'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', 'THB', '764', 'yes', '+66', '.th', 'I'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', 'USD', '626', 'yes', '+670', '.tl', 'I'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', 'XOF', '768', 'yes', '+228', '.tg', 'I'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', 'NZD', '772', 'no', '+690', '.tk', 'I'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', 'TOP', '776', 'yes', '+676', '.to', 'I'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 'TTD', '780', 'yes', '+868', '.tt', 'I'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', 'TND', '788', 'yes', '+216', '.tn', 'I'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', 'TRY', '792', 'yes', '+90', '.tr', 'I'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 'TMT', '795', 'yes', '+993', '.tm', 'I'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 'USD', '796', 'no', '+649', '.tc', 'I'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', 'AUD', '798', 'yes', '+688', '.tv', 'I'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', 'UGX', '800', 'yes', '+256', '.ug', 'I'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', 'UAH', '804', 'yes', '+380', '.ua', 'I'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 'AED', '784', 'yes', '+971', '.ae', 'A'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', 'GBP', '826', 'yes', '+44', '.uk', 'I'),
(236, 'US', 'United States', 'United States of America', 'USA', 'USD', '840', 'yes', '+1', '.us', 'I'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '', '581', 'no', '+NONE', 'NONE', 'I'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 'UYU', '858', 'yes', '+598', '.uy', 'I'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 'UZS', '860', 'yes', '+998', '.uz', 'I'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 'VUV', '548', 'yes', '+678', '.vu', 'I'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', 'EUR', '336', 'no', '+39', '.va', 'I'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 'VEF', '862', 'yes', '+58', '.ve', 'I'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 'VND', '704', 'yes', '+84', '.vn', 'I'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '', '092', 'no', '+284', '.vg', 'I'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '', '850', 'no', '+340', '.vi', 'I'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', 'XPF', '876', 'no', '+681', '.wf', 'I'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '', '732', 'no', '+212', '.eh', 'I'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', 'YER', '887', 'yes', '+967', '.ye', 'I'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 'ZMW', '894', 'yes', '+260', '.zm', 'I'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 'USD', '716', 'yes', '+263', '.zw', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_animal`
--

CREATE TABLE `dt_behaviour_master_animal` (
  `ANML_ID` int(11) NOT NULL,
  `ANMLGRP_ID` int(11) NOT NULL,
  `ANML_NAME` varchar(20) NOT NULL,
  `ANML_ALIAS` varchar(4) NOT NULL,
  `ANML_DESC` text NOT NULL,
  `ANML_STRENGTH` text NOT NULL,
  `ANML_MOTTO` varchar(200) NOT NULL,
  `ANML_TIPS` varchar(255) NOT NULL,
  `ANML_JOB_CHILDREN` text NOT NULL,
  `ANML_JOB_YOUNG` text NOT NULL,
  `ANML_JOB_PARTNER` text NOT NULL,
  `ANML_JOB_BOSS` text NOT NULL,
  `ANML_SNAPCHAT` varchar(120) NOT NULL,
  `ANML_IMG` varchar(40) NOT NULL,
  `ANML_ORDER` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_animal`
--

INSERT INTO `dt_behaviour_master_animal` (`ANML_ID`, `ANMLGRP_ID`, `ANML_NAME`, `ANML_ALIAS`, `ANML_DESC`, `ANML_STRENGTH`, `ANML_MOTTO`, `ANML_TIPS`, `ANML_JOB_CHILDREN`, `ANML_JOB_YOUNG`, `ANML_JOB_PARTNER`, `ANML_JOB_BOSS`, `ANML_SNAPCHAT`, `ANML_IMG`, `ANML_ORDER`) VALUES
(1, 1, 'Clownfish', 'ENFP', 'Clownfish are energetic, creative and busy fish. They are often thinking of new and clever ways of doing things, preferring variety and action to peace and quiet.', 'Enthusiastic clownfish are imaginative problem solvers who are always happy to improvise and are great at getting things done last minute.\r\n\r\nNaturally creative, they strive to be different and own their style. They are often risk- takers who prefer original thinking rather than playing by the rules - this is when their persuasiveness comes in handy.', 'Hey, I have had another idea!', 'Prioritize, focus and complete the important stuff.', 'Clownfish children enjoy variety and action, often getting bored easily and moving onto something new. They love taking risks and usually leave things until last minute. Imaginative and creative with a great sense of humour, at school they are often popular but can be a threat to some teachers and adults who don\'t appreciate their original thinking!', 'They\'re searching for their individual identity, drawn to express themselves through drama, words or art. They don\'t like being told what to do - they\'d rather work things out for themselves.', 'They\'re usually fun to be with. They\'re romantic and also like their partners to be romantic. Because they\'re easily bored and distracted, novelty and surprise are welcomed.', 'Visionary Clownfish value harmony and tend to nurture their staff. Sometimes their desire to create a meaningful impact in the world whilst working in organisations with strict targets or objectives can cause personal stress.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=0c8c45e7f2f5411e99b82e1f587d6c5e&metadata=01', '', 1),
(2, 1, 'Seahorse', 'INFJ', 'Seahorses have been credited with deep, magical qualities and can also be deep, quiet and imaginative. Seahorses tend to live in warm waters and care for their young. The head shape of a Seahorse is as unique as a human fingerprint and they value their own and others uniqueness.', 'Patient Seahorses are great with compliCated situations, often using their imagination to solve problems. They are natural listeners but can also use their skills to be very persuasive. Seahorses are interested in the idea behind what they are doing, especially how it affects people.', 'Lets think about it', 'Do not just live inside your head - talk to others, share your ideas.', 'Seahorses are emotional dreamers that can be clingy toddlers, needing a parent to reassure and support. Often sweet and affectionate, they like to look after younger children around them. Mostly easy-going and good-natured, Seahorses see people as more important than rules and tend to have a few good friends.', 'At their best they can inspire others! They can be perfectionists and they like to please.', 'They\'re usually romantic and caring and like the same from their partner. They often come across as deep and intense but can be very funny when they want to be.', 'Caring, quiet, personal, inclusive, value harmony, expect deadlines to be met. Sometimes their desire to please people and follow the rules can cause personal stress.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=94ffbbd9dbf441bf97f341b026b90a82&metadata=01', '', 2),
(3, 1, 'Dolphin', 'ENFJ', 'Many people say the Dolphin is their favourite animal. They are intelligent, warm, have great vision and charisma. Dolphins move fast to fit everything in, often enjoying busy and complicated social l', 'Friendly, cheerful Dolphins have bundles of energy. They are usually very popular and love a good party and spending time with family and friends.Dolphins are natural performers and are always looking to try out new things. They are enthusiastic and love variety and action. They are often imaginative and creative problem solvers, who focus on getting the job done. Emotionally, Dolphins are very warm. They are usually the ones deep in discussion, talking about their opinions, values and views, especially about people.', 'I need to feel loved', 'Take some time out for yourself. Do not spend all of your time solving other peoples problems.', 'At school Dolphins work best when they feel liked by their teachers and tend to enjoy going to school to make friends. They love a cuddle and wear their hearts on their sleeves, often putting others\' feelings and needs ahead of their own.', 'Dolphins tend to get along well with others. People like their warmth, enthusiasm and compassion', 'They\'re usually friendly, caring and loving. They work hard at making their relationships strong, deep and meaningful.', 'Visionary, personal, democratic, value/seek harmony, organised. Sometimes their desire to please people and follow the rules can cause personal stress.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=626d9a56de944174ba00fca74dd924ce&metadata=01', '', 3),
(4, 1, 'Seal', 'INFP', 'Seals can be imaginative, supportive and playful around their social group. They can also be quiet and careful on land, wondering whether to jump in and trust their instincts or suss out a person or s', 'Seals are great at multi-tasking, often working on many things at once and love learning new skills. They are full of enthusiasm and interested in thinking behind an idea, and looking at how things affect people.', 'How will that affect everyone else?', 'Do not get lost inside your thoughts; involve others.', 'Seals are emotional dreamers that can be clingy toddlers, needing a parent to reassure and support. Often sweet and affectionate, they like to look after younger children around them. Mostly easy-going and good-natured, Seals see people as more important than rules and tend to have a few good friends.', 'Seals have strong inner values and beliefs that they like to live by - others can sometimes see them as sensitive, complex and deep. They travel through their teens trying to work out who they are and want to be.', 'They\'re usually romantic and loving and expect the same from their partner. Can be funny. Likely to be very sensitive to criticism.', 'A natural coach, Seals are quiet and caring bosses. They are people-focused, often bringing original approaches to their role.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=75cb77dba31e4782891f74265a2a3b45&metadata=01', '', 4),
(5, 2, 'Black bear', 'ESTJ', 'The bear is a symbol of strength and power, and can be strong, organising and taking charge of situations so that things get done.', 'Reliable and realistic, bears love action, often focusing on outcomes and results to get things done. They are natural organisers that are great at acting and communicating quickly.', 'I will be the boss', 'You do not need to take charge all of the time. Look after yourself and ask people to help you out. Try not to get cross with people for not achieving your own very high standards unless its really necessary.', 'Black bears are mature, natural leaders who are always on the go and full of energy. They enjoy routine and order, and take pride in their honesty and reliability.\r\n\r\nBlack bears prefer real feedback to false comments but can sometimes need reminding that this approach isn\'t for everyone, and often need to learn more about being tactful and considering other people\'s feelings.', 'They\'re normally in control and in charge. They work out what needs to be done, how it should be done, and then do it.However, a bored bear can become rebellious and restless, they need a channel for their energy and go-for-it, problem-solving attitude.', 'They\'re usually quite independent but can appear tougher than they really are. They usually like to share their passions, ideas and beliefs.', 'Direct, decisive and fair, Black bears respect and follow procedures and expect deadlines to be met. They tend to focus on achieving or completing tasks.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=1f88c76de3ac42a1affa0c33c39495f3&metadata=01', '', 1),
(6, 2, 'Polar bear', 'ISTJ', 'Polar bears are strong and determined. They are at the top of their food chain and they can enjoy being the boss. To hunt for food, they have to learn and perfect their skills. They also like to perfect their skills and then use them throughout their life', 'Polar bears are quiet and steady workers that pay attention to detail and like to stick to something until they get the job done. They are great at making decisions and following plans or rules, and usually like to be able to use skills that they have already learned.', 'I know exactly what I am doing', 'Take a break sometimes and praise people around you.', 'Intense and serious, Polar bears are trying to make sense of their world. They prefer solitary interests that require precision and skill rather than team games and hobbies.\r\nPolar bears value routine and structure and like to learn by being shown and correcting privately. They are keen to research and gain knowledge on subjects in detail, often becoming an expert in the things that they learn.', 'Often more adult than many of the adults around them! They value their independence, privacy and personal space. They\'re dependable, loyal and responsible.', 'They\'re usually more practical, loyal and sensible than romantic and spontaneous.', 'Direct and fair, respect and follow procedures, expect deadlines to be met, task-focused.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=db81afce55c044ff9b9e858f17b6c9a1&metadata=01', '', 2),
(7, 2, 'Koala bear', 'ISFJ', 'Koalas are popular and warm animals. They like the safety of their eucalyptus trees and the security and safety of their families, being loyal and caring to those around them. Koalas have strong muscles around their pouch to protect their young and can al', 'Koalas are patient with people and details, usually bringing up relevant facts but as natural carers like to keep in mind other people`s beliefs, values and strengths. They are popular team members but rarely push their views forward unless asked.', 'I get on with it quietly', 'Can you be too nice? Learn to stick up for yourself.', 'Koalas are usually gentle, quiet and careful. They enjoy routine and structure, and value their personal space. They like to watch what\'s going on and try things out first before they feel confident that they understand.\r\nCool koalas like to be fashionable and are often talented in crafts, arts and music. They get on with everyone, and are often drawn towards animals and nature.', 'They can be seen as kind and quiet and are popular because they\'re sensitive to others\' needs. They\'re realistic, down to earth and respect tradition and authority.', 'They\'re usually loyal, loving and reliable. They go out of their way to support their partner.', 'Caring, quiet, respect and follow procedures and rules, expect deadlines to be met. Sometimes their desire to please people and follow the rules can cause personal stress.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=f68e412ca4674665a1e09239f8877234&metadata=01', '', 3),
(8, 2, 'Teddy bear', 'ESFJ', 'Teddy bears are warm, friendly, loyal and popular.', 'Friendly Teddy bears are great at communiCating, often acting quickly and without a fuss. They are popular team members that always know what is going on and are great at keeping everyone else involved.', 'Lets all get along', 'Do not try and be perfect all of the time.', 'Friendly and cheerful, Teddy bears have bundles of energy and warmth. They are confident and love trying out new things. Sociable and party-loving, they enjoy seeing friends and often put their friends\' feelings ahead of their own.\r\nTeddy bears love cuddles and wear their hearts on their sleeves; they are at their best when they feel liked by teachers and other adults. They usually enjoy discussing opinions, values and views, especially about people.', 'They can be modest about their achievements and be surprised at how well they\'re liked by friends.', 'They\'re usually very loyal, loving, supportive and protective. They provide stability and structure and are friendly and sociable. They like to spend time with groups of friends and family, not just their boyfriend or girlfriend.', 'Sociable, caring, decisive, respect and follow procedures and rules, expect deadlines to be met. Sometimes their desire to please people and also follow the rules can cause personal stress.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=cb59ce74bac24ed69e19035f034c5920&metadata=01', '', 4),
(9, 3, 'Barn Owl', 'INTJ', 'Barn owls are symbols of intelligence, determination and wisdom. A Barn owl hunts quietly over grassland looking for small animals. They can seem to be flying high, thinking big ideas quietly, while paying attention to the small details to solve problems and develop plans.', 'Patient and methodical, Barn owls are great with complicated situations and working on things for a long time. They are natural planners and imaginative problems solvers that are often good at being careful with facts. They are keen to research and gain knowledge on subjects in detail, often becoming an expert in the things that they learn.', 'I will work it out myself', 'Forgive yourself for not always reaching your own high standards.', 'Intense and serious, Barn owls are trying to make sense of their world and usually value routine and structure. They prefer interests that require precision and skill rather than team games and hobbies and enjoy the opportunity to create new ideas and opportunities. Barn owls like to learn by being shown and corrected privately.', 'At their best, they\'re clever, creative visionaries with the determination to achieve their goals, which means they may be considered distant, private and argumentative.', 'They\'re usually quite independent but can appear tougher than they really are. They often like to share their passions, ideas and beliefs.', 'Visionary, direct and organised. Detailed planners. Strategic and challenging. Like to stretch themselves and their team members. Tend to like and offer independence to their team members but will expect success in return.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=257ab3fbe01d4498ae19444713e1a6db&metadata=01', '', 1),
(10, 3, 'Eagle', 'ENTJ', 'Eagles are symbols of power, leadership and strength. Often soaring high to generate new ideas and new ways to do things. Others are often willing to follow Eagles due to their good ideas and their determination to make them happen.', 'Eagles are natural entrepreneurs, using their imaginative and creative problem-solving skills to take charge of situations and people easily. They enjoy action and variety and are often the ones with the big ideas who suggest better ways of doing things.', 'I will be in charge', 'Take charge of the things you do best but do include ideas from others, especially when working in groups.', 'High-energy Eagles are natural leaders. Always on the go, they are usually ingenious and creative entrepreneurs. Eagles like to work with facts and focus on getting a task done.\r\nThey take great pride in their honesty and reliability, and in return prefer honest feedback to false compliments. Eagles sometimes need to be reminded that this approach isn\'t for everyone, often needing help to learn more about tact and other people\'s feelings.', 'Eagles are confident and often more mature than other people their age which can be seen by some as big-headed, but it isn\'t: it\'s being able to stick up for what they believe in. They can become rebellious and restless when bored and need a channel for their energy and go-for-it, problem-solving attitude.', 'They can be great fun to be with, though exhausting due to their drive and determination to lead and achieve things.', 'Energetic, visionary, direct and organised. Task-focused. Can be risk-takers.\r\nStrategic and challenging with a desire to stretch themselves and their teams. Tend to like and offer independence to their team members but will expect results in return. Most likely animal to lead from the front.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=20344f8b851a4371957af7b045ed60ce&metadata=01', '', 2),
(11, 3, 'Falcon', 'ENTP', 'Falcons are the fastest animals in the world, flying up to about 120 miles per hour. They can also be fast with words and actions, moving quickly from idea to idea and task to task. Falcons migrate and often like to try out new experiences. When they speak, Falcons are loud.', 'Falcons are imaginative and spontaneous problem-solvers who love learning new skills. Alert, outspoken and always interesting company, they find it very easy to communiCate, making them natural negotiators. Falcons are accident-prone risk-takers who enjoy variety and action and who tend to leave things until the last minute. They get bored easily and soon like to move on to something new.', 'Everythings negotiable', 'Do not judge yourself too harshly; you can be your own worst critic.', 'Imaginative and creative, Falcons often have a great sense of humour and strive to be different with their own unique sense of style. They like nothing more than to push boundaries and enjoy negotiating changes in the rules.', 'They\'re adventurous, direct and assertive. They tend to ask why? Often popular but can be a threat to some teachers or adults who don\'t always appreciate their original thinking!', 'They try hard to impress their partner and they\'re usually witty and clever company.', 'Energetic, visionary, direct and flexible. Task-focused and can be risk takers. Generally keen to share their thoughts. Create a fast-paced and fun environment and like people who can \'fly by the seat of their pants\'. Tend to like and offer freedom and independence to their team members.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=2380c8c415f44f40925a97c5f924e66d&metadata=01', '', 3),
(12, 3, 'Tawny Owl', 'INTP', 'Tawny owls are symbols of intelligence, determination and wisdom. They fly silently in the night and are often careful and quiet, speaking only when they have something interesting or useful to say.', 'Being natural inventors, Tawny owls love to learn new skills and try out new things. They enjoy tasks that require them to problem solve and use their imagination. Tawny owls pay attention to detail and are great at analysing and approaching things in a logical order.', 'I will analyse it to understand it.', 'Do not get lost inside your thoughts; involve others.', 'Tawny owls love learning, especially facts that help them understand how the world works. They enjoy competitive games, are very individualistic and are determined to do things their way.\r\nThey may not seek or need lots of physical attention, it doesn\'t mean they don\'t have feelings they just really like privacy and don\'t like being fussed over. Keen to question authority, they enjoy testing theories and ideas, including challenging their parents!', 'They\'re independent, quiet and flexible deep thinkers.', 'They usually share their ideas, passions and beliefs and like trying new things as a couple. They can be very self-critical.', 'Caring, quiet, personal, democratic, value and seek harmony, flexible. Quite rare as leaders (because they are not usually task-focused) and therefore can bring in original perspectives and approaches to their role.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=b4d472d1d1d14e459e0e7d07e793371a&metadata=01', '', 4),
(13, 4, 'Cat', 'ISFP', 'Cats are popular and friendly, despite spending a lot of time on their own. They also tend to like exploring the outdoors.', 'Cats like to enjoy the here and now. Living in the moment, they find it easy to adapt and change their plans. They are popular team members but rarely push their views forward unless asked and like to be aware of people`s strengths and beliefs.', 'Can I play by myself for a while?', 'Try finishing the important things before starting new projects.', 'Cats are strongest in music or art and crafts, and often like solitary activities. They also love the outdoors and see life packed with adventures and experiences to try out and enjoy.\r\nCats may sometimes need to be encouraged to ask for help when they need it, rather than always trying to find their own solution.', 'They have an eye for quality and often have collections. They\'re often very close to their family and can feel nervous about leaving home. They\'re loyal friends, good at solving problems.', 'They\'re usually good fun to be with, though often like time on their own to recharge their batteries.', 'Caring, quiet, personal, democratic and flexible. Quite rare as leaders (because they are usually task-focused) and therefore can bring in original perspectives and approaches to their role. Tend to like and offer freedom and independence to their team members.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=d607aae8afb24bd4aa0b98698a503666&metadata=01', '', 1),
(14, 4, 'Lion', 'ESFP', 'Lions are very sociable cats. They enjoy being with their families and relatives. Socialising and having fun as a way to be close to their loved ones. Lions are graceful and skillful in sport or leisure activities that interest them.', 'Lions are generous, friendly and great communicators so they are pretty good at knowing what is going on. As natural performers, they like to join in with people and have bundles of enthusiasm, making them popular team members.', 'Lets try this!', 'Do not play all of the time - recharge your batteries.', 'Often active and energetic, Lions enjoy activities and are usually the life and soul of a party, and if there isn\'t a party, they\'ll create one!\r\n\r\nLions love the outdoors, puddles, forests, you name it! They see life as full of adventures and experiences to try out and enjoy. Fun-loving Lions respond well to playing and surprises but they may need to be encouraged to rest and recharge their batteries from time to time!', 'They\'re usually popular and enthusiastic with a zest for life. They dislike routine and conflict - they may try to please everyone, which is difficult all of the time.', 'They\'re usually great fun to be with. They enjoy being with groups of people, not just as a couple.', 'Energetic, caring and flexible. People-focused. Can be risk takers. Generally keen to share their thoughts and create a fast-paced and fun environment. Tend to like and offer freedom and independence to their team members.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=718807c2c15c47e0aebf1486ef1a1d49&metadata=01', '', 2),
(15, 4, 'Panther', 'ESTP', 'The Panther is a confident, fearless explorer, testing its skills in the jungle. They prefer action and variety. Can be fun to be with, but can bite (usually with a funny comment!), if things get boring.', 'On-the-spot problem solvers that can act and communicate quickly and decisively, Panthers find it easy to adapt to change. Panthers like to stand up for what they believe in even if others disagree - these skills also help them when trying to sell ideas and products to others.', 'Lets try this!', 'People can be tired just watching you whiz round. Plan and pick the projects worthy of your energy.', 'Curious about the world around them and experiencing as much of it as possible.\r\n\r\nOften the first to volunteer and take on a challenge, they are likely to be risk-takers so need to learn to think through the consequences of their actions before jumping in at the deep end.', 'They enjoy freedom and adventure, which can result in clashes with authority.', 'They\'re usually good fun to be with. They\'re full of energy and ideas.\r\nThey can be determined and easily become bored - so variety and action keep them happy.', 'Fun-loving and act on the spur of the moment. They like getting on with what needs to be done now rather than endlessly discussing the options and tend to focus on the excitement of the activity rather than rules and processes.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=681df4254d024623a8d87e6ca3c2cd34&metadata=01', '', 3),
(16, 4, 'Tiger', 'ISTP', 'Tigers are rare, determined and strong. They are the largest cat and can be confident and assertive explorers, who enjoy finding out about the world around them.', 'Tigers are natural problem-solvers who like to work quietly and steadily on a number of things at once. They are flexible and like to try new ways to get things done.', 'I will work it out in my own time', 'Share your good ideas and humour around. Do not get wrapped up in your own thoughts and think you ca not ask for other peoples opinions or help.', 'Tigers love learning, especially facts that help them understand how the world works. They enjoy competitive games and are very individualistic and determined to do things their way.\r\nThey may not seek or need lots of physical attention, it doesn\'t mean they don\'t have feelings, they just really like privacy and don\'t like being fussed over. Keen to question authority, they enjoy testing theories and ideas, including challenging their parents!', 'They\'re honest and realistic with great common sense and a love for life. If someone doesn\'t make sense, they\'ll tell them so. This can sometimes make them seem stubborn and strong-willed.', 'They\'re usually good fun to be with, though may sometimes be too honest with their opinions for their own good.', 'Quiet and flexible, task-focused, can be risk-takers. Can keep their thoughts to themselves. Tend to like and offer freedom and independence to their team members.', 'https://www.snapchat.com/unlock/?type=SNAPCODE&uuid=c0bc5eb16b52401d88b4fe1e5fc8800f&metadata=01', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_animalceleb`
--

CREATE TABLE `dt_behaviour_master_animalceleb` (
  `ANMLCELEB_ID` int(11) NOT NULL,
  `ANML_ID` int(11) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL,
  `ANMLCELEB_NAME` varchar(40) NOT NULL,
  `ANMLCELEB_IMG` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_animalceleb`
--

INSERT INTO `dt_behaviour_master_animalceleb` (`ANMLCELEB_ID`, `ANML_ID`, `COUNTRY_ID`, `ANMLCELEB_NAME`, `ANMLCELEB_IMG`) VALUES
(1, 1, 102, 'Pandit Ravishankar', ''),
(2, 1, 102, 'Shankar Mahadevan ', ''),
(3, 1, 102, 'Baba Amte ', ''),
(4, 1, 102, 'Dadasaheb Phalke', ''),
(5, 1, 102, 'Shahrukh Khan', ''),
(6, 1, 102, 'Preity Zinta', ''),
(7, 1, 102, 'Mohan Das Karamchand Gandhi', ''),
(8, 1, 102, 'Ranbir Kapoor', ''),
(9, 1, 102, 'Narendra Damodardas Modi', ''),
(10, 1, 102, 'Rabindranath Tagore', ''),
(11, 1, 102, 'Amitabh Bacchan', ''),
(12, 1, 102, 'Jawahar Lal Nehru', ''),
(13, 2, 102, 'Mahendra Singh Dhoni', ''),
(14, 2, 102, 'Laxmi Mittal', ''),
(15, 2, 102, 'Dr. Rajendra Prasad', ''),
(16, 2, 102, 'Sachin Tendulkar', ''),
(17, 2, 102, 'Mother Teresa', ''),
(18, 2, 102, 'Bal Gangadhar Tilak', ''),
(19, 2, 102, 'Dr. Bhimrao Ramji Ambedkar', ''),
(20, 2, 102, 'Bismillah Khan', ''),
(21, 2, 102, 'Jehangir Ratanji Dadabhoy Tata', ''),
(22, 2, 102, 'Narayan Murthi', ''),
(23, 2, 102, 'Satyajit Ray ', ''),
(24, 2, 102, 'Gautam Adani', ''),
(25, 3, 102, 'Ratan Tata', ''),
(26, 3, 102, 'Vishwanathan Anand', ''),
(27, 3, 102, 'Jagadish Chandra Bose', ''),
(28, 3, 102, 'Subhas Chandra Bose', ''),
(29, 3, 102, 'Indira Gandhi', ''),
(30, 3, 102, 'Dhirubhai ambani', ''),
(31, 3, 102, 'Sarvepalli Radhakrishnan', ''),
(32, 3, 102, 'Harsha Bhogle', ''),
(33, 3, 102, 'Vikram Sarabhai', ''),
(34, 3, 102, 'A.P.J Abdul Kalam', ''),
(35, 3, 102, 'A R Rehman', ''),
(36, 3, 102, 'Swami Vivekananda', ''),
(37, 4, 102, 'Lata Mangeshkar', ''),
(38, 4, 102, 'Pritam Chakraborty', ''),
(39, 4, 102, 'Bhim Sen Joshi', ''),
(40, 4, 102, 'Atal Bihari Vajpayee', ''),
(41, 4, 102, 'Rajesh Khanna', ''),
(42, 4, 102, 'Vaijayanti Mala', ''),
(43, 4, 102, 'Dhyan Chand', ''),
(44, 4, 102, 'Salman Khan', ''),
(45, 4, 102, 'Khuswant Singh', ''),
(46, 4, 102, 'Amartya Sen', ''),
(47, 4, 102, 'Akshay Kumar', ''),
(48, 4, 102, 'Imtiaz Ali', '');

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_animalgroup`
--

CREATE TABLE `dt_behaviour_master_animalgroup` (
  `ANMLGRP_ID` int(11) NOT NULL,
  `ANMLGRP_NAME` varchar(20) NOT NULL,
  `ANMLGRP_IMG` varchar(40) DEFAULT NULL,
  `ANMLGRP_DESC` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_animalgroup`
--

INSERT INTO `dt_behaviour_master_animalgroup` (`ANMLGRP_ID`, `ANMLGRP_NAME`, `ANMLGRP_IMG`, `ANMLGRP_DESC`) VALUES
(1, 'Sea animals', '', 'Buzz Quiz creator David Hodgson explains how understanding your personality is great way to start thinking about your career.'),
(2, 'Bears', '', 'Buzz Quiz creator David Hodgson explains how understanding your personality is great way to start thinking about your career.'),
(3, 'Birds', '', 'Buzz Quiz creator David Hodgson explains how understanding your personality is great way to start thinking about your career.'),
(4, 'Cats', '', 'Buzz Quiz creator David Hodgson explains how understanding your personality is great way to start thinking about your career.');

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_animalmbti`
--

CREATE TABLE `dt_behaviour_master_animalmbti` (
  `ANMLMBTI_ID` int(11) NOT NULL,
  `ANML_ID` int(11) NOT NULL,
  `MBTI_ID` int(11) NOT NULL,
  `ORDER_BY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_animalmbti`
--

INSERT INTO `dt_behaviour_master_animalmbti` (`ANMLMBTI_ID`, `ANML_ID`, `MBTI_ID`, `ORDER_BY`) VALUES
(1, 1, 1, 1),
(2, 1, 4, 2),
(3, 1, 6, 3),
(4, 1, 8, 4),
(5, 2, 2, 1),
(6, 2, 4, 2),
(7, 2, 6, 3),
(8, 2, 7, 4),
(9, 3, 1, 1),
(10, 3, 4, 2),
(11, 3, 6, 3),
(12, 3, 7, 4),
(13, 4, 2, 1),
(14, 4, 4, 2),
(15, 4, 6, 3),
(16, 4, 8, 4),
(17, 5, 1, 1),
(18, 5, 3, 2),
(19, 5, 5, 3),
(20, 5, 7, 4),
(21, 6, 2, 1),
(22, 6, 3, 2),
(23, 6, 5, 3),
(24, 6, 7, 4),
(25, 7, 2, 1),
(26, 7, 3, 2),
(27, 7, 6, 3),
(28, 7, 7, 4),
(29, 8, 1, 1),
(30, 8, 3, 2),
(31, 8, 6, 3),
(32, 8, 7, 4),
(33, 9, 2, 1),
(34, 9, 4, 2),
(35, 9, 5, 3),
(36, 9, 7, 4),
(37, 10, 1, 1),
(38, 10, 4, 2),
(39, 10, 5, 3),
(40, 10, 7, 4),
(41, 11, 1, 1),
(42, 11, 4, 2),
(43, 11, 5, 3),
(44, 11, 8, 4),
(45, 12, 2, 1),
(46, 12, 4, 2),
(47, 12, 5, 3),
(48, 12, 8, 4),
(49, 13, 2, 1),
(50, 13, 3, 2),
(51, 13, 6, 3),
(52, 13, 8, 4),
(53, 14, 1, 1),
(54, 14, 3, 2),
(55, 14, 6, 3),
(56, 14, 8, 4),
(57, 15, 1, 1),
(58, 15, 3, 2),
(59, 15, 5, 3),
(60, 15, 8, 4),
(61, 16, 2, 1),
(62, 16, 3, 2),
(63, 16, 5, 3),
(64, 16, 8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_mbti`
--

CREATE TABLE `dt_behaviour_master_mbti` (
  `MBTI_ID` int(11) NOT NULL,
  `IND_LETTER` varchar(1) DEFAULT NULL,
  `IND_WORD` varchar(20) DEFAULT NULL,
  `IND_DESC` varchar(255) NOT NULL,
  `IND_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_mbti`
--

INSERT INTO `dt_behaviour_master_mbti` (`MBTI_ID`, `IND_LETTER`, `IND_WORD`, `IND_DESC`, `IND_GROUP`) VALUES
(1, 'E', 'Extraversion', '- gain energy from people or things around them\r\n- recharge their batteries by being active\r\n- be confident\r\n- be assertive', 1),
(2, 'I', 'Introversion', '- gain energy from inside themselves\r\n- recharge their batteries by spending time alone\r\n- be careful\r\n- be good listeners', 1),
(3, 'S', 'Sensing', '- have their feet on the ground\r\n- be good at thinking \'inside the box\'\r\n- be practical\r\n- be realistic\r\n- be sensible', 2),
(4, 'N', 'Intuitive', '- like to think about how things could be changed\r\n- be good at thinking \'outside the box\'\r\n- be imaginative\r\n- be creative\r\n- be dreamers', 2),
(5, 'T', 'Thinking', '- make decisions by doing the \'right thing\'\r\n- like fairness\r\n- be logical\r\n- be objective\r\n- be honest', 3),
(6, 'F', 'Feeling', '- make decisions by considering how it will affect people\r\n- like to be liked\r\n- be sympathetic\r\n- be friendly\r\n- be caring', 3),
(7, 'J', 'Judging', '- organise themselves\r\n- relax once things are complete\r\n- be logical\r\n- get things done\r\n- be on time and on schedule', 4),
(8, 'P', 'Perceiving', '- be flexible\r\n- be able to relax with things left incomplete\r\n- be spontaneous\r\n- be open-minded', 4);

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_question`
--

CREATE TABLE `dt_behaviour_master_question` (
  `QSTN_ID` int(11) NOT NULL,
  `QUESTION` varchar(255) DEFAULT NULL,
  `TAG_LINE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_question`
--

INSERT INTO `dt_behaviour_master_question` (`QSTN_ID`, `QUESTION`, `TAG_LINE`) VALUES
(1, 'Where do you gain your energy from?', 'Outside or inside?'),
(2, 'How do you take in information?', 'Do you look at the detail or the big picture?'),
(3, 'How do you decide things?', 'With your head or your heart?'),
(4, 'What is your attitude to life?', 'Planned or spontaneous?');

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_master_questionoption`
--

CREATE TABLE `dt_behaviour_master_questionoption` (
  `OPTION_ID` int(11) NOT NULL,
  `QSTN_ID` int(11) NOT NULL,
  `MBTI_ID` int(11) DEFAULT NULL,
  `QSTN_OPTION` varchar(255) DEFAULT NULL,
  `ROW_NO` tinyint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_master_questionoption`
--

INSERT INTO `dt_behaviour_master_questionoption` (`OPTION_ID`, `QSTN_ID`, `MBTI_ID`, `QSTN_OPTION`, `ROW_NO`) VALUES
(1, 1, 1, 'I think out loud', 1),
(2, 1, 2, 'I think before I speak', 1),
(3, 1, 1, 'I generally act quickly', 2),
(4, 1, 2, 'I generally act carefully', 2),
(5, 1, 1, 'I\'m a good talker', 3),
(6, 1, 2, 'I\'m a good listener', 3),
(7, 1, 1, 'I prefer to stand out', 4),
(8, 1, 2, 'I prefer to blend in', 4),
(9, 1, 1, 'I tend to work best in groups', 5),
(10, 1, 2, 'I tend to work best alone', 5),
(11, 2, 3, 'I look for the facts', 6),
(12, 2, 4, 'I look for possibilities', 6),
(13, 2, 3, 'I look for details', 7),
(14, 2, 4, 'I look for patterns', 7),
(15, 2, 3, 'I focus on what works now', 8),
(16, 2, 4, 'I focus on how to make it different', 8),
(17, 2, 3, 'I prefer applying what I\'ve learned', 9),
(18, 2, 4, 'I prefer learning new things', 9),
(19, 2, 3, 'I tend to go step-by-step', 10),
(20, 2, 4, 'I tend to join in anywhere', 10),
(21, 3, 5, 'I generally follow my head', 11),
(22, 3, 6, 'I generally follow my heart', 11),
(23, 3, 5, 'I ask \'is this the right decision\'', 12),
(24, 3, 6, 'I ask \'how will it affect people\'', 12),
(25, 3, 5, 'I can give and take criticism quite easily', 13),
(26, 3, 6, 'I tend to avoid giving or receiving criticism', 13),
(27, 3, 5, 'I tend to tell it how I see it', 14),
(28, 3, 6, 'I tend to be careful about saying things that upset people', 14),
(29, 3, 5, 'I tend to focus on the task first, then the people', 15),
(30, 3, 6, 'I tend to focus on the people first, then the task', 15),
(31, 4, 7, 'I like to plan and organise', 16),
(32, 4, 8, 'I like to wonder how it will turn out', 16),
(33, 4, 7, 'I like writing lists', 17),
(34, 4, 8, 'I ask \'how will it affect people\'', 17),
(35, 4, 7, 'I like things tidy', 18),
(36, 4, 8, 'I don\'t mind things untidy', 18),
(37, 4, 7, 'I prefer it when I\'ve finished a task', 19),
(38, 4, 8, 'I prefer it when I\'ve started a task', 19),
(39, 4, 7, 'I usually work at a steady pace until I\'m finished', 20),
(40, 4, 8, 'I often work at the last minute to get things done', 20);

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_qstn_mbti`
--

CREATE TABLE `dt_behaviour_qstn_mbti` (
  `QSTN_MBTI_ID` int(11) NOT NULL,
  `QSTN_ID` int(11) NOT NULL,
  `MBTI_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_qstn_mbti`
--

INSERT INTO `dt_behaviour_qstn_mbti` (`QSTN_MBTI_ID`, `QSTN_ID`, `MBTI_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `dt_behaviour_user_animal`
--

CREATE TABLE `dt_behaviour_user_animal` (
  `USR_ANML_ID` int(11) NOT NULL,
  `USER_SID` varchar(36) NOT NULL,
  `ANML_ID` int(11) NOT NULL,
  `LAST_ATTEMPTED_ON` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_behaviour_user_animal`
--

INSERT INTO `dt_behaviour_user_animal` (`USR_ANML_ID`, `USER_SID`, `ANML_ID`, `LAST_ATTEMPTED_ON`) VALUES
(4, 'd6f1497a-dd62-4767-9290-8bc277f1458a', 3, '2021-03-10 07:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `dt_hhh_master_activity`
--

CREATE TABLE `dt_hhh_master_activity` (
  `DACTIVITY_ID` int(11) NOT NULL,
  `DOMAIN_ID` int(11) NOT NULL,
  `DACTIVITY_NAME` varchar(100) NOT NULL,
  `DACTIVITY_KEY` varchar(10) NOT NULL,
  `DACTIVITY_DESC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_hhh_master_activity`
--

INSERT INTO `dt_hhh_master_activity` (`DACTIVITY_ID`, `DOMAIN_ID`, `DACTIVITY_NAME`, `DACTIVITY_KEY`, `DACTIVITY_DESC`) VALUES
(1, 1, 'Evaluating Information to Determine Compliance with Standards', '4.A.2.a.3', 'Using relevant information and individual judgment to determine whether events or processes comply with laws, regulations, or standards.'),
(2, 1, 'Organizing, Planning, and Prioritizing Work', '4.A.2.b.6', 'Developing specific goals and plans to prioritize, organize, and accomplish your work.'),
(3, 1, 'Analyzing Data or Information', '4.A.2.a.4', 'Identifying the underlying principles, reasons, or facts of information by breaking down information or data into separate parts.'),
(4, 1, 'Processing Information', '4.A.2.a.2', 'Compiling, coding, categorizing, calculating, tabulating, auditing, or verifying information or data.'),
(5, 1, 'Scheduling Work and Activities', '4.A.2.b.5', 'Scheduling events, programs, and activities, as well as the work of others.'),
(6, 1, 'Judging the Qualities of Things, Services, or People', '4.A.2.a.1', 'Assessing the value, importance, or quality of things or people.'),
(7, 1, 'Developing Objectives and Strategies', '4.A.2.b.4', 'Establishing long-range objectives and specifying the strategies and actions to achieve them.'),
(8, 1, 'Thinking Creatively', '4.A.2.b.2', 'Developing, designing, or creating new applications, ideas, relationships, systems, or products, including artistic contributions.'),
(9, 1, 'Making Decisions and Solving Problems', '4.A.2.b.1', 'Analyzing information and evaluating results to choose the best solution and solve problems.'),
(10, 2, 'Provide Consultation and Advice to Others', '4.A.4.b.6', 'Providing guidance and expert advice to management or other groups on technical, systems-, or process-related topics.'),
(11, 2, 'Monitoring and Controlling Resources', '4.A.4.c.3', 'Monitoring and controlling resources and overseeing the spending of money.'),
(12, 2, 'Performing Administrative Activities', '4.A.4.c.1', 'Performing day-to-day administrative tasks such as maintaining information files and processing paperwork.'),
(13, 2, 'Assisting and Caring for Others', '4.A.4.a.5', 'Providing personal assistance, medical attention, emotional support, or other personal care to others such as coworkers, customers, or patients.'),
(14, 2, 'Coordinating the Work and Activities of Others', '4.A.4.b.1', 'Getting members of a group to work together to accomplish tasks.'),
(15, 2, 'Establishing and Maintaining Interpersonal Relationships', '4.A.4.a.4', 'Developing constructive and cooperative working relationships with others, and maintaining them over time.'),
(16, 2, 'Communicating with Supervisors, Peers, or Subordinates', '4.A.4.a.2', 'Providing information to supervisors, co-workers, and subordinates by telephone, in written form, e-mail, or in person.'),
(17, 2, 'Guiding, Directing, and Motivating Subordinates', '4.A.4.b.4', 'Providing guidance and direction to subordinates, including setting performance standards and monitoring performance.'),
(18, 2, 'Communicating with Persons Outside Organization', '4.A.4.a.3', 'Communicating with people outside the organization, representing the organization to customers, the public, government, and other external sources. This information can be exchanged in person, in writing, or by telephone or e-mail.'),
(19, 2, 'Resolving Conflicts and Negotiating with Others', '4.A.4.a.7', 'Handling complaints, settling disputes, and resolving grievances and conflicts, or otherwise negotiating with others.'),
(20, 2, 'Interpreting the Meaning of Information for Others', '4.A.4.a.1', 'Translating or explaining what information means and how it can be used.'),
(21, 2, 'Coaching and Developing Others', '4.A.4.b.5', 'Identifying the developmental needs of others and coaching, mentoring, or otherwise helping others to improve their knowledge or skills.'),
(22, 2, 'Selling or Influencing Others', '4.A.4.a.6', 'Convincing others to buy merchandise/goods or to otherwise change their minds or actions.'),
(23, 2, 'Training and Teaching Others', '4.A.4.b.3', 'Identifying the educational needs of others, developing formal educational or training programs or classes, and teaching or instructing others.'),
(24, 2, 'Staffing Organizational Units', '4.A.4.c.2', 'Recruiting, interviewing, selecting, hiring, and promoting employees in an organization.'),
(25, 3, 'Drafting, Laying Out, and Specifying Technical Devices, Parts, and Equipment', '4.A.3.b.2', 'Providing documentation, detailed instructions, drawings, or specifications to tell others about how devices, parts, equipment, or structures are to be fabricated, constructed, assembled, modified, maintained, or used.'),
(26, 3, 'Documenting/Recording Information', '4.A.3.b.6', 'Entering, transcribing, recording, storing, or maintaining information in written or electronic/magnetic form.'),
(27, 3, 'Repairing and Maintaining Electronic Equipment', '4.A.3.b.5', 'Servicing, repairing, calibrating, regulating, fine-tuning, or testing machines, devices, and equipment that operate primarily on the basis of electrical or electronic (not mechanical) principles.'),
(28, 3, 'Repairing and Maintaining Mechanical Equipment', '4.A.3.b.4', 'Servicing, repairing, adjusting, and testing machines, devices, moving parts, and equipment that operate primarily on the basis of mechanical (not electronic) principles.'),
(29, 3, 'Interacting With Computers', '4.A.3.b.1', 'Using computers and computer systems (including hardware and software) to program, write software, set up functions, enter data, or process information.'),
(30, 3, 'Handling and Moving Objects', '4.A.3.a.2', 'Using hands and arms in handling, installing, positioning, and moving materials, and manipulating things.'),
(31, 3, 'Operating Vehicles, Mechanized Devices, or Equipment', '4.A.3.a.4', 'Running, maneuvering, navigating, or driving vehicles or mechanized equipment, such as forklifts, passenger vehicles, aircraft, or water craft.'),
(32, 3, 'Performing General Physical Activities', '4.A.3.a.1', 'Performing physical activities that require considerable use of your arms and legs and moving your whole body, such as climbing, lifting, balancing, walking, stooping, and handling of materials.'),
(33, 3, 'Controlling Machines and Processes', '4.A.3.a.3', 'Using either control mechanisms or direct physical activity to operate machines or processes (not including computers or vehicles).');

-- --------------------------------------------------------

--
-- Table structure for table `dt_hhh_master_animalactivity`
--

CREATE TABLE `dt_hhh_master_animalactivity` (
  `ANMLACTIVITY_ID` int(11) NOT NULL,
  `ANML_ID` int(11) NOT NULL,
  `DACTIVITY_ID` int(11) NOT NULL,
  `ORDER_BY` decimal(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_hhh_master_animalactivity`
--

INSERT INTO `dt_hhh_master_animalactivity` (`ANMLACTIVITY_ID`, `ANML_ID`, `DACTIVITY_ID`, `ORDER_BY`) VALUES
(1, 5, 1, '1.1'),
(2, 5, 2, '1.2'),
(3, 5, 4, '1.3'),
(4, 5, 10, '2.1'),
(5, 5, 11, '2.2'),
(6, 5, 25, '3.1'),
(7, 5, 26, '3.2'),
(8, 3, 2, '2.0'),
(9, 3, 3, '3.0'),
(10, 4, 2, '1.0'),
(11, 4, 1, '2.0'),
(12, 4, 3, '3.0'),
(13, 5, 1, '1.0'),
(14, 5, 2, '2.0'),
(15, 5, 3, '3.0'),
(16, 6, 1, '1.0'),
(17, 6, 2, '2.0'),
(18, 6, 3, '3.0'),
(19, 7, 1, '1.0'),
(20, 7, 3, '2.0'),
(21, 7, 2, '3.0'),
(22, 8, 1, '1.0'),
(23, 8, 2, '2.0'),
(24, 8, 3, '3.0'),
(25, 9, 1, '1.0'),
(26, 9, 2, '2.0'),
(27, 9, 3, '3.0'),
(28, 10, 1, '1.0'),
(29, 10, 3, '2.0'),
(30, 10, 2, '3.0'),
(31, 11, 1, '1.0'),
(32, 11, 3, '2.0'),
(33, 11, 2, '3.0'),
(34, 12, 1, '1.0'),
(35, 12, 2, '2.0'),
(36, 12, 3, '3.0'),
(37, 13, 2, '1.0'),
(38, 13, 1, '2.0'),
(39, 13, 3, '3.0'),
(40, 14, 2, '1.0'),
(41, 14, 3, '2.0'),
(42, 14, 1, '3.0'),
(43, 15, 3, '1.0'),
(44, 15, 1, '2.0'),
(45, 15, 2, '3.0'),
(46, 16, 3, '1.0'),
(47, 16, 1, '2.0'),
(48, 16, 2, '3.0');

-- --------------------------------------------------------

--
-- Table structure for table `dt_hhh_master_domain`
--

CREATE TABLE `dt_hhh_master_domain` (
  `DOMAIN_ID` int(11) NOT NULL,
  `DOMAIN_NAME` varchar(10) NOT NULL,
  `DOMAIN_AREA` varchar(40) NOT NULL,
  `DOMAIN_KEY` varchar(10) NOT NULL,
  `DOMAIN_DESC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_hhh_master_domain`
--

INSERT INTO `dt_hhh_master_domain` (`DOMAIN_ID`, `DOMAIN_NAME`, `DOMAIN_AREA`, `DOMAIN_KEY`, `DOMAIN_DESC`) VALUES
(1, 'Head', 'Mental Processes', '4.A.2', 'What processing, planning, problem-solving, decision-making, and innovating activities are performed with job-relevant information?'),
(2, 'Heart', 'Interacting With Others', '4.A.4', 'What interactions with other persons or supervisory activities occur while performing this job?'),
(3, 'Hand', 'Work Output', '4.A.3', 'What physical activities are performed, what equipment and vehicles are operated/controlled, and what complex/technical activities are accomplished as job outputs?');

-- --------------------------------------------------------

--
-- Table structure for table `dt_interest_master_pathway`
--

CREATE TABLE `dt_interest_master_pathway` (
  `INTEREST_ID` int(11) NOT NULL,
  `INTEREST_NAME` varchar(80) NOT NULL,
  `INTEREST_DESC` text NOT NULL,
  `INTEREST_IMG` varchar(40) NOT NULL,
  `INTEREST_ORDER` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_interest_master_pathway`
--

INSERT INTO `dt_interest_master_pathway` (`INTEREST_ID`, `INTEREST_NAME`, `INTEREST_DESC`, `INTEREST_IMG`, `INTEREST_ORDER`) VALUES
(1, 'Working as an artist, performer or producer', 'This includes all aspects of design, drawing, painting and creating visual effects, working as an actor or performer, helping put on shows and direct performances and areas such as make-up, lighting and music', 'thumb_default.png', 1),
(2, 'Working in building and construction', 'This includes all aspects of house and office design, building and construction including working with materials, operating machinery and driving construction vehicles.', 'thumb_default.png', 2),
(3, 'Working in business', 'This includes all aspects of running and managing a business, recruiting and supporting staff, managing information, implementing office procedures and systems.', 'thumb_default.png', 3),
(4, 'Working in communications and broadcasting', 'This includes tasks such as writing articles, developing websites, reporting news, filming and recording events, presenting and producing programmes', 'thumb_default.png', 4),
(5, 'Working in government and public administration', 'This includes providing services that support government and public organisations such as town and transport planning, health and safety, emergency and disaster planning, carrying out inspections and managing taxes', 'thumb_default.png', 5),
(6, 'Working in health and care services', 'This includes all aspects of looking after people\'s health, diagnosing health problems, treating and caring for patients and medical research', 'thumb_default.png', 6),
(7, 'Working in health, beauty and personal care', 'This includes tasks such as hairdressing, skincare, massage treatents, looking after someone\'s hands and feet as well as laundry and dry cleaning services', 'thumb_default.png', 7),
(8, 'Working in legal services, law enforcement and security', 'This includes working as a police office or a detective, prosecuting criminals, working in forensics or helping protect people, animlas and property', 'thumb_default.png', 8),
(9, 'Working in logistics and transport', 'This includes planning and managing the movement of vehicles and freight, the storage and distribution or products and materials as well as driving vehicles, flying planes, looking after passengers and working at an airport or shipping port ', 'thumb_default.png', 9),
(10, 'Working in manufacturing', 'This includes working as an engineer or technician to help manufacture, produce and assemble a wide range of items', 'thumb_default.png', 10),
(11, 'Working in marketing, advertising and sales', 'This includes tasks such as promoting products and services, making advertisements and helping sell products and services to people', 'thumb_default.png', 11),
(12, 'Working in museums and libraries', 'This includes tasks such as curating, restoring and archiving objects, looking after books in libaraies and other services such as translation and interpretaton and providing advoce and guidance', 'thumb_default.png', 12),
(13, 'Working in printing and print technology', 'This includes tasks such as using desktop publishing tools, editing and proofreading, operating printing equipment and making finished printed materials', 'thumb_default.png', 13),
(14, 'Working in sports, amusements and attractions', 'This includes being an athlete, sports professional or trainer, a referee or official as well as working in amusement and recreation facilities', 'thumb_default.png', 14),
(15, 'Working in telecommunications', 'This includes tasks such as installing telecommunications equipment in addition to installing and repairing telecommunication lines', 'thumb_default.png', 15),
(16, 'Working in the armed forces', 'Working in the military as part of the Army, Navy or Airforce', 'thumb_default.png', 16),
(17, 'Working in tourism and hospitality', 'This includes helping customers book holidays, working in hotels and visitor attractions as well as being a tour guide', 'thumb_default.png', 17),
(18, 'Working to make and repair things', 'This includes a wide range of tasks to manufacture and produce goods, all aspects of installing, maintaining and repairing vehicles, machinery and equipment as well as looking after buildings and gardens', 'thumb_default.png', 18),
(19, 'Working to protect the environment', 'Keeping the environment safe and clean and free from hazards', 'thumb_default.png', 19),
(20, 'Working with animals and farming', 'This includes looking after animals, operating agricultrual machinery, farming and animal science ', 'thumb_default.png', 20),
(21, 'Working with food and drink', 'This includes tasks such as growing, preparing and cooking food, taking meal orders, serving drinks and meals in addition to managing retaurants, cafes and bars', 'thumb_default.png', 21),
(22, 'Working with information and computers', 'This includes tasks such as managing information, analysing data, designing and maintaining computer systems as well as developing software and computer games', 'thumb_default.png', 22),
(23, 'Working with money', 'This includes tasks such as working in a bank, providing financial advice, arranging loans and analysing financial information', 'thumb_default.png', 23),
(24, 'Working with natural resources', 'This includes looking after and managing wildlife, forests and timber production as well as our water', 'thumb_default.png', 24),
(25, 'Working with plants', 'This includes all aspects of looking after trees, plants and the soil', 'thumb_default.png', 25),
(26, 'Working with Science, Technology, Engineering and Mathematics', 'This includes all aspects of biology, chemistry and physics including being a scientist or technician and includes working with numbers to solve problems', 'thumb_default.png', 26),
(27, 'Working with young people', 'This includes looking after and caring for babies and children in addition to all aspects of education, teaching and learning', 'thumb_default.png', 27);

-- --------------------------------------------------------

--
-- Table structure for table `dt_interest_master_pathwaymapper`
--

CREATE TABLE `dt_interest_master_pathwaymapper` (
  `INTERESTMAPPER_ID` int(11) NOT NULL,
  `INTEREST_ID` int(11) NOT NULL,
  `INTERESTONET_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dt_interest_master_pathwayonet`
--

CREATE TABLE `dt_interest_master_pathwayonet` (
  `INTERESTONET_ID` int(11) NOT NULL,
  `INTERESTONET_NAME` varchar(100) NOT NULL,
  `INTERESTONET_DESC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_interest_master_pathwayonet`
--

INSERT INTO `dt_interest_master_pathwayonet` (`INTERESTONET_ID`, `INTERESTONET_NAME`, `INTERESTONET_DESC`) VALUES
(1, 'Construction', ''),
(2, 'Construction; Transportation Operations', ''),
(3, 'Design/Pre-Construction', ''),
(4, 'Business Finance', ''),
(5, 'Consumer Services', ''),
(6, 'Counseling & Mental Health Services', ''),
(7, 'Diagnostic Services', ''),
(8, 'Web and Digital Communications', ''),
(9, 'Engineering and Technology', ''),
(10, 'Public Management and Administration', ''),
(11, 'Regulation', ''),
(12, 'Revenue and Taxation', ''),
(13, 'Production', ''),
(14, 'Facility and Mobile Equipment Maintenance', ''),
(15, 'Maintenance, Installation & Repair', ''),
(16, 'Maintenance/Operations', ''),
(17, 'Emergency and Fire Management Services', ''),
(18, 'Lodging', ''),
(19, 'Insurance', ''),
(20, 'Governance', ''),
(21, 'Journalism and Broadcasting', ''),
(22, 'Journalism and Broadcasting; Administrative Support', ''),
(23, 'General Management', ''),
(24, 'General Management; Operations Management; Information Support and Services', ''),
(25, 'Legal Services', ''),
(26, 'Early Childhood Development & Services', ''),
(27, 'Business Information Management', ''),
(28, 'Health Informatics', ''),
(29, 'Operations Management', ''),
(30, 'Performing Arts', ''),
(31, 'Performing Arts; Journalism and Broadcasting', ''),
(32, 'Planning', ''),
(33, 'Planning; Science and Mathematics', ''),
(34, 'Printing Technology', ''),
(35, 'Food Products and Processing Systems', ''),
(36, 'Quality Assurance', ''),
(37, 'Professional Sales', ''),
(38, 'Science and Mathematics', ''),
(39, 'Administration and Administrative Support', ''),
(40, 'Administrative Support', ''),
(41, 'Administrative Support; Information Support and Services', ''),
(42, 'Teaching/Training', ''),
(43, 'Visual Arts', ''),
(44, 'Biotechnology Research and Development', ''),
(45, 'Biotechnology Research and Development; Engineering and Technology', ''),
(46, 'Support Services', ''),
(47, 'Therapeutic Services', ''),
(48, 'Therapeutic Services; Diagnostic Services', ''),
(49, 'Therapeutic Services; Health Informatics', ''),
(50, 'Personal Care Services', ''),
(51, 'Personal Care Services; Transportation Operations', ''),
(52, 'Law Enforcement Services', ''),
(53, 'Security & Protective Services', ''),
(54, 'Logistics Planning and Management Services', ''),
(55, 'Sales and Service', ''),
(56, 'Manufacturing Production Process Development', ''),
(57, 'Marketing Communications', ''),
(58, 'Marketing Management', ''),
(59, 'Marketing Research', ''),
(60, 'Merchandising', ''),
(61, 'Professional Support Services', ''),
(62, 'Recreation, Amusements & Attractions', ''),
(63, 'Telecommunications', ''),
(64, 'National Security', ''),
(65, 'National Security; Manufacturing Production Process Development', ''),
(66, 'Travel & Tourism', ''),
(67, 'Transportation Operations', ''),
(68, 'Transportation Systems/Infrastructure Planning, Management and Regulation', ''),
(69, 'Environmental Service Systems', ''),
(70, 'Agribusiness Systems', ''),
(71, 'Animal Systems', ''),
(72, 'Family & Community Services', ''),
(73, 'Power, Structural & Technical Systems', ''),
(74, 'Restaurants and Food/Beverage Services', ''),
(75, 'Information Support and Services', ''),
(76, 'Information Support and Services; Programming and Software Development', ''),
(77, 'Information Support and Services; Web and Digital Communications', ''),
(78, 'Network Systems', ''),
(79, 'Network Systems; Information Support and Services', ''),
(80, 'Programming and Software Development', ''),
(81, 'Accounting', ''),
(82, 'Banking Services', ''),
(83, 'Banking Services; Consumer Services', ''),
(84, 'Securities & Investments', ''),
(85, 'Securities & Investments; Business Finance', ''),
(87, 'Securities & Investments; Professional Sales', '');

-- --------------------------------------------------------

--
-- Table structure for table `dt_interest_user_pathway`
--

CREATE TABLE `dt_interest_user_pathway` (
  `USR_INTEREST_ID` int(11) NOT NULL,
  `USER_SID` varchar(36) NOT NULL,
  `INTEREST_ID` int(11) NOT NULL,
  `LAST_ATTEMPTED_ON` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dt_skill_master_skill`
--

CREATE TABLE `dt_skill_master_skill` (
  `SKILL_ID` int(11) NOT NULL,
  `SKILL_NAME` varchar(40) NOT NULL,
  `SKILL_DEF` varchar(100) NOT NULL,
  `SKILL_DESC` text NOT NULL,
  `MBTI_ID` int(1) NOT NULL COMMENT 'MBTI_LETTER',
  `SKILL_ORDER` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_skill_master_skill`
--

INSERT INTO `dt_skill_master_skill` (`SKILL_ID`, `SKILL_NAME`, `SKILL_DEF`, `SKILL_DESC`, `MBTI_ID`, `SKILL_ORDER`) VALUES
(1, 'Listening', 'The receiving, retaining and processing of information or ideas', 'This skill is all about being able to effectively receive information - whether it comes from customers, colleagues or stakeholders.  Initially, the skill steps concentrate on being able to listen effectively to others - including remembering short instructions, understanding why others are communicating and recording important information.  Individuals then focus on how they demonstrate that they are listening effectively, thinking about body language, open questioning and summarising and rephrasing.  Beyond that, the focus is on being aware of how they might be being influenced by a speaker, through tone and language.  The final steps are about critical listening - comparing perspectives, identifying biases, evaluating ideas and being objective.', 2, 4),
(2, 'Speaking', 'The oral transmission of information or ideas', 'This skill is all about how to communicate effectively with others, being mindful of whether they are talking to customers, colleagues or other stakeholders and in different settings.  Initially, this skill focuses on being able to speak clearly - first with well known individuals and small groups and then with those who are not known.  The next stage is about being an effective speaker by making points logically, by thinking about what listeners already know and using appropriate language, tone and gesture.  Beyond that, individuals focus on speaking engagingly through use of facts and examples, visual aids, and their expression and gesture.  Beyond that stage, speakers will be adaptive to the response of their listeners and ready for different scenarios. The final steps focus on speaking influentially - using structure, examples, facts and vision to persuade listeners.', 1, 6),
(3, 'Problem Solving', 'The ability to find a solution to a situation or challenge', 'This skill focuses on how to solve problems, recognising that while part of Problem Solving is technical know-how and experience, there are also transferable tools that individuals can develop and use.  The first steps focus on being able to follow instructions to complete tasks, seeking help and extra information if needed. The next stage focuses on being able to explore problems by creating and assessing different potential solutions. This includes more complex problems, without a simple technical solution.  Beyond this, the focus is on exploring complex solutions - thinking about causes and effects, generating options, and evaluating those options. This extends into analysis using logical reasoning and hypotheses.  Finally, individuals implement strategic plans to solve complex problems, assess their success, and draw out learning for the future.', 3, 5),
(4, 'Creativity', 'The use of imagination and the generation of new ideas', 'Creativity is the complement to Problem Solving, and is about generating innovations or ideas which can then be honed through the problem-solving process.  The first few steps focus on the individual\'s confidence in imagining different situations and sharing their ideas.  The focus is then on generating ideas - using a clear brief, making improvements to something that already exists and combining concepts.  Individuals then apply creativity in the context of their work and their wider life. They can build off this to develop ideas using tools like mind mapping, questioning, and considering different perspectives.  The most advanced steps focus on building effective innovation in group settings and by seeking out varied experiences and stimuli. Finally, individuals support others to innovate, by sharing tools, identifying the right tools for the situation and through coaching.', 4, 2),
(5, 'Staying Positive', 'The ability to use tactics and strategies to overcome setbacks and achieve goals', 'This skill is all about individuals being equipped to manage their emotions effectively and being able to remain motivated, and ultimately to motivate others, even when facing setbacks.  The early steps focus on identifying emotions - particularly feeling positive or negative. Building off that is the ability to keep trying - and then staying calm, thinking about what went wrong, and trying to cheer up and encourage others.  The focus then turns to identifying new opportunities in difficult situations, sharing those, and adapting or creating plans accordingly. At more advanced steps, individuals identify and manage risks and gains in opportunities.  Finally, individuals support others to stay positive by managing their own response, helping others to see opportunities and creating plans to achieve them.', 8, 7),
(6, 'Aiming High', 'The ability to set clear, tangible goals and devise a robust route to achieving them', 'This skill is about being able to plan effectively - both to achieve organisational goals, and also to set their own personal development targets. Initially, this is about knowing when something is too difficult, and having a sense of what doing well looks like for an individual.  The focus is then about working with care and attention, taking pride in success and having a positive approach to new challenges. Building on this, individuals set goals for themselves, informed by an understanding of what is needed, and then be able to order and prioritise tasks, secure resources and involve others effectively.  At the higher steps, the focus is creating plans informed by an individual\'s skill set, with clear targets, and building on external views. At the most advanced level, individuals develop long-term strategies. These are informed by an assessment of internal and external factors, structured through regular milestones and feedback loops.', 7, 1),
(7, 'Leadership', 'Supporting, encouraging and developing others to achieve a shared goal', 'This skill is relevant not only for individuals in positions of management with formal power, but also for individuals working with peers in teams.  At the earliest stages, the focus is on basic empathy - understanding their own feelings, being able to share them, and recognising the feelings of others. The focus is on managing - dividing up tasks, managing time and sharing resources, managing group discussions and dealing with disagreements.  Beyond that, individuals build their awareness of their own strengths and weaknesses, and those of their teams. This allows them to allocate tasks effectively. They then build techniques to mentor, coach and motivate others. At the highest steps, individuals will be able to reflect on their own leadership style and understand its effect on others.  \r\nUltimately, they should be able to build on their strengths and mitigate their weaknesses, and adapt their leadership style to the situation.', 5, 3),
(8, 'Teamwork', 'Working cooperatively with others towards achieving a shared goal', 'This skill applies to working within both formal and informal teams, and also with customers, clients or other stakeholders. Initially, this is about individuals fulfilling expectations around being positive, behaving appropriately, being timely and reliable and taking responsibility. This extends to understanding and respecting diversity of others\' cultures, beliefs and backgrounds.  The next steps focus on making a contribution to a team through group decision making recognising the value of others\' ideas and encourage others to contribute too.Beyond that, individuals improve their teams through managing conflict and building relationships beyond the immediate team. At the top steps, individuals focus on how they influence their team through suggesting improvements and learning lessons from setbacks.  Ultimately, individuals support the team by evaluating others strengths and weaknesses and bringing in external expertise and relationships.', 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `dt_skill_master_skillmapper`
--

CREATE TABLE `dt_skill_master_skillmapper` (
  `SKILLMAPPER_ID` int(11) NOT NULL,
  `SKILL_ID` int(11) NOT NULL,
  `SKILLONET_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_skill_master_skillmapper`
--

INSERT INTO `dt_skill_master_skillmapper` (`SKILLMAPPER_ID`, `SKILL_ID`, `SKILLONET_ID`) VALUES
(1, 6, 1),
(2, 6, 2),
(3, 6, 5),
(4, 6, 6),
(5, 6, 8),
(6, 4, 9),
(7, 4, 10),
(8, 4, 11),
(9, 4, 12),
(10, 7, 1),
(11, 7, 2),
(12, 7, 8),
(13, 7, 3),
(14, 7, 4),
(15, 7, 18),
(16, 1, 13),
(17, 1, 19),
(18, 1, 9),
(19, 3, 9),
(20, 3, 14),
(21, 3, 15),
(22, 3, 16),
(23, 3, 24),
(24, 3, 7),
(25, 2, 18),
(26, 2, 13),
(27, 2, 17),
(28, 2, 12),
(29, 5, 3),
(30, 5, 11),
(31, 5, 20),
(32, 5, 21),
(33, 5, 8),
(34, 5, 19),
(35, 8, 18),
(36, 8, 13),
(37, 8, 19),
(38, 8, 12),
(39, 8, 22),
(40, 8, 21),
(41, 8, 23);

-- --------------------------------------------------------

--
-- Table structure for table `dt_skill_master_skillonet`
--

CREATE TABLE `dt_skill_master_skillonet` (
  `SKILLONET_ID` int(11) NOT NULL,
  `SKILLTYPE_ID` int(11) NOT NULL,
  `SKILLONET_NAME` varchar(100) NOT NULL,
  `SKILLONET_DESC` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_skill_master_skillonet`
--

INSERT INTO `dt_skill_master_skillonet` (`SKILLONET_ID`, `SKILLTYPE_ID`, `SKILLONET_NAME`, `SKILLONET_DESC`) VALUES
(1, 1, 'Management of Financial Resources', 'Determining how money will be spent to get the work done, and accounting for these expenditures.'),
(2, 1, 'Management of Material Resources', 'Obtaining and seeing to the appropriate use of equipment, facilities, and materials needed to do certain work.'),
(3, 1, 'Management of Personnel Resources', 'Motivating, developing, and directing people as they work, identifying the best people for the job.'),
(4, 1, 'Time Management', 'Managing one\'s own time and the time of others.'),
(5, 2, 'Systems Analysis', 'Determining how a system should work and how changes in conditions, operations, and the environment will affect outcomes.'),
(6, 2, 'Systems Evaluation', 'Identifying measures or indicators of system performance and the actions needed to improve or correct performance, relative to the goals of the system.'),
(7, 2, 'Judgment and Decision Making', 'Considering the relative costs and benefits of potential actions to choose the most appropriate one.'),
(8, 3, 'Monitoring', 'Monitoring/Assessing performance of yourself, other individuals, or organizations to make improvements or take corrective action.'),
(9, 3, 'Active Learning', 'Understanding the implications of new information for both current and future problem-solving and decision-making.'),
(10, 3, 'Learning Strategies', 'Selecting and using training/instructional methods and procedures appropriate for the situation when learning or teaching new things.'),
(11, 3, 'Writing', 'Communicating effectively in writing as appropriate for the needs of the audience.'),
(12, 3, 'Speaking', 'Talking to others to convey information effectively.'),
(13, 3, 'Active Listening', 'Giving full attention to what other people are saying, taking time to understand the points being made, asking questions as appropriate, and not interrupting at inappropriate times.'),
(14, 3, 'Critical Thinking', 'Using logic and reasoning to identify the strengths and weaknesses of alternative solutions, conclusions or approaches to problems.'),
(15, 3, 'Mathematics', 'Using mathematics to solve problems.'),
(16, 3, 'Science', 'Using scientific rules and methods to solve problems.'),
(17, 3, 'Reading Comprehension', 'Understanding written sentences and paragraphs in work related documents.'),
(18, 4, 'Persuasion', 'Persuading others to change their minds or behavior.'),
(19, 4, 'Social Perceptiveness', 'Being aware of others\' reactions and understanding why they react as they do.'),
(20, 4, 'Instructing', 'Teaching others how to do something.'),
(21, 4, 'Service Orientation', 'Actively looking for ways to help people.'),
(22, 4, 'Negotiation', 'Bringing others together and trying to reconcile differences.'),
(23, 4, 'Coordination', 'Adjusting actions in relation to others\' actions.'),
(24, 5, 'Complex Problem Solving', 'Identifying complex problems and reviewing related information to develop and evaluate options and implement solutions');

-- --------------------------------------------------------

--
-- Table structure for table `dt_skill_master_skilltype`
--

CREATE TABLE `dt_skill_master_skilltype` (
  `SKILLTYPE_ID` int(11) NOT NULL,
  `SKILLTYPE_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dt_skill_master_skilltype`
--

INSERT INTO `dt_skill_master_skilltype` (`SKILLTYPE_ID`, `SKILLTYPE_NAME`) VALUES
(1, 'Resource Management '),
(2, 'Systems'),
(3, 'Basic'),
(4, 'Social'),
(5, 'Complex Problem Solving');

-- --------------------------------------------------------

--
-- Table structure for table `dt_skill_user_skill`
--

CREATE TABLE `dt_skill_user_skill` (
  `USR_SKILL_ID` int(11) NOT NULL,
  `USER_SID` varchar(36) NOT NULL,
  `SKILL_ID` int(11) NOT NULL,
  `LAST_ATTEMPTED_ON` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cm_adm_master_country`
--
ALTER TABLE `cm_adm_master_country`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `dt_behaviour_master_animal`
--
ALTER TABLE `dt_behaviour_master_animal`
  ADD PRIMARY KEY (`ANML_ID`),
  ADD UNIQUE KEY `ANML_ALIAS` (`ANML_ALIAS`);

--
-- Indexes for table `dt_behaviour_master_animalceleb`
--
ALTER TABLE `dt_behaviour_master_animalceleb`
  ADD PRIMARY KEY (`ANMLCELEB_ID`);

--
-- Indexes for table `dt_behaviour_master_animalgroup`
--
ALTER TABLE `dt_behaviour_master_animalgroup`
  ADD PRIMARY KEY (`ANMLGRP_ID`);

--
-- Indexes for table `dt_behaviour_master_animalmbti`
--
ALTER TABLE `dt_behaviour_master_animalmbti`
  ADD PRIMARY KEY (`ANMLMBTI_ID`);

--
-- Indexes for table `dt_behaviour_master_mbti`
--
ALTER TABLE `dt_behaviour_master_mbti`
  ADD PRIMARY KEY (`MBTI_ID`);

--
-- Indexes for table `dt_behaviour_master_question`
--
ALTER TABLE `dt_behaviour_master_question`
  ADD PRIMARY KEY (`QSTN_ID`);

--
-- Indexes for table `dt_behaviour_master_questionoption`
--
ALTER TABLE `dt_behaviour_master_questionoption`
  ADD PRIMARY KEY (`OPTION_ID`);

--
-- Indexes for table `dt_behaviour_qstn_mbti`
--
ALTER TABLE `dt_behaviour_qstn_mbti`
  ADD PRIMARY KEY (`QSTN_MBTI_ID`),
  ADD UNIQUE KEY `M_Q_UNIQUE` (`MBTI_ID`,`QSTN_ID`) USING BTREE;

--
-- Indexes for table `dt_behaviour_user_animal`
--
ALTER TABLE `dt_behaviour_user_animal`
  ADD PRIMARY KEY (`USR_ANML_ID`),
  ADD UNIQUE KEY `USER_SID` (`USER_SID`);

--
-- Indexes for table `dt_hhh_master_activity`
--
ALTER TABLE `dt_hhh_master_activity`
  ADD PRIMARY KEY (`DACTIVITY_ID`),
  ADD UNIQUE KEY `DACTIVITY_KEY` (`DACTIVITY_KEY`);

--
-- Indexes for table `dt_hhh_master_animalactivity`
--
ALTER TABLE `dt_hhh_master_animalactivity`
  ADD PRIMARY KEY (`ANMLACTIVITY_ID`) USING BTREE;

--
-- Indexes for table `dt_hhh_master_domain`
--
ALTER TABLE `dt_hhh_master_domain`
  ADD PRIMARY KEY (`DOMAIN_ID`);

--
-- Indexes for table `dt_interest_master_pathway`
--
ALTER TABLE `dt_interest_master_pathway`
  ADD PRIMARY KEY (`INTEREST_ID`) USING BTREE,
  ADD UNIQUE KEY `INTEREST_NAME` (`INTEREST_NAME`);

--
-- Indexes for table `dt_interest_master_pathwaymapper`
--
ALTER TABLE `dt_interest_master_pathwaymapper`
  ADD PRIMARY KEY (`INTERESTMAPPER_ID`) USING BTREE;

--
-- Indexes for table `dt_interest_master_pathwayonet`
--
ALTER TABLE `dt_interest_master_pathwayonet`
  ADD PRIMARY KEY (`INTERESTONET_ID`),
  ADD UNIQUE KEY `INTERESTONET_NAME` (`INTERESTONET_NAME`) USING BTREE;

--
-- Indexes for table `dt_interest_user_pathway`
--
ALTER TABLE `dt_interest_user_pathway`
  ADD PRIMARY KEY (`USR_INTEREST_ID`) USING BTREE,
  ADD UNIQUE KEY `USER_SID` (`USER_SID`);

--
-- Indexes for table `dt_skill_master_skill`
--
ALTER TABLE `dt_skill_master_skill`
  ADD PRIMARY KEY (`SKILL_ID`);

--
-- Indexes for table `dt_skill_master_skillmapper`
--
ALTER TABLE `dt_skill_master_skillmapper`
  ADD PRIMARY KEY (`SKILLMAPPER_ID`);

--
-- Indexes for table `dt_skill_master_skillonet`
--
ALTER TABLE `dt_skill_master_skillonet`
  ADD PRIMARY KEY (`SKILLONET_ID`);

--
-- Indexes for table `dt_skill_master_skilltype`
--
ALTER TABLE `dt_skill_master_skilltype`
  ADD PRIMARY KEY (`SKILLTYPE_ID`);

--
-- Indexes for table `dt_skill_user_skill`
--
ALTER TABLE `dt_skill_user_skill`
  ADD PRIMARY KEY (`USR_SKILL_ID`) USING BTREE,
  ADD UNIQUE KEY `USER_SID` (`USER_SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dt_behaviour_master_animal`
--
ALTER TABLE `dt_behaviour_master_animal`
  MODIFY `ANML_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dt_behaviour_master_animalceleb`
--
ALTER TABLE `dt_behaviour_master_animalceleb`
  MODIFY `ANMLCELEB_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `dt_behaviour_master_animalgroup`
--
ALTER TABLE `dt_behaviour_master_animalgroup`
  MODIFY `ANMLGRP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dt_behaviour_master_animalmbti`
--
ALTER TABLE `dt_behaviour_master_animalmbti`
  MODIFY `ANMLMBTI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `dt_behaviour_master_mbti`
--
ALTER TABLE `dt_behaviour_master_mbti`
  MODIFY `MBTI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dt_behaviour_master_question`
--
ALTER TABLE `dt_behaviour_master_question`
  MODIFY `QSTN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dt_behaviour_master_questionoption`
--
ALTER TABLE `dt_behaviour_master_questionoption`
  MODIFY `OPTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dt_behaviour_qstn_mbti`
--
ALTER TABLE `dt_behaviour_qstn_mbti`
  MODIFY `QSTN_MBTI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dt_behaviour_user_animal`
--
ALTER TABLE `dt_behaviour_user_animal`
  MODIFY `USR_ANML_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dt_hhh_master_activity`
--
ALTER TABLE `dt_hhh_master_activity`
  MODIFY `DACTIVITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `dt_hhh_master_animalactivity`
--
ALTER TABLE `dt_hhh_master_animalactivity`
  MODIFY `ANMLACTIVITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `dt_hhh_master_domain`
--
ALTER TABLE `dt_hhh_master_domain`
  MODIFY `DOMAIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dt_interest_master_pathway`
--
ALTER TABLE `dt_interest_master_pathway`
  MODIFY `INTEREST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dt_interest_master_pathwaymapper`
--
ALTER TABLE `dt_interest_master_pathwaymapper`
  MODIFY `INTERESTMAPPER_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dt_interest_master_pathwayonet`
--
ALTER TABLE `dt_interest_master_pathwayonet`
  MODIFY `INTERESTONET_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `dt_interest_user_pathway`
--
ALTER TABLE `dt_interest_user_pathway`
  MODIFY `USR_INTEREST_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dt_skill_master_skill`
--
ALTER TABLE `dt_skill_master_skill`
  MODIFY `SKILL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dt_skill_master_skillmapper`
--
ALTER TABLE `dt_skill_master_skillmapper`
  MODIFY `SKILLMAPPER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `dt_skill_master_skillonet`
--
ALTER TABLE `dt_skill_master_skillonet`
  MODIFY `SKILLONET_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `dt_skill_master_skilltype`
--
ALTER TABLE `dt_skill_master_skilltype`
  MODIFY `SKILLTYPE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dt_skill_user_skill`
--
ALTER TABLE `dt_skill_user_skill`
  MODIFY `USR_SKILL_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dt_hhh_master_activity`
--
ALTER TABLE `dt_hhh_master_activity`
  ADD CONSTRAINT `dt_hhh_master_activity_ibfk_1` FOREIGN KEY (`DOMAIN_ID`) REFERENCES `dt_hhh_master_domain` (`DOMAIN_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
