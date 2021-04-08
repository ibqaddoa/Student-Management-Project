-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Erstellungszeit: 07. Apr 2021 um 22:23
-- Server-Version: 5.7.32
-- PHP-Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `Student_mgmt_sys`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country_list`
--

CREATE TABLE `country_list` (
  `ctry_id` int(3) NOT NULL,
  `country` varchar(35) DEFAULT NULL,
  `cont_id` int(2) NOT NULL DEFAULT '0' COMMENT 'continent ID',
  `UN_num` int(10) UNSIGNED DEFAULT NULL,
  `ISO2` varchar(2) DEFAULT NULL,
  `ISO3` varchar(10) DEFAULT NULL,
  `IANA_internet` varchar(10) DEFAULT NULL,
  `ITU_caling` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `country_list`
--

INSERT INTO `country_list` (`ctry_id`, `country`, `cont_id`, `UN_num`, `ISO2`, `ISO3`, `IANA_internet`, `ITU_caling`) VALUES
(1, 'Afghanistan', 2, 4, 'AF', 'AFG', '.af', '93'),
(2, 'Albania', 4, 8, 'AL', 'ALB', '.al', '355'),
(3, 'Algeria', 1, 12, 'DZ', 'DZA', '.dz', '213'),
(4, 'American Samoa', 0, 16, 'AS', 'ASM', '.as', '1-684'),
(5, 'Andorra', 4, 20, 'AD', 'AND', '.ad', '376'),
(6, 'Angola', 1, 24, 'AO', 'AGO', '.ao', '244'),
(7, 'Anguilla', 5, 660, 'AI', 'AIA', '.ai', '1-264'),
(8, 'Antarctica', 0, 10, 'AQ', 'ATA', '.aq', NULL),
(9, 'Antigua and Barbuda', 0, 28, 'AG', 'ATG', '.ag', '1-268'),
(10, 'Argentina', 6, 32, 'AR', 'ARG', '.ar', '54'),
(11, 'Armenia', 2, 51, 'AM', 'ARM', '.am', '7'),
(12, 'Aruba', 6, 533, 'AW', 'ABW', '.aw', '297'),
(13, 'Australia', 3, 36, 'AU', 'AUS', '.au', '61'),
(14, 'Austria', 4, 40, 'AT', 'AUT', '.at', '43'),
(15, 'Azerbaijan', 2, 31, 'AZ', 'AZE', '.az', '994'),
(16, 'Bahamas', 5, 44, 'BS', 'BHS', '.bs', '1-242'),
(17, 'Bahrain', 2, 48, 'BH', 'BHR', '.bh', '973'),
(18, 'Bangladesh', 2, 50, 'BD', 'BGD', '.bd', '880'),
(19, 'Barbados', 0, 52, 'BB', 'BRB', '.bb', '1-246'),
(20, 'Belarus', 4, 112, 'BY', 'BLR', '.by', '375'),
(21, 'Belgium', 4, 56, 'BE', 'BEL', '.be', '32'),
(22, 'Belize', 0, 84, 'BZ', 'BLZ', '.bz', '501'),
(23, 'Benin', 1, 204, 'BJ', 'BEN', '.bj', '229'),
(24, 'Bermuda', 2, 60, 'BM', 'BMU', '.bm', '1-441'),
(25, 'Bhutan', 0, 64, 'BT', 'BTN', '.bt', '975'),
(26, 'Bolivia', 6, 68, 'BO', 'BOL', '.bo', '591'),
(27, 'Bosnia and Herzegovina', 4, 70, 'BA', 'BIH', '.ba', '387'),
(28, 'Botswana', 1, 72, 'BW', 'BWA', '.bw', '267'),
(29, 'Brazil', 6, 76, 'BR', 'BRA', '.br', '55'),
(30, 'Virgin Islands (British)', 0, 92, 'VG', 'VGB', '.vg', '1-284'),
(31, 'Brunei Darussalam', 0, 96, 'BN', 'BRN', '.bn', '673'),
(32, 'Bulgaria', 4, 100, 'BG', 'BGR', '.bg', '359'),
(33, 'Burkina Faso', 1, 854, 'BF', 'BFA', '.bf', '226'),
(34, 'Burundi', 1, 108, 'BI', 'BDI', '.bi', '257'),
(35, 'Cambodia', 0, 116, 'KH', 'KHM', '.kh', '855'),
(36, 'Cameroon', 1, 120, 'CM', 'CMR', '.cm', '237'),
(37, 'Canada', 0, 124, 'CA', 'CAN', '.ca', '1'),
(38, 'Cape Verde Islands', 1, 132, 'CV', 'CPV', '.cv', '238'),
(39, 'Cayman Islands', 0, 136, 'KY', 'CYM', '.ky', '1-345'),
(40, 'Central African Republic', 1, 140, 'CF', 'CAF', '.cf', '236'),
(41, 'Chad', 1, 148, 'TD', 'TCD', '.td', '235'),
(42, 'United Kingdom UK', 0, 826, 'GB', 'GBR', '.uk', '44'),
(43, 'Chile', 6, 152, 'CL', 'CHL', '.cl', '56'),
(44, 'China', 2, 156, 'CN', 'CHN', '.cn', '86'),
(45, 'Christmas Island', 0, 162, 'CX', 'CXR', '.cx', NULL),
(46, 'Cocos (Keeling) Islands', 0, 166, 'CC', 'CCK', '.cc', NULL),
(47, 'Colombia', 6, 170, 'CO', 'COL', '.co', '57'),
(48, 'Comoros', 1, 174, 'KM', 'COM', '.km', '269'),
(49, 'Congo (DRC)', 1, 180, 'CD', 'COD', '.cd', '243'),
(50, 'Congo (ROC)', 1, 178, 'CG', 'COG', '.cg', '242'),
(51, 'Cook Islands', 0, 184, 'CK', 'COK', '.ck', '682'),
(52, 'Costa Rica', 0, 188, 'CR', 'CRI', '.cr', '506'),
(53, 'Cote d\'Ivoire', 1, 384, 'CI', 'CIV', '.ci', '225'),
(54, 'Croatia', 4, 191, 'HR', 'HRV', '.hr', '385'),
(55, 'Cuba', 6, 192, 'CU', 'CUB', '.cu', '53'),
(56, 'Cyprus', 4, 196, 'CY', 'CYP', '.cy', '357'),
(57, 'Czech Republic', 4, 203, 'CZ', 'CZE', '.cz', '420'),
(58, 'Denmark', 4, 208, 'DK', 'DNK', '.dk', '45'),
(59, 'Djibouti', 1, 262, 'DJ', 'DJI', '.dj', '253'),
(60, 'Dominica', 0, 212, 'DM', 'DMA', '.dm', '1-767'),
(61, 'Dominican Republic', 6, 214, 'DO', 'DOM', '.do', '1-809'),
(62, 'Ecuador', 0, 218, 'EC', 'ECU', '.ec', '593'),
(63, 'Egypt', 1, 818, 'EG', 'EGY', '.eg', '20'),
(64, 'El Salvador', 6, 222, 'SV', 'SLV', '.sv', '503'),
(65, 'Equatorial Guinea', 1, 226, 'GQ', 'GNQ', '.gq', '240'),
(66, 'Eritrea', 1, 232, 'ER', 'ERI', '.er', '291'),
(67, 'Estonia', 4, 233, 'EE', 'EST', '.ee', '372'),
(68, 'Ethiopia', 1, 231, 'ET', 'ETH', '.et', '251'),
(69, 'Falkland Islands', 0, 238, 'FK', 'FLK', '.fk', '500'),
(70, 'Faroe Islands', 0, 234, 'FO', 'FRO', '.fo', '298'),
(71, 'Fiji', 2, 242, 'FJ', 'FJI', '.fj', '679'),
(72, 'Finland', 4, 246, 'FI', 'FIN', '.fi', '358'),
(73, 'France', 4, 250, 'FR', 'FRA', '.fr', '33'),
(75, 'French Guiana', 0, 254, 'GF', 'GUF', '.gf', '594'),
(76, 'French Polynesia', 0, 258, 'PF', 'PYF', '.pf', '689'),
(77, 'Gabon', 1, 266, 'GA', 'GAB', '.ga', '241'),
(78, 'Gambia', 1, 270, 'GM', 'GMB', '.gm', '220'),
(79, 'Georgia', 4, 268, 'GE', 'GEO', '.ge', NULL),
(80, 'Germany', 4, 276, 'DE', 'DEU', '.de', '49'),
(81, 'Ghana', 1, 288, 'GH', 'GHA', '.gh', '233'),
(82, 'Gibraltar', 4, 292, 'GI', 'GIB', '.gi', '350'),
(83, 'Greece', 4, 300, 'GR', 'GRC', '.gr', '30'),
(84, 'Greenland', 0, 304, 'GL', 'GRL', '.gl', '299'),
(85, 'Grenada', 0, 308, 'GD', 'GRD', '.gd', '1-473'),
(86, 'Guadeloupe', 0, 312, 'GP', 'GLP', '.gp', '590'),
(87, 'Guam', 0, 316, 'GU', 'GUM', '.gu', '1-671'),
(88, 'Guatemala', 6, 320, 'GT', 'GTM', '.gt', '502'),
(89, 'Guinea', 0, 324, 'GN', 'GIN', '.gn', '224'),
(90, 'Guinea-Bissau', 0, 624, 'GW', 'GNB', '.gw', '245'),
(91, 'Guyana', 0, 328, 'GY', 'GUY', '.gy', '592'),
(92, 'Haiti', 0, 332, 'HT', 'HTI', '.ht', '509'),
(93, 'Honduras', 6, 340, 'HN', 'HND', '.hn', '504'),
(94, 'Hong Kong, PR China', 2, 344, 'HK', 'HKG', '.hk', '852'),
(95, 'Hungary', 4, 348, 'HU', 'HUN', '.hu', '36'),
(96, 'Iceland', 4, 352, 'IS', 'ISL', '.is', '354'),
(97, 'India', 2, 356, 'IN', 'IND', '.in', '91'),
(98, 'Indonesia', 2, 360, 'ID', 'IDN', '.id', '62'),
(99, 'Iran', 2, 364, 'IR', 'IRN', '.ir', '98'),
(100, 'Iraq', 2, 368, 'IQ', 'IRQ', '.iq', '964'),
(101, 'Ireland', 4, 372, 'IE', 'IRL', '.ie', '353'),
(102, 'Israel', 2, 376, 'IL', 'ISR', '.il', '972'),
(103, 'Italy', 4, 380, 'IT', 'ITA', '.it', '39'),
(104, 'Jamaica', 6, 388, 'JM', 'JAM', '.jm', '1-876'),
(105, 'Japan', 2, 392, 'JP', 'JPN', '.jp', '81'),
(106, 'Jordan', 2, 400, 'JO', 'JOR', '.jo', '962'),
(107, 'Kazakhstan', 2, 398, 'KZ', 'KAZ', '.kz', '7'),
(108, 'Kenya', 1, 404, 'KE', 'KEN', '.ke', '254'),
(109, 'Kiribati', 0, 296, 'KI', 'KIR', '.ki', '686'),
(110, 'Korea South', 2, 410, 'KR', 'KOR', '.kr', '82'),
(111, 'Korea North, DPR', 2, 408, 'KP', 'PRK', '.kp', '850'),
(112, 'Kuwait', 2, 414, 'KW', 'KWT', '.kw', '965'),
(113, 'Kyrgyzstan', 1, 417, 'KG', 'KGZ', '.kg', '996'),
(114, 'Lao PDR', 2, 418, 'LA', 'LAO', '.la', '856'),
(115, 'Latvia', 4, 428, 'LV', 'LVA', '.lv', '371'),
(116, 'Lebanon', 2, 422, 'LB', 'LBN', '.lb', '961'),
(117, 'Lesotho', 1, 426, 'LS', 'LSO', '.ls', '266'),
(118, 'Liberia', 1, 430, 'LR', 'LBR', '.lr', '231'),
(119, 'Libya', 1, 434, 'LY', 'LBY', '.ly', '218'),
(120, 'Lithuania', 4, 440, 'LT', 'LTU', '.lt', '370'),
(121, 'Luxembourg', 4, 442, 'LU', 'LUX', '.lu', '352'),
(122, 'Macau (SAR), PR China', 2, 446, 'MO', 'MAC', '.mo', '853'),
(123, 'Macedonia', 4, 807, 'MK', 'MKD', '.mk', '389'),
(124, 'Madagascar', 1, 450, 'MG', 'MDG', '.mg', '261'),
(125, 'Malawi', 1, 454, 'MW', 'MWI', '.mw', '265'),
(126, 'Malaysia', 2, 458, 'MY', 'MYS', '.my', '60'),
(127, 'Maldives', 2, 462, 'MV', 'MDV', '.mv', '960'),
(128, 'Mali', 1, 466, 'ML', 'MLI', '.ml', '223'),
(129, 'Malta', 4, 470, 'MT', 'MLT', '.mt', '356'),
(130, 'Marshall Islands', 0, 584, 'MH', 'MHL', '.mh', '692'),
(131, 'Martinique', 0, 474, 'MQ', 'MTQ', '.mq', '596'),
(132, 'Mauritania', 1, 478, 'MR', 'MRT', '.mr', '222'),
(133, 'Mauritius', 1, 480, 'MU', 'MUS', '.mu', '230'),
(134, 'Mayotte', 0, 175, 'YT', 'MYT', '.yt', '269'),
(135, 'Mexico', 5, 484, 'MX', 'MEX', '.mx', '52'),
(136, 'Micronesia', 0, 583, 'FM', 'FSM', '.fm', '691'),
(137, 'Moldova', 4, 498, 'MD', 'MDA', '.md', '373'),
(138, 'Monaco', 4, 492, 'MC', 'MCO', '.mc', '377'),
(139, 'Mongolia', 2, 496, 'MN', 'MNG', '.mn', '976'),
(140, 'Montenegro', 4, 499, 'ME', 'MNE', '.me', '382'),
(141, 'Montserrat', 0, 500, 'MS', 'MSR', '.ms', '1-664'),
(142, 'Morocco', 1, 504, 'MA', 'MAR', '.ma', '212'),
(143, 'Mozambique', 1, 508, 'MZ', 'MOZ', '.mz', '258'),
(144, 'Myanmar', 2, 104, 'MM', 'MMR', '.mm', '95'),
(145, 'Namibia', 1, 516, 'NA', 'NAM', '.na', '264'),
(146, 'Nauru', 0, 520, 'NR', 'NRU', '.nr', '674'),
(147, 'Nepal', 2, 524, 'NP', 'NPL', '.np', '977'),
(148, 'Netherlands', 4, 528, 'NL', 'NLD', '.nl', '31'),
(149, 'Netherlands Antilles', 0, 530, 'AN', 'ANT', '.an', '599'),
(150, 'New Caledonia', 0, 540, 'NC', 'NCL', '.nc', '687'),
(151, 'New Zealand', 3, 554, 'NZ', 'NZL', '.nz', '64'),
(152, 'Nicaragua', 6, 558, 'NI', 'NIC', '.ni', '505'),
(153, 'Niger', 1, 562, 'NE', 'NER', '.ne', '227'),
(154, 'Nigeria', 1, 566, 'NG', 'NGA', '.ng', '234'),
(155, 'Niue', 0, 570, 'NU', 'NIU', '.nu', '683'),
(156, 'Norfolk Island', 0, 574, 'NF', 'NFK', '.nf', NULL),
(157, 'Northern Mariana Islands', 0, 580, 'MP', 'MNP', '.mp', '1-670'),
(158, 'Norway', 4, 578, 'NO', 'NOR', '.no', '47'),
(159, 'Oman', 2, 512, 'OM', 'OMN', '.om', '968'),
(160, 'Pakistan', 2, 586, 'PK', 'PAK', '.pk', '92'),
(161, 'Palau', 0, 585, 'PW', 'PLW', '.pw', '680'),
(162, 'Palestinian Territory', 2, 275, 'PS', 'PSE', '.ps', '970'),
(163, 'Panama', 0, 591, 'PA', 'PAN', '.pa', '507'),
(164, 'Papua New Guinea', 0, 598, 'PG', 'PNG', '.pg', '675'),
(165, 'Paraguay', 6, 600, 'PY', 'PRY', '.py', '595'),
(166, 'Peru', 6, 604, 'PE', 'PER', '.pe', '51'),
(167, 'Philippines', 2, 608, 'PH', 'PHL', '.ph', '63'),
(168, 'Poland', 4, 616, 'PL', 'POL', '.pl', '48'),
(169, 'Portugal', 4, 620, 'PT', 'PRT', '.pt', '351'),
(170, 'Puerto Rico', 6, 630, 'PR', 'PRI', '.pr', '1'),
(171, 'Qatar', 2, 634, 'QA', 'QAT', '.qa', '974'),
(172, 'Reunion', 0, 638, 'RE', 'REU', '.re', '262'),
(173, 'Romania', 2, 642, 'RO', 'ROU', '.ro', '40'),
(174, 'Russia', 4, 643, 'RU', 'RUS', '.ru', '7'),
(175, 'Rwanda', 1, 646, 'RW', 'RWA', '.rw', '250'),
(176, 'Saint Lucia', 0, 662, 'LC', 'LCA', '.lc', '1-758'),
(177, 'Saint Vincent and the Grenadines', 0, 670, 'VC', 'VCT', '.vc', '1-784'),
(178, 'Samoa', 0, 882, 'WS', 'WSM', '.ws', '685'),
(179, 'San Marino', 4, 674, 'SM', 'SMR', '.sm', '378'),
(180, 'Sao Tome and Principe', 0, 678, 'ST', 'STP', '.st', '239'),
(181, 'Saudi Arabia', 2, 682, 'SA', 'SAU', '.sa', '966'),
(183, 'Senegal', 1, 686, 'SN', 'SEN', '.sn', '221'),
(184, 'Serbia', 4, 688, 'RS', 'SRB', '.rs', '381'),
(185, 'Seychelles', 0, 690, 'SC', 'SYC', '.sc', '248'),
(186, 'Sierra Leone', 1, 694, 'SL', 'SLE', '.sl', '232'),
(187, 'Singapore', 2, 702, 'SG', 'SGP', '.sg', '65'),
(188, 'Slovakia', 4, 703, 'SK', 'SVK', '.sk', '421'),
(189, 'Slovenia', 4, 705, 'SI', 'SVN', '.si', '386'),
(190, 'Solomon Islands', 0, 90, 'SB', 'SLB', '.sb', '677'),
(191, 'Somalia', 1, 706, 'SO', 'SOM', '.so', '252'),
(192, 'South Africa', 1, 710, 'ZA', 'ZAF', '.za', '27'),
(193, 'Spain', 4, 724, 'ES', 'ESP', '.es', '34'),
(196, 'Sri Lanka', 0, 144, 'LK', 'LKA', '.lk', '94'),
(197, 'St. Helena', 1, 654, 'SH', 'SHN', '.sh', '290'),
(198, 'St. Kitts And Nevis', 0, 659, 'KN', 'KNA', '.kn', '1-869'),
(199, 'St. Pierre and Miquelon', 0, 666, 'PM', 'SPM', '.pm', '508'),
(200, 'Sudan', 1, 729, 'SD', 'SDN', '.sd', '249'),
(201, 'Sudan South', 1, 728, 'SS', 'SSD', '.ss', NULL),
(202, 'Suriname', 0, 740, 'SR', 'SUR', '.sr', '597'),
(203, 'Svalbard (Norway)', 0, 744, 'SJ', 'SJM', '.sj', NULL),
(204, 'Swaziland', 0, 748, 'SZ', 'SWZ', '.sz', '268'),
(205, 'Sweden', 4, 752, 'SE', 'SWE', '.se', '46'),
(206, 'Switzerland', 4, 756, 'CH', 'CHE', '.ch', '41'),
(207, 'Syria', 2, 760, 'SY', 'SYR', '.sy', '963'),
(208, 'Taiwan', 2, 158, 'TW', 'TWN', '.tw', '886'),
(209, 'Tajikistan', 0, 762, 'TJ', 'TJK', '.tj', '992'),
(210, 'Tanzania', 0, 834, 'TZ', 'TZA', '.tz', '255'),
(211, 'Thailand', 2, 764, 'TH', 'THA', '.th', '66'),
(212, 'Togo', 1, 768, 'TG', 'TGO', '.tg', '228'),
(213, 'Tonga', 0, 776, 'TO', 'TON', '.to', '676'),
(214, 'Trinidad and Tobago', 0, 780, 'TT', 'TTO', '.tt', '1-868'),
(215, 'Tunisia', 1, 788, 'TN', 'TUN', '.tn', '216'),
(216, 'Turkey', 2, 792, 'TR', 'TUR', '.tr', '90'),
(217, 'Turkmenistan', 0, 795, 'TM', 'TKM', '.tm', '993'),
(218, 'Turks and Caicos Islands', 0, 796, 'TC', 'TCA', '.tc', '1-649'),
(219, 'Tuvalu', 0, 798, 'TV', 'TUV', '.tv', '688'),
(220, 'Virgin Islands (U.S.A.)', 0, 850, 'VI', 'VIR', '.vi', '1-340'),
(221, 'Uganda', 0, 800, 'UG', 'UGA', '.ug', '256'),
(222, 'Ukraine', 2, 804, 'UA', 'UKR', '.ua', '380'),
(223, 'United Arab Emirates', 2, 784, 'AE', 'ARE', '.ae', '971'),
(225, 'Uruguay', 6, 858, 'UY', 'URY', '.uy', '598'),
(226, 'US Minor Outlying Islands', 0, 581, 'UM', 'UMI', '.um', NULL),
(227, 'United States of America', 5, 840, 'US', 'USA', '.us', '1'),
(278, 'Uzbekistan', 2, 860, 'UZ', 'UZB', '.uz', '998'),
(279, 'Vanuatu', 0, 548, 'VU', 'VUT', '.vu', '678'),
(280, 'Venezuela', 6, 862, 'VE', 'VEN', '.ve', '58'),
(281, 'Viet Nam', 2, 704, 'VN', 'VNM', '.vn', '84'),
(282, 'Wallis and Futuna Isl', 0, 876, 'WF', 'WLF', '.wf', '681'),
(283, 'Yemen', 2, 887, 'YE', 'YEM', '.ye', '967'),
(284, 'Zambia', 1, 894, 'ZM', 'ZMB', '.zm', '260'),
(285, 'Zimbabwe', 1, 716, 'ZW', 'ZWE', '.zw', '263');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `fam_name` varchar(20) DEFAULT NULL,
  `fi_name` varchar(20) DEFAULT NULL,
  `birthdate` varchar(10) DEFAULT NULL,
  `nat` varchar(3) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `imat_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `student`
