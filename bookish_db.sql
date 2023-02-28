-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 10:54 AM
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
-- Database: `bookish_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `pen_name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `photo`, `author`, `pen_name`, `notes`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'https://m.media-amazon.com/images/I/41Dq72Ec5dL._SY600_.jpg', 'Bruce Wilkinson', NULL, NULL, 0, NULL, NULL, NULL),
(2, 'https://m.media-amazon.com/images/I/31H4fUBky1L._SY600_.jpg', 'Robert T. Kiyosaki', NULL, NULL, 0, NULL, NULL, NULL),
(3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/J._K._Rowling_2010.jpg/220px-J._K._Rowling_2010.jpg', 'Joanne Rowling', 'J.K. Rowling', NULL, 0, NULL, NULL, NULL),
(4, NULL, 'Alfred V. Aho', NULL, NULL, 0, NULL, NULL, NULL),
(5, NULL, 'Ravi Sethi', NULL, NULL, 0, NULL, NULL, NULL),
(6, NULL, 'Jeffrey D. Ullman', NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `authors` longtext NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `number_of_pages` int(10) UNSIGNED DEFAULT NULL,
  `publisher_id` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `cover`, `name`, `short_name`, `authors`, `isbn`, `number_of_pages`, `publisher_id`, `country_id`, `release_date`, `notes`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'https://m.media-amazon.com/images/I/51lqFNtS9zL._SX336_BO1,204,203,200_.jpg', 'The Prayer of Jabez: Breaking Through to the Blessed Life', 'The Prayer of Jabez', '[1]', '978-1576738108', 93, '1', '236', '2000-04-24', NULL, 0, NULL, NULL, NULL),
(2, 'https://m.media-amazon.com/images/I/51Hfv2MfNGL._SX331_BO1,204,203,200_.jpg', 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not!', 'Rich Dad Poor Dad', '[2]', '978-1612681139', 336, '2', '236', '2022-04-05', NULL, 0, NULL, NULL, NULL),
(3, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg/220px-Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg', 'Harry Potter and the Philosopher\'s Stone', NULL, '[3]', '978-0-7475-3269-9', 223, '3', '235', '1997-06-26', NULL, 0, NULL, NULL, NULL),
(4, 'https://m.media-amazon.com/images/I/51FWXX9KWVL._SX384_BO1,204,203,200_.jpg', 'Compilers: Principles, Techniques, and Tools', NULL, '[4,5,6]', '978-0201100884', 796, '4', NULL, '1985-01-01', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `alias`) VALUES
(1, 'Afghanistan', 'AFG'),
(2, 'Åland Islands', 'ALA'),
(3, 'Albania', 'ALB'),
(4, 'Algeria', 'DZA'),
(5, 'American Samoa', 'ASM'),
(6, 'Andorra', 'AND'),
(7, 'Angola', 'AGO'),
(8, 'Anguilla', 'AIA'),
(9, 'Antarctica', 'ATA'),
(10, 'Antigua and Barbuda', 'ATG'),
(11, 'Argentina', 'ARG'),
(12, 'Armenia', 'ARM'),
(13, 'Aruba', 'ABW'),
(14, 'Australia', 'AUS'),
(15, 'Austria', 'AUT'),
(16, 'Azerbaijan', 'AZE'),
(17, 'Bahamas', 'BHS'),
(18, 'Bahrain', 'BHR'),
(19, 'Bangladesh', 'BGD'),
(20, 'Barbados', 'BRB'),
(21, 'Belarus', 'BLR'),
(22, 'Belgium', 'BEL'),
(23, 'Belize', 'BLZ'),
(24, 'Benin', 'BEN'),
(25, 'Bermuda', 'BMU'),
(26, 'Bhutan', 'BTN'),
(27, 'Bolivia, Plurinational State of..', 'BOL'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BES'),
(29, 'Bosnia and Herzegovina', 'BIH'),
(30, 'Botswana', 'BWA'),
(31, 'Bouvet Island', 'BVT'),
(32, 'Brazil', 'BRA'),
(33, 'British Indian Ocean Territory', 'IOT'),
(34, 'Brunei Darussalam', 'BRN'),
(35, 'Bulgaria', 'BGR'),
(36, 'Burkina Faso', 'BFA'),
(37, 'Burundi', 'BDI'),
(38, 'Cambodia', 'KHM'),
(39, 'Cameroon', 'CMR'),
(40, 'Canada', 'CAN'),
(41, 'Cape Verde', 'CPV'),
(42, 'Cayman Islands', 'CYM'),
(43, 'Central African Republic', 'CAF'),
(44, 'Chad', 'TCD'),
(45, 'Chile', 'CHL'),
(46, 'China', 'CHN'),
(47, 'Christmas Island', 'CXR'),
(48, 'Cocos (Keeling) Islands', 'CCK'),
(49, 'Colombia', 'COL'),
(50, 'Comoros', 'COM'),
(51, 'Congo', 'COG'),
(52, 'Congo, the Democratic Republic of the', 'COD'),
(53, 'Cook Islands', 'COK'),
(54, 'Costa Rica', 'CRI'),
(55, 'Côte d&apos;Ivoire', 'CIV'),
(56, 'Croatia', 'HRV'),
(57, 'Cuba', 'CUB'),
(58, 'Curaçao', 'CUW'),
(59, 'Cyprus', 'CYP'),
(60, 'Czech Republic', 'CZE'),
(61, 'Denmark', 'DNK'),
(62, 'Djibouti', 'DJI'),
(63, 'Dominica', 'DMA'),
(64, 'Dominican Republic', 'DOM'),
(65, 'Ecuador', 'ECU'),
(66, 'Egypt', 'EGY'),
(67, 'El Salvador', 'SLV'),
(68, 'Equatorial Guinea', 'GNQ'),
(69, 'Eritrea', 'ERI'),
(70, 'Estonia', 'EST'),
(71, 'Ethiopia', 'ETH'),
(72, 'Falkland Islands (Malvinas)', 'FLK'),
(73, 'Faroe Islands', 'FRO'),
(74, 'Fiji', 'FJI'),
(75, 'Finland', 'FIN'),
(76, 'France', 'FRA'),
(77, 'French Guiana', 'GUF'),
(78, 'French Polynesia', 'PYF'),
(79, 'French Southern Territories', 'ATF'),
(80, 'Gabon', 'GAB'),
(81, 'Gambia', 'GMB'),
(82, 'Georgia', 'GEO'),
(83, 'Germany', 'DEU'),
(84, 'Ghana', 'GHA'),
(85, 'Gibraltar', 'GIB'),
(86, 'Greece', 'GRC'),
(87, 'Greenland', 'GRL'),
(88, 'Grenada', 'GRD'),
(89, 'Guadeloupe', 'GLP'),
(90, 'Guam', 'GUM'),
(91, 'Guatemala', 'GTM'),
(92, 'Guernsey', 'GGY'),
(93, 'Guinea', 'GIN'),
(94, 'Guinea-Bissau', 'GNB'),
(95, 'Guyana', 'GUY'),
(96, 'Haiti', 'HTI'),
(97, 'Heard Island and McDonald Islands', 'HMD'),
(98, 'Holy See (Vatican City State)', 'VAT'),
(99, 'Honduras', 'HND'),
(100, 'Hong Kong', 'HKG'),
(101, 'Hungary', 'HUN'),
(102, 'Iceland', 'ISL'),
(103, 'India', 'IND'),
(104, 'Indonesia', 'IDN'),
(105, 'Iran, Islamic Republic of..', 'IRN'),
(106, 'Iraq', 'IRQ'),
(107, 'Ireland', 'IRL'),
(108, 'Isle of Man', 'IMN'),
(109, 'Israel', 'ISR'),
(110, 'Italy', 'ITA'),
(111, 'Jamaica', 'JAM'),
(112, 'Japan', 'JPN'),
(113, 'Jersey', 'JEY'),
(114, 'Jordan', 'JOR'),
(115, 'Kazakhstan', 'KAZ'),
(116, 'Kenya', 'KEN'),
(117, 'Kiribati', 'KIR'),
(118, 'Korea, Democratic People&apos;s Republic of..', 'PRK'),
(119, 'Korea, Republic of..', 'KOR'),
(120, 'Kuwait', 'KWT'),
(121, 'Kyrgyzstan', 'KGZ'),
(122, 'Lao People&apos;s Democratic Republic', 'LAO'),
(123, 'Latvia', 'LVA'),
(124, 'Lebanon', 'LBN'),
(125, 'Lesotho', 'LSO'),
(126, 'Liberia', 'LBR'),
(127, 'Libya', 'LBY'),
(128, 'Liechtenstein', 'LIE'),
(129, 'Lithuania', 'LTU'),
(130, 'Luxembourg', 'LUX'),
(131, 'Macao', 'MAC'),
(132, 'Macedonia, the former Yugoslav Republic of..', 'MKD'),
(133, 'Madagascar', 'MDG'),
(134, 'Malawi', 'MWI'),
(135, 'Malaysia', 'MYS'),
(136, 'Maldives', 'MDV'),
(137, 'Mali', 'MLI'),
(138, 'Malta', 'MLT'),
(139, 'Marshall Islands', 'MHL'),
(140, 'Martinique', 'MTQ'),
(141, 'Mauritania', 'MRT'),
(142, 'Mauritius', 'MUS'),
(143, 'Mayotte', 'MYT'),
(144, 'Mexico', 'MEX'),
(145, 'Micronesia, Federated States of..', 'FSM'),
(146, 'Moldova, Republic of..', 'MDA'),
(147, 'Monaco', 'MCO'),
(148, 'Mongolia', 'MNG'),
(149, 'Montenegro', 'MNE'),
(150, 'Montserrat', 'MSR'),
(151, 'Morocco', 'MAR'),
(152, 'Mozambique', 'MOZ'),
(153, 'Myanmar', 'MMR'),
(154, 'Namibia', 'NAM'),
(155, 'Nauru', 'NRU'),
(156, 'Nepal', 'NPL'),
(157, 'Netherlands', 'NLD'),
(158, 'New Caledonia', 'NCL'),
(159, 'New Zealand', 'NZL'),
(160, 'Nicaragua', 'NIC'),
(161, 'Niger', 'NER'),
(162, 'Nigeria', 'NGA'),
(163, 'Niue', 'NIU'),
(164, 'Norfolk Island', 'NFK'),
(165, 'Northern Mariana Islands', 'MNP'),
(166, 'Norway', 'NOR'),
(167, 'Oman', 'OMN'),
(168, 'Pakistan', 'PAK'),
(169, 'Palau', 'PLW'),
(170, 'Palestinian Territory, Occupied', 'PSE'),
(171, 'Panama', 'PAN'),
(172, 'Papua New Guinea', 'PNG'),
(173, 'Paraguay', 'PRY'),
(174, 'Peru', 'PER'),
(175, 'Philippines', 'PHL'),
(176, 'Pitcairn', 'PCN'),
(177, 'Poland', 'POL'),
(178, 'Portugal', 'PRT'),
(179, 'Puerto Rico', 'PRI'),
(180, 'Qatar', 'QAT'),
(181, 'Réunion', 'REU'),
(182, 'Romania', 'ROU'),
(183, 'Russian Federation', 'RUS'),
(184, 'Rwanda', 'RWA'),
(185, 'Saint Barthélemy', 'BLM'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SHN'),
(187, 'Saint Kitts and Nevis', 'KNA'),
(188, 'Saint Lucia', 'LCA'),
(189, 'Saint Martin (French part)', 'MAF'),
(190, 'Saint Pierre and Miquelon', 'SPM'),
(191, 'Saint Vincent and the Grenadines', 'VCT'),
(192, 'Samoa', 'WSM'),
(193, 'San Marino', 'SMR'),
(194, 'Sao Tome and Principe', 'STP'),
(195, 'Saudi Arabia', 'SAU'),
(196, 'Senegal', 'SEN'),
(197, 'Serbia', 'SRB'),
(198, 'Seychelles', 'SYC'),
(199, 'Sierra Leone', 'SLE'),
(200, 'Singapore', 'SGP'),
(201, 'Sint Maarten (Dutch part)', 'SXM'),
(202, 'Slovakia', 'SVK'),
(203, 'Slovenia', 'SVN'),
(204, 'Solomon Islands', 'SLB'),
(205, 'Somalia', 'SOM'),
(206, 'South Africa', 'ZAF'),
(207, 'South Georgia and the South Sandwich Islands', 'SGS'),
(208, 'South Sudan', 'SSD'),
(209, 'Spain', 'ESP'),
(210, 'Sri Lanka', 'LKA'),
(211, 'Sudan', 'SDN'),
(212, 'Suriname', 'SUR'),
(213, 'Svalbard and Jan Mayen', 'SJM'),
(214, 'Swaziland', 'SWZ'),
(215, 'Sweden', 'SWE'),
(216, 'Switzerland', 'CHE'),
(217, 'Syrian Arab Republic', 'SYR'),
(218, 'Taiwan, Province of China', 'TWN'),
(219, 'Tajikistan', 'TJK'),
(220, 'Tanzania, United Republic of..', 'TZA'),
(221, 'Thailand', 'THA'),
(222, 'Timor-Leste', 'TLS'),
(223, 'Togo', 'TGO'),
(224, 'Tokelau', 'TKL'),
(225, 'Tonga', 'TON'),
(226, 'Trinidad and Tobago', 'TTO'),
(227, 'Tunisia', 'TUN'),
(228, 'Turkey', 'TUR'),
(229, 'Turkmenistan', 'TKM'),
(230, 'Turks and Caicos Islands', 'TCA'),
(231, 'Tuvalu', 'TUV'),
(232, 'Uganda', 'UGA'),
(233, 'Ukraine', 'UKR'),
(234, 'United Arab Emirates', 'ARE'),
(235, 'United Kingdom', 'GBR'),
(236, 'United States', 'USA'),
(237, 'United States Minor Outlying Islands', 'UMI'),
(238, 'Uruguay', 'URY'),
(239, 'Uzbekistan', 'UZB'),
(240, 'Vanuatu', 'VUT'),
(241, 'Venezuela, Bolivarian Republic of..', 'VEN'),
(242, 'Viet Nam', 'VNM'),
(243, 'Virgin Islands, British', 'VGB'),
(244, 'Virgin Islands, U.S.', 'VIR'),
(245, 'Wallis and Futuna', 'WLF'),
(246, 'Western Sahara', 'ESH'),
(247, 'Yemen', 'YEM'),
(248, 'Zambia', 'ZMB'),
(249, 'Zimbabwe', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_27_212300_create_books_table', 1),
(6, '2023_02_27_220755_create_authors_table', 1),
(7, '2023_02_27_220820_create_publishers_table', 1),
(8, '2023_02_27_220851_create_countries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `logo`, `publisher`, `website`, `notes`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Multnomah Publishers (Multnomah Books)', NULL, NULL, 0, NULL, NULL, NULL),
(2, NULL, 'Plata Publishing', NULL, NULL, 0, NULL, NULL, NULL),
(3, NULL, 'Bloomsbury', NULL, NULL, 0, NULL, NULL, NULL),
(4, NULL, 'Addison-Wesley', NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenant` varchar(255) NOT NULL DEFAULT 'ADMIN',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_subscribed_at` timestamp NULL DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tenant`, `name`, `email`, `password`, `notes`, `status`, `remember_token`, `email_verified_at`, `email_subscribed_at`, `password_changed_at`, `created_at`, `updated_at`, `deleted_at`, `uuid`) VALUES
(1, 'ADMIN', 'Super Admin', 'webmaster@bookish.io', '$2y$10$Kc8HByXnVb1WE2FBX7cNV.xRxCq7mI9F2jaZwYSG5YLGFdVYIQm0y', NULL, 0, 'esoT7jfAKW', '2023-02-28 08:54:10', NULL, NULL, '2023-02-28 08:54:10', '2023-02-28 08:54:10', NULL, '98932860-7219-48b2-856f-6fa55861cd8a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_author_unique` (`author`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_name_unique` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_publisher_unique` (`publisher`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_uuid_index` (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
