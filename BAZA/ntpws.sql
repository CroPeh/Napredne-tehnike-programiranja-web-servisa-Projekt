-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 01, 2021 at 10:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ntpws`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `picture`, `date`, `archive`) VALUES
(1, 'A new Splinter Cell rumor points to a mainline game in development', 'Another year, another new Splinter Cell rumor: This one comes to us from VGC, which says \"development sources\" have told it that Ubisoft has finally thrown a thumbs-up to a new \"mainline\" game in the series. The new project is currently in the early stages of production and so still a long way off, but could be officially revealed sometime in 2022.\r\n\r\nInterestingly, two people familiar with the situation told the site that the new project is not being headed by Ubisoft Montreal, which developed the original Splinter Cell as well as Chaos Theory, Essentials, and Conviction. The most recent game in the series, Blacklist, was developed by Ubisoft Toronto, but \"recent\" in this case is relative: It came out in 2013 and so that studio connection probably doesnt have any real bearing on the current situation.\r\n\r\nIts all very vague, but the rumor is strengthened somewhat by a separate VentureBeat report saying that Ubisoft was testing a potential new Splinter Cell game earlier this year, ahead of E3.\r\n\r\nThe game in question was only a \"basic tutorial section,\" according to the site, and somehow incorporated \"elements of the 2016 Hitman reboot,\" although its not clear what that means. Maybe its a more open-world design? Or maybe Sam Fisher uses rubber duck bombs now.\r\n\r\nIts worth remembering (as if Splinter Cell fans could forget) that rumors of new games in the series have been floating to the surface for years. Ubisoft CEO Yves Guillemot said in 2017, four years after Blacklist, that the publisher was pursuing a new game in the series; a year later, chief creative officer Serge Hascoet said studios were \"fighting for resources\" to make a new Splinter Cell game. And a year after that, creative director Julian Gerighty said he was working on a new Splinter Cell game, only to retract the statement later as just a joke.\" ', 'news-1.jpg', '2017-12-14 13:51:20', 'N'),
(2, 'Sea of Thieves celebrates 25 million players by tossing money around', 'Sea of Thieves released three years ago and, despite a fairly lacklustre launch offering, has blossomed into an enjoyable cooperative seafaring game. Rare executive producer Joe Neate reports today that the game has hit the 25 million player milestone, and no doubt the near-constant flow of new updates has helped that number grow.\r\n\r\nNeate lists 25 of the games most recent additions in his blog post, but the more pertinent info is: free money. Specifically, if you log into Sea of Thieves between October 19 and October 26 youll get 25,000 gold and 25 doubloons.\r\n\r\nThats for everyone, but one lucky player who logs in during that time will get 25 million gold, which will make you quite rich in Sea of Thieves terms. Maybe you can give up the pirating life?\r\n\r\nThe last six months or so has seen a spate of Sea of Thieves activity, with the game following the general live service trend of crossing over with other entertainment brands.\r\n\r\n\r\nSea of Thieves did that with Pirates of the Caribbean. More recently, the games fourth season (yeah, it has seasons now) added a bunch of stuff to do underwater, a natural evolution for a game set mostly on top of water.', 'news-2.jpg', '2017-12-14 14:08:58', 'N'),
(3, 'No Mans Skys latest expedition lets you ride the worm, become the worm', 'Despite their notable absence at launch, No Mans Sky has some bloody great worms hidden across the galaxy these days. The interstellar sandboxs next expedition now tasks you with hunting down the greatest of these wriggly lads, figure out how to ride them, and perhaps become a worm yourself.\r\n\r\nIntroduced back in March, Expeditions are a kind of structured, seasonal adventure to embark upon, bringing players to the same worlds to take on community activities. Coincidentally (or not) arriving at the same time as Denis Villeneuves Dune adaptation, the latest season is all about the Emergence of colossal Titan Worms.\r\n\r\nWhile a narrative sees players tracking down a worm-loving cult and halting the spread of these slimy giants, the update itself greatly increases the variety of worms scattered across the universe. Eventually, youll be able to live out your Fremen fantasies and ride them across worlds.\r\n\r\nTo further celebrate worms, No Mans Sky is also offering a bunch of worm-based paraphernalia.\r\n\r\nThe expedition will eventually let you don a wormy Feasting Casque head yourself, with other unlocks including a ghastly green jetpack trail and the uncomfortably named &quot;Flesh Launcher&quot;. Less grim are improved effects for particles like meteor strikes and muzzle flashes.', 'news-3.jpg', '2021-11-30 20:18:36', 'N'),
(4, '30,000 FIFA cheaters whacked with retrospective red cards', 'Its an interesting time to be a FIFA fan. This years entry may be the best yet, and it may also be the last in the series to bear the FIFA name. FIFA itself says its taking its ball home, and looking for someone else to play with. Over on the other pitch, eFootballs having an absolute mare (though whether it deserves to be the worst-rated game in Steams history is debateable). Meantime life goes on, millions of players are having their virtual football jollies, and some naughty types have been taking advantage of exploits to dodge losses.\r\n\r\nLast week EA noticed an exploit in FUT Champions, probably due to a semi-viral TikTok video, which allowed players to exit losing matches without the loss being counted. The developer patched the issue quickly, saying \"we resolved an issue in FUT Champions that could allow players to leave a match without suffering a loss,\" but adding the warning that \"we are identifying players that exploited this issue and will be following up with them directly.\"\r\n\r\nThe follow-up has arrived and, having identified the accounts that used this behaviour \"consistently\", EA has retrospectively banned over 30,000 players from FIFA 22 online for a week.\r\n\r\nAmusingly enough, loads of the cheaters are tweeting back in panic at the EA announcement, saying the ban has been mistakenly applied for 1,000 days. EA says this is just a display glitch and the bans are all for a week.\r\n\r\nThere are even those who think that taking advantage of such an exploit shouldnt be punished: when, after all, its in the game. Such arguments can inspire extreme positions, such as Gegarzons impassioned outburst.\r\n\r\nFIFA 22 has also just received an update on PC, fixing a raft of minor issues, and no doubt youll all be delighted to know that beards now display correctly when creating an avatar. We reckoned this years entry played a good game but, as ever, the controversy around FUTs monetisation remains a major sticking point. Still lets enjoy it while we can: EA Sports FC bans 30,000 players just doesnt have quite the same ring to it.', 'news-4.jpg', '2017-12-14 14:10:55', 'N'),
(5, 'God of War is coming to PC in January', '\"We’re thrilled to announce that God of War (2018) will be coming to PC on January 14, 2022!\" Sony Santa Monica Studio senior community manager Grace Orlady wrote. \"All of us at Santa Monica Studio have been humbled by the immense amount of support and passions fans of the God of War series have shown in the latest chapter of Kratos’ story since its release. As of August 2021, 19.5MM copies for God of War on PlayStation 4 have been sold through and we can’t wait to share that experience with a whole new group of players on PC.\"\r\n\r\nMake no mistake, this is a very big deal. Sony has previously expressed interest in bringing more of its first-party games to PC, and has recently committed to some big ones including big names like Horizon Zero Dawn and Uncharted 4. But God of War is not just another PlayStation game—its a capital-P \"Prestige\" title thats won numerous acclaim and awards for both its axe-swinging action and its effective portrayal of fatherhood and family. It recently claimed IGNs big \"Best Videogame of All Time\" poll, and GamesRadar put a very fine point on it with a glowing 5/5 review, saying, \"I dont think its possible to overstate just how good this is.\"\r\n\r\nThe PC version of God of War promises a range of enhancements including \"high fidelity graphics,\" with support for 4K resolutions, ultrawide displays, unlocked framerates, and advanced settings including higher resolution shadows, \"improved\" screen space reflections, and support for GTAO and SSDO. Nvidia DLSS support will also be available at launch to help with framerates. Controllers and fully customizable mouse-and-keyboard setups will be supported.\r\nThe PC release will also come with some bonus digital content:\r\n\r\n                Death’s Vow Armor Sets for Kratos and Atreus   \r\n                Exile’s Guardian Shield Skin   \r\n                Buckler of the Forge Shield Skin   \r\n                Shining Elven Soul Shield Skin   \r\n                Dökkenshieldr Shield Skin\r\n\r\nThere are no system requirements yet, but the game itself is still a little ways off: God of War is available for pre-purchase now for $50/£40/€50, but wont release until January 14, 2022. A sequel, God of War: Ragnarok, is also set to arrive in 2022 on the PlayStation 5—perhaps this means well see it coming our way sooner rather than later, too.', 'news-5.jpg', '2017-12-15 10:32:56', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` char(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `archive` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `country`, `date`, `archive`) VALUES
(1, 'admin', 'admin', 'admin@admin.hr', 'admin', '$2y$12$2yz2l9DsuLgEPPCBfeOJh.1nM.Hr5YV5dxSisi9pinatJU20SH0DK', 'HR', '2021-12-01 21:31:46', 'N'),
(8, 'Fran', 'Peh', 'fran-hep@hotmail.com', 'franpeh', '$2y$12$4opXG242r1LbBqEPjWI2ROYVVoFJJgIfL07Bno9yC6c0Y./.FtXwO', 'HR', '2021-12-01 21:32:58', 'Y'),
(9, 'Pero', 'Peri?', 'pero@tvz.hr', 'PeroPero', '$2y$12$pBcj94QseCLTqS7oNW/w0uu3RQ4QnQ2YBRKQgRcNY/VU3KjncgFbe', 'AD', '2021-12-01 21:33:36', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