--

INSERT INTO `student` (`id`, `fam_name`, `fi_name`, `birthdate`, `nat`, `email`, `mobile`, `imat_date`) VALUES
(1, 'Qaddoumi', 'Ibrahim', '1997-02-08', 'JOR', 'ibqaddou@gmail.com', ' +49 176 123123', '2017-10-01'),
(2, 'Debus', 'Jan', '1996-11-08', 'DEU', 'jan.debus@home.com', ' 49 176 456456', '2017-10-01'),
(3, 'Chuhan', 'Danial', '1999-11-15', 'JPN', 'danial.chuhan@gmail.com', ' 1 562 6476382', '2018-10-01'),
(4, 'Parker', 'Peter ', '1995-12-28', 'USA', 'peterbparkersayshi@gmail.com', ' 1 212 747386423', '2013-10-01');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `u_finame` varchar(20) DEFAULT NULL,
  `u_famname` varchar(20) DEFAULT NULL,
  `u_logid` varchar(30) DEFAULT NULL,
  `u_pwd` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `u_finame`, `u_famname`, `u_logid`, `u_pwd`) VALUES
(1, 'Ibrahim', 'Qaddoumi', 'ibo97', 'ibo123'),
(2, 'Peter', 'Parker', 'spiderman', 'marvelftw');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `country_list`
--
ALTER TABLE `country_list`
  ADD PRIMARY KEY (`ctry_id`);

--
-- Indizes für die Tabelle `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
