-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2023 at 10:32 AM
-- Server version: 10.4.20-MariaDB-1:10.4.20+maria~buster-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `havgpxsbnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `backup_time` datetime NOT NULL,
  `backup_file` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT 0,
  `promoted` smallint(1) DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `frequency_id` int(11) NOT NULL DEFAULT 0,
  `spec_detail_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, 'PHP 5 for dummies', NULL, NULL, '0764541668', 1, '2004', 'xiv, 392 p. : ill. ; 24 cm.', 'For dummies', '005.13/3-22 Jan p', 'en', NULL, 1, '005.13/3 22', NULL, 'php5_dummies.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:36:50', '2007-11-29 16:26:59', NULL),
(2, 1, 'Linux In a Nutshell', '', 'Fifth Edition', '9780596009304', 2, '2005', 'xiv, 925 p. : ill. ; 23 cm.', 'In a Nutshell', '005.4/32-22 Ell l', 'en', NULL, 2, '005.4/32 22', '', 'linux_in_a_nutshell.jpg', NULL, 0, 0, NULL, 0, '', NULL, NULL, NULL, '2007-11-29 15:53:35', '2023-05-01 21:28:07', NULL),
(3, 1, 'The Definitive Guide to MySQL 5', NULL, NULL, '9781590595350', 3, '2005', '784p.', 'Definitive Guide Series', '005.75/85-22 Kof d', 'en', NULL, NULL, '005.75/85 22', NULL, 'mysql_def_guide.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:01:08', '2007-11-29 16:26:33', NULL),
(4, 1, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', NULL, NULL, '0-596-00108-8', 2, '2001', '208p.', NULL, '005.4/3222 Ray c', 'en', NULL, 2, '005.4/32 22', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', 'cathedral_bazaar.jpg', 'cathedral-bazaar.pdf', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:14:44', '2007-11-29 16:25:43', NULL),
(5, 1, 'Producing open source software : how to run a successful free software project', NULL, '1st ed.', '9780596007591', 2, '2005', 'xx, 279 p. ; 24 cm.', NULL, '005.1-22 Fog p', 'en', NULL, 2, '005.1 22', 'Includes index.', 'producing_oss.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:20:45', '2007-11-29 16:31:21', NULL),
(6, 1, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '', '1st ed.', '0735712573', 4, '2003', 'xvii, 790 p. : ill. ; 23cm.', 'DeveloperÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s library', '0A3 KOR', 'en', NULL, 3, '0A3', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'postgresql.jpg', NULL, 0, 0, NULL, 0, 'https://www.amazon.com.au/Healing-Emptiness-emotional-spiritual-well-being/dp/B09XZH8DD4/ref=asc_df_B09XZH8DD4/?tag=googleshopdsk-22&linkCode=df0&hvadid=464143480251&hvpos=&hvnetw=g&hvrand=7922449441192963026&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9060880&hvtargid=pla-1651851264467&psc=1', NULL, NULL, NULL, '2007-11-29 16:29:33', '2023-05-01 21:24:13', NULL),
(7, 1, 'Web application architecture : principles, protocols, and practices', NULL, NULL, '0471486566', 5, '2003', 'xi, 357 p. : ill. ; 23 cm.', NULL, '005.7/2-21 Leo w', 'en', NULL, 1, '005.7/2 21', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', 'webapp_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:41:57', '2007-11-29 16:32:46', NULL),
(8, 1, 'Ajax : creating Web pages with asynchronous JavaScript and XML', '', '', '9780132272674', 6, '2007', 'xxii, 384 p. : ill. ; 24 cm.', 'Bruce PerensÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ Open Source series', '2A2.814 WOY', 'en', NULL, 4, '2A2.814', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'ajax.jpg', NULL, 0, 0, NULL, 0, '', NULL, NULL, NULL, '2007-11-29 16:47:20', '2023-05-01 21:28:42', NULL),
(9, 1, 'The organization of information', NULL, '2nd ed.', '1563089769', 7, '2004', 'xxvii, 417 p. : ill. ; 27 cm.', 'Library and information science text series', '025-22 Tay o', 'en', NULL, 5, '025 22', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'organization_information.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:54:12', '2007-11-29 16:27:20', NULL),
(10, 1, 'Library and Information Center Management', NULL, '7th ed.', '9781591584063', 7, '2007', 'xxviii, 492 p. : ill. ; 27 cm.', 'Library and information science text series', '025.1-22 Stu l', 'en', NULL, 5, '025.1 22', NULL, 'library_info_center.JPG', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:58:51', '2007-11-29 16:27:40', NULL),
(11, 1, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '', '2nd ed.', '9780596000356', 2, '2002', '500p.', '', '006.7-22 Mor i', 'en', NULL, 6, '006.7 22', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', 'information_arch.jpg', NULL, 0, 0, NULL, 0, 'https://www.php.net/manual/en/function.empty.php', NULL, NULL, NULL, '2007-11-29 17:26:14', '2023-05-02 21:27:40', NULL),
(12, 1, 'Corruption and development', NULL, NULL, '9780714649023', 8, '1998', '166 p. : ill. ; 22 cm.', NULL, '364.1 Rob c', 'en', NULL, 7, '364.1/322/091724 21', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', 'corruption_development.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:45:30', '2007-11-29 16:20:53', NULL),
(13, 1, 'Corruption and development : the anti-corruption campaigns', NULL, NULL, '0230525504', 9, '2007', '310p.', NULL, '364.1 Bra c', 'en', NULL, 8, '364.1/323091724 22', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', 'corruption_development_anti_campaign.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:49:49', '2007-11-29 16:19:48', NULL),
(14, 1, 'Pigs at the trough : how corporate greed and political corruption are undermining America', NULL, NULL, '1400047714', 10, '2003', '275 p. ; 22 cm.', NULL, '364.1323 Huf p', 'en', NULL, 8, '364.1323', NULL, 'pigs_at_trough.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:56:00', '2007-11-29 16:18:33', NULL),
(15, 1, 'Lords of poverty : the power, prestige, and corruption of the international aid business', NULL, NULL, '9780871134691', 11, '1994', 'xvi, 234 p. ; 22 cm.', NULL, '338.9 Han l', 'en', NULL, 8, '338.9/1/091724 20', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', 'lords_of_poverty.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 18:08:13', '2007-11-29 16:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `placement` enum('link','popup','embed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_attachment`
--

INSERT INTO `biblio_attachment` (`biblio_id`, `file_id`, `placement`, `access_type`, `access_limit`) VALUES
(6, 0, 'link', 'public', NULL),
(6, 0, 'link', 'public', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `author_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(1, 1, 1),
(2, 2, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(3, 7, 1),
(3, 8, 2),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(6, 12, 2),
(7, 13, 1),
(7, 14, 2),
(8, 15, 1),
(9, 16, 1),
(10, 17, 1),
(10, 18, 2),
(11, 19, 1),
(11, 20, 2),
(12, 21, 1),
(13, 22, 1),
(14, 23, 1),
(15, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_log`
--

INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(1, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A18%3A%22005.75%2F85-22+Kor+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A12%3A%22005.75%2F85+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%223d4804cd35f4cec791f7a03eab3eace29bc64bfe%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22563ecd3169619ca48558f42ce90ee17fd71584c2%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-14+15%3A36%3A11%22%3B%7D', 'Updated data. Bibliography.', '2023-02-14 15:36:11'),
(2, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A18%3A%22005.75%2F85-22+Kor+p%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A12%3A%22005.75%2F85+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%223d4804cd35f4cec791f7a03eab3eace29bc64bfe%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22563ecd3169619ca48558f42ce90ee17fd71584c2%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-14+15%3A36%3A11%22%3B%7D', 'Updated data. Subject. Names: Makharij of Letters (Spellings); Rare Phonetics;', '2023-02-14 15:36:11'),
(3, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A3%3A%220A3%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%227dca1976e33fa2475dfaafebd32365d578e16eb4%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-14+15%3A38%3A50%22%3B%7D', 'Updated data. Bibliography.', '2023-02-14 15:38:50'),
(4, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'classification', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A3%3A%220A3%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%227dca1976e33fa2475dfaafebd32365d578e16eb4%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-14+15%3A38%3A50%22%3B%7D', 'Updated data. Classification. Number: 0A3', '2023-02-14 15:38:50'),
(5, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00001%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00001%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22500000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00022%22%3Bs%3A11%3A%22call_number%22%3Bs%3A17%3A%22006.7%2F86-22+Woy+a%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A8%3A%22Textbook%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22e31ea5b8434c41b4705c05becd195bfcc9adeeae%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-16+00%3A39%3A38%22%3B%7D', 'Updated data. Bibliography.', '2023-02-16 00:39:38'),
(6, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '::1', 'update', 'classification', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%221%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00001%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00001%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22500000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00022%22%3Bs%3A11%3A%22call_number%22%3Bs%3A17%3A%22006.7%2F86-22+Woy+a%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A8%3A%22Textbook%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22e31ea5b8434c41b4705c05becd195bfcc9adeeae%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-16+00%3A39%3A38%22%3B%7D', 'Updated data. Classification. Number: 2A2.814', '2023-02-16 00:39:38'),
(7, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00022%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A8%3A%22Textbook%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a6412a656a12947387c14988021b81993453c4d7%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-16+00%3A42%3A37%22%3B%7D', 'Updated data. Bibliography.', '2023-02-16 00:42:37'),
(8, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2212%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00022%22%3Bs%3A11%3A%22call_number%22%3Bs%3A0%3A%22%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A8%3A%22Textbook%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%229cc0f4b1ad345d1ca923d3b105663c33de7ab77f%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-16+00%3A42%3A56%22%3B%7D', 'Updated data. Bibliography.', '2023-02-16 00:42:56'),
(9, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%226f1a1488b5af33bfa542b4b75ec2a9f5a80df4b7%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-16+00%3A44%3A41%22%3B%7D', 'Updated data. Bibliography.', '2023-02-16 00:44:41'),
(10, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00024%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22fa0e3ca471bdafee573c65aebf8e6dc86258a173%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-02-16+00%3A46%3A11%22%3B%7D', 'Updated data. Bibliography.', '2023-02-16 00:46:11');
INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(11, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22d11af155d5a38e7729e99e623d7511c0ea97d0bd%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-03-05+00%3A12%3A21%22%3B%7D', 'Updated data. Bibliography.', '2023-03-05 00:12:21'),
(12, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3Bs%3A58%3A%22a%3A1%3A%7Bi%3A0%3Ba%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22label-new%22%3Bi%3A1%3Bs%3A10%3A%22google.com%22%3B%7D%7D%22%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22b2fb4a92af673e83882fc7f53c3a9070647d890a%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-03-05+00%3A13%3A53%22%3B%7D', 'Updated data. Bibliography.', '2023-03-05 00:13:53'),
(13, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A10%3A%22google.com%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22524be477fb2b77769cc6ae471f8ee3ecf96d7691%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-03-05+00%3A26%3A31%22%3B%7D', 'Updated data. Bibliography.', '2023-03-05 00:26:31'),
(14, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A14%3A%22www.google.com%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22ccecb621e5bba463bfb3d7ccb3fe74653dccb68f%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-03-05+00%3A43%3A32%22%3B%7D', 'Updated data. Bibliography.', '2023-03-05 00:43:32'),
(15, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A309%3A%22https%3A%2F%2Fwww.amazon.com.au%2FHealing-Emptiness-emotional-spiritual-well-being%2Fdp%2FB09XZH8DD4%2Fref%3Dasc_df_B09XZH8DD4%2F%3Ftag%3Dgoogleshopdsk-22%26linkCode%3Ddf0%26hvadid%3D464143480251%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D7922449441192963026%26hvpone%3D%26hvptwo%3D%26hvqmt%3D%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D9060880%26hvtargid%3Dpla-1651851264467%26psc%3D1%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A11%3A%22Non-Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A9%3A%22Reference%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22d0e76f19123b7fcdb26f4194d7407a9faf91234d%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-03-05+00%3A48%3A23%22%3B%7D', 'Updated data. Bibliography.', '2023-03-05 00:48:23'),
(16, 11, 1, 'Admin', 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '::1', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A80%3A%22Information+Architecture+for+the+World+Wide+Web%3A+Designing+Large-Scale+Web+Sites%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%222nd+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596000356%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222002%22%3Bs%3A9%3A%22collation%22%3Bs%3A5%3A%22500p.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A14%3A%22006.7-22+Mor+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A15%3A%22Cambridge%2C+Mass%22%3Bs%3A14%3A%22classification%22%3Bs%3A8%3A%22006.7+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A422%3A%22Information+Architecture+for+the+World+Wide+Web+is+about+applying+the+principles+of+architecture+and+library+science+to+web+site+design.+Each+website+is+like+a+public+building%2C+available+for+tourists+and+regulars+alike+to+breeze+through+at+their+leisure.+The+job+of+the+architect+is+to+set+up+the+framework+for+the+site+to+make+it+comfortable+and+inviting+for+people+to+visit%2C+relax+in%2C+and+perhaps+even+return+to+someday.%22%3Bs%3A5%3A%22image%22%3Bs%3A20%3A%22information_arch.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A48%3A%22https%3A%2F%2Fwww.php.net%2Fmanual%2Fen%2Ffunction.empty.php%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Morville%2C+Peter%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Rosenfeld%2C+Louis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3BN%3Bs%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%2243f8ed60bf35782886620feb643210577783de74%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225236104ffb4bd9da3c0d51f5937b9d800d20659b%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2231e9cf1b5767a886b1482dbc5170cab0ea8bdcff%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%227f2342448ff4512ec5fe2f71a27bf2956e3e3b6c%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+17%3A26%3A14%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-03-05+01%3A44%3A06%22%3B%7D', 'Updated data. Bibliography.', '2023-03-05 01:44:06'),
(17, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '1.120.8.70', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A309%3A%22https%3A%2F%2Fwww.amazon.com.au%2FHealing-Emptiness-emotional-spiritual-well-being%2Fdp%2FB09XZH8DD4%2Fref%3Dasc_df_B09XZH8DD4%2F%3Ftag%3Dgoogleshopdsk-22%26linkCode%3Ddf0%26hvadid%3D464143480251%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D7922449441192963026%26hvpone%3D%26hvptwo%3D%26hvqmt%3D%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D9060880%26hvtargid%3Dpla-1651851264467%26psc%3D1%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A31%3A%22Makharij+of+Letters+%28Spellings%29%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22c454f1917fd6a4a2a6b3e6f6aeac56daf456dd4c%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22c94e975f7b5491eb07a5382c9941293de25cc10e%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-04-29+16%3A58%3A48%22%3B%7D', 'Updated data. Bibliography.', '2023-04-29 16:58:48'),
(18, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '202.67.108.219', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A309%3A%22https%3A%2F%2Fwww.amazon.com.au%2FHealing-Emptiness-emotional-spiritual-well-being%2Fdp%2FB09XZH8DD4%2Fref%3Dasc_df_B09XZH8DD4%2F%3Ftag%3Dgoogleshopdsk-22%26linkCode%3Ddf0%26hvadid%3D464143480251%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D7922449441192963026%26hvpone%3D%26hvptwo%3D%26hvqmt%3D%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D9060880%26hvtargid%3Dpla-1651851264467%26psc%3D1%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22328f248069967ecbc59b31ad912153d9a9fc344b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225e2f94c7cb2daef78a272c2e0baef31497550ab2%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A24%3A13%22%3B%7D', 'Updated data. Bibliography.', '2023-05-01 21:24:13'),
(19, 6, 1, 'Admin', 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '202.67.108.219', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%226%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%226%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%226%22%3Bs%3A5%3A%22title%22%3Bs%3A99%3A%22PostgreSQL+%3A+a+comprehensive+guide+to+building%2C+programming%2C+and+administering+PostgreSQL+databases%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%221st+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A10%3A%220735712573%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A4%3A%22Sams%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222003%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xvii%2C+790+p.+%3A+ill.+%3B+23cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A56%3A%22Developer%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2s+library%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A12%3A%22Indianapolis%22%3Bs%3A14%3A%22classification%22%3Bs%3A3%3A%220A3%22%3Bs%3A5%3A%22notes%22%3Bs%3A309%3A%22PostgreSQL+is+the+world%27s+most+advanced+open-source+database.+PostgreSQL+is+the+most+comprehensive%2C+in-depth%2C+and+easy-to-read+guide+to+this+award-winning+database.+This+book+starts+with+a+thorough+overview+of+SQL%2C+a+description+of+all+PostgreSQL+data+types%2C+and+a+complete+explanation+of+PostgreSQL+commands.%22%3Bs%3A5%3A%22image%22%3Bs%3A14%3A%22postgresql.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A309%3A%22https%3A%2F%2Fwww.amazon.com.au%2FHealing-Emptiness-emotional-spiritual-well-being%2Fdp%2FB09XZH8DD4%2Fref%3Dasc_df_B09XZH8DD4%2F%3Ftag%3Dgoogleshopdsk-22%26linkCode%3Ddf0%26hvadid%3D464143480251%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D7922449441192963026%26hvpone%3D%26hvptwo%3D%26hvqmt%3D%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D9060880%26hvtargid%3Dpla-1651851264467%26psc%3D1%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Korry%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A14%3A%22Douglas%2C+Susan%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00002%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00002%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22700000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00021%22%3Bs%3A11%3A%22call_number%22%3Bs%3A7%3A%220A3+KOR%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-14%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22328f248069967ecbc59b31ad912153d9a9fc344b%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225707cbffcd3a4c18fffc227452ccbfdde3c97bf6%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%220bb053c271c116ffae238ad9b2b2a8fab5179bc2%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225e2f94c7cb2daef78a272c2e0baef31497550ab2%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22f23419a21e9f33280a31f8d28b2a5245346a89ca%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A29%3A33%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A24%3A13%22%3B%7D', 'Updated data. Subject. Names: Writing & Writers of Revelation ; Rare Phonetics;', '2023-05-01 21:24:13');
INSERT INTO `biblio_log` (`biblio_log_id`, `biblio_id`, `user_id`, `realname`, `title`, `ip`, `action`, `affectedrow`, `rawdata`, `additional_information`, `date`) VALUES
(20, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '202.67.108.219', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A18%3A%22Children%27s+Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00024%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%225e11b22913a2c38c2a4b0e069bcc2b2b5ea628b1%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%222607d91caf34f3201c1fe554dc2b58d15fc70c56%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A25%3A19%22%3B%7D', 'Updated data. Bibliography.', '2023-05-01 21:25:19'),
(21, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '202.67.108.219', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A18%3A%22Children%27s+Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00024%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%225e11b22913a2c38c2a4b0e069bcc2b2b5ea628b1%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%222607d91caf34f3201c1fe554dc2b58d15fc70c56%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A25%3A19%22%3B%7D', 'Updated data. Subject. Names: Rare Phonetics;', '2023-05-01 21:25:19'),
(22, 2, 1, 'Admin', 'Linux In a Nutshell', '202.67.108.219', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A19%3A%22Linux+In+a+Nutshell%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Fifth+Edition%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596009304%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222005%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xiv%2C+925+p.+%3A+ill.+%3B+23+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A13%3A%22In+a+Nutshell%22%3Bs%3A11%3A%22call_number%22%3Bs%3A17%3A%22005.4%2F32-22+Ell+l%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A14%3A%22Sebastopol%2C+CA%22%3Bs%3A14%3A%22classification%22%3Bs%3A11%3A%22005.4%2F32+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A23%3A%22linux_in_a_nutshell.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A5%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Siever%2C+Ellen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Love%2C+Robert%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Robbins%2C+Arnold%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A3%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Figgins%2C+Stephen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A4%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Weber%2C+Aaron%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%229%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00009%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00009%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00010%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00010%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a1f7769f611e850a1a3a31486ee8c5115244916e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22962f34fd399555fa390a21b9c4e3902f294fa5e5%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22cb7c55f48ef3896349c0b2e6194a11ba5fba1c86%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%223adce5fa8a896a44f0ce495b65ce20d558076175%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22822a220b411197fca71b9618be963a526d45975a%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+15%3A53%3A35%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A25%3A55%22%3B%7D', 'Updated data. Bibliography.', '2023-05-01 21:25:55'),
(23, 2, 1, 'Admin', 'Linux In a Nutshell', '202.67.108.219', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A19%3A%22Linux+In+a+Nutshell%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Fifth+Edition%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596009304%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222005%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xiv%2C+925+p.+%3A+ill.+%3B+23+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A13%3A%22In+a+Nutshell%22%3Bs%3A11%3A%22call_number%22%3Bs%3A17%3A%22005.4%2F32-22+Ell+l%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A14%3A%22Sebastopol%2C+CA%22%3Bs%3A14%3A%22classification%22%3Bs%3A11%3A%22005.4%2F32+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A23%3A%22linux_in_a_nutshell.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A5%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Siever%2C+Ellen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Love%2C+Robert%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Robbins%2C+Arnold%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A3%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Figgins%2C+Stephen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A4%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Weber%2C+Aaron%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%229%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00009%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00009%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00010%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00010%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22a1f7769f611e850a1a3a31486ee8c5115244916e%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22962f34fd399555fa390a21b9c4e3902f294fa5e5%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22cb7c55f48ef3896349c0b2e6194a11ba5fba1c86%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%223adce5fa8a896a44f0ce495b65ce20d558076175%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22822a220b411197fca71b9618be963a526d45975a%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+15%3A53%3A35%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A25%3A55%22%3B%7D', 'Updated data. Subject. Names: Writing & Writers of Revelation ;', '2023-05-01 21:25:55'),
(24, 2, 1, 'Admin', 'Linux In a Nutshell', '202.67.108.219', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A19%3A%22Linux+In+a+Nutshell%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Fifth+Edition%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596009304%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222005%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xiv%2C+925+p.+%3A+ill.+%3B+23+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A13%3A%22In+a+Nutshell%22%3Bs%3A11%3A%22call_number%22%3Bs%3A17%3A%22005.4%2F32-22+Ell+l%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A14%3A%22Sebastopol%2C+CA%22%3Bs%3A14%3A%22classification%22%3Bs%3A11%3A%22005.4%2F32+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A23%3A%22linux_in_a_nutshell.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A5%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Siever%2C+Ellen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Love%2C+Robert%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Robbins%2C+Arnold%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A3%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Figgins%2C+Stephen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A4%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Weber%2C+Aaron%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%229%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00009%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00009%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00010%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00010%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22118d16a54261991e5ad3198ddd6cd79daa23dcfd%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22962f34fd399555fa390a21b9c4e3902f294fa5e5%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22cb7c55f48ef3896349c0b2e6194a11ba5fba1c86%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225e2f94c7cb2daef78a272c2e0baef31497550ab2%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22822a220b411197fca71b9618be963a526d45975a%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+15%3A53%3A35%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A28%3A07%22%3B%7D', 'Updated data. Bibliography.', '2023-05-01 21:28:07'),
(25, 2, 1, 'Admin', 'Linux In a Nutshell', '202.67.108.219', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%222%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%222%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%222%22%3Bs%3A5%3A%22title%22%3Bs%3A19%3A%22Linux+In+a+Nutshell%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A13%3A%22Fifth+Edition%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596009304%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222005%22%3Bs%3A9%3A%22collation%22%3Bs%3A27%3A%22xiv%2C+925+p.+%3A+ill.+%3B+23+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A13%3A%22In+a+Nutshell%22%3Bs%3A11%3A%22call_number%22%3Bs%3A17%3A%22005.4%2F32-22+Ell+l%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A14%3A%22Sebastopol%2C+CA%22%3Bs%3A14%3A%22classification%22%3Bs%3A11%3A%22005.4%2F32+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A0%3A%22%22%3Bs%3A5%3A%22image%22%3Bs%3A23%3A%22linux_in_a_nutshell.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A5%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A13%3A%22Siever%2C+Ellen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Love%2C+Robert%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Robbins%2C+Arnold%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A3%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Figgins%2C+Stephen%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7Di%3A4%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A12%3A%22Weber%2C+Aaron%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A1%3A%229%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00009%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00009%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2210%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00010%22%3Bs%3A11%3A%22call_number%22%3BN%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A10%3A%22INV%2FB00010%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222007-11-29%22%3Bs%3A5%3A%22price%22%3Bs%3A6%3A%22630000%22%3Bs%3A14%3A%22price_currency%22%3Bs%3A6%3A%22Rupiah%22%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22118d16a54261991e5ad3198ddd6cd79daa23dcfd%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%22962f34fd399555fa390a21b9c4e3902f294fa5e5%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22cb7c55f48ef3896349c0b2e6194a11ba5fba1c86%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225e2f94c7cb2daef78a272c2e0baef31497550ab2%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22822a220b411197fca71b9618be963a526d45975a%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+15%3A53%3A35%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A28%3A07%22%3B%7D', 'Updated data. Subject. Names: Writing & Writers of Revelation ; Rare Phonetics;', '2023-05-01 21:28:07'),
(26, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '202.67.108.219', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A18%3A%22Children%27s+Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00024%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22be2281790ab5a1af8976fc2cff525c41c0696fb3%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225e2f94c7cb2daef78a272c2e0baef31497550ab2%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A28%3A42%22%3B%7D', 'Updated data. Bibliography.', '2023-05-01 21:28:42'),
(27, 8, 1, 'Admin', 'Ajax : creating Web pages with asynchronous JavaScript and XML', '202.67.108.219', 'update', 'subject', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A1%3A%228%22%3Bs%3A3%3A%22_id%22%3Bs%3A1%3A%228%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A1%3A%228%22%3Bs%3A5%3A%22title%22%3Bs%3A62%3A%22Ajax+%3A+creating+Web+pages+with+asynchronous+JavaScript+and+XML%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A0%3A%22%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780132272674%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A13%3A%22Prentice+Hall%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222007%22%3Bs%3A9%3A%22collation%22%3Bs%3A28%3A%22xxii%2C+384+p.+%3A+ill.+%3B+24+cm.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A69%3A%22Bruce+Perens%C3%83%C6%92%C3%82%C2%A2%C3%83%C2%A2%C3%A2%E2%82%AC%C5%A1%C3%82%C2%AC%C3%83%C2%A2%C3%A2%E2%82%AC%C5%BE%C3%82%C2%A2+Open+Source+series%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A22%3A%22Upper+Saddle+River%2C+NJ%22%3Bs%3A14%3A%22classification%22%3Bs%3A7%3A%222A2.814%22%3Bs%3A5%3A%22notes%22%3Bs%3A314%3A%22Using+Ajax%2C+you+can+build+Web+applications+with+the+sophistication+and+usability+of+traditional+desktop+applications+and+you+can+do+it+using+standards+and+open+source+software.+Now%2C+for+the+first+time%2C+there%27s+an+easy%2C+example-driven+guide+to+Ajax+for+every+Web+and+open+source+developer%2C+regardless+of+experience.%22%3Bs%3A5%3A%22image%22%3Bs%3A8%3A%22ajax.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A18%3A%22Woychowsky%2C+Edmond%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A32%3A%22Writing+%26+Writers+of+Revelation+%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A5%3A%22topic%22%3Bs%3A14%3A%22Rare+Phonetics%22%3Bs%3A10%3A%22topic_type%22%3Bs%3A5%3A%22Topic%22%3Bs%3A11%3A%22topic_level%22%3Bs%3A7%3A%22Primary%22%3B%7D%7Ds%3A5%3A%22items%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2213%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00023%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A18%3A%22Children%27s+Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7Di%3A1%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2214%22%3Bs%3A9%3A%22item_code%22%3Bs%3A6%3A%22B00024%22%3Bs%3A11%3A%22call_number%22%3Bs%3A11%3A%222A2.814+WOY%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3BN%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-02-16%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22be2281790ab5a1af8976fc2cff525c41c0696fb3%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%221c91e134b87e0931418cd89ffd5ecf379add2fa0%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%22dc5333f90fe1b44dd2910c71fd266ae29080aa7c%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%225e2f94c7cb2daef78a272c2e0baef31497550ab2%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%22bdccec2b19c5136737ee30940e24901e8aa47583%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+16%3A47%3A20%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-01+21%3A28%3A42%22%3B%7D', 'Updated data. Subject. Names: Writing & Writers of Revelation ; Rare Phonetics;', '2023-05-01 21:28:42'),
(28, 11, 1, 'Admin', 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '103.244.176.197', 'update', 'description', 'a%3A34%3A%7Bs%3A2%3A%22id%22%3Bs%3A2%3A%2211%22%3Bs%3A3%3A%22_id%22%3Bs%3A2%3A%2211%22%3Bs%3A9%3A%22biblio_id%22%3Bs%3A2%3A%2211%22%3Bs%3A5%3A%22title%22%3Bs%3A80%3A%22Information+Architecture+for+the+World+Wide+Web%3A+Designing+Large-Scale+Web+Sites%22%3Bs%3A8%3A%22gmd_name%22%3Bs%3A4%3A%22Book%22%3Bs%3A3%3A%22sor%22%3Bs%3A0%3A%22%22%3Bs%3A7%3A%22edition%22%3Bs%3A7%3A%222nd+ed.%22%3Bs%3A9%3A%22isbn_issn%22%3Bs%3A13%3A%229780596000356%22%3Bs%3A14%3A%22publisher_name%22%3Bs%3A7%3A%22OReilly%22%3Bs%3A12%3A%22publish_year%22%3Bs%3A4%3A%222002%22%3Bs%3A9%3A%22collation%22%3Bs%3A5%3A%22500p.%22%3Bs%3A12%3A%22series_title%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22call_number%22%3Bs%3A14%3A%22006.7-22+Mor+i%22%3Bs%3A13%3A%22language_name%22%3Bs%3A7%3A%22English%22%3Bs%3A6%3A%22source%22%3BN%3Bs%3A5%3A%22place%22%3Bs%3A15%3A%22Cambridge%2C+Mass%22%3Bs%3A14%3A%22classification%22%3Bs%3A8%3A%22006.7+22%22%3Bs%3A5%3A%22notes%22%3Bs%3A422%3A%22Information+Architecture+for+the+World+Wide+Web+is+about+applying+the+principles+of+architecture+and+library+science+to+web+site+design.+Each+website+is+like+a+public+building%2C+available+for+tourists+and+regulars+alike+to+breeze+through+at+their+leisure.+The+job+of+the+architect+is+to+set+up+the+framework+for+the+site+to+make+it+comfortable+and+inviting+for+people+to+visit%2C+relax+in%2C+and+perhaps+even+return+to+someday.%22%3Bs%3A5%3A%22image%22%3Bs%3A20%3A%22information_arch.jpg%22%3Bs%3A9%3A%22opac_hide%22%3Bs%3A1%3A%220%22%3Bs%3A8%3A%22promoted%22%3Bs%3A1%3A%220%22%3Bs%3A6%3A%22labels%22%3BN%3Bs%3A9%3A%22frequency%22%3BN%3Bs%3A16%3A%22spec_detail_info%22%3Bs%3A48%3A%22https%3A%2F%2Fwww.php.net%2Fmanual%2Fen%2Ffunction.empty.php%22%3Bs%3A12%3A%22content_type%22%3BN%3Bs%3A10%3A%22media_type%22%3BN%3Bs%3A12%3A%22carrier_type%22%3BN%3Bs%3A3%3A%22uid%22%3BN%3Bs%3A7%3A%22authors%22%3Ba%3A2%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A15%3A%22Morville%2C+Peter%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A14%3A%22Primary+Author%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A11%3A%22author_name%22%3Bs%3A16%3A%22Rosenfeld%2C+Louis%22%3Bs%3A14%3A%22authority_type%22%3Bs%3A13%3A%22Personal+Name%22%3Bs%3A15%3A%22authority_level%22%3Bs%3A17%3A%22Additional+Author%22%3B%7D%7Ds%3A8%3A%22subjects%22%3BN%3Bs%3A5%3A%22items%22%3Ba%3A1%3A%7Bi%3A0%3Ba%3A20%3A%7Bs%3A7%3A%22item_id%22%3Bs%3A2%3A%2215%22%3Bs%3A9%3A%22item_code%22%3Bs%3A3%3A%22123%22%3Bs%3A11%3A%22call_number%22%3Bs%3A14%3A%22006.7-22+Mor+i%22%3Bs%3A14%3A%22coll_type_name%22%3Bs%3A7%3A%22Fiction%22%3Bs%3A14%3A%22shelf_location%22%3Bs%3A0%3A%22%22%3Bs%3A13%3A%22location_name%22%3Bs%3A9%3A%22Melbourne%22%3Bs%3A14%3A%22inventory_code%22%3Bs%3A2%3A%2234%22%3Bs%3A11%3A%22item_status%22%3Bs%3A9%3A%22Available%22%3Bs%3A8%3A%22order_no%22%3Bs%3A0%3A%22%22%3Bs%3A10%3A%22order_date%22%3Bs%3A10%3A%222023-05-02%22%3Bs%3A13%3A%22received_date%22%3Bs%3A10%3A%222023-05-02%22%3Bs%3A13%3A%22supplier_name%22%3BN%3Bs%3A6%3A%22source%22%3Bs%3A3%3A%22Buy%22%3Bs%3A7%3A%22invoice%22%3Bs%3A0%3A%22%22%3Bs%3A12%3A%22invoice_date%22%3Bs%3A10%3A%222023-05-02%22%3Bs%3A5%3A%22price%22%3Bs%3A1%3A%220%22%3Bs%3A14%3A%22price_currency%22%3BN%3Bs%3A10%3A%22input_date%22%3BN%3Bs%3A11%3A%22last_update%22%3BN%3Bs%3A3%3A%22uid%22%3Bs%3A1%3A%221%22%3B%7D%7Ds%3A4%3A%22hash%22%3Ba%3A5%3A%7Bs%3A6%3A%22biblio%22%3Bs%3A40%3A%22d997b6a62a22ec5965769ad79fe49fdc7b5f6efd%22%3Bs%3A14%3A%22classification%22%3Bs%3A40%3A%225236104ffb4bd9da3c0d51f5937b9d800d20659b%22%3Bs%3A7%3A%22authors%22%3Bs%3A40%3A%2231e9cf1b5767a886b1482dbc5170cab0ea8bdcff%22%3Bs%3A8%3A%22subjects%22%3Bs%3A40%3A%22ec0a0fa7e8b0092ad8f0bf8c93ff597b874fabe3%22%3Bs%3A5%3A%22image%22%3Bs%3A40%3A%227f2342448ff4512ec5fe2f71a27bf2956e3e3b6c%22%3B%7Ds%3A10%3A%22input_date%22%3Bs%3A19%3A%222007-11-29+17%3A26%3A14%22%3Bs%3A11%3A%22last_update%22%3Bs%3A19%3A%222023-05-02+21%3A27%3A40%22%3B%7D', 'Updated data. Bibliography.', '2023-05-02 21:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `biblio_mark`
--

CREATE TABLE `biblio_mark` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_biblio_id` int(11) NOT NULL DEFAULT 0,
  `rel_type` int(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT 0,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(6, 323, 1),
(6, 351, 1),
(8, 351, 1),
(2, 323, 1),
(2, 351, 1),
(8, 323, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `is_draft` smallint(1) DEFAULT 0,
  `publish_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_dir` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files_read`
--

CREATE TABLE `files_read` (
  `filelog_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `date_read` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT 0,
  `credit` int(11) DEFAULT 0,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fines`
--

INSERT INTO `fines` (`fines_id`, `fines_date`, `member_id`, `debet`, `credit`, `description`) VALUES
(1, '2023-02-16', '1', 0, 0, 'Overdue fines for item B00002');

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menus` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`menus`)),
  `r` int(1) NOT NULL DEFAULT 0,
  `w` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `menus`, `r`, `w`) VALUES
(1, 1, NULL, 1, 1),
(1, 2, NULL, 1, 1),
(1, 3, NULL, 1, 1),
(1, 4, NULL, 1, 1),
(1, 5, NULL, 1, 1),
(1, 6, NULL, 1, 1),
(1, 7, NULL, 1, 1),
(1, 8, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `index_documents`
--

CREATE TABLE `index_documents` (
  `document_id` int(11) NOT NULL,
  `word_id` bigint(20) NOT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_documents`
--

INSERT INTO `index_documents` (`document_id`, `word_id`, `location`, `hit_count`) VALUES
(1, 1, 'biblio', 1),
(1, 2, 'biblio', 1),
(1, 3, 'biblio', 1),
(1, 4, 'biblio', 1),
(1, 5, 'biblio', 1),
(1, 6, 'biblio', 1),
(1, 7, 'biblio', 1),
(1, 8, 'biblio', 1),
(2, 9, 'biblio', 1),
(2, 10, 'biblio', 1),
(2, 11, 'biblio', 1),
(2, 12, 'biblio', 1),
(2, 13, 'biblio', 1),
(2, 14, 'biblio', 1),
(2, 15, 'biblio', 1),
(2, 16, 'biblio', 1),
(2, 17, 'biblio', 1),
(2, 18, 'biblio', 1),
(2, 19, 'biblio', 1),
(2, 20, 'biblio', 1),
(2, 21, 'biblio', 1),
(2, 22, 'biblio', 1),
(2, 23, 'biblio', 1),
(2, 24, 'biblio', 1),
(2, 25, 'biblio', 1),
(3, 26, 'biblio', 1),
(3, 27, 'biblio', 1),
(3, 28, 'biblio', 1),
(3, 29, 'biblio', 1),
(3, 30, 'biblio', 1),
(3, 2, 'biblio', 1),
(3, 31, 'biblio', 1),
(3, 32, 'biblio', 1),
(3, 33, 'biblio', 1),
(3, 34, 'biblio', 1),
(3, 7, 'biblio', 1),
(3, 35, 'biblio', 1),
(3, 36, 'biblio', 1),
(4, 37, 'biblio', 1),
(4, 38, 'biblio', 1),
(4, 26, 'biblio', 1),
(4, 39, 'biblio', 1),
(4, 40, 'biblio', 1),
(4, 41, 'biblio', 1),
(4, 9, 'biblio', 1),
(4, 42, 'biblio', 1),
(4, 43, 'biblio', 1),
(4, 44, 'biblio', 1),
(4, 45, 'biblio', 1),
(4, 46, 'biblio', 1),
(4, 47, 'biblio', 1),
(4, 48, 'biblio', 1),
(4, 49, 'biblio', 1),
(5, 50, 'biblio', 1),
(5, 42, 'biblio', 1),
(5, 43, 'biblio', 1),
(5, 51, 'biblio', 1),
(5, 52, 'biblio', 1),
(5, 29, 'biblio', 1),
(5, 53, 'biblio', 1),
(5, 11, 'biblio', 1),
(5, 54, 'biblio', 1),
(5, 55, 'biblio', 1),
(5, 56, 'biblio', 1),
(5, 57, 'biblio', 1),
(5, 58, 'biblio', 1),
(6, 59, 'biblio', 1),
(6, 11, 'biblio', 1),
(6, 60, 'biblio', 1),
(6, 28, 'biblio', 1),
(6, 29, 'biblio', 1),
(6, 61, 'biblio', 1),
(6, 7, 'biblio', 1),
(6, 38, 'biblio', 1),
(6, 62, 'biblio', 1),
(6, 63, 'biblio', 1),
(6, 64, 'biblio', 1),
(6, 65, 'biblio', 1),
(6, 66, 'biblio', 1),
(6, 36, 'biblio', 1),
(7, 67, 'biblio', 1),
(7, 68, 'biblio', 1),
(7, 69, 'biblio', 1),
(7, 70, 'biblio', 1),
(7, 71, 'biblio', 1),
(7, 38, 'biblio', 1),
(7, 72, 'biblio', 1),
(7, 73, 'biblio', 1),
(7, 74, 'biblio', 1),
(7, 75, 'biblio', 1),
(7, 76, 'biblio', 1),
(7, 8, 'biblio', 1),
(7, 77, 'biblio', 1),
(8, 78, 'biblio', 1),
(8, 79, 'biblio', 1),
(8, 67, 'biblio', 1),
(8, 80, 'biblio', 1),
(8, 81, 'biblio', 1),
(8, 82, 'biblio', 1),
(8, 83, 'biblio', 1),
(8, 38, 'biblio', 1),
(8, 84, 'biblio', 1),
(8, 85, 'biblio', 1),
(8, 86, 'biblio', 1),
(8, 7, 'biblio', 1),
(8, 8, 'biblio', 1),
(9, 26, 'biblio', 1),
(9, 87, 'biblio', 1),
(9, 88, 'biblio', 1),
(9, 89, 'biblio', 1),
(9, 90, 'biblio', 1),
(9, 91, 'biblio', 1),
(9, 92, 'biblio', 1),
(9, 93, 'biblio', 1),
(10, 94, 'biblio', 1),
(10, 38, 'biblio', 1),
(10, 89, 'biblio', 1),
(10, 95, 'biblio', 1),
(10, 96, 'biblio', 1),
(10, 97, 'biblio', 1),
(10, 16, 'biblio', 1),
(10, 98, 'biblio', 1),
(10, 99, 'biblio', 1),
(10, 100, 'biblio', 1),
(10, 101, 'biblio', 1),
(11, 89, 'biblio', 1),
(11, 69, 'biblio', 1),
(11, 3, 'biblio', 1),
(11, 26, 'biblio', 1),
(11, 102, 'biblio', 1),
(11, 103, 'biblio', 1),
(11, 67, 'biblio', 1),
(11, 104, 'biblio', 1),
(11, 105, 'biblio', 1),
(11, 106, 'biblio', 1),
(11, 107, 'biblio', 1),
(11, 108, 'biblio', 1),
(11, 109, 'biblio', 1),
(11, 110, 'biblio', 1),
(11, 111, 'biblio', 1),
(12, 112, 'biblio', 1),
(12, 38, 'biblio', 1),
(12, 113, 'biblio', 1),
(12, 114, 'biblio', 1),
(12, 115, 'biblio', 1),
(13, 112, 'biblio', 1),
(13, 38, 'biblio', 1),
(13, 113, 'biblio', 1),
(13, 26, 'biblio', 1),
(13, 116, 'biblio', 1),
(13, 117, 'biblio', 1),
(13, 118, 'biblio', 1),
(13, 119, 'biblio', 1),
(14, 120, 'biblio', 1),
(14, 121, 'biblio', 1),
(14, 26, 'biblio', 1),
(14, 122, 'biblio', 1),
(14, 52, 'biblio', 1),
(14, 123, 'biblio', 1),
(14, 124, 'biblio', 1),
(14, 38, 'biblio', 1),
(14, 125, 'biblio', 1),
(14, 112, 'biblio', 1),
(14, 126, 'biblio', 1),
(14, 127, 'biblio', 1),
(14, 128, 'biblio', 1),
(14, 129, 'biblio', 1),
(14, 130, 'biblio', 1),
(14, 131, 'biblio', 1),
(15, 132, 'biblio', 1),
(15, 88, 'biblio', 1),
(15, 133, 'biblio', 1),
(15, 26, 'biblio', 1),
(15, 134, 'biblio', 1),
(15, 135, 'biblio', 1),
(15, 38, 'biblio', 1),
(15, 112, 'biblio', 1),
(15, 136, 'biblio', 1),
(15, 137, 'biblio', 1),
(15, 138, 'biblio', 1),
(15, 139, 'biblio', 1),
(15, 140, 'biblio', 1),
(6, 141, 'biblio', 1),
(6, 88, 'biblio', 1),
(6, 142, 'biblio', 1),
(6, 143, 'biblio', 1),
(6, 144, 'biblio', 1),
(6, 145, 'biblio', 1),
(6, 146, 'biblio', 1),
(6, 147, 'biblio', 1),
(6, 148, 'biblio', 1),
(8, 144, 'biblio', 1),
(8, 145, 'biblio', 1),
(2, 146, 'biblio', 1),
(2, 147, 'biblio', 1),
(2, 88, 'biblio', 1),
(2, 148, 'biblio', 1),
(2, 144, 'biblio', 1),
(2, 145, 'biblio', 1),
(8, 146, 'biblio', 1),
(8, 147, 'biblio', 1),
(8, 88, 'biblio', 1),
(8, 148, 'biblio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `index_words`
--

CREATE TABLE `index_words` (
  `id` bigint(20) NOT NULL,
  `word` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_hits` int(11) NOT NULL,
  `doc_hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_words`
--

INSERT INTO `index_words` (`id`, `word`, `num_hits`, `doc_hits`) VALUES
(1, 'php', 1, 1),
(2, '5', 2, 2),
(3, 'for', 2, 2),
(4, 'dummies', 1, 1),
(5, 'valade', 1, 1),
(6, 'janet', 1, 1),
(7, 'programming', 5, 4),
(8, 'website', 3, 3),
(9, 'linux', 3, 2),
(10, 'in', 1, 1),
(11, 'a', 3, 3),
(12, 'nutshell', 1, 1),
(13, 'siever', 1, 1),
(14, 'ellen', 1, 1),
(15, 'love', 1, 1),
(16, 'robert', 2, 2),
(17, 'robbins', 1, 1),
(18, 'arnold', 1, 1),
(19, 'figgins', 1, 1),
(20, 'stephen', 1, 1),
(21, 'weber', 1, 1),
(22, 'aaron', 1, 1),
(23, 'operating', 1, 1),
(24, 'system', 1, 1),
(25, 'computer', 1, 1),
(26, 'the', 8, 7),
(27, 'definitive', 1, 1),
(28, 'guide', 2, 2),
(29, 'to', 3, 3),
(30, 'mysql', 1, 1),
(31, 'kofler', 1, 1),
(32, 'michael', 1, 1),
(33, 'kramer', 1, 1),
(34, 'david', 1, 1),
(35, 'database', 1, 1),
(36, 'rdbms', 2, 2),
(37, 'cathedral', 1, 1),
(38, 'and', 9, 9),
(39, 'bazaar', 1, 1),
(40, 'musings', 1, 1),
(41, 'on', 1, 1),
(42, 'open', 3, 2),
(43, 'source', 3, 2),
(44, 'by', 1, 1),
(45, 'an', 1, 1),
(46, 'accidental', 1, 1),
(47, 'revolutionary', 1, 1),
(48, 'raymond', 1, 1),
(49, 'eric', 1, 1),
(50, 'producing', 1, 1),
(51, 'software', 1, 1),
(52, 'how', 2, 2),
(53, 'run', 1, 1),
(54, 'successful', 1, 1),
(55, 'free', 1, 1),
(56, 'project', 1, 1),
(57, 'fogel', 1, 1),
(58, 'karl', 1, 1),
(59, 'postgresql', 1, 1),
(60, 'comprehensive', 1, 1),
(61, 'building', 1, 1),
(62, 'administering', 1, 1),
(63, 'databases', 1, 1),
(64, 'douglas', 1, 1),
(65, 'korry', 1, 1),
(66, 'susan', 1, 1),
(67, 'web', 4, 3),
(68, 'application', 1, 1),
(69, 'architecture', 2, 2),
(70, 'principles', 1, 1),
(71, 'protocols', 1, 1),
(72, 'practices', 1, 1),
(73, 'shklar', 1, 1),
(74, 'leon', 1, 1),
(75, 'rosen', 1, 1),
(76, 'richard', 1, 1),
(77, 'design', 1, 1),
(78, 'ajax', 1, 1),
(79, 'creating', 1, 1),
(80, 'pages', 1, 1),
(81, 'with', 1, 1),
(82, 'asynchronous', 1, 1),
(83, 'javascript', 1, 1),
(84, 'xml', 1, 1),
(85, 'woychowsky', 1, 1),
(86, 'edmond', 1, 1),
(87, 'organization', 1, 1),
(88, 'of', 3, 2),
(89, 'information', 4, 3),
(90, 'taylor', 1, 1),
(91, 'arlene', 1, 1),
(92, 'g', 1, 1),
(93, 'metadata', 1, 1),
(94, 'library', 1, 1),
(95, 'center', 1, 1),
(96, 'management', 1, 1),
(97, 'stueart', 1, 1),
(98, 'd', 1, 1),
(99, 'moran', 1, 1),
(100, 'barbara', 1, 1),
(101, 'b', 1, 1),
(102, 'world', 1, 1),
(103, 'wide', 1, 1),
(104, 'designing', 1, 1),
(105, 'large', 1, 1),
(106, 'scale', 1, 1),
(107, 'sites', 1, 1),
(108, 'morville', 1, 1),
(109, 'peter', 1, 1),
(110, 'rosenfeld', 1, 1),
(111, 'louis', 1, 1),
(112, 'corruption', 8, 4),
(113, 'development', 2, 2),
(114, 'robinson', 1, 1),
(115, 'mark', 1, 1),
(116, 'anti', 1, 1),
(117, 'campaigns', 1, 1),
(118, 'bracking', 1, 1),
(119, 'sarah', 1, 1),
(120, 'pigs', 1, 1),
(121, 'at', 1, 1),
(122, 'trough', 1, 1),
(123, 'corporate', 1, 1),
(124, 'greed', 1, 1),
(125, 'political', 1, 1),
(126, 'are', 1, 1),
(127, 'undermining', 1, 1),
(128, 'america', 1, 1),
(129, 'huffington', 1, 1),
(130, 'arianna', 1, 1),
(131, 'stassinopoulos', 1, 1),
(132, 'lords', 1, 1),
(133, 'poverty', 1, 1),
(134, 'power', 1, 1),
(135, 'prestige', 1, 1),
(136, 'international', 1, 1),
(137, 'aid', 1, 1),
(138, 'business', 1, 1),
(139, 'hancock', 1, 1),
(140, 'graham', 1, 1),
(141, 'makharij', 1, 1),
(142, 'letters', 1, 1),
(143, 'spellings', 1, 1),
(144, 'rare', 1, 1),
(145, 'phonetics', 1, 1),
(146, 'writing', 1, 1),
(147, 'writers', 1, 1),
(148, 'revelation', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT 0,
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES
(13, 8, '2A2.814 WOY', 3, 'B00023', NULL, '2023-02-16', '0', '', 'ML', '2023-02-16', '0', '', 1, '', 0, NULL, '2023-02-16', '2023-02-16 00:42:55', '2023-02-16 00:42:55', 1),
(2, 6, '0A3 KOR', 1, 'B00002', 'INV/B00002', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 700000, 'Rupiah', '2007-11-29', '2008-12-26 22:11:45', '2023-04-29 16:58:44', NULL),
(3, 15, NULL, 1, 'B00003', 'INV/B00003', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 300000, 'Rupiah', '2007-11-29', '2008-12-26 22:15:09', '2008-12-26 22:15:09', NULL),
(4, 14, NULL, 1, 'B00004', 'INV/B00004', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 250000, 'Rupiah', '2007-11-29', '2008-12-26 22:15:49', '2008-12-26 22:15:49', NULL),
(5, 13, NULL, 1, 'B00005', 'INV/B00005', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 2, '', 0, NULL, '2007-11-29', '2008-12-26 22:17:04', '2008-12-26 22:17:04', NULL),
(6, 12, NULL, 1, 'B00006', 'INV/B00006', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 350000, 'Rupiah', '2007-11-29', '2008-12-26 22:17:52', '2008-12-26 22:17:52', NULL),
(7, 4, NULL, 1, 'B00007', 'INV/B00007', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 450000, 'Rupiah', '2007-11-29', '2008-12-26 22:18:29', '2008-12-26 22:18:29', NULL),
(8, 4, NULL, 1, 'B00008', 'INV/B00008', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 2, '', 0, NULL, '2007-11-29', '2008-12-26 22:18:51', '2008-12-26 22:18:51', NULL),
(9, 2, NULL, 1, 'B00009', 'INV/B00009', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 630000, 'Rupiah', '2007-11-29', '2008-12-26 22:19:28', '2008-12-26 22:19:28', NULL),
(10, 2, NULL, 1, 'B00010', 'INV/B00010', '2007-11-29', '0', '', 'ML', '2007-11-29', '0', '', 1, '', 630000, 'Rupiah', '2007-11-29', '2008-12-26 22:19:57', '2008-12-26 22:19:57', NULL),
(11, 6, '0A3 KOR', 1, 'B00021', NULL, '2023-02-14', '0', '', 'ML', '2023-02-14', '0', '', 1, '', 0, NULL, '2023-02-14', '2023-02-14 23:13:54', '2023-02-14 23:13:54', 1),
(14, 8, '2A2.814 WOY', 1, 'B00024', NULL, '2023-02-16', '0', '', 'ML', '2023-02-16', '0', '', 1, '', 0, NULL, '2023-02-16', '2023-02-16 00:45:49', '2023-02-16 00:46:07', 1),
(15, 11, '006.7-22 Mor i', 1, '123', '34', '2023-05-02', '0', '', 'ML', '2023-05-02', '0', '', 1, '', 0, NULL, '2023-05-02', '2023-05-02 21:27:33', '2023-05-02 21:27:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `loan_rules_id` int(11) NOT NULL DEFAULT 0,
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `item_code`, `member_id`, `loan_date`, `due_date`, `renewed`, `loan_rules_id`, `actual`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 'B00002', '1', '2023-02-06', '2023-02-13', 0, 0, NULL, 1, 1, '2023-02-16', '2023-02-06 08:00:44', '2023-02-16 00:41:12', 1),
(2, 'B00006', '1', '2023-02-06', '2023-02-13', 0, 0, NULL, 1, 1, '2023-02-07', '2023-02-06 08:00:44', '2023-02-07 15:09:33', 1);

--
-- Triggers `loan`
--
DELIMITER $$
CREATE TRIGGER `delete_loan_history` AFTER DELETE ON `loan` FOR EACH ROW DELETE FROM `loan_history` WHERE loan_id=OLD.loan_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_loan_history` AFTER INSERT ON `loan` FOR EACH ROW INSERT INTO loan_history
     SET loan_id=NEW.loan_id,
     item_code=NEW.item_code,
     member_id=NEW.member_id,
     loan_date=NEW.loan_date,
     due_date=NEW.due_date,
     renewed=NEW.renewed,
     is_lent=NEW.is_lent,
     is_return=NEW.is_return,
     return_date=NEW.return_date,
     input_date=NEW.input_date,
     last_update=NEW.last_update,
     title=(SELECT b.title FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     biblio_id=(SELECT b.biblio_id FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     call_number=(SELECT IF(i.call_number IS NULL, b.call_number,i.call_number) FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     classification=(SELECT b.classification FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     gmd_name=(SELECT g.gmd_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_gmd g ON g.gmd_id=b.gmd_id WHERE i.item_code=NEW.item_code),
     language_name=(SELECT l.language_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_language l ON b.language_id=l.language_id WHERE i.item_code=NEW.item_code),
     location_name=(SELECT ml.location_name FROM item i LEFT JOIN mst_location ml ON i.location_id=ml.location_id WHERE i.item_code=NEW.item_code),
     collection_type_name=(SELECT mct.coll_type_name FROM mst_coll_type mct LEFT JOIN item i ON i.coll_type_id=mct.coll_type_id WHERE i.item_code=NEW.item_code),
     member_name=(SELECT m.member_name FROM member m WHERE m.member_id=NEW.member_id),
     member_type_name=(SELECT mmt.member_type_name FROM mst_member_type mmt LEFT JOIN member m ON m.member_type_id=mmt.member_type_id WHERE m.member_id=NEW.member_id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_loan_history` AFTER UPDATE ON `loan` FOR EACH ROW UPDATE loan_history 
    SET is_lent=NEW.is_lent,
    is_return=NEW.is_return,
    renewed=NEW.renewed,
    return_date=NEW.return_date
    WHERE loan_id=NEW.loan_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `loan_history`
--

CREATE TABLE `loan_history` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biblio_id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_type_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `renewed` int(11) NOT NULL DEFAULT 0,
  `is_lent` int(11) NOT NULL DEFAULT 0,
  `is_return` int(11) NOT NULL DEFAULT 0,
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loan_history`
--

INSERT INTO `loan_history` (`loan_id`, `item_code`, `biblio_id`, `title`, `call_number`, `classification`, `gmd_name`, `language_name`, `location_name`, `collection_type_name`, `member_id`, `member_name`, `member_type_name`, `loan_date`, `due_date`, `renewed`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`) VALUES
(1, 'B00002', 6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '005.75/85-22 Kor p', '005.75/85 22', 'Text', 'English', 'My Library', 'Reference', '1', 'Faiz Ismail', 'Standard', '2023-02-06', '2023-02-13', 0, 1, 1, '2023-02-16', '2023-02-06 08:00:44', '2023-02-06 08:00:44'),
(2, 'B00006', 12, 'Corruption and development', '364.1 Rob c', '364.1/322/091724 21', 'Text', 'English', 'My Library', 'Reference', '1', 'Faiz Ismail', 'Standard', '2023-02-06', '2023-02-13', 0, 1, 1, '2023-02-07', '2023-02-06 08:00:44', '2023-02-06 08:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_address_line` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_address_suburb` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_address_state` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_address_postal` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_pending` smallint(1) NOT NULL DEFAULT 0,
  `mpasswd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `forgot` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `first_name`, `last_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_address_line`, `member_address_suburb`, `member_address_state`, `member_address_postal`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`, `forgot`) VALUES
('1', '', 'Faiz', 'Ismail', 1, '1990-10-29', 1, '', 'Address3', '4asd', '5', '6', '', 'mf_ismaiil@hotmail.com', '', '', NULL, NULL, '', '0402810785', '', '2023-02-06', '2023-02-06', '2024-02-06', '', 1, '$2y$10$1OrwSj8kfn3c.Kzh0Yktee5kJn8D.XukfIy5PCQ7rTNASXQ15gZX6', '2023-05-03 19:57:10', '103.244.176.197', '2023-02-06', '2023-05-01', NULL),
('2', 'test', '', '', 1, '1990-10-10', 1, 'test', NULL, NULL, NULL, NULL, '', 'dkjgdkfjg', '', '', NULL, NULL, '', '03254932059', '', '2023-05-01', '2023-05-01', '2024-05-01', '', 0, '$2y$10$AHwYFiC4lVN6RcVd1Ezh/ubagSbGztzWM.7hLtFGQdSef4gvt.hh6', '2023-05-03 10:44:59', '131.172.30.176', '2023-04-30', '2023-05-01', NULL),
('1000', '', 'Muhammada', 'Saads', 1, '1992-12-26', 1, '', 'Kharadar', 'JSAD', 'Sindh', '74100', '', 'saad_sinpk@yahoo.com', '', '', NULL, NULL, '', '12345678', '', '2023-05-03', '2023-05-03', '2024-05-02', '', 0, '$2y$10$ExvlhfdYJEQ5z4fr.gMp..cb..lwpJiC8mM.vDJLm/jSPg9g2gamu', '2023-05-03 14:59:54', '103.244.176.197', '2023-05-02', '2023-05-03', ''),
('3', 'Muhammad Ismail', '', '', 1, '1990-10-10', 1, '', '123 Example St', 'Example', 'ABC', '3000', '', 'mysterio808@hotmail.com', '', '', NULL, NULL, '', '9000001', '', '2023-05-03', '2023-05-03', '2024-05-03', '', 1, '$2y$10$GVzjYOMeVXG3eI6PztFRWeMiopAs8sU0GwxYT1GPP7SLjI2QTFeQK', '2023-05-03 20:08:28', '1.120.8.70', '2023-05-03', '2023-05-03', '$2y$10$FyRi17sK/N.LxliLPu6IH.ll6grEXBU.P0SzcJQPJbzeMcwiMIuvS'),
('', NULL, 'Muhammad', 'Saad', 1, '1992-12-26', NULL, NULL, 'address', 'sindh', 'sinds', '74100', NULL, 'saad.sid0@gmail.com', NULL, NULL, NULL, NULL, NULL, '12345678', NULL, NULL, NULL, '2024-05-03', NULL, 0, '$2y$10$exSNDBw1mX/6ylFACOA7bujeCcsb9nFcIPJ0q0vSsO6kUm9LtVKQm', NULL, NULL, '2023-05-03', '2023-05-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `member_online`
--

CREATE TABLE `member_online` (
  `id` int(11) NOT NULL,
  `member_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `first_name` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_name` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `gender` int(1) NOT NULL,
  `member_address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_address_line` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_address_suburb` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_address_state` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_address_postal` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `mpasswd` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `member_online`
--

INSERT INTO `member_online` (`id`, `member_name`, `first_name`, `last_name`, `birth_date`, `inst_name`, `gender`, `member_address`, `member_address_line`, `member_address_suburb`, `member_address_state`, `member_address_postal`, `member_phone`, `member_email`, `member_type_id`, `member_image`, `mpasswd`, `input_date`, `last_update`) VALUES
(1, 'Muhammad Saad', NULL, NULL, '1992-12-26', NULL, 1, 'Saad', NULL, NULL, NULL, NULL, '+923322245596', 'saad@sidtechno.com', NULL, NULL, '$2y$10$0I4QTIjgOpyUarBr0ADpEO4hdjJjXJNiVOAL7S1d9XAuZoifUfK2G', '2023-04-30', '2023-04-30'),
(8, NULL, 'Test', 'Test', '1990-01-01', NULL, 1, NULL, '123 Test', 'test', 'Test', '3044', '02350235309', 'test@email.com', NULL, NULL, '$2y$10$qaagYw4LM/JRhP/oS7SPQulXdQvwOeXTs.vlfDuxwm3t6CYfRNMKS', '2023-05-03', '2023-05-03'),
(6, NULL, 'Muhammad', 'Saad', '1992-12-26', NULL, 1, NULL, 'asda', 'sad', 'dsf', '74100', '12345678', 'saad.sid00@gmail.com', NULL, NULL, '$2y$10$gXl4YZPrbbwoSaSza4zYmO8u3g99aSs6KnKxEcfawJ6ICzMWoBcpK', '2023-05-03', '2023-05-03'),
(7, NULL, 'Muhammad', 'Saad', '1992-02-12', NULL, 1, NULL, 'asd', 'dsf', 'sdf', '74100', '3123213', 'saad.sid000@gmail.com', NULL, NULL, '$2y$10$pj9U/qy0aDt2pQyb0kzfE.mkCF6RMS9pNw/9tr31L6fr5qWP3Shza', '2023-05-03', '2023-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Valade, Janet', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(2, 'Siever, Ellen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(3, 'Love, Robert', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(4, 'Robbins, Arnold', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(5, 'Figgins, Stephen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(6, 'Weber, Aaron', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(7, 'Kofler, Michael', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(8, 'Kramer, David', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(9, 'Raymond, Eric', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(10, 'Fogel, Karl', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(11, 'Douglas, Korry', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(12, 'Douglas, Susan', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(13, 'Shklar, Leon', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(14, 'Rosen, Richard', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(15, 'Woychowsky, Edmond', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(16, 'Taylor, Arlene G.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(17, 'Stueart, Robert D.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(18, 'Moran, Barbara B.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(19, 'Morville, Peter', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(20, 'Rosenfeld, Louis', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(21, 'Robinson, Mark', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(22, 'Bracking, Sarah', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(23, 'Huffington, Arianna Stassinopoulos', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(24, 'Hancock, Graham', NULL, 'p', NULL, '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(2, 'audio cylinder', 'se', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(3, 'audio disc', 'sd', 'd', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(4, 'sound track reel', 'si', 'i', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(5, 'audio roll', 'sq', 'q', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(6, 'audiocassette', 'ss', 's', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(7, 'audiotape reel', 'st', 't', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(8, 'other (audio)', 'sz', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(9, 'computer card', 'ck', 'k', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(10, 'computer chip cartridge', 'cb', 'b', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(11, 'computer disc', 'cd', 'd', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(12, 'computer disc cartridge', 'ce', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(13, 'computer tape cartridge', 'ca', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(14, 'computer tape cassette', 'cf', 'f', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(15, 'computer tape reel', 'ch', 'h', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(16, 'online resource', 'cr', 'r', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(17, 'other (computer)', 'cz', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(18, 'aperture card', 'ha', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(19, 'microfiche', 'he', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(20, 'microfiche cassette', 'hf', 'f', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(21, 'microfilm cartridge', 'hb', 'b', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(22, 'microfilm cassette', 'hc', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(23, 'microfilm reel', 'hd', 'd', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(24, 'microfilm roll', 'hj', 'j', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(25, 'microfilm slip', 'hh', 'h', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(26, 'microopaque', 'hg', 'g', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(27, 'other (microform)', 'hz', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(28, 'microscope slide', 'pp', 'p', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(29, 'other (microscope)', 'pz', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(30, 'film cartridge', 'mc', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(31, 'film cassette', 'mf', 'f', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(32, 'film reel', 'mr', 'r', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(33, 'film roll', 'mo', 'o', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(34, 'filmslip', 'gd', 'd', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(35, 'filmstrip', 'gf', 'f', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(36, 'filmstrip cartridge', 'gc', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(37, 'overhead transparency', 'gt', 't', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(38, 'slide', 'gs', 's', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(39, 'other (projected image)', 'mz', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(40, 'stereograph card', 'eh', 'h', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(41, 'stereograph disc', 'es', 's', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(42, 'other (stereographic)', 'ez', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(43, 'card', 'no', 'o', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(44, 'flipchart', 'nn', 'n', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(45, 'roll', 'na', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(46, 'sheet', 'nb', 'b', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(47, 'volume', 'nc', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(48, 'object', 'nr', 'r', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(49, 'other (unmediated)', 'nz', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(50, 'video cartridge', 'vc', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(51, 'videocassette', 'vf', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(52, 'videodisc', 'vd', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(53, 'videotape reel', 'vr', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(54, 'other (video)', 'vz', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(55, 'unspecified', 'zu', 'u', '2022-12-31 22:57:25', '2022-12-31 22:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Fiction', '2007-11-29', '2007-11-29'),
(2, 'Non-Fiction', '2007-11-29', '2023-03-05'),
(3, 'Children\'s Fiction', '2023-03-05', '2023-03-05'),
(5, 'Picture', '2023-02-14', '2023-03-04'),
(4, 'Children\'s Non-Fiction', '2023-03-05', '2023-03-05'),
(6, 'Australian Muslim Author Fiction', '2023-03-05', '2023-03-05'),
(7, 'Australian Muslim Author Non-Fiction', '2023-03-05', '2023-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(2, 'cartographic image', 'cri', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(3, 'cartographic moving image', 'crm', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(4, 'cartographic tactile image', 'crt', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(7, 'computer dataset', 'cod', 'm', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(8, 'computer program', 'cop', 'm', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(9, 'notated movement', 'ntv', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(10, 'notated music', 'ntm', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(11, 'performed music', 'prm', 'j', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(12, 'sounds', 'snd', 'i', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(13, 'spoken word', 'spw', 'i', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(14, 'still image', 'sti', 'k', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(15, 'tactile image', 'tci', 'k', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(16, 'tactile notated music', 'tcm', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(17, 'tactile notated movement', 'tcn', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(18, 'tactile text', 'tct', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(20, 'text', 'txt', 'a', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(21, 'three-dimensional form', 'tdf', 'r', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(22, 'three-dimensional moving image', 'tdm', 'g', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(23, 'two-dimensional moving image', 'tdi', 'g', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(24, 'other', 'xxx', 'o', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(25, 'unspecified', 'zzz', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `mst_custom_field`
--

CREATE TABLE `mst_custom_field` (
  `field_id` int(11) NOT NULL,
  `primary_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbfield` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('text','checklist','numeric','dropdown','longtext','choice','date') COLLATE utf8_unicode_ci NOT NULL,
  `default` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indexed` tinyint(1) DEFAULT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `width` int(5) DEFAULT 100,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Book', NULL, '2022-12-31', '2023-02-14'),
(2, 'AB', 'Audiobook', NULL, '2023-02-14', '2023-02-14'),
(3, 'MG', 'Magazine', NULL, '2023-02-14', '2023-02-14'),
(4, 'NP', 'Newspaper', NULL, '2023-02-14', '2023-02-14'),
(5, 'CD', 'CD-ROM', NULL, '2022-12-31', '2022-12-31'),
(6, 'DVD', 'DVD', NULL, '2022-12-31', '2023-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT 0,
  `skip_stock_take` smallint(1) NOT NULL DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2022-12-31', '2022-12-31'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2022-12-31', '2022-12-31'),
('MIS', 'Missing', NULL, 1, 1, '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2022-12-31', '2022-12-31'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2022-12-31', '2022-12-31'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2023-02-16', '2023-02-16'),
('en', 'English', '2022-12-31', '2022-12-31'),
('ar', 'Arabic', '2023-02-14', '2023-02-14'),
('tr', 'Turkish', '2023-02-15', '2023-02-15'),
('so', 'Somali', '2023-02-17', '2023-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT 0,
  `coll_type_id` int(11) DEFAULT 0,
  `gmd_id` int(11) DEFAULT 0,
  `loan_limit` int(3) DEFAULT 0,
  `loan_periode` int(3) DEFAULT 0,
  `reborrow_limit` int(3) DEFAULT 0,
  `fine_each_day` int(3) DEFAULT 0,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('ML', 'Melbourne', '2022-12-31', '2023-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(2, 'computer', 'c', 'c', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(3, 'microform', 'h', 'h', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(4, 'microscopic', 'p', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(5, 'projected', 'g', 'g', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(6, 'stereographic', 'e', '', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(7, 'unmediated', 'n', 't', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(8, 'video', 'v', 'v', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(9, 'other', 'x', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25'),
(10, 'unspecified', 'z', 'z', '2022-12-31 22:57:25', '2022-12-31 22:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT 0,
  `reserve_limit` int(11) NOT NULL DEFAULT 0,
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT 0,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Hoboken, NJ', '2007-11-29', '2007-11-29'),
(2, 'Sebastopol, CA', '2007-11-29', '2007-11-29'),
(3, 'Indianapolis', '2007-11-29', '2007-11-29'),
(4, 'Upper Saddle River, NJ', '2007-11-29', '2007-11-29'),
(5, 'Westport, Conn.', '2007-11-29', '2007-11-29'),
(6, 'Cambridge, Mass', '2007-11-29', '2007-11-29'),
(7, 'London', '2007-11-29', '2007-11-29'),
(8, 'New York', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Wiley', '2007-11-29', '2007-11-29'),
(2, 'OReilly', '2007-11-29', '2007-11-29'),
(3, 'Apress', '2007-11-29', '2007-11-29'),
(4, 'Sams', '2007-11-29', '2007-11-29'),
(5, 'John Wiley', '2007-11-29', '2007-11-29'),
(6, 'Prentice Hall', '2007-11-29', '2007-11-29'),
(7, 'Libraries Unlimited', '2007-11-29', '2007-11-29'),
(8, 'Taylor & Francis Inc.', '2007-11-29', '2007-11-29'),
(9, 'Palgrave Macmillan', '2007-11-29', '2007-11-29'),
(10, 'Crown publishers', '2007-11-29', '2007-11-29'),
(11, 'Atlantic Monthly Press', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rt_desc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Table structure for table `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` text COLLATE utf8_unicode_ci NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(357, 'Al-Buzzi, Ahmad Ibn Muhammad Ibn ‘Abdillah, Abu al-Hasan', 't', '', '3A1.2221', '2022-12-18', '2022-12-18'),
(356, 'Ibn Kathir al-Makki , ‘Abdullah, Abu Ma‘bad al-‘Attar al-Dari', 't', '', '3A1.222', '2022-12-18', '2022-12-18'),
(355, 'Warsh, ‘Uthman Ibn Sa‘id al-Qutbi', 't', '', '3A1.2212', '2022-12-18', '2022-12-18'),
(354, 'Qaloon, Abu Musa, ‘Isa Ibn Mina al-Zarqi', 't', '', '3A1.2211', '2022-12-18', '2022-12-18'),
(353, 'Nafi‘ Ibn ‘Abd ar-Rahman al-Madani', 't', '', '3A1.221', '2022-12-18', '2022-12-18'),
(352, 'Seven Recitations (Qira’at/Ways of Reading Qur\'an): Readers and Transmitters', 't', '', '3A1.22', '2022-12-18', '2022-12-18'),
(351, 'Rare Phonetics', 't', '', '3A1.214', '2022-12-18', '2022-12-18'),
(350, 'Makharij of Letters (Spellings)', 't', '', '3A1.213', '2022-12-18', '2022-12-18'),
(349, 'Groups of Letters (Spellings) of Qur\'an', 't', '', '3A1.212', '2022-12-18', '2022-12-18'),
(348, 'Principles of Pause and Conjunction', 't', '', '3A1.211', '2022-12-18', '2022-12-18'),
(347, 'Tajweed (Proper Recitation) of Qur\'an', 't', '', '3A1.21', '2022-12-18', '2022-12-18'),
(346, 'Recitation of Qur\'an', 't', '', '3A1.2', '2022-12-18', '2022-12-18'),
(345, 'Qur\'anic Teachings', 't', '', '3A1.17', '2022-12-18', '2022-12-18'),
(344, 'Qur\'anic Ambiguities ', 't', '', '3A1.16', '2022-12-18', '2022-12-18'),
(343, 'Qur\'anic Prayers/ Du‘as', 't', '', '3A1.15', '2022-12-18', '2022-12-18'),
(342, 'Verses with Complicated meaning in Qur\'anic Text', 't', '', '3A1.144', '2022-12-18', '2022-12-18'),
(341, 'Confusing Textual Similarities in Qur\'anic Text', 't', '', '3A1.143', '2022-12-18', '2022-12-18'),
(340, 'Qur\'anic Metaphors', 't', '', '3A1.142', '2022-12-18', '2022-12-18'),
(339, 'Miraculous Speeches and Expressions of Qur\'an', 't', '', '3A1.141', '2022-12-18', '2022-12-18'),
(338, 'Miracles of Qur\'an', 't', '', '3A1.14', '2022-12-18', '2022-12-18'),
(337, 'Excellence of Qur\'an', 't', '', '3A1.13', '2022-12-18', '2022-12-18'),
(336, 'Confusing Similarities (Mutashabihat) in Qur\'an', 't', '', '3A1.1262', '2022-12-18', '2022-12-18'),
(335, 'Techniques of Learning of/Memorizing Qur\'an by Heart', 't', '', '3A1.1261', '2022-12-18', '2022-12-18'),
(334, 'Learning of/Memorizing Qur\'an by Heart ', 't', '', '3A1.126', '2022-12-18', '2022-12-18'),
(333, 'Qur\'anic Words adopted by other Languages', 't', '', '3A1.1254', '2022-12-18', '2022-12-18'),
(332, 'Qur\'anic Indexes', 't', '', '3A1.1253', '2022-12-18', '2022-12-18'),
(331, 'Qur\'anic Archaic Words', 't', '', '3A1.1252', '2022-12-18', '2022-12-18'),
(330, 'Qur\'anic Rare Words', 't', '', '3A1.1251', '2022-12-18', '2022-12-18'),
(329, 'Qur\'anic Vocabulary', 't', '', '3A1.125', '2022-12-18', '2022-12-18'),
(328, 'Spelling and Symbols of Qur\'an', 't', '', '3A1.124', '2022-12-18', '2022-12-18'),
(327, 'Diacritical Marks of Qur\'an', 't', '', '3A1.123', '2022-12-18', '2022-12-18'),
(326, 'Orthography of Qur\'anic Text', 't', '', '3A1.122', '2022-12-18', '2022-12-18'),
(325, 'Rare Manuscripts of Qur\'anic Text', 't', '', '3A1.1213', '2022-12-18', '2022-12-18'),
(324, 'Calligraphic and other Beautification Value in Writing of Qur\'anic Text', 't', '', '3A1.1212', '2022-12-18', '2022-12-18'),
(323, 'Writing & Writers of Revelation ', 't', '', '3A1.1211', '2022-12-18', '2022-12-18'),
(322, 'Writing of Qur\'anic Text', 't', '', '3A1.121', '2022-12-18', '2022-12-18'),
(321, 'Protection/Preservation of Qur\'an', 't', '', '3A1.12', '2022-12-18', '2022-12-18'),
(320, 'Various Parts of Qur\'anic Text, including Individual or Groups of Seerahs', 't', '', '3A1.11', '2022-12-18', '2022-12-18'),
(319, 'Text', 't', '', '3A1.1', '2022-12-18', '2022-12-18'),
(318, 'Sources of Knowledge - Qur\'an', 't', '', '3A1', '2022-12-18', '2022-12-18'),
(317, 'Sources of Knowledge', 't', '', '3A', '2022-12-18', '2022-12-18'),
(316, 'Jihad and Terrorism', 't', '', '2A5.4', '2022-12-18', '2022-12-18'),
(315, 'War and Expansion of Islam', 't', '', '2A5.36', '2022-12-18', '2022-12-18'),
(314, 'Rules for War Prisoners', 't', '', '2A5.35', '2022-12-18', '2022-12-18'),
(313, 'Rules for Surrendering Opponent Army', 't', '', '2A5.34', '2022-12-18', '2022-12-18'),
(312, 'Rules for Opponents who are not Involved in Warfare', 't', '', '2A5.33', '2022-12-18', '2022-12-18'),
(311, 'Rules for Offense', 't', '', '2A5.32', '2022-12-18', '2022-12-18'),
(310, 'Basic Objectives of War', 't', '', '2A5.31', '2022-12-18', '2022-12-18'),
(309, 'Islamic Principles and Law of War and Peace', 't', '', '2A5.3', '2022-12-18', '2022-12-18'),
(308, 'Offensive War', 't', '', '2A5.22', '2022-12-18', '2022-12-18'),
(307, 'Defensive War', 't', '', '2A5.21', '2022-12-18', '2022-12-18'),
(306, 'Jihad as Qital (Holy War)', 't', '', '2A5.2', '2022-12-18', '2022-12-18'),
(305, 'Smaller Jihad', 't', '', '2A5.12', '2022-12-18', '2022-12-18'),
(304, 'Greater Jihad', 't', '', '2A5.11', '2022-12-18', '2022-12-18'),
(303, 'Philosophy of Jihad', 't', '', '2A5.1', '2022-12-18', '2022-12-18'),
(302, 'Jihad', 't', '', '2A5', '2022-12-18', '2022-12-18'),
(301, 'Shrines', 't', '', '2A4.753', '2022-12-18', '2022-12-18'),
(300, 'Imam Bargahs', 't', '', '2A4.752', '2022-12-18', '2022-12-18'),
(299, 'Mosques', 't', '', '2A4.751', '2022-12-18', '2022-12-18'),
(298, 'Other Places', 't', '', '2A4.75', '2022-12-18', '2022-12-18'),
(297, 'Qubbah al-Sakhra’ (Dome of Rock)', 't', '', '2A4.74', '2022-12-18', '2022-12-18'),
(296, 'Masjid Aqsa', 't', '', '2A4.73', '2022-12-18', '2022-12-18'),
(295, 'Masjid Nabawi', 't', '', '2A4.72', '2022-12-18', '2022-12-18'),
(294, 'Masjid al-Haram', 't', '', '2A4.716', '2022-12-18', '2022-12-18'),
(293, 'Safa and Marwa', 't', '', '2A4.715', '2022-12-18', '2022-12-18'),
(292, 'Well of Zamzam', 't', '', '2A4.714', '2022-12-18', '2022-12-18'),
(291, 'Maqam Ibrahim', 't', '', '2A4.713', '2022-12-18', '2022-12-18'),
(290, 'Hatim', 't', '', '2A4.712', '2022-12-18', '2022-12-18'),
(289, 'Black Stone', 't', '', '2A4.711', '2022-12-18', '2022-12-18'),
(288, 'Ka‘bah ', 't', '', '2A4.71', '2022-12-18', '2022-12-18'),
(287, 'Sacred Places and Symbols', 't', '', '2A4.7', '2022-12-18', '2022-12-18'),
(286, 'Sha‘air Allah (Allah\'s Signs)', 't', '', '2A4.6', '2022-12-18', '2022-12-18'),
(285, 'Istalam and Tawaf (Circumambulation) Around Ka‘bah', 't', '', '2A4.511', '2022-12-18', '2022-12-18'),
(284, 'Rituals of ‘Umrah', 't', '', '2A4.51', '2022-12-18', '2022-12-18'),
(283, '‘Umrah', 't', '', '2A4.5', '2022-12-18', '2022-12-18'),
(282, 'Ifrad', 't', '', '2A4.43', '2022-12-18', '2022-12-18'),
(281, 'Qiran', 't', '', '2A4.42', '2022-12-18', '2022-12-18'),
(280, 'Tamattu‘', 't', '', '2A4.41', '2022-12-18', '2022-12-18'),
(279, 'Kinds of Hajj', 't', '', '2A4.4', '2022-12-18', '2022-12-18'),
(278, 'Shaving or Pruning the Hair from Head (Halaq or Taqsir)', 't', '', '2A4.39', '2022-12-18', '2022-12-18'),
(277, 'Sa‘y (Running between Safa & Marwa)', 't', '', '2A4.38', '2022-12-18', '2022-12-18'),
(276, 'Tawaf (Circumambulation) around Ka‘bah', 't', '', '2A4.37', '2022-12-18', '2022-12-18'),
(275, 'Talbiya ', 't', '', '2A4.36', '2022-12-18', '2022-12-18'),
(274, 'Al-Zabh ', 't', '', '2A4.35', '2022-12-18', '2022-12-18'),
(273, 'Rami al-Jamarat ', 't', '', '2A4.34', '2022-12-18', '2022-12-18'),
(272, 'Stay in Mina', 't', '', '2A4.33', '2022-12-18', '2022-12-18'),
(271, 'Stay in Arafah and Mash‘ar', 't', '', '2A4.32', '2022-12-18', '2022-12-18'),
(270, 'Ihram', 't', '', '2A4.31', '2022-12-18', '2022-12-18'),
(269, 'Rituals of Pilgrimage', 't', '', '2A4.3', '2022-12-18', '2022-12-18'),
(268, 'Nisab (Eligibility/Obligation) of Pilgrimage', 't', '', '2A4.2', '2022-12-18', '2022-12-18'),
(267, 'Pilgrimage before Islam', 't', '', '2A4.13', '2022-12-18', '2022-12-18'),
(266, 'Philosophy of the Pilgrimage', 't', '', '2A4.12', '2022-12-18', '2022-12-18'),
(265, 'Origin of the Pilgrimage', 't', '', '2A4.11', '2022-12-18', '2022-12-18'),
(264, 'Basic Concept', 't', '', '2A4.1', '2022-12-18', '2022-12-18'),
(263, 'Hajj (Pilgrimage to Makkah)', 't', '', '2A4', '2022-12-18', '2022-12-18'),
(262, 'Travelers in Need', 't', '', '2A3.78', '2022-12-18', '2022-12-18'),
(261, 'Allah’s Cause', 't', '', '2A3.77', '2022-12-18', '2022-12-18'),
(260, 'Caught in Debt', 't', '', '2A3.76', '2022-12-18', '2022-12-18'),
(259, 'Freedom of Captives', 't', '', '2A3.75', '2022-12-18', '2022-12-18'),
(258, 'Ta’leef al-Quloob', 't', '', '2A3.74', '2022-12-18', '2022-12-18'),
(257, 'Employees of Zakah (Department)', 't', '', '2A3.73', '2022-12-18', '2022-12-18'),
(256, 'Masakin', 't', '', '2A3.72', '2022-12-18', '2022-12-18'),
(255, 'Fuqara’', 't', '', '2A3.71', '2022-12-18', '2022-12-18'),
(254, 'Expenses (Masarif) of Alms', 't', '', '2A3.7', '2022-12-18', '2022-12-18'),
(253, 'Sadaqah Fitr (Given on Eid al-Fitr)', 't', '', '2A3.6', '2022-12-18', '2022-12-18'),
(252, 'Zakah Calculator for Other Properties', 't', '', '2A3.57', '2022-12-18', '2022-12-18'),
(251, 'Zakah Calculator for Ghanaim (Gains of War)', 't', '', '2A3.56', '2022-12-18', '2022-12-18'),
(250, 'Zakah Calculator for Cattle', 't', '', '2A3.55', '2022-12-18', '2022-12-18'),
(249, 'Khums', 't', '', '2A3.542', '2022-12-18', '2022-12-18'),
(248, '‘Ushr', 't', '', '2A3.541', '2022-12-18', '2022-12-18'),
(247, 'Zakah Calculator for Crops', 't', '', '2A3.54', '2022-12-18', '2022-12-18'),
(246, 'Zakah Calculator for Business', 't', '', '2A3.53', '2022-12-18', '2022-12-18'),
(245, 'Zakah Calculator for Movable Properties', 't', '', '2A3.52', '2022-12-18', '2022-12-18'),
(244, 'Zakah Calculator for Fixed Properties', 't', '', '2A3.51', '2022-12-18', '2022-12-18'),
(243, 'Nisab (Eligible Amount) for Zakah', 't', '', '2A3.5', '2022-12-18', '2022-12-18'),
(242, 'Ordinances Regarding Zakah', 't', '', '2A3.4', '2022-12-18', '2022-12-18'),
(241, 'Socio-Economic Aspects of Alms', 't', '', '2A3.3', '2022-12-18', '2022-12-18'),
(240, 'Other Obligatory Alms', 't', '', '2A3.23', '2022-12-18', '2022-12-18'),
(239, 'Alms as Expiation (Kaffarah)', 't', '', '2A3.22', '2022-12-18', '2022-12-18'),
(238, 'Zakah', 't', '', '2A3.21', '2022-12-18', '2022-12-18'),
(237, 'Obligatory Almsgiving', 't', '', '2A3.2', '2022-12-18', '2022-12-18'),
(236, 'Basic Concepts and Background of Almsgiving', 't', '', '2A3.1', '2022-12-18', '2022-12-18'),
(235, 'Zakah & Sadaqah (Almsgiving)', 't', '', '2A3', '2022-12-18', '2022-12-18'),
(234, 'Physical Harms of Fasting', 't', '', '2A2.924', '2022-12-18', '2022-12-18'),
(233, 'Spiritual Harms of Fasting', 't', '', '2A2.923', '2022-12-18', '2022-12-18'),
(232, 'Physical Benefits of Fasting', 't', '', '2A2.922', '2022-12-18', '2022-12-18'),
(231, 'Spiritual Benefits of Fasting', 't', '', '2A2.921', '2022-12-18', '2022-12-18'),
(230, 'Benefits and Harms of Fasting', 't', '', '2A2.92', '2022-12-18', '2022-12-18'),
(229, 'Fast Timing', 't', '', '2A2.91', '2022-12-18', '2022-12-18'),
(228, 'Miscellaneous Topics of Fasting', 't', '', '2A2.9', '2022-12-18', '2022-12-18'),
(227, 'Ordinances of Additional Fasts', 't', '', '2A2.816', '2022-12-18', '2022-12-18'),
(226, 'Fasting on Bidh (13th-15th of Lunar Month)', 't', '', '2A2.815', '2022-12-18', '2022-12-18'),
(225, 'Fasting in Muharram', 't', '', '2A2.814', '2022-12-18', '2022-12-18'),
(224, 'Fasting in Dhul Hijjah', 't', '', '2A2.813', '2022-12-18', '2022-12-18'),
(223, 'Six Fasts of Shawwal', 't', '', '2A2.812', '2022-12-18', '2022-12-18'),
(222, 'Fasting of Youth (as protection from falling into sins)', 't', '', '2A2.811', '2022-12-18', '2022-12-18'),
(221, 'Special Occasion Fasting', 't', '', '2A2.81', '2022-12-18', '2022-12-18'),
(220, 'Additional Fasting ', 't', '', '2A2.8', '2022-12-18', '2022-12-18'),
(219, 'Fidya (Compensation by those who cannot fast)', 't', '', '2A2.7', '2022-12-18', '2022-12-18'),
(218, 'Abstinences', 't', '', '2A2.6', '2022-12-18', '2022-12-18'),
(217, 'Fasting for Istisqa’ (Begging Allah for Rain)', 't', '', '2A2.5', '2022-12-18', '2022-12-18'),
(216, 'Fasting as Expiation (Kaffarah)', 't', '', '2A2.4', '2022-12-18', '2022-12-18'),
(215, 'Fasting of Vow', 't', '', '2A2.3', '2022-12-18', '2022-12-18'),
(214, 'Fasting as Qadha (Making up Omitted Fasts of Ramadhan)', 't', '', '2A2.2', '2022-12-18', '2022-12-18'),
(213, 'I‘tikaf During Ramadhan', 't', '', '2A2.18', '2022-12-18', '2022-12-18'),
(212, 'Almsgiving and Other Good Deeds During Ramadhan', 't', '', '2A2.17', '2022-12-18', '2022-12-18'),
(211, 'Offering Suhur and Iftar for Fasting People', 't', '', '2A2.16', '2022-12-18', '2022-12-18'),
(210, 'Suhur (Morning Breakfast) & Iftar (Evening Breakfast)', 't', '', '2A2.15', '2022-12-18', '2022-12-18'),
(209, 'Ordinances of Ramadhan Nights', 't', '', '2A2.14', '2022-12-18', '2022-12-18'),
(208, 'Ordinances of Ramadhan Fasting', 't', '', '2A2.13', '2022-12-18', '2022-12-18'),
(207, 'Evolution of Ordinances of Ramadhan Fasting', 't', '', '2A2.12', '2022-12-18', '2022-12-18'),
(206, 'Calendar Uniformity/Inconsistency in Different Parts of World', 't', '', '2A2.113', '2022-12-18', '2022-12-18'),
(205, 'Duration of Ramadhan and Fast', 't', '', '2A2.112', '2022-12-18', '2022-12-18'),
(204, 'Issues of Moon Sighting and Calendar Setting', 't', '', '2A2.111', '2022-12-18', '2022-12-18'),
(203, 'Moon Sighting', 't', '', '2A2.11', '2022-12-18', '2022-12-18'),
(202, 'Ramadhan Fasting', 't', '', '2A2.1', '2022-12-18', '2022-12-18'),
(201, 'Obligatory Fasting', 't', '', '2A2.05', '2022-12-18', '2022-12-18'),
(200, 'Physical Restrictions of Fasting', 't', '', '2A2.04', '2022-12-18', '2022-12-18'),
(199, 'Ethical Restrictions of Fasting', 't', '', '2A2.03', '2022-12-18', '2022-12-18'),
(198, 'Fasting in Previous Nations', 't', '', '2A2.02', '2022-12-18', '2022-12-18'),
(197, 'Origin and Background of Fasting', 't', '', '2A2.01', '2022-12-18', '2022-12-18'),
(196, 'Fasting ', 't', '', '2A2', '2022-12-18', '2022-12-18'),
(195, 'Bida\'ah Associated with Prayers', 't', '', '2A1.5', '2022-12-18', '2022-12-18'),
(194, 'Qunut Nazilah', 't', '', '2A1.44', '2022-12-18', '2022-12-18'),
(193, 'Du\'a Jointly', 't', '', '2A1.43', '2022-12-18', '2022-12-18'),
(192, 'Du\'a after Prayers', 't', '', '2A1.42', '2022-12-18', '2022-12-18'),
(191, 'After Obligatory Prayers', 't', '', '2A1.41', '2022-12-18', '2022-12-18'),
(190, 'Adhkar and Du\'a ', 't', '', '2A1.4', '2022-12-18', '2022-12-18'),
(189, 'Other Prayers', 't', '', '2A1.38', '2022-12-18', '2022-12-18'),
(188, 'Prayers for Travelers', 't', '', '2A1.37', '2022-12-18', '2022-12-18'),
(187, 'Earthquake Prayer', 't', '', '2A1.36', '2022-12-18', '2022-12-18'),
(186, 'Lunar Eclipse Prayer', 't', '', '2A1.352', '2022-12-18', '2022-12-18'),
(185, 'Solar Eclipse Prayer', 't', '', '2A1.351', '2022-12-18', '2022-12-18'),
(184, 'Eclipse Prayer', 't', '', '2A1.35', '2022-12-18', '2022-12-18'),
(183, 'Salat al-Khawf (Prayer for Obtaining Help Against some Danger)', 't', '', '2A1.34', '2022-12-18', '2022-12-18'),
(182, 'Salat al-Hajah (Prayer for Need)', 't', '', '2A1.33', '2022-12-18', '2022-12-18'),
(181, 'Salat al-Istikharah (Asking for Divine blessings for particular things)', 't', '', '2A1.32', '2022-12-18', '2022-12-18'),
(180, 'Salat al-Istisqa’ (Prayer for Begging Allah for Rain)', 't', '', '2A1.31', '2022-12-18', '2022-12-18'),
(179, 'Special Occasion Prayers ', 't', '', '2A1.3', '2022-12-18', '2022-12-18'),
(178, 'Awwabin Prayer ', 't', '', '2A1.29', '2022-12-18', '2022-12-18'),
(177, 'Dhuha Prayer (offered in first part of the day)', 't', '', '2A1.28', '2022-12-18', '2022-12-18'),
(176, 'Tasbih Prayer ', 't', '', '2A1.27', '2022-12-18', '2022-12-18'),
(175, 'Prayer of Vow', 't', '', '2A1.26', '2022-12-18', '2022-12-18'),
(174, 'Ishraq Prayer (offered after sunrise)', 't', '', '2A1.25', '2022-12-18', '2022-12-18'),
(173, 'Rak‘at (Units) of Tarawih Prayer', 't', '', '2A1.242', '2022-12-18', '2022-12-18'),
(172, 'Fadhail (Virtues) of Tarawih Prayer', 't', '', '2A1.241', '2022-12-18', '2022-12-18'),
(171, 'Tarawih Prayer (offered in Ramadhan nights)', 't', '', '2A1.24', '2022-12-18', '2022-12-18'),
(170, 'Tahajjud Prayer (offered in later part of the night)', 't', '', '2A1.23', '2022-12-18', '2022-12-18'),
(169, 'Seerahs (Parts of Qur\'an) Recited in Witr Prayer', 't', '', '2A1.2231', '2022-12-18', '2022-12-18'),
(168, 'Recitation in Witr Prayer', 't', '', '2A1.223', '2022-12-18', '2022-12-18'),
(167, 'Rak‘at (Units) of Witr Prayer', 't', '', '2A1.222', '2022-12-18', '2022-12-18'),
(166, 'Different ways of Offering Witr Prayer', 't', '', '2A1.221', '2022-12-18', '2022-12-18'),
(165, 'Witr Prayer (offered in the last part of the night)', 't', '', '2A1.22', '2022-12-18', '2022-12-18'),
(164, 'Sunan and Nawafil for Obligatory Prayers', 't', '', '2A1.21', '2022-12-18', '2022-12-18'),
(163, 'Additional Prayers', 't', '', '2A1.2', '2022-12-18', '2022-12-18'),
(162, '‘Eid Sacrifice', 't', '', '2A1.134', '2022-12-18', '2022-12-18'),
(161, '‘Eid Sermon', 't', '', '2A1.133', '2022-12-18', '2022-12-18'),
(160, '‘Eid al-Adha', 't', '', '2A1.132', '2022-12-18', '2022-12-18'),
(159, '‘Eid al-Fitr', 't', '', '2A1.131', '2022-12-18', '2022-12-18'),
(158, '‘Eid (Festival/Holy Day) Prayers', 't', '', '2A1.13', '2022-12-18', '2022-12-18'),
(157, 'Recitation in Funeral Prayer', 't', '', '2A1.122', '2022-12-18', '2022-12-18'),
(156, 'Janaza (Funeral) Prayers', 't', '', '2A1.121', '2022-12-18', '2022-12-18'),
(155, 'Janaza (Funeral) Prayer', 't', '', '2A1.12', '2022-12-18', '2022-12-18'),
(154, 'Qasr While being at Own Place', 't', '', '2A1.1195', '2022-12-18', '2022-12-18'),
(153, 'Rules of Travel Distance', 't', '', '2A1.1194', '2022-12-18', '2022-12-18'),
(152, 'Jama\' in Travel (Combining Two Prayers)', 't', '', '2A1.1193', '2022-12-18', '2022-12-18'),
(151, 'Qasr in Travel (Shortening Prayers)', 't', '', '2A1.1192', '2022-12-18', '2022-12-18'),
(150, 'Daily Prayers While Traveling', 't', '', '2A1.1191', '2022-12-18', '2022-12-18'),
(149, 'Miscellaneous Topics of Daily Prayers', 't', '', '2A1.119', '2022-12-18', '2022-12-18'),
(148, 'Qualities of Prayer Leader (Imam)', 't', '', '2A1.1184', '2022-12-18', '2022-12-18'),
(147, 'Leading Collective Praying (Imamah)', 't', '', '2A1.1183', '2022-12-18', '2022-12-18'),
(146, 'Collective Praying (Jama‘ah)', 't', '', '2A1.1182', '2022-12-18', '2022-12-18'),
(145, 'Azan (Call) for Prayers', 't', '', '2A1.1181', '2022-12-18', '2022-12-18'),
(144, 'Daily Prayer System', 't', '', '2A1.118', '2022-12-18', '2022-12-18'),
(143, 'Daily Prayer Times', 't', '', '2A1.117', '2022-12-18', '2022-12-18'),
(142, 'Privileges and Adhkar (Remembrances)of Jumu‘ah', 't', '', '2A1.1164', '2022-12-18', '2022-12-18'),
(141, 'Jumu‘ah: Festival/Great Day', 't', '', '2A1.1163', '2022-12-18', '2022-12-18'),
(140, 'Jumu‘ah Sermon', 't', '', '2A1.1162', '2022-12-18', '2022-12-18'),
(139, 'Azan (Call) for Jumu‘ah Prayer', 't', '', '2A1.1161', '2022-12-18', '2022-12-18'),
(138, 'Jumu‘ah Prayer', 't', '', '2A1.116', '2022-12-18', '2022-12-18'),
(137, '‘Isha Prayer', 't', '', '2A1.115', '2022-12-18', '2022-12-18'),
(136, 'Maghrib Prayer', 't', '', '2A1.114', '2022-12-18', '2022-12-18'),
(135, '‘Asr Prayer', 't', '', '2A1.113', '2022-12-18', '2022-12-18'),
(134, 'Zuhr Prayer', 't', '', '2A1.112', '2022-12-18', '2022-12-18'),
(133, 'Fajar Prayer', 't', '', '2A1.111', '2022-12-18', '2022-12-18'),
(132, 'Five daily Prayers', 't', '', '2A1.11', '2022-12-18', '2022-12-18'),
(131, 'Obligatory Prayers', 't', '', '2A1.1', '2022-12-18', '2022-12-18'),
(130, 'Qibla Direction', 't', '', '2A1.014', '2022-12-18', '2022-12-18'),
(129, 'Purity of Clothes', 't', '', '2A1.013', '2022-12-18', '2022-12-18'),
(128, 'Purity of Praying Place', 't', '', '2A1.012', '2022-12-18', '2022-12-18'),
(127, 'Ghusl al-Mayyit (Major Ablution of Dead Bodies)', 't', '', '2A1.0115', '2022-12-18', '2022-12-18'),
(126, 'Other Purifiers', 't', '', '2A1.01144', '2022-12-18', '2022-12-18'),
(125, 'Earth/Mud', 't', '', '2A1.01143', '2022-12-18', '2022-12-18'),
(124, 'Sun', 't', '', '2A1.01142', '2022-12-18', '2022-12-18'),
(123, 'Water', 't', '', '2A1.01141', '2022-12-18', '2022-12-18'),
(122, 'Purifiers', 't', '', '2A1.0114', '2022-12-18', '2022-12-18'),
(121, 'Other Impurities', 't', '', '2A1.01134', '2022-12-18', '2022-12-18'),
(120, 'Intercourse or otherwise ejaculation', 't', '', '2A1.01133', '2022-12-18', '2022-12-18'),
(119, 'Nifas (Postnatal Bleeding)', 't', '', '2A1.01132', '2022-12-18', '2022-12-18'),
(118, 'Menses', 't', '', '2A1.01131', '2022-12-18', '2022-12-18'),
(117, 'Impurities', 't', '', '2A1.0113', '2022-12-18', '2022-12-18'),
(116, 'Proper Way of Bath Taking', 't', '', '2A1.01124', '2022-12-18', '2022-12-18'),
(115, 'Bath Taking Sunan/Mustahabbat (Recommended)', 't', '', '2A1.01123', '2022-12-18', '2022-12-18'),
(114, 'Arkan of Bath Taking', 't', '', '2A1.01122', '2022-12-18', '2022-12-18'),
(113, 'Obligatory Bath Taking', 't', '', '2A1.01121', '2022-12-18', '2022-12-18'),
(112, 'Ghusl (Bath Taking/Major Ablution)', 't', '', '2A1.0112', '2022-12-18', '2022-12-18'),
(111, 'Masah (Wiping Covered)', 't', '', '2A1.01115', '2022-12-18', '2022-12-18'),
(110, 'Tayammum (Substituting Wudu’ and Ghusl)', 't', '', '2A1.01114', '2022-12-18', '2022-12-18'),
(109, 'Ablution Breaking Factors', 't', '', '2A1.01113', '2022-12-18', '2022-12-18'),
(108, 'Ablution Sunan/Mustahabbat (Recommended)', 't', '', '2A1.01112', '2022-12-18', '2022-12-18'),
(107, 'Arkan (Obligations)', 't', '', '2A1.01111', '2022-12-18', '2022-12-18'),
(106, 'Ablution (Wudu’)', 't', '', '2A1.0111', '2022-12-18', '2022-12-18'),
(105, 'Ritual Purity (Taharah)', 't', '', '2A1.011', '2022-12-18', '2022-12-18'),
(104, 'Pre-Requisites of Prayer', 't', '', '2A1.01', '2022-12-18', '2022-12-18'),
(103, 'Salah (Prayer)', 't', '', '2A1', '2022-12-18', '2022-12-18'),
(102, 'Ibadah (Worship)', 't', '', '2A', '2022-12-18', '2022-12-18'),
(101, 'Signs of Hypocrisy & Munafiq (Hypocrites)', 't', '', '1A7.3', '2022-12-18', '2022-12-18'),
(100, 'Hypocrisy by Action', 't', '', '1A7.2', '2022-12-18', '2022-12-18'),
(99, 'Hypocrisy by Belief', 't', '', '1A7.1', '2022-12-18', '2022-12-18'),
(98, 'Nifaq (Hypocrisy)', 't', '', '1A7', '2022-12-18', '2022-12-18'),
(97, 'Belief in Qada\' and Qadr (Decree and Will of Allah)', 't', '', '1A6', '2022-12-18', '2022-12-18'),
(96, 'A‘raf (Place between Heaven and Hell)', 't', '', '1A5.33', '2022-12-18', '2022-12-18'),
(95, 'Conversation among People in Hell', 't', '', '1A5.328', '2022-12-18', '2022-12-18'),
(94, 'Stories Borrowed from Isra\'iliyyat and other Beliefs on Hell', 't', '', '1A5.327', '2022-12-18', '2022-12-18'),
(93, 'Stories regarding Hell', 't', '', '1A5.326', '2022-12-18', '2022-12-18'),
(92, 'Angels Appointed on Hell', 't', '', '1A5.325', '2022-12-18', '2022-12-18'),
(91, 'Layers in Hell', 't', '', '1A5.324', '2022-12-18', '2022-12-18'),
(90, 'Punishments in Hell', 't', '', '1A5.323', '2022-12-18', '2022-12-18'),
(89, 'Doors (Entrances) of Hell', 't', '', '1A5.322', '2022-12-18', '2022-12-18'),
(88, 'Philosophy of Hell', 't', '', '1A5.321', '2022-12-18', '2022-12-18'),
(87, 'Hell', 't', '', '1A5.32', '2022-12-18', '2022-12-18'),
(86, 'Stories Borrowed from Isra\'iliyyat and other Beliefs on Heaven', 't', '', '1A5.317', '2022-12-18', '2022-12-18'),
(85, 'Stories regarding Heaven', 't', '', '1A5.316', '2022-12-18', '2022-12-18'),
(84, 'Sight of Allah in Heaven', 't', '', '1A5.315', '2022-12-18', '2022-12-18'),
(82, 'Layers in Heaven', 't', '', '1A5.313', '2022-12-18', '2022-12-18'),
(83, 'Bounties in Heaven', 't', '', '1A5.314', '2022-12-18', '2022-12-18'),
(81, 'Doors (Entrances) of Heaven', 't', '', '1A5.312', '2022-12-18', '2022-12-18'),
(79, 'Heaven', 't', '', '1A5.31', '2022-12-18', '2022-12-18'),
(80, 'Philosophy of Heaven', 't', '', '1A5.311', '2022-12-18', '2022-12-18'),
(78, 'Eternal Life', 't', '', '1A5.3', '2022-12-18', '2022-12-18'),
(77, 'Hawd al-Kawthar (Pond of Abundance)', 't', '', '1A5.28', '2022-12-18', '2022-12-18'),
(76, 'Maqam Mahmud (Praised Place) for Prophet Muhammad ﷺ on Day of Judgment', 't', '', '1A5.271', '2022-12-18', '2022-12-18'),
(75, 'Prophets on Day of Judgment', 't', '', '1A5.27', '2022-12-18', '2022-12-18'),
(74, 'Circumstances on Day of Judgment', 't', '', '1A5.262', '2022-12-18', '2022-12-18'),
(72, 'Hisab (Judgment)', 't', '', '1A5.26', '2022-12-18', '2022-12-18'),
(73, 'Shafa‘ah (Intercession)', 't', '', '1A5.261', '2022-12-18', '2022-12-18'),
(71, 'Establishment of Mizan (Scale)', 't', '', '1A5.253', '2022-12-18', '2022-12-18'),
(70, 'Sounding of Trumpets', 't', '', '1A5.252', '2022-12-18', '2022-12-18'),
(69, 'Al-Sa‘ah (The Hour)', 't', '', '1A5.251', '2022-12-18', '2022-12-18'),
(68, 'Day of Judgment', 't', '', '1A5.25', '2022-12-18', '2022-12-18'),
(67, 'Appearance of Mahdi', 't', '', '1A5.24', '2022-12-18', '2022-12-18'),
(66, 'Appearance of Jesus Christ', 't', '', '1A5.23', '2022-12-18', '2022-12-18'),
(65, 'Dajjal and Other Trials', 't', '', '1A5.22', '2022-12-18', '2022-12-18'),
(64, 'Signs Near the Occurrence of Day of Judgment', 't', '', '1A5.21', '2022-12-18', '2022-12-18'),
(63, 'Belief in Day of Judgment and Series of Occurrences', 't', '', '1A5.2', '2022-12-18', '2022-12-18'),
(61, 'Belief in Reward in Grave', 't', '', '1A5.14', '2022-12-18', '2022-12-18'),
(62, 'Belief in \'Azab (Punishment) in Grave', 't', '', '1A5.15', '2022-12-18', '2022-12-18'),
(59, 'Illiyyin', 't', '', '1A5.12', '2022-12-18', '2022-12-18'),
(60, 'Sijjin', 't', '', '1A5.13', '2022-12-18', '2022-12-18'),
(58, 'Philosophy and Concepts regarding Ruh (Spirit)', 't', '', '1A5.11', '2022-12-18', '2022-12-18'),
(56, 'Belief in Life after Death', 't', '', '1A5', '2022-12-18', '2022-12-18'),
(57, 'Belief in Barzakh (Period between Death and Day of Judgement)', 't', '', '1A5.1', '2022-12-18', '2022-12-18'),
(55, 'Muhammad ﷺ as the Last Prophet', 't', '', '1A4.21', '2022-12-18', '2022-12-18'),
(53, 'Belief in Previous Prophets', 't', '', '1A4.1', '2022-12-18', '2022-12-18'),
(54, 'Belief in Prophethood of Muhammad ﷺ', 't', '', '1A4.2', '2022-12-18', '2022-12-18'),
(51, 'Other Divine books or Suhuf', 't', '', '1A3.25', '2022-12-18', '2022-12-18'),
(52, 'Belief in Prophets', 't', '', '1A4', '2022-12-18', '2022-12-18'),
(50, 'Injil of ‘Isa (Jesus)', 't', '', '1A3.24', '2022-12-18', '2022-12-18'),
(48, 'Torat of Musa (Moses)', 't', '', '1A3.22', '2022-12-18', '2022-12-18'),
(49, 'Zabur of Dawud (David)', 't', '', '1A3.23', '2022-12-18', '2022-12-18'),
(47, 'Suhuf Ibrahim (Scrolls of Abraham)', 't', '', '1A3.21', '2022-12-18', '2022-12-18'),
(45, 'Qur\'an, the Last Divine Book', 't', '', '1A3.12', '2022-12-18', '2022-12-18'),
(46, 'Previous Divine Books and Sahifah', 't', '', '1A3.2', '2022-12-18', '2022-12-18'),
(43, 'Qur\'an', 't', '', '1A3.1', '2022-12-18', '2022-12-18'),
(44, 'Belief in the Protection/Preservation of Qur\'an', 't', '', '1A3.11', '2022-12-18', '2022-12-18'),
(42, 'Belief in Divine Books', 't', '', '1A3', '2022-12-18', '2022-12-18'),
(41, 'Harut and Marut', 't', '', '1A2.91', '2022-12-18', '2022-12-18'),
(40, 'Other Angels and Related Topics', 't', '', '1A2.9', '2022-12-18', '2022-12-18'),
(38, 'Kiraman Katibeen', 't', '', '1A2.81', '2022-12-18', '2022-12-18'),
(39, 'Munkar and Nakir', 't', '', '1A2.82', '2022-12-18', '2022-12-18'),
(37, 'Angels on Duty of Accountability', 't', '', '1A2.8', '2022-12-18', '2022-12-18'),
(34, 'Mikail', 't', '', '1A2.5', '2022-12-18', '2022-12-18'),
(35, 'Israfil', 't', '', '1A2.6', '2022-12-18', '2022-12-18'),
(36, 'Izra’il', 't', '', '1A2.7', '2022-12-18', '2022-12-18'),
(33, 'Jibril', 't', '', '1A2.4', '2022-12-18', '2022-12-18'),
(31, 'Duties of Angels', 't', '', '1A2.2', '2022-12-18', '2022-12-18'),
(32, 'Special properties of Angels', 't', '', '1A2.3', '2022-12-18', '2022-12-18'),
(30, 'Creation and shape of Angels', 't', '', '1A2.1', '2022-12-18', '2022-12-18'),
(28, 'Shirk (Idolatry/Polytheism)', 't', '', '1A1.5', '2022-12-18', '2022-12-18'),
(29, 'Belief in Angels', 't', '', '1A2', '2022-12-18', '2022-12-18'),
(27, 'Ahkam (Orders/Instructions of Allah)', 't', '', '1A1.4', '2022-12-18', '2022-12-18'),
(26, 'Sifat (Attributes of Allah)', 't', '', '1A1.3', '2022-12-18', '2022-12-18'),
(25, 'Asma al Husna (Names of Allah)', 't', '', '1A1.2', '2022-12-18', '2022-12-18'),
(24, 'Tawhid (Oneness of Allah)', 't', '', '1A1.1', '2022-12-18', '2022-12-18'),
(22, 'Iman Mujmal', 't', '', '1A0.3', '2022-12-18', '2022-12-18'),
(23, 'Belief in God (Allah)', 't', '', '1A1', '2022-12-18', '2022-12-18'),
(21, 'Iman Mufassal', 't', '', '1A0.2', '2022-12-18', '2022-12-18'),
(20, 'Shahadah (Declaration of the Faith)', 't', '', '1A0.1', '2022-12-18', '2022-12-18'),
(18, 'Da\'wah (Invitation to Islam)', 't', '', '0A5', '2022-12-18', '2022-12-18'),
(19, 'Iman (Belief) and Aqeedah (Faith System of Islam)', 't', '', '1A', '2022-12-18', '2022-12-18'),
(16, 'Islamic Literature', 't', '', '0A4', '2022-12-18', '2022-12-18'),
(17, 'Poetry', 't', '', '0A4.1', '2022-12-18', '2022-12-18'),
(14, 'Philosophy', 't', '', '0A3.8', '2022-12-18', '2022-12-18'),
(15, 'Other Contributions', 't', '', '0A3.9', '2022-12-18', '2022-12-18'),
(12, 'Astronomy', 't', '', '0A3.6', '2022-12-18', '2022-12-18'),
(13, 'Zoology', 't', '', '0A3.7', '2022-12-18', '2022-12-18'),
(10, 'Physics', 't', '', '0A3.4', '2022-12-18', '2022-12-18'),
(11, 'Chemistry', 't', '', '0A3.5', '2022-12-18', '2022-12-18'),
(8, 'Mathematics', 't', '', '0A3.2', '2022-12-18', '2022-12-18'),
(9, 'Engineering', 't', '', '0A3.3', '2022-12-18', '2022-12-18'),
(7, 'Medicine', 't', '', '0A3.1', '2022-12-18', '2022-12-18'),
(5, 'Leadership', 't', '', '0A2.1', '2022-12-18', '2022-12-18'),
(6, 'Islamic Contributions', 't', '', '0A3', '2022-12-18', '2022-12-18'),
(4, 'Spiritual/Self Development', 't', '', '0A2', '2022-12-18', '2022-12-18'),
(2, 'Generalities', 't', '', '0A', '2022-12-18', '2022-12-18'),
(3, 'Introduction to Islam', 't', '', '0A1', '2022-12-18', '2022-12-18'),
(1, 'Comprehensive Works', 't', '', '#A0', '2022-12-18', '2022-12-18'),
(358, 'Qunbul, Muhammad Ibn ‘Abd ar-Rahman, al-Makhzumi, Abu ‘Amr', 't', '', '3A1.2222', '2022-12-18', '2022-12-18'),
(359, 'Abu ‘Amr Ibn al-‘Ala\'', 't', '', '3A1.223', '2022-12-18', '2022-12-18'),
(360, 'Hafs al-Duri, Abu ‘Amr, Hafs Ibn ‘Umar Ibn ‘Abd al-‘Aziz al-Baghdadi', 't', '', '3A1.2231', '2022-12-18', '2022-12-18'),
(361, 'Al-Susi, Abu Shu‘ayb, Salih Ibn Ziyad Ibn ‘Abdillah Ibn Isma‘il Ibn al-Jarud ar-Riqqi', 't', '', '3A1.2232', '2022-12-18', '2022-12-18'),
(362, 'Ibn ‘Amir ad-Dimashqi, ‘Abdullah Ibn ‘Amir Ibn Yazid Ibn Tamim Ibn Rabi‘ah al-Yahsibi', 't', '', '3A1.224', '2022-12-18', '2022-12-18'),
(363, 'Hisham, Abu al-Walid, Hisham ibn ‘Ammar Ibn Nusayr Ibn Maysarah al-Salami al-Dimashqi', 't', '', '3A1.2241', '2022-12-18', '2022-12-18'),
(364, 'Ibn Dhakwan, Abu ‘Amr, ‘Abdul-lah Ibn Ahmad al-Qurayshi al-Dimashqi', 't', '', '3A1.2242', '2022-12-18', '2022-12-18'),
(365, '‘Aasim al-Kufi, Abu Bakr, ‘Aasim Ibn Abi al-Najud al-\'Asadi', 't', '', '3A1.225', '2022-12-18', '2022-12-18'),
(366, 'Shu’bah, Abu Bakr, Shu‘bah Ibn ‘Ayyash Ibn Salim al-Kufi an-Nahshali', 't', '', '3A1.2251', '2022-12-18', '2022-12-18'),
(367, 'Hafs, Abu ‘Amr, Hafs Ibn Sulay-man Ibn al-Mughirah Ibn Abi Dawud al-Asadi al-Kufi', 't', '', '3A1.2252', '2022-12-18', '2022-12-18'),
(368, 'Hamzah al-Kufi, Abu ‘Imarah, Hamzah Ibn Habib al-Zayyat al-Taymi', 't', '', '3A1.226', '2022-12-18', '2022-12-18'),
(369, 'Khalaf, Abu Muhammad al-Asadi al-Bazzar al-Baghdadi', 't', '', '3A1.2261', '2022-12-18', '2022-12-18'),
(370, 'Khallad, Abu ‘Isa, Khallad Ibn Khalid al-Baghdadi', 't', '', '3A1.2262', '2022-12-18', '2022-12-18'),
(371, 'Al-Kisa\'i al-Kufi, Abu al-Hasan, ‘Ali Ibn Hamzah al-Asadi', 't', '', '3A1.227', '2022-12-18', '2022-12-18'),
(372, 'Al-Layth, Abu al-Harith, al-Layth Ibn Khalid al-Baghdadi', 't', '', '3A1.2271', '2022-12-18', '2022-12-18'),
(373, 'Hafs al-Duri, Abu ‘Amr, Hafs Ibn ‘Umar Ibn ‘Abd al-‘Aziz al-Baghdadi (also Transmitter of Abu \'Amr)', 't', '', '3A1.2272', '2022-12-18', '2022-12-18'),
(374, 'Ten Ways of Reading of Qur\'an 7+3', 't', '', '3A1.23', '2022-12-18', '2022-12-18'),
(375, 'Abu Ja‘far, Yazid Ibn al-Qa‘qa‘ al-Makhzumi al-Madani', 't', '', '3A1.231', '2022-12-18', '2022-12-18'),
(376, '‘Isa Ibn Wirdan, Abu al-Harith al-Madani', 't', '', '3A1.2311', '2022-12-18', '2022-12-18'),
(377, 'Ibn Jummaz, Abu ar-Rabi‘, Sulayman Ibn Muslim Ibn Jummaz al-Madani', 't', '', '3A1.2312', '2022-12-18', '2022-12-18'),
(378, 'Ya‘qub al-Yamani, Abu Muhammad, Ya‘qub Ibn Ishaq Ibn Zayd Ibn ‘Abdillah Ibn Abi Ishaq al-Hadrami al-Basri', 't', '', '3A1.232', '2022-12-18', '2022-12-18'),
(379, 'Ruways, Abu ‘Abdillah, Muham-mad Ibn al-Mutawakkil al-Basri', 't', '', '3A1.2321', '2022-12-18', '2022-12-18'),
(380, 'Rawh, Abu al-Hasan, Rawh Ibn ‘Abd al-Mu\'min, al-Basri al-Hudhali', 't', '', '3A1.2322', '2022-12-18', '2022-12-18'),
(381, 'Khalaf, Abu Muhammad al-Asadi al-Bazzar al-Baghdadi (Transmitter of Hamza)', 't', '', '3A1.233', '2022-12-18', '2022-12-18'),
(382, 'Ishaq, Abu Ya‘qub, Ishaq Ibn Ibrahim Ibn ‘Uthman al-Maruzi al-Baghdadi', 't', '', '3A1.2331', '2022-12-18', '2022-12-18'),
(383, 'Idrees, Abu al-Hasan, Idris Ibn ‘Abd al-Karim al-Haddad al-Baghdadi', 't', '', '3A1.2332', '2022-12-18', '2022-12-18'),
(384, 'The Four Aberrant Readers and their Transmitters', 't', '', '3A1.24', '2022-12-18', '2022-12-18'),
(385, 'Muhammad Ibn Muhaisin', 't', '', '3A1.241', '2022-12-18', '2022-12-18'),
(386, 'Albuzzi', 't', '', '3A1.2411', '2022-12-18', '2022-12-18'),
(387, 'Abu al-Hasan Ibn Shannabudh', 't', '', '3A1.2412', '2022-12-18', '2022-12-18'),
(388, 'Yahaya al-Yazidi', 't', '', '3A1.242', '2022-12-18', '2022-12-18'),
(389, 'Sulaiman Ibn al-Hakam', 't', '', '3A1.2421', '2022-12-18', '2022-12-18'),
(390, 'Ahmad Ibn Farah', 't', '', '3A1.2422', '2022-12-18', '2022-12-18'),
(391, 'Al-Hasan al-Basri', 't', '', '3A1.243', '2022-12-18', '2022-12-18'),
(392, 'Shujac al-Balkhi', 't', '', '3A1.2431', '2022-12-18', '2022-12-18'),
(393, 'Abu Amr Hafs Al-Duri', 't', '', '3A1.2432', '2022-12-18', '2022-12-18'),
(394, 'Sulaiman Ibn Mahraan', 't', '', '3A1.244', '2022-12-18', '2022-12-18'),
(395, 'Al-Hasan al-Mutawwaci', 't', '', '3A1.2441', '2022-12-18', '2022-12-18'),
(396, 'Abu al-Faraj al-Shannabudhi al-Shaatawi', 't', '', '3A1.2442', '2022-12-18', '2022-12-18'),
(397, 'Translations', 't', '', '3A1.3', '2022-12-18', '2022-12-18'),
(398, 'Exegesis (Tafseer) of Qur\'an', 't', '', '3A1.4', '2022-12-18', '2022-12-18'),
(399, 'Principles of Exegesis of Qur\'an ', 't', '', '3A1.41', '2022-12-18', '2022-12-18'),
(400, 'Analytical Exegesis of Qur\'an', 't', '', '3A1.42', '2022-12-18', '2022-12-18'),
(401, 'Jurisprudential Exegesis of Qur\'an', 't', '', '3A1.43', '2022-12-18', '2022-12-18'),
(402, 'Scientific Exegesis of Qur\'an', 't', '', '3A1.44', '2022-12-18', '2022-12-18'),
(403, 'Rhetorical Exegesis of Qur\'an', 't', '', '3A1.45', '2022-12-18', '2022-12-18'),
(404, 'Thematic Exegesis of Qur\'an', 't', '', '3A1.46', '2022-12-18', '2022-12-18'),
(405, 'Specific Topics in Exegesis of Qur\'an', 't', '', '3A1.47', '2022-12-18', '2022-12-18'),
(406, 'Knowledge of Causes and Occasions of Specific Revelations', 't', '', '3A1.471', '2022-12-18', '2022-12-18'),
(407, 'Knowledge of Meaning of Particles', 't', '', '3A1.472', '2022-12-18', '2022-12-18'),
(408, 'Knowledge of Definite and Ambiguous Verses (Muhkamat wa Mutashabihat)', 't', '', '3A1.473', '2022-12-18', '2022-12-18'),
(409, 'Knowledge of Abrogating and Abrogated Verses (AlNasikh wa AlMansukh)', 't', '', '3A1.474', '2022-12-18', '2022-12-18'),
(410, 'Knowledge of Lengthiness and Brevity', 't', '', '3A1.475', '2022-12-18', '2022-12-18'),
(411, 'Knowledge of Indefinite and Definite (Al-Mutlaq wa Al-Muqayyad)', 't', '', '3A1.476', '2022-12-18', '2022-12-18'),
(412, 'Exegeses of Qur\'an', 't', '', '3A1.48', '2022-12-18', '2022-12-18'),
(413, 'Complete Exegeses of Qur\'an', 't', '', '3A1.481', '2022-12-18', '2022-12-18'),
(414, 'Incomplete Exegeses of Qur\'an', 't', '', '3A1.482', '2022-12-18', '2022-12-18'),
(415, 'Exegeses of Individual Seerahs', 't', '', '3A1.483', '2022-12-18', '2022-12-18'),
(416, 'Exegeses of Groups of Seerahs', 't', '', '3A1.484', '2022-12-18', '2022-12-18'),
(417, 'Exegeses of Particular Single Verses of Qur\'an', 't', '', '3A1.485', '2022-12-18', '2022-12-18'),
(418, 'Exegeses of Particular Groups of Verses of Qur\'an', 't', '', '3A1.486', '2022-12-18', '2022-12-18'),
(419, 'Exegeses of Verses of Qur\'an on Particular Topics', 't', '', '3A1.487', '2022-12-18', '2022-12-18'),
(420, 'Compilers of Exegeses of Qur\'an (Mufassirin) and their Methodologies', 't', '', '3A1.49', '2022-12-18', '2022-12-18'),
(421, 'Mufassirin of Early Period of Islamic History (First Two Centuries)', 't', '', '3A1.491', '2022-12-18', '2022-12-18'),
(422, 'Mufassirin of First Middle Period of Islamic History (3rd to 5th Centuries)', 't', '', '3A1.492', '2022-12-18', '2022-12-18'),
(423, 'Mufassirin of Second Middle Period of Islamic History (6th to 8th Centuries)', 't', '', '3A1.493', '2022-12-18', '2022-12-18'),
(424, 'Mufassirin of Third Middle Period of Islamic History (9th to 10th Centuries)', 't', '', '3A1.494', '2022-12-18', '2022-12-18'),
(425, 'Mufassirin of First Later Period of Islamic History (11th to 12th Centuries)', 't', '', '3A1.495', '2022-12-18', '2022-12-18'),
(426, 'Mufassirin of Second Later Period of Islamic History (13th & First Half of 14th Centuries)', 't', '', '3A1.496', '2022-12-18', '2022-12-18'),
(427, 'Mufassirin of Contemporary Period of Islamic History (Second Half of 14th Centuries to date)', 't', '', '3A1.497', '2022-12-18', '2022-12-18'),
(428, 'Previous Prophets, their Tribes/Audiences and other Historic Characters in Qur\'an', 't', '', '3A1.5', '2022-12-18', '2022-12-18'),
(429, 'Major (Ulul Azm) Prophets', 't', '', '3A1.51', '2022-12-18', '2022-12-18'),
(430, 'Adam', 't', '', '3A1.511', '2022-12-18', '2022-12-18'),
(431, 'Nuh (Noah)', 't', '', '3A1.512', '2022-12-18', '2022-12-18'),
(432, 'Ibrahim (Abraham)', 't', '', '3A1.513', '2022-12-18', '2022-12-18'),
(433, 'Musa (Moses)', 't', '', '3A1.514', '2022-12-18', '2022-12-18'),
(434, '‘Isa (Jesus)', 't', '', '3A1.515', '2022-12-18', '2022-12-18'),
(435, 'Minor Prophets', 't', '', '3A1.52', '2022-12-18', '2022-12-18'),
(436, 'Idris', 't', '', '3A1.521', '2022-12-18', '2022-12-18'),
(437, 'Hud and his Tribe ‘Ad ', 't', '', '3A1.522', '2022-12-18', '2022-12-18'),
(438, 'Saleh and his Tribe Thamud ', 't', '', '3A1.523', '2022-12-18', '2022-12-18'),
(439, 'Shu‘aib and his Tribe Madyan', 't', '', '3A1.524', '2022-12-18', '2022-12-18'),
(440, 'Family of Ibrahim (Abraham)', 't', '', '3A1.525', '2022-12-18', '2022-12-18'),
(441, 'Isma‘il (Ishmael)', 't', '', '3A1.5251', '2022-12-18', '2022-12-18'),
(442, 'Ishaq (Isaac)', 't', '', '3A1.5252', '2022-12-18', '2022-12-18'),
(443, 'Ya‘qub (Jacob)', 't', '', '3A1.5253', '2022-12-18', '2022-12-18'),
(444, 'Yusuf (Joseph)', 't', '', '3A1.5254', '2022-12-18', '2022-12-18'),
(445, 'Zakariya', 't', '', '3A1.5255', '2022-12-18', '2022-12-18'),
(446, 'Yahya', 't', '', '3A1.5256', '2022-12-18', '2022-12-18'),
(447, 'Dawud (David)', 't', '', '3A1.5257', '2022-12-18', '2022-12-18'),
(448, 'Sulaiman', 't', '', '3A1.5258', '2022-12-18', '2022-12-18'),
(449, 'Other Prophets from the Family of Ibrahim', 't', '', '3A1.5259', '2022-12-18', '2022-12-18'),
(450, 'Other Minor Prophets', 't', '', '3A1.526', '2022-12-18', '2022-12-18'),
(451, 'Other Qur\'anic Characters', 't', '', '3A1.53', '2022-12-18', '2022-12-18'),
(452, 'Iblis (Satan) ', 't', '', '3A1.531', '2022-12-18', '2022-12-18'),
(453, 'Other Jinn', 't', '', '3A1.532', '2022-12-18', '2022-12-18'),
(454, 'Qur\'an & Science', 't', '', '3A1.6', '2022-12-18', '2022-12-18'),
(455, 'Qur\'an & Social Sciences', 't', '', '3A1.7', '2022-12-18', '2022-12-18'),
(456, 'Miscellaneous Qur\'anic Topics', 't', '', '3A1.8', '2022-12-18', '2022-12-18'),
(457, 'Qur\'anic Predictions', 't', '', '3A1.81', '2022-12-18', '2022-12-18'),
(458, 'Qur\'anic Jurisprudence (Fiqh al-Qur\'an)', 't', '', '3A1.82', '2022-12-18', '2022-12-18'),
(459, 'Qur\'anic Orders (Ahkam al-Qur\'an)', 't', '', '3A1.83', '2022-12-18', '2022-12-18'),
(460, 'Hadith', 't', '', '3A2', '2022-12-18', '2022-12-18'),
(461, 'Principles of Hadith', 't', '', '3A2.1', '2022-12-18', '2022-12-18'),
(462, 'Terminology of Hadith Science', 't', '', '3A2.11', '2022-12-18', '2022-12-18'),
(463, 'Kinds of Hadith', 't', '', '3A2.12', '2022-12-18', '2022-12-18'),
(464, 'Sahih (Authentic)', 't', '', '3A2.121', '2022-12-18', '2022-12-18'),
(465, 'Hasan (Fair)', 't', '', '3A2.122', '2022-12-18', '2022-12-18'),
(466, 'Dha‘if (Weak)', 't', '', '3A2.123', '2022-12-18', '2022-12-18'),
(467, 'Kinds by Traditiion ', 't', '', '3A2.124', '2022-12-18', '2022-12-18'),
(468, 'Munqata‘ (Broken)', 't', '', '3A2.1241', '2022-12-18', '2022-12-18'),
(469, 'Mu‘allaq (Suspended)', 't', '', '3A2.1242', '2022-12-18', '2022-12-18'),
(470, 'Maqtu‘ (Interrupted)', 't', '', '3A2.1243', '2022-12-18', '2022-12-18'),
(471, 'Mursal (Incomplete)', 't', '', '3A2.1244', '2022-12-18', '2022-12-18'),
(472, 'Mutawatir (Continuous)', 't', '', '3A2.1245', '2022-12-18', '2022-12-18'),
(473, 'Kinds by Context ', 't', '', '3A2.125', '2022-12-18', '2022-12-18'),
(474, 'Gharib (Unfamiliar)', 't', '', '3A2.1251', '2022-12-18', '2022-12-18'),
(475, 'Mushkil (Ambiguous)', 't', '', '3A2.1252', '2022-12-18', '2022-12-18'),
(476, 'Shazh (Singular)', 't', '', '3A2.1253', '2022-12-18', '2022-12-18'),
(477, 'Ahad (Isolated)', 't', '', '3A2.1254', '2022-12-18', '2022-12-18'),
(478, 'Science of Names of Persons (‘Ilm Asma’ al-Rijal)', 't', '', '3A2.13', '2022-12-18', '2022-12-18'),
(479, 'Authentication of Genuineness by Tradition (Riwayah)', 't', '', '3A2.14', '2022-12-18', '2022-12-18'),
(480, 'Authentication of Genuineness by Contextual Analysis (Dirayah)', 't', '', '3A2.15', '2022-12-18', '2022-12-18'),
(481, 'Archaic Words of Traditions', 't', '', '3A2.151', '2022-12-18', '2022-12-18'),
(482, 'Traditions Embellished by Falsehood (Talfeeq)', 't', '', '3A2.152', '2022-12-18', '2022-12-18'),
(483, 'Interpretation of Hadith (Ta’wil al Hadith)', 't', '', '3A2.16', '2022-12-18', '2022-12-18'),
(484, 'Science of Obscure Causes (Ilm ‘ilal al Hadith)', 't', '', '3A2.17', '2022-12-18', '2022-12-18'),
(485, 'Science of Differentiation (Ilm al Mukhtalaf al Hadith)', 't', '', '3A2.18', '2022-12-18', '2022-12-18'),
(486, 'Books of Hadith - Sahih (Authentic Books of Hadith)', 't', '', '3A2.2', '2022-12-18', '2022-12-18'),
(487, 'Six Authentic Books of Hadith (Sahih Sittah)', 't', '', '3A2.21', '2022-12-18', '2022-12-18'),
(488, 'Sahih Bukhari', 't', '', '3A2.211', '2022-12-18', '2022-12-18'),
(489, 'Sahih Muslim', 't', '', '3A2.212', '2022-12-18', '2022-12-18'),
(490, 'Sunan Abu Dawud', 't', '', '3A2.213', '2022-12-18', '2022-12-18'),
(491, 'Jami‘ Tirmizi', 't', '', '3A2.214', '2022-12-18', '2022-12-18'),
(492, 'Sunan Nasa’i', 't', '', '3A2.215', '2022-12-18', '2022-12-18'),
(493, 'Sunan Ibn Majah', 't', '', '3A2.216', '2022-12-18', '2022-12-18'),
(494, 'Other Books of Hadith - Sahih', 't', '', '3A2.22', '2022-12-18', '2022-12-18'),
(495, 'Mu’atta Imam Malik', 't', '', '3A2.221', '2022-12-18', '2022-12-18'),
(496, 'Sahih Abu ‘Uwanah', 't', '', '3A2.222', '2022-12-18', '2022-12-18'),
(497, 'Sahih al-Munqata‘ of Ibn al-Sakan', 't', '', '3A2.223', '2022-12-18', '2022-12-18'),
(498, 'Sahih Ibn Hibban', 't', '', '3A2.224', '2022-12-18', '2022-12-18'),
(499, 'Sahih Muhammad Ibn Ishaq', 't', '', '3A2.225', '2022-12-18', '2022-12-18'),
(500, 'Al-Munqata‘ fi Alahkam by Ibn al-Jarud', 't', '', '3A2.226', '2022-12-18', '2022-12-18'),
(501, 'Al-Munqata‘ fi Alathar by Qasim Ibn Asbagh', 't', '', '3A2.227', '2022-12-18', '2022-12-18'),
(502, 'Books of Hadith - Masanid (Books of Hadith arranged according to their Transmitters)', 't', '', '3A2.3', '2022-12-18', '2022-12-18'),
(503, 'Books of Hadith - Sunan (Books of Hadith arranged according to Companion of the Prophet)', 't', '', '3A2.4', '2022-12-18', '2022-12-18'),
(504, 'Books of Hadith - Mu‘jam (Books of Hadith arranged alphabetically by Names)', 't', '', '3A2.5', '2022-12-18', '2022-12-18'),
(505, 'Books of Hadith - Other Kinds (Including Jawami‘, Zawaid, Musannafat and MusalSalat)', 't', '', '3A2.6', '2022-12-18', '2022-12-18'),
(506, 'Special Collections of Hadith', 't', '', '3A2.7', '2022-12-18', '2022-12-18'),
(507, 'Collections of Hundred Hadith (Mi’atin)', 't', '', '3A2.71', '2022-12-18', '2022-12-18'),
(508, 'Collections of Forty Hadith (Arba‘in)', 't', '', '3A2.72', '2022-12-18', '2022-12-18'),
(509, 'Collections of Discourse Hadith (Amaliy)', 't', '', '3A2.73', '2022-12-18', '2022-12-18'),
(510, 'Collections of Unfamiliar Hadith (Mushkil al Hadith)', 't', '', '3A2.74', '2022-12-18', '2022-12-18'),
(511, 'Collections of Specific Kinds of Hadith', 't', '', '3A2.75', '2022-12-18', '2022-12-18'),
(512, 'Hadith Qudsi', 't', '', '3A2.751', '2022-12-18', '2022-12-18'),
(513, 'Hadith Mutawatir (Undoubted)', 't', '', '3A2.752', '2022-12-18', '2022-12-18'),
(514, 'Hadith Mashhur (Famous)', 't', '', '3A2.753', '2022-12-18', '2022-12-18'),
(515, 'Hadith Mu‘allal (Affected by Infirmity)', 't', '', '3A2.754', '2022-12-18', '2022-12-18'),
(516, 'Hadith Mukhtalaf (Having Some Variation)', 't', '', '3A2.755', '2022-12-18', '2022-12-18'),
(517, 'Hadith Naskh (Al-Nasikh wa Al-Mansukh: Abrogating and Abrogated)', 't', '', '3A2.756', '2022-12-18', '2022-12-18'),
(518, 'Hadith Mawdhoo‘ (Fabricated or Forged)', 't', '', '3A2.757', '2022-12-18', '2022-12-18'),
(519, 'Fiqh al-Hadith (Specific Jurisprudence Derived Specifically from Hadith)', 't', '', '3A2.758', '2022-12-18', '2022-12-18'),
(520, 'Hadith al-Ahkaam (Legal Orders derived from Hadith)', 't', '', '3A2.7581', '2022-12-18', '2022-12-18'),
(521, 'Tibb al-Nabawi (Collections of/derived from Hadith on Medicine)', 't', '', '3A2.759', '2022-12-18', '2022-12-18'),
(522, 'Other Collections of Hadith', 't', '', '3A2.8', '2022-12-18', '2022-12-18'),
(523, 'Collections of Hadith on Predictions', 't', '', '3A2.81', '2022-12-18', '2022-12-18'),
(524, 'Collections of Hadith on Trials (Fitan)', 't', '', '3A2.82', '2022-12-18', '2022-12-18'),
(525, 'Collections of Hadith on Dajjal /Anti-Christ ', 't', '', '3A2.83', '2022-12-18', '2022-12-18'),
(526, 'History of Compilation of Hadith', 't', '', '3A2.9', '2022-12-18', '2022-12-18'),
(527, 'Shiite Hadith', 't', '', '3A3', '2022-12-18', '2022-12-18'),
(528, 'Hadith of Other Sects', 't', '', '3A4', '2022-12-18', '2022-12-18'),
(529, 'Ijma‘ (Consensus of Ummah)', 't', '', '3A5', '2022-12-18', '2022-12-18'),
(530, 'Qiyas (Analogy)', 't', '', '3A6', '2022-12-18', '2022-12-18'),
(531, 'Other Sources of Islamic Knowledge', 't', '', '3A7', '2022-12-18', '2022-12-18'),
(532, 'Istihsan (Preference)', 't', '', '3A7.1', '2022-12-18', '2022-12-18'),
(533, 'Istislah (General Benefit)', 't', '', '3A7.2', '2022-12-18', '2022-12-18'),
(534, 'Istishab (Precedence)', 't', '', '3A7.3', '2022-12-18', '2022-12-18'),
(535, 'Fatwa (Judgment)', 't', '', '3A7.4', '2022-12-18', '2022-12-18'),
(536, 'T‘arudh and Tarjeeh (Clash and Preference)', 't', '', '3A7.5', '2022-12-18', '2022-12-18'),
(537, '‘Urf wa al ‘Adah (Recognized Precedence and Customs)', 't', '', '3A7.6', '2022-12-18', '2022-12-18'),
(538, 'Ijtihad and Taqlid (Personal Reasoning and Obedience to Authority)', 't', '', '3A7.7', '2022-12-18', '2022-12-18'),
(539, 'Seerah (Life of Prophet Muhammad ﷺ)', 't', '', '4A', '2022-12-18', '2022-12-18'),
(540, 'Seerah by Muslim Writers of Early Period of Islamic History (First Two Centuries)', 't', '', '4A0.91', '2022-12-18', '2022-12-18'),
(541, 'Seerah by Muslim Writers of First Middle Period of Islamic History (3rd to 5th Centuries)', 't', '', '4A0.92', '2022-12-18', '2022-12-18'),
(542, 'Seerah by Muslim Writers of Second Middle Period of Islamic History (6th to 8th Centuries)', 't', '', '4A0.93', '2022-12-18', '2022-12-18'),
(543, 'Seerah by Muslim Writers of Third Middle Period of Islamic History (9th to 10th Centuries)', 't', '', '4A0.94', '2022-12-18', '2022-12-18'),
(544, 'Seerah by Muslim Writers of First Later Period of Islamic History (11th to 12th Centuries)', 't', '', '4A0.95', '2022-12-18', '2022-12-18'),
(545, 'Second Later Period of Islamic History (13th & First Half of 14th Centuries)', 't', '', '4A0.96', '2022-12-18', '2022-12-18'),
(546, 'Seerah by Contemporary Muslim Writers (Second Half of 14th Century to date)', 't', '', '4A0.97', '2022-12-18', '2022-12-18'),
(547, 'Seerah by Non-Muslim Writers in Favor of Prophet Muhammad ﷺ', 't', '', '4A0.98', '2022-12-18', '2022-12-18'),
(548, 'Seerah by Non-Muslim Writers Against Prophet Muhammad ﷺ', 't', '', '4A0.99', '2022-12-18', '2022-12-18'),
(549, 'Prophet Muhammad ﷺ in Previous Religions and Scriptures', 't', '', '4A1', '2022-12-18', '2022-12-18'),
(550, 'Prophet Muhammad ﷺ in Jewish Religious Teachings and Scriptures', 't', '', '4A1.1', '2022-12-18', '2022-12-18'),
(551, 'Prophet Muhammad ﷺ in Christian Religious Teachings and Scriptures', 't', '', '4A1.2', '2022-12-18', '2022-12-18'),
(552, 'Prophet Muhammad ﷺ in Parsi Religious teachings and Scriptures', 't', '', '4A1.3', '2022-12-18', '2022-12-18'),
(553, 'Prophet Muhammad ﷺ in Hindu Religious teachings and Scriptures', 't', '', '4A1.4', '2022-12-18', '2022-12-18'),
(554, 'Prophet Muhammad ﷺ in Buddha Religious teachings and Scriptures', 't', '', '4A1.5', '2022-12-18', '2022-12-18'),
(555, 'Prophet Muhammad ﷺ in Sikh Religious teachings and Scriptures', 't', '', '4A1.6', '2022-12-18', '2022-12-18'),
(556, 'Prophet Muhammad ﷺ in Other Religious teachings and Scriptures', 't', '', '4A1.7', '2022-12-18', '2022-12-18'),
(557, 'The Life of Prophet Muhammad ﷺ Before Announcement of Prophethood', 't', '', '4A2', '2022-12-18', '2022-12-18'),
(558, 'Dreams of Prophet Muhammad’s ﷺ Mother, Amina relating to her Son.', 't', '', '4A2.1', '2022-12-18', '2022-12-18'),
(559, 'Birth of Prophet Muhammad ﷺ', 't', '', '4A2.2', '2022-12-18', '2022-12-18'),
(560, 'The Name of Prophet Muhammad ﷺ', 't', '', '4A2.3', '2022-12-18', '2022-12-18'),
(561, 'The Paternal Relations of Prophet Muhammad ﷺ', 't', '', '4A2.4', '2022-12-18', '2022-12-18'),
(562, 'The Patrons of Prophet Muhammad ﷺ', 't', '', '4A2.41', '2022-12-18', '2022-12-18'),
(563, 'The Maternal Relations of Prophet Muhammad ﷺ', 't', '', '4A2.5', '2022-12-18', '2022-12-18'),
(564, 'The Childhood, Youth and Maturity of Prophet Muhammad ﷺ', 't', '', '4A2.6', '2022-12-18', '2022-12-18'),
(565, 'The Marriage of Prophet Muhammad ﷺ with Khadijah', 't', '', '4A2.7', '2022-12-18', '2022-12-18'),
(566, 'General Perception and Reputation of Prophet Muhammad ﷺ', 't', '', '4A2.8', '2022-12-18', '2022-12-18'),
(567, 'Trade Travels and other Occurrences in Makkah', 't', '', '4A2.9', '2022-12-18', '2022-12-18'),
(568, 'The Life of Prophet Muhammad ﷺ After Announcement of Prophethood in Makkah', 't', '', '4A3', '2022-12-18', '2022-12-18'),
(569, 'Travels to and Spending Time in Hira Cave', 't', '', '4A3.1', '2022-12-18', '2022-12-18'),
(570, 'First Revelation (Wahy) and Announcement of Prophethood', 't', '', '4A3.2', '2022-12-18', '2022-12-18'),
(571, 'Meeting of Prophet with Waraqah Ibn Nawfal', 't', '', '4A3.21', '2022-12-18', '2022-12-18');
INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(572, 'Secret Invitation towards Islam and First Muslims', 't', '', '4A3.22', '2022-12-18', '2022-12-18'),
(573, 'Activities in Dar al-Arqam', 't', '', '4A3.23', '2022-12-18', '2022-12-18'),
(574, 'Open Invitation towards Islam and After Effects', 't', '', '4A3.3', '2022-12-18', '2022-12-18'),
(575, 'Boycott of Quraish and She‘b Abi Talib', 't', '', '4A3.31', '2022-12-18', '2022-12-18'),
(576, 'Individual Preaching Activities', 't', '', '4A3.4', '2022-12-18', '2022-12-18'),
(577, 'Collective Preaching Activities', 't', '', '4A3.5', '2022-12-18', '2022-12-18'),
(578, 'Travel to Taif', 't', '', '4A3.51', '2022-12-18', '2022-12-18'),
(579, 'Isra’ wal Mi‘raj (Travel to Aqsa Mosque and to Heavens)', 't', '', '4A3.6', '2022-12-18', '2022-12-18'),
(580, 'Bai‘ah al-Uqba', 't', '', '4A3.7', '2022-12-18', '2022-12-18'),
(581, 'Mus‘ab Ibn Umair as First Ambassador of Islam (in Madinah)', 't', '', '4A3.71', '2022-12-18', '2022-12-18'),
(582, 'Bai‘at al-Uqba- I', 't', '', '4A3.72', '2022-12-18', '2022-12-18'),
(583, 'Bai‘at al-Uqba- II', 't', '', '4A3.73', '2022-12-18', '2022-12-18'),
(584, 'Invitation to Madinah Immigration', 't', '', '4A3.74', '2022-12-18', '2022-12-18'),
(585, 'Migration to Madinah', 't', '', '4A3.8', '2022-12-18', '2022-12-18'),
(586, 'Arrangement of Handing Over the belongings of Makkah People', 't', '', '4A3.9', '2022-12-18', '2022-12-18'),
(587, 'The Life of Prophet Muhammad ﷺ in Madinah', 't', '', '4A4', '2022-12-18', '2022-12-18'),
(588, 'Reception of Prophet Muhammad ﷺ in Madinah', 't', '', '4A4.1', '2022-12-18', '2022-12-18'),
(589, 'Treaty Between Prophet Muhammad ﷺ and Jews of Madinah', 't', '', '4A4.2', '2022-12-18', '2022-12-18'),
(590, 'Prophet Muhammad ﷺ in Battlefield (Ghazwat wa Sarayah)', 't', '', '4A5', '2022-12-18', '2022-12-18'),
(591, 'Pre-Badr Battles and Expeditions', 't', '', '4A5.01', '2022-12-18', '2022-12-18'),
(592, 'Greater Badr War (Ghazwa al-Badr al-Kubra)', 't', '', '4A5.1', '2022-12-18', '2022-12-18'),
(593, 'Wars between Greater Badr and Uhud', 't', '', '4A5.11', '2022-12-18', '2022-12-18'),
(594, 'Uhud War', 't', '', '4A5.2', '2022-12-18', '2022-12-18'),
(595, 'Wars between Uhud and Ahzab', 't', '', '4A5.21', '2022-12-18', '2022-12-18'),
(596, 'Ahzab/Khandaq War', 't', '', '4A5.3', '2022-12-18', '2022-12-18'),
(597, 'Wars between Ahzab and Banu Quraiza War', 't', '', '4A5.31', '2022-12-18', '2022-12-18'),
(598, 'Banu Quraiza & Banu Mustaliq Wars', 't', '', '4A5.4', '2022-12-18', '2022-12-18'),
(599, 'Wars between Banu Quraiza and Hudaibiya Treaty', 't', '', '4A5.41', '2022-12-18', '2022-12-18'),
(600, 'Hudaibiya Treaty', 't', '', '4A5.5', '2022-12-18', '2022-12-18'),
(601, 'Bai‘t Ridhwan ', 't', '', '4A5.51', '2022-12-18', '2022-12-18'),
(602, 'Makkah Conquest', 't', '', '4A5.6', '2022-12-18', '2022-12-18'),
(603, 'Wars between Hudaibiya Treaty & Hunayn War', 't', '', '4A5.61', '2022-12-18', '2022-12-18'),
(604, 'Hunayn War', 't', '', '4A5.7', '2022-12-18', '2022-12-18'),
(605, 'Tabuk War', 't', '', '4A5.8', '2022-12-18', '2022-12-18'),
(606, 'Other Wars', 't', '', '4A5.9', '2022-12-18', '2022-12-18'),
(607, 'Personality & Family Life and Later Occurrences of Prophet Muhammad ﷺ', 't', '', '4A6', '2022-12-18', '2022-12-18'),
(608, 'Personal Appearance', 't', '', '4A6.1', '2022-12-18', '2022-12-18'),
(609, 'Personal Qualities, Virtues and Properties', 't', '', '4A6.2', '2022-12-18', '2022-12-18'),
(610, 'Moral Values', 't', '', '4A6.4', '2022-12-18', '2022-12-18'),
(611, 'Family Life', 't', '', '4A6.5', '2022-12-18', '2022-12-18'),
(612, 'Marriages', 't', '', '4A6.51', '2022-12-18', '2022-12-18'),
(613, 'Polygamy', 't', '', '4A6.52', '2022-12-18', '2022-12-18'),
(614, 'Islamic Point of View on Polygamy of Prophet Muhammad ﷺ', 't', '', '4A6.521', '2022-12-18', '2022-12-18'),
(615, 'In opposition to Polygamy of Prophet Muhammad ﷺ', 't', '', '4A6.522', '2022-12-18', '2022-12-18'),
(616, 'With his Wives (Azwaj Mutahharat)', 't', '', '4A6.53', '2022-12-18', '2022-12-18'),
(617, 'With his Children', 't', '', '4A6.54', '2022-12-18', '2022-12-18'),
(618, 'With his in-Laws', 't', '', '4A6.55', '2022-12-18', '2022-12-18'),
(619, 'Hijja al-Wida‘', 't', '', '4A6.6', '2022-12-18', '2022-12-18'),
(620, 'Sermons, Letters and Missions', 't', '', '4A6.7', '2022-12-18', '2022-12-18'),
(621, 'Sermons/Addresses', 't', '', '4A6.71', '2022-12-18', '2022-12-18'),
(622, 'Sermon of Hijja al-Wida‘ ', 't', '', '4A6.711', '2022-12-18', '2022-12-18'),
(623, 'Letters to Heads of States', 't', '', '4A6.72', '2022-12-18', '2022-12-18'),
(624, 'Missions', 't', '', '4A6.73', '2022-12-18', '2022-12-18'),
(625, 'Missions/Delegations Sent by Prophet ﷺ', 't', '', '4A6.731', '2022-12-18', '2022-12-18'),
(626, 'Missions/Delegations Came to Prophet ﷺ', 't', '', '4A6.732', '2022-12-18', '2022-12-18'),
(627, 'Last Illness, Death and Funeral', 't', '', '4A6.8', '2022-12-18', '2022-12-18'),
(628, 'Other Occurrences', 't', '', '4A6.9', '2022-12-18', '2022-12-18'),
(629, 'Family of Prophet Muhammad ﷺ', 't', '', '4A7', '2022-12-18', '2022-12-18'),
(630, 'Wives (Azwaj Mutahharat)/Ummahat al-Mu’minin (Mothers of Muslims)', 't', '', '4A7.1', '2022-12-18', '2022-12-18'),
(631, 'Khadijah bint Khuwaylid', 't', '', '4A7.11', '2022-12-18', '2022-12-18'),
(632, 'Sawdah Bint Zam‘ah', 't', '', '4A7.12', '2022-12-18', '2022-12-18'),
(633, 'Aisha Bint Abu Bakr', 't', '', '4A7.13', '2022-12-18', '2022-12-18'),
(634, 'Umm Salama', 't', '', '4A7.14', '2022-12-18', '2022-12-18'),
(635, 'Zaynab Bint Jahsh', 't', '', '4A7.15', '2022-12-18', '2022-12-18'),
(636, 'Hafsa Bint Umar', 't', '', '4A7.16', '2022-12-18', '2022-12-18'),
(637, 'Safiyyah Bint Huyayy', 't', '', '4A7.17', '2022-12-18', '2022-12-18'),
(638, 'Umm Habiba', 't', '', '4A7.18', '2022-12-18', '2022-12-18'),
(639, 'Maria Qibtiyah', 't', '', '4A7.19', '2022-12-18', '2022-12-18'),
(640, 'Children of Prophet Muhammad ﷺ', 't', '', '4A7.2', '2022-12-18', '2022-12-18'),
(641, 'Zainab Bint Muhammad ﷺ', 't', '', '4A7.21', '2022-12-18', '2022-12-18'),
(642, 'Umm Kulthoom Bint Muhammad ﷺ', 't', '', '4A7.22', '2022-12-18', '2022-12-18'),
(643, 'Ruqayyah Bint Muhammad ﷺ', 't', '', '4A7.23', '2022-12-18', '2022-12-18'),
(644, 'Qasim Ibn Muhammad ﷺ', 't', '', '4A7.25', '2022-12-18', '2022-12-18'),
(645, 'Ibrahim Ibn Muhammad ﷺ', 't', '', '4A7.26', '2022-12-18', '2022-12-18'),
(646, 'Abdullah Ibn Muhammad ﷺ', 't', '', '4A7.27', '2022-12-18', '2022-12-18'),
(647, 'Ahl Bayt (Family) of Prophet Muhammad ﷺ', 't', '', '4A7.3', '2022-12-18', '2022-12-18'),
(648, 'Ali Ibn Abi Talib', 't', '', '4A7.31', '2022-12-18', '2022-12-18'),
(649, 'Hasan Ibn Ali', 't', '', '4A7.32', '2022-12-18', '2022-12-18'),
(650, 'Hussain Ibn Ali', 't', '', '4A7.33', '2022-12-18', '2022-12-18'),
(651, 'Ali Ibn Hussain', 't', '', '4A7.331', '2022-12-18', '2022-12-18'),
(652, 'Muhammad Ibn Ali al-Baqir', 't', '', '4A7.332', '2022-12-18', '2022-12-18'),
(653, 'Ja‘far Ibn Muhammad al-Sadiq', 't', '', '4A7.34', '2022-12-18', '2022-12-18'),
(654, 'Musa Ibn Ja‘far al-Kazim', 't', '', '4A7.341', '2022-12-18', '2022-12-18'),
(655, 'Ali Ibn Musa al-Ridhaa', 't', '', '4A7.342', '2022-12-18', '2022-12-18'),
(656, 'Muhammad Ibn Ali al-Taqi', 't', '', '4A7.343', '2022-12-18', '2022-12-18'),
(657, 'Ali Ibn Muhammad al-Naqi', 't', '', '4A7.344', '2022-12-18', '2022-12-18'),
(658, 'Hasan Ibn Ali al-‘Askari', 't', '', '4A7.345', '2022-12-18', '2022-12-18'),
(659, 'Muhammad Ibn al- Hasan', 't', '', '4A7.346', '2022-12-18', '2022-12-18'),
(660, 'Hujjah (the Authority)', 't', '', '4A7.3471', '2022-12-18', '2022-12-18'),
(661, 'Muntazar (the Awaited/Expected)', 't', '', '4A7.3472', '2022-12-18', '2022-12-18'),
(662, 'Mahdiy', 't', '', '4A7.3473', '2022-12-18', '2022-12-18'),
(663, 'Fatimah Bint Prophet Muhammad ﷺ', 't', '', '4A7.35', '2022-12-18', '2022-12-18'),
(664, 'Fourteen Infallibles', 't', '', '4A7.351', '2022-12-18', '2022-12-18'),
(665, 'Zainab Bint Ali', 't', '', '4A7.352', '2022-12-18', '2022-12-18'),
(666, 'Sukainah Bint Hussain', 't', '', '4A7.353', '2022-12-18', '2022-12-18'),
(667, 'Martyrs of Karbala', 't', '', '4A7.36', '2022-12-18', '2022-12-18'),
(668, 'Seerah of Companions of Prophet Muhammad ﷺ', 't', '', '4A8', '2022-12-18', '2022-12-18'),
(669, 'Abu Bakr', 't', '', '4A8.1', '2022-12-18', '2022-12-18'),
(670, 'Umar', 't', '', '4A8.2', '2022-12-18', '2022-12-18'),
(671, '‘Uthman', 't', '', '4A8.3', '2022-12-18', '2022-12-18'),
(672, 'Ali', 't', '', '4A8.4', '2022-12-18', '2022-12-18'),
(673, '‘Ashrah Mubasharah (Ten Promised Paradise)', 't', '', '4A8.5', '2022-12-18', '2022-12-18'),
(674, 'Talha Ibn ‘Ubaidullah', 't', '', '4A8.51', '2022-12-18', '2022-12-18'),
(675, 'Zubair Ibn al-‘Awwam', 't', '', '4A8.52', '2022-12-18', '2022-12-18'),
(676, '‘Abd al-Rahmaan Ibn ‘awf', 't', '', '4A8.53', '2022-12-18', '2022-12-18'),
(677, 'S‘ad Ibn Abi Waqas', 't', '', '4A8.54', '2022-12-18', '2022-12-18'),
(678, 'S‘aid Ibn Zayd', 't', '', '4A8.55', '2022-12-18', '2022-12-18'),
(679, '‘Ubaidah Ibn al-Jarrah', 't', '', '4A8.56', '2022-12-18', '2022-12-18'),
(680, 'Other Companions', 't', '', '4A8.6', '2022-12-18', '2022-12-18'),
(681, 'Muhajirin', 't', '', '4A8.61', '2022-12-18', '2022-12-18'),
(682, 'Ansar', 't', '', '4A8.66', '2022-12-18', '2022-12-18'),
(683, 'Sahabiyat', 't', '', '4A8.7', '2022-12-18', '2022-12-18'),
(684, 'Tabi‘in & Tabi‘ Tabi‘in', 't', '', '4A9', '2022-12-18', '2022-12-18'),
(685, 'Tabi‘in ', 't', '', '4A9.1', '2022-12-18', '2022-12-18'),
(686, 'Tabi‘ Tabi‘in', 't', '', '4A9.2', '2022-12-18', '2022-12-18'),
(687, 'Zainab Bint Khuzaymah', 't', '', '4B7.11', '2022-12-18', '2022-12-18'),
(688, 'Maymoonah Bint Harith', 't', '', '4B7.12', '2022-12-18', '2022-12-18'),
(689, 'Juwayriyah Bint Harith', 't', '', '4B7.13', '2022-12-18', '2022-12-18'),
(690, 'Islamic Jurisprudence (Fiqh), Islamic Law & Social Sciences', 't', '', '5A', '2022-12-18', '2022-12-18'),
(691, 'Principles of Islamic Jurisprudence (Usul al-Fiqh al-Islami)', 't', '', '5A1', '2022-12-18', '2022-12-18'),
(692, 'Primary Sources of Islamic Jurisprudence', 't', '', '5A1.1', '2022-12-18', '2022-12-18'),
(693, 'Kitab (Qur\'an)', 't', '', '5A1.11', '2022-12-18', '2022-12-18'),
(694, 'Sunnah (Words, Actions of and Allowances by Prophet)', 't', '', '5A1.12', '2022-12-18', '2022-12-18'),
(695, 'Fiqh - Ijma‘ (Consensus of Ummah)', 't', '', '5A1.13', '2022-12-18', '2022-12-18'),
(696, 'Fiqh - Qiyas (Analogy)', 't', '', '5A1.14', '2022-12-18', '2022-12-18'),
(697, 'Secondary Sources of Islamic Jurisprudence', 't', '', '5A1.2', '2022-12-18', '2022-12-18'),
(698, 'Fiqh - Istihsan (Preference)', 't', '', '5A1.21', '2022-12-18', '2022-12-18'),
(699, 'Fiqh - Istislah (General Benefit)', 't', '', '5A1.22', '2022-12-18', '2022-12-18'),
(700, 'Fiqh - Istishab (Precedence)', 't', '', '5A1.23', '2022-12-18', '2022-12-18'),
(701, 'Fiqh - Fatwa (Judgment)', 't', '', '5A1.24', '2022-12-18', '2022-12-18'),
(702, 'T‘arudh and Tarjih (Clash and Preference)', 't', '', '5A1.25', '2022-12-18', '2022-12-18'),
(703, '‘Urf wal ‘Adah (Recognized Precedence and Customs)', 't', '', '5A1.26', '2022-12-18', '2022-12-18'),
(704, 'Fiqh - Ijtihad and Taqlid (Personal Reasoning and Obedience to Authority)', 't', '', '5A1.27', '2022-12-18', '2022-12-18'),
(705, 'Other Sources', 't', '', '5A1.28', '2022-12-18', '2022-12-18'),
(706, 'Comparative Principles of Islamic Jurisprudence', 't', '', '5A1.3', '2022-12-18', '2022-12-18'),
(707, 'Composite Life Affairs (Mu‘amalat)', 't', '', '5A2', '2022-12-18', '2022-12-18'),
(708, 'Schools of Islamic Jurisprudence', 't', '', '5A2.1', '2022-12-18', '2022-12-18'),
(709, 'Fiqh Hanafi', 't', '', '5A2.121', '2022-12-18', '2022-12-18'),
(710, 'Fiqh Shafi‘i', 't', '', '5A2.122', '2022-12-18', '2022-12-18'),
(711, 'Fiqh Maliki', 't', '', '5A2.123', '2022-12-18', '2022-12-18'),
(712, 'Fiqh Hanbali', 't', '', '5A2.124', '2022-12-18', '2022-12-18'),
(713, 'Fiqh Ja‘fari', 't', '', '5A2.125', '2022-12-18', '2022-12-18'),
(714, 'Fiqh Salafiya', 't', '', '5A2.126', '2022-12-18', '2022-12-18'),
(715, 'Fiqh Ibn Taimiyah', 't', '', '5A2.127', '2022-12-18', '2022-12-18'),
(716, 'Other Fiqh', 't', '', '5A2.129', '2022-12-18', '2022-12-18'),
(717, 'Persons, Domestic and Family Law', 't', '', '5A2.2', '2022-12-18', '2022-12-18'),
(718, 'Persons', 't', '', '5A2.21', '2022-12-18', '2022-12-18'),
(719, 'Status', 't', '', '5A2.211', '2022-12-18', '2022-12-18'),
(720, 'Absence and presumption of death', 't', '', '5A2.2111', '2022-12-18', '2022-12-18'),
(721, 'Missing persons', 't', '', '5A2.2112', '2022-12-18', '2022-12-18'),
(722, 'Capacity and Disability', 't', '', '5A2.2113', '2022-12-18', '2022-12-18'),
(723, 'Special Groups of Persons', 't', '', '5A2.212', '2022-12-18', '2022-12-18'),
(724, 'Aliens', 't', '', '5A2.2121', '2022-12-18', '2022-12-18'),
(725, 'Minors', 't', '', '5A2.2122', '2022-12-18', '2022-12-18'),
(726, 'Unborn Children', 't', '', '5A2.2123', '2022-12-18', '2022-12-18'),
(727, 'Other Special Groups of Persons', 't', '', '5A2.2124', '2022-12-18', '2022-12-18'),
(728, 'Juristic Persons', 't', '', '5A2.21241', '2022-12-18', '2022-12-18'),
(729, 'Women', 't', '', '5A2.213', '2022-12-18', '2022-12-18'),
(730, 'Women before Islam', 't', '', '5A2.2131', '2022-12-18', '2022-12-18'),
(731, 'Women in Islam', 't', '', '5A2.2132', '2022-12-18', '2022-12-18'),
(732, 'Status of Women in Islam', 't', '', '5A2.2133', '2022-12-18', '2022-12-18'),
(733, 'Freedom of Women Will in Islam', 't', '', '5A2.2134', '2022-12-18', '2022-12-18'),
(734, 'Veil for Women in Islam', 't', '', '5A2.2135', '2022-12-18', '2022-12-18'),
(735, 'Professional Life of Women in Islam including Armed Services', 't', '', '5A2.2136', '2022-12-18', '2022-12-18'),
(736, 'Education for Women in Islam', 't', '', '5A2.2137', '2022-12-18', '2022-12-18'),
(737, 'Other Topics of Women in Islam', 't', '', '5A2.2138', '2022-12-18', '2022-12-18'),
(738, 'Children', 't', '', '5A2.214', '2022-12-18', '2022-12-18'),
(739, 'Domestic and Family Law', 't', '', '5A2.22', '2022-12-18', '2022-12-18'),
(740, 'Premarital Affairs and Ceremonies', 't', '', '5A2.221', '2022-12-18', '2022-12-18'),
(741, 'Marriage', 't', '', '5A2.222', '2022-12-18', '2022-12-18'),
(742, 'Use of Modern Technologies and Social Media in Marriage', 't', '', '5A2.22201', '2022-12-18', '2022-12-18'),
(743, 'Marriage Documentation', 't', '', '5A2.22202', '2022-12-18', '2022-12-18'),
(744, 'Tajarrud in Islam', 't', '', '5A2.22203', '2022-12-18', '2022-12-18'),
(745, 'Shighar Marriage', 't', '', '5A2.2221', '2022-12-18', '2022-12-18'),
(746, 'Sadiqah Marriage', 't', '', '5A2.2222', '2022-12-18', '2022-12-18'),
(747, 'Marriage by Capture', 't', '', '5A2.2223', '2022-12-18', '2022-12-18'),
(748, 'Marriage by Contract', 't', '', '5A2.2224', '2022-12-18', '2022-12-18'),
(749, 'Interfaith Marriages', 't', '', '5A2.2225', '2022-12-18', '2022-12-18'),
(750, 'Polygamy and Monogamy', 't', '', '5A2.2226', '2022-12-18', '2022-12-18'),
(751, 'Mut‘ah, Misyar and other temporary arrangements', 't', '', '5A2.2227', '2022-12-18', '2022-12-18'),
(752, 'Folklore and Customs Related to Marriage', 't', '', '5A2.2228', '2022-12-18', '2022-12-18'),
(753, 'Husband and wife', 't', '', '5A2.223', '2022-12-18', '2022-12-18'),
(754, 'Married woman', 't', '', '5A2.2231', '2022-12-18', '2022-12-18'),
(755, 'Dowry', 't', '', '5A2.22311', '2022-12-18', '2022-12-18'),
(756, 'Parenting', 't', '', '5A2.2232', '2022-12-18', '2022-12-18'),
(757, 'Legitimate and Illegitimate Coupling', 't', '', '5A2.22321', '2022-12-18', '2022-12-18'),
(758, 'Human Fertilization', 't', '', '5A2.22322', '2022-12-18', '2022-12-18'),
(759, 'Artificial Insemination', 't', '', '5A2.22323', '2022-12-18', '2022-12-18'),
(760, 'Birth Control', 't', '', '5A2.22324', '2022-12-18', '2022-12-18'),
(761, 'Adoption', 't', '', '5A2.22325', '2022-12-18', '2022-12-18'),
(762, 'Guardianship', 't', '', '5A2.22326', '2022-12-18', '2022-12-18'),
(763, 'Divorce', 't', '', '5A2.2233', '2022-12-18', '2022-12-18'),
(764, 'Talaq al-Raj‘iy', 't', '', '5A2.22331', '2022-12-18', '2022-12-18'),
(765, 'Talaq al-Ba’in', 't', '', '5A2.22332', '2022-12-18', '2022-12-18'),
(766, 'Reconciliation', 't', '', '5A2.22333', '2022-12-18', '2022-12-18'),
(767, 'Halalah', 't', '', '5A2.22334', '2022-12-18', '2022-12-18'),
(768, 'Khula‘', 't', '', '5A2.22335', '2022-12-18', '2022-12-18'),
(769, 'Separation', 't', '', '5A2.22336', '2022-12-18', '2022-12-18'),
(770, 'Mutual Release', 't', '', '5A2.223361', '2022-12-18', '2022-12-18'),
(771, '‘Ila’', 't', '', '5A2.223362', '2022-12-18', '2022-12-18'),
(772, 'Zihar', 't', '', '5A2.223363', '2022-12-18', '2022-12-18'),
(773, 'Li‘an', 't', '', '5A2.223364', '2022-12-18', '2022-12-18'),
(774, 'Faskh', 't', '', '5A2.223365', '2022-12-18', '2022-12-18'),
(775, '‘Iddah', 't', '', '5A2.223366', '2022-12-18', '2022-12-18'),
(776, 'Support of Divorced Woman', 't', '', '5A2.22337', '2022-12-18', '2022-12-18'),
(777, 'Children’s Responsibility in case of Separation', 't', '', '5A2.22338', '2022-12-18', '2022-12-18'),
(778, 'Delegation of Rights of Divorce', 't', '', '5A2.22339', '2022-12-18', '2022-12-18'),
(779, 'Law of Inheritance', 't', '', '5A2.23', '2022-12-18', '2022-12-18'),
(780, 'Legal Rights of Inheritance', 't', '', '5A2.231', '2022-12-18', '2022-12-18'),
(781, 'Consanguinity (Nasb)', 't', '', '5A2.2311', '2022-12-18', '2022-12-18'),
(782, 'Affinity (Sabab)', 't', '', '5A2.2312', '2022-12-18', '2022-12-18'),
(783, 'Patronage (Wali’)', 't', '', '5A2.2313', '2022-12-18', '2022-12-18'),
(784, 'Impediments of Inheritance', 't', '', '5A2.232', '2022-12-18', '2022-12-18'),
(785, 'Impediments due to Slavery', 't', '', '5A2.2321', '2022-12-18', '2022-12-18'),
(786, 'Impediments due to Homicide', 't', '', '5A2.2322', '2022-12-18', '2022-12-18'),
(787, 'Impediments due to Infidelity', 't', '', '5A2.2323', '2022-12-18', '2022-12-18'),
(788, 'Impediments due to other Reasons', 't', '', '5A2.2324', '2022-12-18', '2022-12-18'),
(789, 'Exclusions from Inheritance', 't', '', '5A2.233', '2022-12-18', '2022-12-18'),
(790, 'Computation of Inheritance Combinations and Shares', 't', '', '5A2.234', '2022-12-18', '2022-12-18'),
(791, '’Aul', 't', '', '5A2.2341', '2022-12-18', '2022-12-18'),
(792, 'Radd', 't', '', '5A2.2342', '2022-12-18', '2022-12-18'),
(793, 'Appendages of Succession', 't', '', '5A2.235', '2022-12-18', '2022-12-18'),
(794, 'Child of Mula‘nah (Separated by Li‘an)', 't', '', '5A2.2351', '2022-12-18', '2022-12-18'),
(795, 'Illegitimate Child (Walad al-Zina)', 't', '', '5A2.2352', '2022-12-18', '2022-12-18'),
(796, 'Child Embryo in the Womb', 't', '', '5A2.2353', '2022-12-18', '2022-12-18'),
(797, 'The Lost and Missing Persons', 't', '', '5A2.2354', '2022-12-18', '2022-12-18'),
(798, 'Others', 't', '', '5A2.2355', '2022-12-18', '2022-12-18'),
(799, 'Classification of Heirs', 't', '', '5A2.236', '2022-12-18', '2022-12-18'),
(800, 'Wills', 't', '', '5A2.237', '2022-12-18', '2022-12-18'),
(801, 'Testamentary Bequests', 't', '', '5A2.238', '2022-12-18', '2022-12-18'),
(802, 'Properties and Commercial Law', 't', '', '5A2.3', '2022-12-18', '2022-12-18'),
(803, 'Property, Real Property, Personal Property', 't', '', '5A2.31', '2022-12-18', '2022-12-18'),
(804, 'Right of Property', 't', '', '5A2.311', '2022-12-18', '2022-12-18'),
(805, 'Restraints and Alienations', 't', '', '5A2.3111', '2022-12-18', '2022-12-18'),
(806, 'Interdiction', 't', '', '5A2.3112', '2022-12-18', '2022-12-18'),
(807, 'Possession', 't', '', '5A2.312', '2022-12-18', '2022-12-18'),
(808, 'Special kinds of Property', 't', '', '5A2.313', '2022-12-18', '2022-12-18'),
(809, 'Alien Property', 't', '', '5A2.3131', '2022-12-18', '2022-12-18'),
(810, 'Personal Property', 't', '', '5A2.3132', '2022-12-18', '2022-12-18'),
(811, 'Real Property, Land Tenure', 't', '', '5A2.314', '2022-12-18', '2022-12-18'),
(812, 'Ownership and Possession', 't', '', '5A2.3141', '2022-12-18', '2022-12-18'),
(813, 'Horizontal Property Housing Condominium', 't', '', '5A2.31411', '2022-12-18', '2022-12-18'),
(814, 'Acquisition of Property', 't', '', '5A2.3142', '2022-12-18', '2022-12-18'),
(815, 'Prescription', 't', '', '5A2.31421', '2022-12-18', '2022-12-18'),
(816, 'Partition', 't', '', '5A2.31422', '2022-12-18', '2022-12-18'),
(817, 'Dower', 't', '', '5A2.31423', '2022-12-18', '2022-12-18'),
(818, 'Vendors and Purchasers', 't', '', '5A2.31424', '2022-12-18', '2022-12-18'),
(819, 'Forcible Entry and Detainer', 't', '', '5A2.31425', '2022-12-18', '2022-12-18'),
(820, 'Eviction', 't', '', '5A2.31426', '2022-12-18', '2022-12-18'),
(821, 'Landlord and Tenant', 't', '', '5A2.31427', '2022-12-18', '2022-12-18'),
(822, 'Rent', 't', '', '5A2.314271', '2022-12-18', '2022-12-18'),
(823, 'Mortgages', 't', '', '5A2.31428', '2022-12-18', '2022-12-18'),
(824, 'Pre-emption', 't', '', '5A2.31429', '2022-12-18', '2022-12-18'),
(825, 'Waqf (Land)', 't', '', '5A2.314291', '2022-12-18', '2022-12-18'),
(826, 'Commercial Law', 't', '', '5A2.32', '2022-12-18', '2022-12-18'),
(827, 'Commerce Contracts', 't', '', '5A2.321', '2022-12-18', '2022-12-18'),
(828, 'Negotiable Instruments', 't', '', '5A2.3211', '2022-12-18', '2022-12-18'),
(829, 'Banking', 't', '', '5A2.322', '2022-12-18', '2022-12-18'),
(830, 'Bank Deposit', 't', '', '5A2.3221', '2022-12-18', '2022-12-18'),
(831, 'Money', 't', '', '5A2.3222', '2022-12-18', '2022-12-18'),
(832, 'Loans', 't', '', '5A2.323', '2022-12-18', '2022-12-18'),
(833, 'Debtor and Creditor', 't', '', '5A2.324', '2022-12-18', '2022-12-18'),
(834, 'Interest', 't', '', '5A2.325', '2022-12-18', '2022-12-18'),
(835, 'Surety and Guaranty', 't', '', '5A2.326', '2022-12-18', '2022-12-18'),
(836, 'Sales, Condition Sales, Murabahah', 't', '', '5A2.327', '2022-12-18', '2022-12-18'),
(837, 'Leases', 't', '', '5A2.328', '2022-12-18', '2022-12-18'),
(838, 'Pledges', 't', '', '5A2.329', '2022-12-18', '2022-12-18'),
(839, 'Investments', 't', '', '5A2.33', '2022-12-18', '2022-12-18'),
(840, 'Maritime law', 't', '', '5A2.34', '2022-12-18', '2022-12-18'),
(841, 'Rift law', 't', '', '5A2.341', '2022-12-18', '2022-12-18'),
(842, 'Insurance Marine', 't', '', '5A2.342', '2022-12-18', '2022-12-18'),
(843, 'Insurance Law', 't', '', '5A2.35', '2022-12-18', '2022-12-18'),
(844, 'Insurance Policies', 't', '', '5A2.351', '2022-12-18', '2022-12-18'),
(845, 'Indemnity Against Liability', 't', '', '5A2.352', '2022-12-18', '2022-12-18'),
(846, 'Risk', 't', '', '5A2.353', '2022-12-18', '2022-12-18'),
(847, 'Company Law', 't', '', '5A2.36', '2022-12-18', '2022-12-18'),
(848, 'Partnership', 't', '', '5A2.361', '2022-12-18', '2022-12-18'),
(849, 'Limited Partnership', 't', '', '5A2.3611', '2022-12-18', '2022-12-18'),
(850, 'Mudharabah', 't', '', '5A2.3612', '2022-12-18', '2022-12-18'),
(851, 'Brokers', 't', '', '5A2.3613', '2022-12-18', '2022-12-18'),
(852, 'Corporation Law', 't', '', '5A2.362', '2022-12-18', '2022-12-18'),
(853, 'Finance', 't', '', '5A2.3621', '2022-12-18', '2022-12-18'),
(854, 'Special types of Corporations', 't', '', '5A2.363', '2022-12-18', '2022-12-18'),
(855, 'Stock Companies', 't', '', '5A2.3631', '2022-12-18', '2022-12-18'),
(856, 'Bankruptcy', 't', '', '5A2.364', '2022-12-18', '2022-12-18'),
(857, 'Fraudulent Conveyances', 't', '', '5A2.3641', '2022-12-18', '2022-12-18'),
(858, 'Intellectual Property', 't', '', '5A2.37', '2022-12-18', '2022-12-18'),
(859, 'Authors and Publishers', 't', '', '5A2.371', '2022-12-18', '2022-12-18'),
(860, 'Contract Law', 't', '', '5A2.38', '2022-12-18', '2022-12-18'),
(861, 'Formation of Contract, including Khiyar', 't', '', '5A2.381', '2022-12-18', '2022-12-18'),
(862, 'Contractual Penalties', 't', '', '5A2.3811', '2022-12-18', '2022-12-18'),
(863, 'Parties to Contract', 't', '', '5A2.382', '2022-12-18', '2022-12-18'),
(864, 'Third Parties', 't', '', '5A2.3821', '2022-12-18', '2022-12-18'),
(865, 'Impossibility of Performance', 't', '', '5A2.3822', '2022-12-18', '2022-12-18'),
(866, 'Mistake', 't', '', '5A2.38221', '2022-12-18', '2022-12-18'),
(867, 'Dolus', 't', '', '5A2.38222', '2022-12-18', '2022-12-18'),
(868, 'Payment', 't', '', '5A2.38223', '2022-12-18', '2022-12-18'),
(869, 'Breach of Contract', 't', '', '5A2.38224', '2022-12-18', '2022-12-18'),
(870, 'Discharge of Contracts (Faskh)', 't', '', '5A2.383', '2022-12-18', '2022-12-18'),
(871, 'Remedies', 't', '', '5A2.384', '2022-12-18', '2022-12-18'),
(872, 'Special types of Contract', 't', '', '5A2.385', '2022-12-18', '2022-12-18'),
(873, 'Perpetual Income Contracts', 't', '', '5A2.3851', '2022-12-18', '2022-12-18'),
(874, 'Contracts for Work and Labor', 't', '', '5A2.3852', '2022-12-18', '2022-12-18'),
(875, 'Barter', 't', '', '5A2.3853', '2022-12-18', '2022-12-18'),
(876, 'Sales', 't', '', '5A2.3854', '2022-12-18', '2022-12-18'),
(877, 'Aleatory Contracts', 't', '', '5A2.386', '2022-12-18', '2022-12-18'),
(878, 'Speculation', 't', '', '5A2.3861', '2022-12-18', '2022-12-18'),
(879, 'Unjust Enrichment', 't', '', '5A2.3862', '2022-12-18', '2022-12-18'),
(880, 'Restitution', 't', '', '5A2.3863', '2022-12-18', '2022-12-18'),
(881, 'Torts', 't', '', '5A2.39', '2022-12-18', '2022-12-18'),
(882, 'Special Torts', 't', '', '5A2.391', '2022-12-18', '2022-12-18'),
(883, 'Libel and Slander', 't', '', '5A2.3911', '2022-12-18', '2022-12-18'),
(884, 'Negligence', 't', '', '5A2.392', '2022-12-18', '2022-12-18'),
(885, 'Proximate Cause', 't', '', '5A2.3921', '2022-12-18', '2022-12-18'),
(886, 'Strict Liability', 't', '', '5A2.393', '2022-12-18', '2022-12-18'),
(887, 'Liability for Animals', 't', '', '5A2.3931', '2022-12-18', '2022-12-18'),
(888, 'Product Liability', 't', '', '5A2.3932', '2022-12-18', '2022-12-18'),
(889, 'Reparation', 't', '', '5A2.394', '2022-12-18', '2022-12-18'),
(890, 'Constitutional Law', 't', '', '5A2.4', '2022-12-18', '2022-12-18'),
(891, 'Retroactive Law', 't', '', '5A2.41', '2022-12-18', '2022-12-18'),
(892, 'Separation of Powers', 't', '', '5A2.42', '2022-12-18', '2022-12-18'),
(893, 'Public Policy/Public Law', 't', '', '5A2.43', '2022-12-18', '2022-12-18'),
(894, 'Organs of the Government', 't', '', '5A2.44', '2022-12-18', '2022-12-18'),
(895, 'Referendum', 't', '', '5A2.441', '2022-12-18', '2022-12-18'),
(896, 'Recall', 't', '', '5A2.442', '2022-12-18', '2022-12-18'),
(897, 'Judicial Power', 't', '', '5A2.443', '2022-12-18', '2022-12-18'),
(898, 'Executive Power', 't', '', '5A2.444', '2022-12-18', '2022-12-18'),
(899, 'Special Constitutional Guarantees', 't', '', '5A2.45', '2022-12-18', '2022-12-18'),
(900, 'Civil Rights', 't', '', '5A2.451', '2022-12-18', '2022-12-18'),
(901, 'Nationality and Citizenship', 't', '', '5A2.4511', '2022-12-18', '2022-12-18'),
(902, 'Right of Privacy', 't', '', '5A2.452', '2022-12-18', '2022-12-18'),
(903, 'Right of Life', 't', '', '5A2.453', '2022-12-18', '2022-12-18'),
(904, 'Liberty of Contract', 't', '', '5A2.454', '2022-12-18', '2022-12-18'),
(905, 'Liberty of Religion', 't', '', '5A2.455', '2022-12-18', '2022-12-18'),
(906, 'Particular Groups', 't', '', '5A2.456', '2022-12-18', '2022-12-18'),
(907, 'Minorities', 't', '', '5A2.4561', '2022-12-18', '2022-12-18'),
(908, 'Political Refugees', 't', '', '5A2.4562', '2022-12-18', '2022-12-18'),
(909, 'Election Law', 't', '', '5A2.46', '2022-12-18', '2022-12-18'),
(910, 'Poll Tax', 't', '', '5A2.461', '2022-12-18', '2022-12-18'),
(911, 'Judiciary', 't', '', '5A2.5', '2022-12-18', '2022-12-18'),
(912, 'Court Organization', 't', '', '5A2.51', '2022-12-18', '2022-12-18'),
(913, 'Juridical Process', 't', '', '5A2.511', '2022-12-18', '2022-12-18'),
(914, 'Civil Procedure', 't', '', '5A2.52', '2022-12-18', '2022-12-18'),
(915, 'Evidence', 't', '', '5A2.521', '2022-12-18', '2022-12-18'),
(916, 'Documentary Evidence', 't', '', '5A2.5211', '2022-12-18', '2022-12-18'),
(917, 'Legal Instruments', 't', '', '5A2.5212', '2022-12-18', '2022-12-18'),
(918, 'Silence', 't', '', '5A2.5213', '2022-12-18', '2022-12-18'),
(919, 'Advisory Opinions', 't', '', '5A2.53', '2022-12-18', '2022-12-18'),
(920, 'Judicial Opinions', 't', '', '5A2.531', '2022-12-18', '2022-12-18'),
(921, 'Actions and Defenses', 't', '', '5A2.54', '2022-12-18', '2022-12-18'),
(922, 'Notaries', 't', '', '5A2.55', '2022-12-18', '2022-12-18'),
(923, 'Medical Jurisprudence', 't', '', '5A2.56', '2022-12-18', '2022-12-18'),
(924, 'Executions', 't', '', '5A2.57', '2022-12-18', '2022-12-18'),
(925, 'Compromise', 't', '', '5A2.58', '2022-12-18', '2022-12-18'),
(926, 'Arbitration and Award', 't', '', '5A2.581', '2022-12-18', '2022-12-18'),
(927, 'Attachment and Famishment', 't', '', '5A2.582', '2022-12-18', '2022-12-18'),
(928, 'By Special Branch of Industry , A-Z', 't', '', '5A2.5821', '2022-12-18', '2022-12-18'),
(929, 'Imprisonment for Debt', 't', '', '5A2.583', '2022-12-18', '2022-12-18'),
(930, 'Criminal Law', 't', '', '5A2.6', '2022-12-18', '2022-12-18'),
(931, 'Criminal procedure', 't', '', '5A2.61', '2022-12-18', '2022-12-18'),
(932, 'Indictments', 't', '', '5A2.611', '2022-12-18', '2022-12-18'),
(933, 'Nullity', 't', '', '5A2.6111', '2022-12-18', '2022-12-18'),
(934, 'Criminal Evidence', 't', '', '5A2.612', '2022-12-18', '2022-12-18'),
(935, 'Presumptions', 't', '', '5A2.6121', '2022-12-18', '2022-12-18'),
(936, 'Witnesses', 't', '', '5A2.613', '2022-12-18', '2022-12-18'),
(937, 'Accomplices', 't', '', '5A2.6131', '2022-12-18', '2022-12-18'),
(938, 'Criminal Judgments', 't', '', '5A2.614', '2022-12-18', '2022-12-18'),
(939, 'Criminal liability', 't', '', '5A2.62', '2022-12-18', '2022-12-18'),
(940, 'Criminal Intent', 't', '', '5A2.621', '2022-12-18', '2022-12-18'),
(941, 'Motive', 't', '', '5A2.622', '2022-12-18', '2022-12-18'),
(942, 'Defenses (Including Penance)', 't', '', '5A2.623', '2022-12-18', '2022-12-18'),
(943, 'Drunkenness', 't', '', '5A2.6231', '2022-12-18', '2022-12-18'),
(944, 'Justification', 't', '', '5A2.63', '2022-12-18', '2022-12-18'),
(945, 'Self Defense (Including Penance)', 't', '', '5A2.631', '2022-12-18', '2022-12-18'),
(946, 'Plastic Surgery', 't', '', '5A2.632', '2022-12-18', '2022-12-18'),
(947, 'Necessity of Self Help', 't', '', '5A2.633', '2022-12-18', '2022-12-18'),
(948, 'Type of offenses', 't', '', '5A2.64', '2022-12-18', '2022-12-18'),
(949, 'Offenses Against the Person', 't', '', '5A2.641', '2022-12-18', '2022-12-18'),
(950, 'Homicide', 't', '', '5A2.6411', '2022-12-18', '2022-12-18'),
(951, 'Murder', 't', '', '5A2.6412', '2022-12-18', '2022-12-18'),
(952, 'Abortion', 't', '', '5A2.6413', '2022-12-18', '2022-12-18'),
(953, 'Sex Crimes', 't', '', '5A2.6414', '2022-12-18', '2022-12-18'),
(954, 'Rape', 't', '', '5A2.64141', '2022-12-18', '2022-12-18'),
(955, 'Adultery', 't', '', '5A2.64142', '2022-12-18', '2022-12-18'),
(956, 'Khalwat', 't', '', '5A2.64143', '2022-12-18', '2022-12-18'),
(957, 'Offenses Against Personal Liberty & Integrity of the Home', 't', '', '5A2.642', '2022-12-18', '2022-12-18'),
(958, 'Offenses Against Reputation', 't', '', '5A2.643', '2022-12-18', '2022-12-18'),
(959, 'Offenses Against Property', 't', '', '5A2.644', '2022-12-18', '2022-12-18'),
(960, 'Larceny', 't', '', '5A2.6441', '2022-12-18', '2022-12-18'),
(961, 'Usury in Property', 't', '', '5A2.6442', '2022-12-18', '2022-12-18'),
(962, 'Robbery', 't', '', '5A2.6443', '2022-12-18', '2022-12-18'),
(963, 'Offenses Against State and Public Order', 't', '', '5A2.645', '2022-12-18', '2022-12-18'),
(964, 'Political Crimes and Offenses', 't', '', '5A2.6451', '2022-12-18', '2022-12-18'),
(965, 'Offenses Against Public Administration', 't', '', '5A2.646', '2022-12-18', '2022-12-18'),
(966, 'Bribery', 't', '', '5A2.6461', '2022-12-18', '2022-12-18'),
(967, 'Teaching Religion in Public without Permission', 't', '', '5A2.6462', '2022-12-18', '2022-12-18'),
(968, 'Offenses Against or Connected with Religion', 't', '', '5A2.647', '2022-12-18', '2022-12-18'),
(969, 'Apostasy', 't', '', '5A2.6471', '2022-12-18', '2022-12-18'),
(970, 'Heresies', 't', '', '5A2.6472', '2022-12-18', '2022-12-18'),
(971, 'Takfir, Blasphemy, Kufr', 't', '', '5A2.6473', '2022-12-18', '2022-12-18'),
(972, 'Offenses Against Public Convenience and Morality', 't', '', '5A2.648', '2022-12-18', '2022-12-18'),
(973, 'Forfeiting of Jama’at Prayer', 't', '', '5A2.6481', '2022-12-18', '2022-12-18'),
(974, 'Public Day Eating During Ramadhan', 't', '', '5A2.6482', '2022-12-18', '2022-12-18'),
(975, 'Drinking Wine or any other Khumr', 't', '', '5A2.6483', '2022-12-18', '2022-12-18'),
(976, 'Gambling', 't', '', '5A2.6484', '2022-12-18', '2022-12-18'),
(977, 'Punishment', 't', '', '5A2.65', '2022-12-18', '2022-12-18'),
(978, 'Sentencing', 't', '', '5A2.651', '2022-12-18', '2022-12-18'),
(979, 'Aggravating Circumstances', 't', '', '5A2.6511', '2022-12-18', '2022-12-18'),
(980, 'Recidivists', 't', '', '5A2.65111', '2022-12-18', '2022-12-18'),
(981, 'Extenuating Circumstances', 't', '', '5A2.6512', '2022-12-18', '2022-12-18'),
(982, 'Hadd', 't', '', '5A2.652', '2022-12-18', '2022-12-18'),
(983, 'Capital Punishment', 't', '', '5A2.6521', '2022-12-18', '2022-12-18'),
(984, 'Stoning', 't', '', '5A2.6522', '2022-12-18', '2022-12-18'),
(985, 'Qisas Talionis', 't', '', '5A2.6523', '2022-12-18', '2022-12-18'),
(986, 'Ta’zir', 't', '', '5A2.653', '2022-12-18', '2022-12-18'),
(987, 'Imprisonment', 't', '', '5A2.6531', '2022-12-18', '2022-12-18'),
(988, 'Suspending Prosecution or Execution of Sentence', 't', '', '5A2.66', '2022-12-18', '2022-12-18'),
(989, 'Pardon', 't', '', '5A2.661', '2022-12-18', '2022-12-18'),
(990, 'Compensation', 't', '', '5A2.67', '2022-12-18', '2022-12-18'),
(991, 'Diyat', 't', '', '5A2.671', '2022-12-18', '2022-12-18'),
(992, 'International Law', 't', '', '5A2.7', '2022-12-18', '2022-12-18'),
(993, 'International Obligations', 't', '', '5A2.71', '2022-12-18', '2022-12-18'),
(994, 'Treaties', 't', '', '5A2.711', '2022-12-18', '2022-12-18'),
(995, 'Alliances', 't', '', '5A2.712', '2022-12-18', '2022-12-18'),
(996, 'Naval Law', 't', '', '5A2.72', '2022-12-18', '2022-12-18'),
(997, 'War', 't', '', '5A2.73', '2022-12-18', '2022-12-18'),
(998, 'Prisoners of War', 't', '', '5A2.731', '2022-12-18', '2022-12-18'),
(999, 'Booty', 't', '', '5A2.732', '2022-12-18', '2022-12-18'),
(1000, 'Violation of Sovereignty', 't', '', '5A2.74', '2022-12-18', '2022-12-18'),
(1001, 'Espionage', 't', '', '5A2.75', '2022-12-18', '2022-12-18'),
(1002, 'History of Islamic Law', 't', '', '5A2.9', '2022-12-18', '2022-12-18'),
(1003, 'Islamic Law during the Period of Prophet Muhammad ﷺ', 't', '', '5A2.91', '2022-12-18', '2022-12-18'),
(1004, 'Islamic Law during the Period of Khulafa al-Rashidin', 't', '', '5A2.92', '2022-12-18', '2022-12-18'),
(1005, 'Islamic Law during the Period of Banu Umayyad', 't', '', '5A2.93', '2022-12-18', '2022-12-18'),
(1006, 'Islamic Law during the Period of Banu Abbas', 't', '', '5A2.94', '2022-12-18', '2022-12-18'),
(1007, 'Islamic Law during the Later Periods', 't', '', '5A2.95', '2022-12-18', '2022-12-18'),
(1008, 'Islamic Law in Different Muslim Governments', 't', '', '5A2.96', '2022-12-18', '2022-12-18'),
(1009, 'Islamic Politics', 't', '', '5A3', '2022-12-18', '2022-12-18'),
(1010, 'Systems of Governments in Islam', 't', '', '5A3.1', '2022-12-18', '2022-12-18'),
(1011, 'Khilafah ', 't', '', '5A3.11', '2022-12-18', '2022-12-18'),
(1012, 'Democracy in Islam', 't', '', '5A3.12', '2022-12-18', '2022-12-18'),
(1013, 'Rights and Responsibilities of Khalifah', 't', '', '5A3.13', '2022-12-18', '2022-12-18'),
(1014, 'Khuruj Against Khalifah', 't', '', '5A3.14', '2022-12-18', '2022-12-18'),
(1015, 'Contemporary Government Systems and Islam', 't', '', '5A3.15', '2022-12-18', '2022-12-18'),
(1016, 'Islamic State vs. Muslim State', 't', '', '5A3.16', '2022-12-18', '2022-12-18'),
(1017, 'Political Process in Islam', 't', '', '5A3.2', '2022-12-18', '2022-12-18'),
(1018, 'Political Parties in Islam/Islamic State', 't', '', '5A3.21', '2022-12-18', '2022-12-18'),
(1019, 'Islamic Movements in different Periods and States', 't', '', '5A3.22', '2022-12-18', '2022-12-18'),
(1020, 'Civil & Political Rights in Islam', 't', '', '5A3.3', '2022-12-18', '2022-12-18'),
(1021, 'Civil & Political Rights of Muslims in Islamic State', 't', '', '5A3.31', '2022-12-18', '2022-12-18'),
(1022, 'Civil & Political Rights of Minorities in Islamic State', 't', '', '5A3.32', '2022-12-18', '2022-12-18'),
(1023, 'Expansion of Islamic State & Colonization', 't', '', '5A3.4', '2022-12-18', '2022-12-18'),
(1024, 'Slavery & Emancipation in Islamic State', 't', '', '5A3.5', '2022-12-18', '2022-12-18'),
(1025, 'International Relations', 't', '', '5A3.6', '2022-12-18', '2022-12-18'),
(1026, 'Legislation & Legislative Process', 't', '', '5A3.7', '2022-12-18', '2022-12-18'),
(1027, 'Islamic Economics', 't', '', '5A4', '2022-12-18', '2022-12-18'),
(1028, 'Labor Economics', 't', '', '5A4.1', '2022-12-18', '2022-12-18'),
(1029, 'Financial Economics', 't', '', '5A4.2', '2022-12-18', '2022-12-18'),
(1030, 'Principles of Earning', 't', '', '5A4.21', '2022-12-18', '2022-12-18'),
(1031, 'Principles of spending', 't', '', '5A4.22', '2022-12-18', '2022-12-18'),
(1032, 'Principles of wealth Circulation', 't', '', '5A4.23', '2022-12-18', '2022-12-18'),
(1033, 'Islamic Banking', 't', '', '5A4.24', '2022-12-18', '2022-12-18'),
(1034, 'Usury', 't', '', '5A4.25', '2022-12-18', '2022-12-18'),
(1035, 'Economics of Land & Energy', 't', '', '5A4.3', '2022-12-18', '2022-12-18'),
(1036, 'Cooperatives', 't', '', '5A4.4', '2022-12-18', '2022-12-18'),
(1037, 'Islamic Economy and Contemporary Economic Systems', 't', '', '5A4.5', '2022-12-18', '2022-12-18'),
(1038, 'Islamic Economy and Socialist Economic Systems', 't', '', '5A4.51', '2022-12-18', '2022-12-18'),
(1039, 'Islamic Economy and Capitalist Economic Systems', 't', '', '5A4.52', '2022-12-18', '2022-12-18'),
(1040, 'Islamic Economy and Communist Economic Systems', 't', '', '5A4.53', '2022-12-18', '2022-12-18'),
(1041, 'Islamic Economy and Other Contemporary Economic Systems', 't', '', '5A4.54', '2022-12-18', '2022-12-18'),
(1042, 'Public Finance', 't', '', '5A4.6', '2022-12-18', '2022-12-18'),
(1043, 'International Economics', 't', '', '5A4.7', '2022-12-18', '2022-12-18'),
(1044, 'Production', 't', '', '5A4.8', '2022-12-18', '2022-12-18'),
(1045, 'Macroeconomics & Related Topics', 't', '', '5A4.9', '2022-12-18', '2022-12-18'),
(1046, 'Islamic Administrative/Management & Military Sciences', 't', '', '5A5', '2022-12-18', '2022-12-18'),
(1047, 'Public Administration', 't', '', '5A5.1', '2022-12-18', '2022-12-18'),
(1048, 'General Considerations', 't', '', '5A5.2', '2022-12-18', '2022-12-18'),
(1049, 'Specific Fields of Public Administration', 't', '', '5A5.3', '2022-12-18', '2022-12-18'),
(1050, 'Administration of Economy & Environment', 't', '', '5A5.4', '2022-12-18', '2022-12-18'),
(1051, 'Military Science', 't', '', '5A5.5', '2022-12-18', '2022-12-18'),
(1052, 'Foot Forces & Warfare', 't', '', '5A5.6', '2022-12-18', '2022-12-18'),
(1053, 'Mounted Forces & Warfare', 't', '', '5A5.7', '2022-12-18', '2022-12-18'),
(1054, 'Air & Other Specialized Forces', 't', '', '5A5.8', '2022-12-18', '2022-12-18'),
(1055, 'Sea (Naval) Forces & Warfare', 't', '', '5A5.9', '2022-12-18', '2022-12-18'),
(1056, 'Islam, Sociology and Social Work', 't', '', '5A6', '2022-12-18', '2022-12-18'),
(1057, 'Sociology & Anthropology', 't', '', '5A6.1', '2022-12-18', '2022-12-18'),
(1058, 'Culture, Social Groups & Institutions', 't', '', '5A6.11', '2022-12-18', '2022-12-18'),
(1059, 'Social Interaction & Processes', 't', '', '5A6.12', '2022-12-18', '2022-12-18'),
(1060, 'Social Welfare', 't', '', '5A6.2', '2022-12-18', '2022-12-18'),
(1061, 'Social Problems & Services', 't', '', '5A6.3', '2022-12-18', '2022-12-18'),
(1062, 'Criminology', 't', '', '5A6.4', '2022-12-18', '2022-12-18'),
(1063, 'Penal & Related Institutions', 't', '', '5A6.5', '2022-12-18', '2022-12-18'),
(1064, 'Associations', 't', '', '5A6.6', '2022-12-18', '2022-12-18'),
(1065, 'General Clubs', 't', '', '5A6.7', '2022-12-18', '2022-12-18'),
(1066, 'Insurance', 't', '', '5A6.8', '2022-12-18', '2022-12-18'),
(1067, 'NGOs', 't', '', '5A6.9', '2022-12-18', '2022-12-18'),
(1068, 'Islamic Education', 't', '', '5A7', '2022-12-18', '2022-12-18'),
(1069, 'Schools & Activities', 't', '', '5A7.1', '2022-12-18', '2022-12-18'),
(1070, 'Elementary education & Secondary education', 't', '', '5A7.2', '2022-12-18', '2022-12-18'),
(1071, 'Elementary education', 't', '', '5A7.21', '2022-12-18', '2022-12-18'),
(1072, 'Secondary education', 't', '', '5A7.22', '2022-12-18', '2022-12-18'),
(1073, 'Adult Education', 't', '', '5A7.3', '2022-12-18', '2022-12-18'),
(1074, 'Special Education', 't', '', '5A7.4', '2022-12-18', '2022-12-18'),
(1075, 'Religious Education and Institutions', 't', '', '5A7.5', '2022-12-18', '2022-12-18'),
(1076, 'Curricula', 't', '', '5A7.6', '2022-12-18', '2022-12-18'),
(1077, 'Higher Education', 't', '', '5A7.7', '2022-12-18', '2022-12-18'),
(1078, 'Public Policy and Responsibility of Islamic State in Education', 't', '', '5A7.8', '2022-12-18', '2022-12-18'),
(1079, 'Informal Education', 't', '', '5A7.9', '2022-12-18', '2022-12-18'),
(1080, 'Home Education', 't', '', '5A7.91', '2022-12-18', '2022-12-18'),
(1081, 'Online Education', 't', '', '5A7.92', '2022-12-18', '2022-12-18'),
(1082, 'Other Ways of Informal Education', 't', '', '5A7.93', '2022-12-18', '2022-12-18'),
(1083, 'Islamic Commerce & Communications', 't', '', '5A8', '2022-12-18', '2022-12-18'),
(1084, 'Internal Commerce (Domestic Trade)', 't', '', '5A8.1', '2022-12-18', '2022-12-18'),
(1085, 'National Trade Policy', 't', '', '5A8.11', '2022-12-18', '2022-12-18'),
(1086, 'Taxation and Tariff', 't', '', '5A8.12', '2022-12-18', '2022-12-18'),
(1087, 'Stock Market and other Commercial Institutions', 't', '', '5A8.13', '2022-12-18', '2022-12-18'),
(1088, 'Trade Unions', 't', '', '5A8.14', '2022-12-18', '2022-12-18'),
(1089, 'International Commerce (Foreign Trade)', 't', '', '5A8.2', '2022-12-18', '2022-12-18'),
(1090, 'International Trade Policy', 't', '', '5A8.21', '2022-12-18', '2022-12-18'),
(1091, 'Taxation, Duties and Rebates on Export', 't', '', '5A8.22', '2022-12-18', '2022-12-18'),
(1092, 'Taxation, Duties and Rebates on Import', 't', '', '5A8.23', '2022-12-18', '2022-12-18'),
(1093, 'Postal Communication', 't', '', '5A8.3', '2022-12-18', '2022-12-18'),
(1094, 'Communications Telecommunication', 't', '', '5A8.4', '2022-12-18', '2022-12-18'),
(1095, 'Rail & Road Transportation', 't', '', '5A8.5', '2022-12-18', '2022-12-18'),
(1096, 'Inland Waterway & Ferry Transportation', 't', '', '5A8.6', '2022-12-18', '2022-12-18'),
(1097, 'Water, Air, Space Transportation', 't', '', '5A8.7', '2022-12-18', '2022-12-18'),
(1098, 'Ground Transportation Across International Borders', 't', '', '5A8.8', '2022-12-18', '2022-12-18'),
(1099, 'Metrology & Standardization', 't', '', '5A8.9', '2022-12-18', '2022-12-18'),
(1100, 'Islamic Customs and Folklore', 't', '', '5A9', '2022-12-18', '2022-12-18'),
(1101, 'Costume & Personal Appearance', 't', '', '5A9.1', '2022-12-18', '2022-12-18'),
(1102, 'Customs of Life Cycle & Domestic Life', 't', '', '5A9.2', '2022-12-18', '2022-12-18'),
(1103, 'Islamic Civilization and Arts', 't', '', '5A9.3', '2022-12-18', '2022-12-18'),
(1104, 'Islamic Architecture', 't', '', '5A9.31', '2022-12-18', '2022-12-18'),
(1105, 'Islamic Art', 't', '', '5A9.32', '2022-12-18', '2022-12-18'),
(1106, 'General Customs', 't', '', '5A9.4', '2022-12-18', '2022-12-18'),
(1107, 'Etiquette (Manners)', 't', '', '5A9.5', '2022-12-18', '2022-12-18'),
(1108, 'Folklore', 't', '', '5A9.6', '2022-12-18', '2022-12-18'),
(1109, 'Customs of War & Diplomacy', 't', '', '5A9.7', '2022-12-18', '2022-12-18'),
(1110, 'Tasawwuf/Sufism (Mysticism) in Islam', 't', '', '6A', '2022-12-18', '2022-12-18'),
(1111, 'Basic Concepts and Philosophy of Sufism', 't', '', '6A1', '2022-12-18', '2022-12-18'),
(1112, 'Islamic Sources of Sufism', 't', '', '6A1.1', '2022-12-18', '2022-12-18'),
(1113, 'Foreign Sources of Sufism', 't', '', '6A1.2', '2022-12-18', '2022-12-18'),
(1114, 'Greek Sources', 't', '', '6A1.21', '2022-12-18', '2022-12-18'),
(1115, 'Christian Sources', 't', '', '6A1.22', '2022-12-18', '2022-12-18'),
(1116, 'Neoplatonian Sources', 't', '', '6A1.23', '2022-12-18', '2022-12-18'),
(1117, 'Eastern Sources (Ishraq)', 't', '', '6A1.24', '2022-12-18', '2022-12-18'),
(1118, 'Comparative Sufism', 't', '', '6A1.3', '2022-12-18', '2022-12-18'),
(1119, 'Terminology of Sufism', 't', '', '6A1.4', '2022-12-18', '2022-12-18'),
(1120, 'Shatahat', 't', '', '6A1.41', '2022-12-18', '2022-12-18'),
(1121, 'Theopathic Utterances', 't', '', '6A1.411', '2022-12-18', '2022-12-18'),
(1122, 'Isharat (Symbolic Utterances)', 't', '', '6A1.412', '2022-12-18', '2022-12-18'),
(1123, 'Khawatir', 't', '', '6A1.42', '2022-12-18', '2022-12-18'),
(1124, 'Purification of Thoughts', 't', '', '6A1.421', '2022-12-18', '2022-12-18'),
(1125, 'Divine Proceedings of Truth', 't', '', '6A1.422', '2022-12-18', '2022-12-18'),
(1126, 'Tawariq (Musings of Falsehood)', 't', '', '6A1.43', '2022-12-18', '2022-12-18'),
(1127, 'Talwihat (Elucidation)', 't', '', '6A1.44', '2022-12-18', '2022-12-18'),
(1128, 'Talwin', 't', '', '6A1.45', '2022-12-18', '2022-12-18'),
(1129, 'Tamkin', 't', '', '6A1.46', '2022-12-18', '2022-12-18'),
(1130, 'Sufi Manners and Customs', 't', '', '6A1.47', '2022-12-18', '2022-12-18'),
(1131, 'Sufi Journey - Evolution', 't', '', '6A2', '2022-12-18', '2022-12-18'),
(1132, 'Maqamat (Stations)', 't', '', '6A2.1', '2022-12-18', '2022-12-18'),
(1133, 'Tawbah (Conversion/Return)', 't', '', '6A2.11', '2022-12-18', '2022-12-18'),
(1134, 'Wara‘ (Fear of God)', 't', '', '6A2.12', '2022-12-18', '2022-12-18'),
(1135, 'Zuhd (Renunciation)', 't', '', '6A2.13', '2022-12-18', '2022-12-18'),
(1136, 'Faqr (Poverty)', 't', '', '6A2.14', '2022-12-18', '2022-12-18'),
(1137, 'Sabr (Patience)', 't', '', '6A2.15', '2022-12-18', '2022-12-18'),
(1138, 'Tawakkul (Trust in God)', 't', '', '6A2.16', '2022-12-18', '2022-12-18'),
(1139, 'Ridha (Quietism)', 't', '', '6A2.17', '2022-12-18', '2022-12-18'),
(1140, 'Ahwal (States)', 't', '', '6A2.2', '2022-12-18', '2022-12-18'),
(1141, 'Mushahdah (Contemplation)', 't', '', '6A2.21', '2022-12-18', '2022-12-18'),
(1142, 'Qurb (Proximity)', 't', '', '6A2.22', '2022-12-18', '2022-12-18'),
(1143, 'Tadani (Approach)', 't', '', '6A2.221', '2022-12-18', '2022-12-18'),
(1144, 'Uns (Loving and Familiarity with God)', 't', '', '6A2.23', '2022-12-18', '2022-12-18'),
(1145, 'Familiarity with God', 't', '', '6A2.231', '2022-12-18', '2022-12-18'),
(1146, 'Loving God', 't', '', '6A2.232', '2022-12-18', '2022-12-18'),
(1147, 'Shawq (Longing)', 't', '', '6A2.24', '2022-12-18', '2022-12-18'),
(1148, 'Khawf (Fear)', 't', '', '6A2.25', '2022-12-18', '2022-12-18'),
(1149, 'Imtinan (Satisfaction)', 't', '', '6A2.26', '2022-12-18', '2022-12-18'),
(1150, 'Sense of Security', 't', '', '6A2.261', '2022-12-18', '2022-12-18'),
(1151, 'Sense of Dependence', 't', '', '6A2.262', '2022-12-18', '2022-12-18'),
(1152, 'Yaqin (Certitude)', 't', '', '6A2.27', '2022-12-18', '2022-12-18'),
(1153, 'Firaq (Depart)', 't', '', '6A2.28', '2022-12-18', '2022-12-18'),
(1154, 'Mawaqif (Spiritual Stayings)', 't', '', '6A2.281', '2022-12-18', '2022-12-18'),
(1155, 'Tajalli (Illumination)', 't', '', '6A2.282', '2022-12-18', '2022-12-18'),
(1156, 'Jazb (Rapture)', 't', '', '6A2.283', '2022-12-18', '2022-12-18'),
(1157, 'Fana (Self effacement)', 't', '', '6A2.284', '2022-12-18', '2022-12-18'),
(1158, 'Baqa (Self Subsistence)', 't', '', '6A2.285', '2022-12-18', '2022-12-18'),
(1159, 'Other Mystical Stages', 't', '', '6A2.29', '2022-12-18', '2022-12-18'),
(1160, 'Faqd (Selfness)', 't', '', '6A2.291', '2022-12-18', '2022-12-18'),
(1161, 'Saqr (Intoxication)', 't', '', '6A2.292', '2022-12-18', '2022-12-18'),
(1162, 'Sahw (Sobriety)', 't', '', '6A2.293', '2022-12-18', '2022-12-18'),
(1163, 'Al-Hiyam (Grievous Bewilderment)', 't', '', '6A2.294', '2022-12-18', '2022-12-18'),
(1164, 'Al-Hubur (Pleasure)', 't', '', '6A2.295', '2022-12-18', '2022-12-18'),
(1165, 'Tajawhar (Essentialization)', 't', '', '6A2.296', '2022-12-18', '2022-12-18'),
(1166, 'Tabaddul (Substitution)', 't', '', '6A2.297', '2022-12-18', '2022-12-18'),
(1167, 'Tahawwul (Transmission)', 't', '', '6A2.298', '2022-12-18', '2022-12-18'),
(1168, 'Wasl (Reaching Destination/Union with God)', 't', '', '6A2.299', '2022-12-18', '2022-12-18'),
(1169, 'Sufi Doctrines', 't', '', '6A3', '2022-12-18', '2022-12-18'),
(1170, 'Wahdat al-Wujud (Ontological Monism)', 't', '', '6A3.1', '2022-12-18', '2022-12-18'),
(1171, 'Secrets of Ana al-Haqq', 't', '', '6A3.11', '2022-12-18', '2022-12-18'),
(1172, 'Wahdat al-Shuhud (Phenomenological Monism)', 't', '', '6A3.2', '2022-12-18', '2022-12-18'),
(1173, 'Tajrid and Tafrid (Abstraction and Isolation)', 't', '', '6A3.3', '2022-12-18', '2022-12-18'),
(1174, 'Mulamasah and Hulul (Contact and Mutual Permeation)', 't', '', '6A3.4', '2022-12-18', '2022-12-18'),
(1175, 'Tanasukh (Metempsychosis)', 't', '', '6A3.41', '2022-12-18', '2022-12-18'),
(1176, 'Al-A‘yan al-Thabitah (Latent Realities)', 't', '', '6A3.5', '2022-12-18', '2022-12-18'),
(1177, 'Nature of the Universe and Perfection', 't', '', '6A3.6', '2022-12-18', '2022-12-18'),
(1178, 'Other Doctrines', 't', '', '6A3.7', '2022-12-18', '2022-12-18'),
(1179, 'Esoteric and Exoteric', 't', '', '6A3.71', '2022-12-18', '2022-12-18'),
(1180, 'Ta’wil', 't', '', '6A3.72', '2022-12-18', '2022-12-18'),
(1181, 'Concept of Creation', 't', '', '6A3.73', '2022-12-18', '2022-12-18'),
(1182, 'Concentration and Separation', 't', '', '6A3.74', '2022-12-18', '2022-12-18'),
(1183, 'Nur Muhammadi (Pre Existence of the Soul of the Prophet Muhammad ﷺ)', 't', '', '6A3.75', '2022-12-18', '2022-12-18'),
(1184, 'Doctrinal Schools of Sufism', 't', '', '6A3.8', '2022-12-18', '2022-12-18'),
(1185, 'Qassariyah', 't', '', '6A3.81', '2022-12-18', '2022-12-18'),
(1186, 'Muhasibiyah', 't', '', '6A3.82', '2022-12-18', '2022-12-18'),
(1187, 'Hakimiyah', 't', '', '6A3.83', '2022-12-18', '2022-12-18'),
(1188, 'Kharraziyah', 't', '', '6A3.84', '2022-12-18', '2022-12-18'),
(1189, 'Junaidiyah', 't', '', '6A3.85', '2022-12-18', '2022-12-18'),
(1190, 'Hallajiyah', 't', '', '6A3.86', '2022-12-18', '2022-12-18'),
(1191, 'Khafifiyah', 't', '', '6A3.87', '2022-12-18', '2022-12-18'),
(1192, 'More Schools', 't', '', '6A3.88', '2022-12-18', '2022-12-18'),
(1193, 'Kazaruniyah', 't', '', '6A3.881', '2022-12-18', '2022-12-18'),
(1194, 'Ghazaliyah', 't', '', '6A3.882', '2022-12-18', '2022-12-18'),
(1195, 'Ishraqiyah', 't', '', '6A3.883', '2022-12-18', '2022-12-18'),
(1196, 'Hatimiyah', 't', '', '6A3.884', '2022-12-18', '2022-12-18'),
(1197, 'Kuniyawiyah', 't', '', '6A3.885', '2022-12-18', '2022-12-18'),
(1198, 'Sab‘iniyah', 't', '', '6A3.886', '2022-12-18', '2022-12-18'),
(1199, 'Rijal al-Ghaib', 't', '', '6A3.89', '2022-12-18', '2022-12-18'),
(1200, 'Qutb', 't', '', '6A3.891', '2022-12-18', '2022-12-18'),
(1201, 'Abdal', 't', '', '6A3.892', '2022-12-18', '2022-12-18'),
(1202, 'Autad/‘Umud', 't', '', '6A3.893', '2022-12-18', '2022-12-18'),
(1203, 'Nuqaba’', 't', '', '6A3.894', '2022-12-18', '2022-12-18'),
(1204, 'Umana’', 't', '', '6A3.895', '2022-12-18', '2022-12-18'),
(1205, 'Abrar', 't', '', '6A3.896', '2022-12-18', '2022-12-18'),
(1206, 'Other Rijal al-Ghaib', 't', '', '6A3.897', '2022-12-18', '2022-12-18');
INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1207, 'Characteristic Features of Sufism', 't', '', '6A4', '2022-12-18', '2022-12-18'),
(1208, 'Tasawwur Shaikh', 't', '', '6A4.1', '2022-12-18', '2022-12-18'),
(1209, 'Bay‘ah', 't', '', '6A4.11', '2022-12-18', '2022-12-18'),
(1210, 'Conception of Shari‘ah, Ta?rqat, Haqiqat and Perfect Realization of Truth', 't', '', '6A4.12', '2022-12-18', '2022-12-18'),
(1211, 'Conception of Shaikh and Majz?b', 't', '', '6A4.2', '2022-12-18', '2022-12-18'),
(1212, 'Zandaqah & Tafraqah', 't', '', '6A4.3', '2022-12-18', '2022-12-18'),
(1213, 'Zandaqah', 't', '', '6A4.31', '2022-12-18', '2022-12-18'),
(1214, 'Tafraqah', 't', '', '6A4.32', '2022-12-18', '2022-12-18'),
(1215, 'Futuwwah and Muruwwah', 't', '', '6A4.4', '2022-12-18', '2022-12-18'),
(1216, 'Futuwwah (Spiritual Manliness)', 't', '', '6A4.41', '2022-12-18', '2022-12-18'),
(1217, 'Muruwwah (Virility)', 't', '', '6A4.42', '2022-12-18', '2022-12-18'),
(1218, 'Sufi Practices', 't', '', '6A4.5', '2022-12-18', '2022-12-18'),
(1219, 'Riyadah', 't', '', '6A4.51', '2022-12-18', '2022-12-18'),
(1220, 'Mujahidah', 't', '', '6A4.52', '2022-12-18', '2022-12-18'),
(1221, 'Istighraq', 't', '', '6A4.53', '2022-12-18', '2022-12-18'),
(1222, 'Muraqabah', 't', '', '6A4.54', '2022-12-18', '2022-12-18'),
(1223, 'Dhikr', 't', '', '6A4.55', '2022-12-18', '2022-12-18'),
(1224, 'Wird', 't', '', '6A4.56', '2022-12-18', '2022-12-18'),
(1225, 'Periodic Retreat', 't', '', '6A4.57', '2022-12-18', '2022-12-18'),
(1226, '‘Uzlah', 't', '', '6A4.571', '2022-12-18', '2022-12-18'),
(1227, 'Khalwah', 't', '', '6A4.572', '2022-12-18', '2022-12-18'),
(1228, 'Arba‘iniyah', 't', '', '6A4.573', '2022-12-18', '2022-12-18'),
(1229, 'Sama‘', 't', '', '6A4.58', '2022-12-18', '2022-12-18'),
(1230, 'Wajd', 't', '', '6A4.59', '2022-12-18', '2022-12-18'),
(1231, 'Mystical Sciences', 't', '', '6A4.6', '2022-12-18', '2022-12-18'),
(1232, '‘Ilm al-Asrar', 't', '', '6A4.61', '2022-12-18', '2022-12-18'),
(1233, '‘Ilm al-Asrar al-Huruf', 't', '', '6A4.62', '2022-12-18', '2022-12-18'),
(1234, '‘Ilm al-Qulub', 't', '', '6A4.63', '2022-12-18', '2022-12-18'),
(1235, 'Kashf', 't', '', '6A4.64', '2022-12-18', '2022-12-18'),
(1236, 'Karamat', 't', '', '6A4.65', '2022-12-18', '2022-12-18'),
(1237, 'Dast Ghaib (Hidden Hand)', 't', '', '6A4.66', '2022-12-18', '2022-12-18'),
(1238, '‘Ilm Jafr and Jami', 't', '', '6A4.67', '2022-12-18', '2022-12-18'),
(1239, 'Suluk and Adab', 't', '', '6A4.7', '2022-12-18', '2022-12-18'),
(1240, 'Self Examination', 't', '', '6A4.71', '2022-12-18', '2022-12-18'),
(1241, 'Examination of Conscience', 't', '', '6A4.72', '2022-12-18', '2022-12-18'),
(1242, 'Self Discipline', 't', '', '6A4.73', '2022-12-18', '2022-12-18'),
(1243, 'Self Command', 't', '', '6A4.74', '2022-12-18', '2022-12-18'),
(1244, 'Al-Munjiat wal-Muhlikiyat', 't', '', '6A4.75', '2022-12-18', '2022-12-18'),
(1245, 'Malfuzat', 't', '', '6A4.76', '2022-12-18', '2022-12-18'),
(1246, 'Maktubat', 't', '', '6A4.77', '2022-12-18', '2022-12-18'),
(1247, 'Moral Exhortation', 't', '', '6A4.8', '2022-12-18', '2022-12-18'),
(1248, 'Parables and Stories', 't', '', '6A4.81', '2022-12-18', '2022-12-18'),
(1249, 'Wasaya', 't', '', '6A4.82', '2022-12-18', '2022-12-18'),
(1250, 'Sufi Orders', 't', '', '6A5', '2022-12-18', '2022-12-18'),
(1251, 'Major Orders', 't', '', '6A5.1', '2022-12-18', '2022-12-18'),
(1252, 'Chistiyah', 't', '', '6A5.11', '2022-12-18', '2022-12-18'),
(1253, 'Qadriyah', 't', '', '6A5.12', '2022-12-18', '2022-12-18'),
(1254, 'Yemenite Branches of Qadriyah', 't', '', '6A5.121', '2022-12-18', '2022-12-18'),
(1255, 'Anatoliyan Branches of Qadriyah', 't', '', '6A5.122', '2022-12-18', '2022-12-18'),
(1256, 'Maghribiy Branches of Qadriyah', 't', '', '6A5.123', '2022-12-18', '2022-12-18'),
(1257, 'Suhrwardiyah', 't', '', '6A5.13', '2022-12-18', '2022-12-18'),
(1258, 'Jalaliyah', 't', '', '6A5.131', '2022-12-18', '2022-12-18'),
(1259, 'Jamaliyah', 't', '', '6A5.132', '2022-12-18', '2022-12-18'),
(1260, 'Maewaniyah', 't', '', '6A5.133', '2022-12-18', '2022-12-18'),
(1261, 'Muslimiyah', 't', '', '6A5.134', '2022-12-18', '2022-12-18'),
(1262, 'Damardashiyah', 't', '', '6A5.135', '2022-12-18', '2022-12-18'),
(1263, 'Zainiyah', 't', '', '6A5.136', '2022-12-18', '2022-12-18'),
(1264, 'Sunbuliyah', 't', '', '6A5.137', '2022-12-18', '2022-12-18'),
(1265, 'Shuja‘iyah', 't', '', '6A5.138', '2022-12-18', '2022-12-18'),
(1266, 'Abhariyah', 't', '', '6A5.139', '2022-12-18', '2022-12-18'),
(1267, 'Suhrwardiyah--Khalwatiyah', 't', '', '6A5.14', '2022-12-18', '2022-12-18'),
(1268, 'Salihiyah', 't', '', '6A5.141', '2022-12-18', '2022-12-18'),
(1269, 'Rahm?niyah', 't', '', '6A5.142', '2022-12-18', '2022-12-18'),
(1270, 'Taftaz?niyah', 't', '', '6A5.143', '2022-12-18', '2022-12-18'),
(1271, 'Rah?miyah', 't', '', '6A5.144', '2022-12-18', '2022-12-18'),
(1272, 'Turkish Branches of Khalw?tiyah', 't', '', '6A5.145', '2022-12-18', '2022-12-18'),
(1273, 'Egyptian Branches of Khalw?tiyah', 't', '', '6A5.146', '2022-12-18', '2022-12-18'),
(1274, 'Suhrwardiyah—Safawiyah', 't', '', '6A5.15', '2022-12-18', '2022-12-18'),
(1275, 'Bairamiyah', 't', '', '6A5.151', '2022-12-18', '2022-12-18'),
(1276, 'Hamzawiyah', 't', '', '6A5.152', '2022-12-18', '2022-12-18'),
(1277, 'Jalwatiyah', 't', '', '6A5.153', '2022-12-18', '2022-12-18'),
(1278, 'Naqshbandiyah', 't', '', '6A5.16', '2022-12-18', '2022-12-18'),
(1279, 'Abbasiyah', 't', '', '6A5.161', '2022-12-18', '2022-12-18'),
(1280, 'Ahrariyah', 't', '', '6A5.162', '2022-12-18', '2022-12-18'),
(1281, 'Tajiyah', 't', '', '6A5.163', '2022-12-18', '2022-12-18'),
(1282, 'Barjaniyah', 't', '', '6A5.164', '2022-12-18', '2022-12-18'),
(1283, 'Tijaniyah', 't', '', '6A5.165', '2022-12-18', '2022-12-18'),
(1284, 'Rifa‘iyah', 't', '', '6A5.17', '2022-12-18', '2022-12-18'),
(1285, 'Haririyah', 't', '', '6A5.171', '2022-12-18', '2022-12-18'),
(1286, 'S‘adiyah/Jibawiyah', 't', '', '6A5.172', '2022-12-18', '2022-12-18'),
(1287, 'Baziyah', 't', '', '6A5.173', '2022-12-18', '2022-12-18'),
(1288, 'Malikiyah', 't', '', '6A5.174', '2022-12-18', '2022-12-18'),
(1289, 'Habibiyah', 't', '', '6A5.175', '2022-12-18', '2022-12-18'),
(1290, 'Taghlabiyah', 't', '', '6A5.176', '2022-12-18', '2022-12-18'),
(1291, 'Burhamiyah/Burhaniyah: Dasuqiyah', 't', '', '6A5.18', '2022-12-18', '2022-12-18'),
(1292, 'Ahmadiyah (Sufi Order)', 't', '', '6A5.19', '2022-12-18', '2022-12-18'),
(1293, 'More Major Orders', 't', '', '6A5.2', '2022-12-18', '2022-12-18'),
(1294, 'Shaziliyah', 't', '', '6A5.21', '2022-12-18', '2022-12-18'),
(1295, 'Jazuliyah', 't', '', '6A5.211', '2022-12-18', '2022-12-18'),
(1296, 'Maghribi Branches of Shaziliyah', 't', '', '6A5.212', '2022-12-18', '2022-12-18'),
(1297, 'Egyptian Branches of Shaziliyah', 't', '', '6A5.213', '2022-12-18', '2022-12-18'),
(1298, 'Moroccan Branches of Shaziliyah', 't', '', '6A5.214', '2022-12-18', '2022-12-18'),
(1299, 'Muhammadiyah', 't', '', '6A5.215', '2022-12-18', '2022-12-18'),
(1300, 'More Orders', 't', '', '6A5.3', '2022-12-18', '2022-12-18'),
(1301, 'Mawaliyah also known as Farisiyah', 't', '', '6A5.31', '2022-12-18', '2022-12-18'),
(1302, 'Kubrawiyah', 't', '', '6A5.32', '2022-12-18', '2022-12-18'),
(1303, 'Shattariyah', 't', '', '6A5.33', '2022-12-18', '2022-12-18'),
(1304, '‘Ulwaniyah', 't', '', '6A5.34', '2022-12-18', '2022-12-18'),
(1305, 'Adhamiyah', 't', '', '6A5.35', '2022-12-18', '2022-12-18'),
(1306, 'Saqatiyah', 't', '', '6A5.36', '2022-12-18', '2022-12-18'),
(1307, 'Uwaisiyah', 't', '', '6A5.37', '2022-12-18', '2022-12-18'),
(1308, 'Qushairiyah', 't', '', '6A5.38', '2022-12-18', '2022-12-18'),
(1309, 'Warith Ali Shahiyah', 't', '', '6A5.39', '2022-12-18', '2022-12-18'),
(1310, 'Extremist Sufi Orders', 't', '', '6A5.4', '2022-12-18', '2022-12-18'),
(1311, 'Qalandariyah', 't', '', '6A5.41', '2022-12-18', '2022-12-18'),
(1312, 'Bektashiyah', 't', '', '6A5.42', '2022-12-18', '2022-12-18'),
(1313, 'N‘imatallhiyah', 't', '', '6A5.43', '2022-12-18', '2022-12-18'),
(1314, 'Ibrahimiyah', 't', '', '6A5.44', '2022-12-18', '2022-12-18'),
(1315, 'Safa’iyah', 't', '', '6A5.45', '2022-12-18', '2022-12-18'),
(1316, 'Aujaghiyah', 't', '', '6A5.46', '2022-12-18', '2022-12-18'),
(1317, 'Khaksariyah', 't', '', '6A5.47', '2022-12-18', '2022-12-18'),
(1318, 'Other Extremist Sufi Orders', 't', '', '6A5.48', '2022-12-18', '2022-12-18'),
(1319, 'Comparative Religions and Sects', 't', '', '7A', '2022-12-18', '2022-12-18'),
(1320, 'Sunnite Sects', 't', '', '7A1', '2022-12-18', '2022-12-18'),
(1321, 'Murji‘ites', 't', '', '7A1.1', '2022-12-18', '2022-12-18'),
(1322, 'Jabriyah', 't', '', '7A1.2', '2022-12-18', '2022-12-18'),
(1323, 'Karramiyah', 't', '', '7A1.3', '2022-12-18', '2022-12-18'),
(1324, 'Mutarrifiyah', 't', '', '7A1.4', '2022-12-18', '2022-12-18'),
(1325, 'Zahiriyah', 't', '', '7A1.5', '2022-12-18', '2022-12-18'),
(1326, 'Salimiyah/Sahiliyah', 't', '', '7A1.6', '2022-12-18', '2022-12-18'),
(1327, 'Tafdhiliyah', 't', '', '7A1.7', '2022-12-18', '2022-12-18'),
(1328, 'Other Sunnite Sects', 't', '', '7A1.8', '2022-12-18', '2022-12-18'),
(1329, 'Shi‘ites', 't', '', '7A2', '2022-12-18', '2022-12-18'),
(1330, 'Kaisanites', 't', '', '7A2.1', '2022-12-18', '2022-12-18'),
(1331, 'Zaidites', 't', '', '7A2.2', '2022-12-18', '2022-12-18'),
(1332, 'Imamiyah', 't', '', '7A2.3', '2022-12-18', '2022-12-18'),
(1333, 'Ithna ‘Ashriyah (Twelvers)', 't', '', '7A2.4', '2022-12-18', '2022-12-18'),
(1334, 'Extremist Sects of Shi‘ites', 't', '', '7A2.5', '2022-12-18', '2022-12-18'),
(1335, 'Nusairies', 't', '', '7A2.6', '2022-12-18', '2022-12-18'),
(1336, '‘Ali Ilahis', 't', '', '7A2.7', '2022-12-18', '2022-12-18'),
(1337, 'Other Extremist Shi‘ites', 't', '', '7A2.8', '2022-12-18', '2022-12-18'),
(1338, 'Ismailites/Ismailees', 't', '', '7A3', '2022-12-18', '2022-12-18'),
(1339, 'Batinites', 't', '', '7A3.1', '2022-12-18', '2022-12-18'),
(1340, 'Karmathians', 't', '', '7A3.2', '2022-12-18', '2022-12-18'),
(1341, 'Druses', 't', '', '7A3.3', '2022-12-18', '2022-12-18'),
(1342, 'Nizaris', 't', '', '7A3.4', '2022-12-18', '2022-12-18'),
(1343, 'Musta‘lians', 't', '', '7A3.5', '2022-12-18', '2022-12-18'),
(1344, 'Bohras', 't', '', '7A3.6', '2022-12-18', '2022-12-18'),
(1345, 'Khojas', 't', '', '7A3.7', '2022-12-18', '2022-12-18'),
(1346, 'Mu‘atazilites', 't', '', '7A4', '2022-12-18', '2022-12-18'),
(1347, 'Ghailaniyah', 't', '', '7A4.1', '2022-12-18', '2022-12-18'),
(1348, 'Huzailiyah', 't', '', '7A4.2', '2022-12-18', '2022-12-18'),
(1349, 'Thumamiyah/Tumamiyah', 't', '', '7A4.3', '2022-12-18', '2022-12-18'),
(1350, 'Jubba’iyah', 't', '', '7A4.4', '2022-12-18', '2022-12-18'),
(1351, 'Bahshsamiyah', 't', '', '7A4.5', '2022-12-18', '2022-12-18'),
(1352, '‘Amriyah', 't', '', '7A4.6', '2022-12-18', '2022-12-18'),
(1353, 'Mu‘attilah', 't', '', '7A4.7', '2022-12-18', '2022-12-18'),
(1354, 'Other Mu‘atazilites', 't', '', '7A4.8', '2022-12-18', '2022-12-18'),
(1355, 'Kharijites', 't', '', '7A5', '2022-12-18', '2022-12-18'),
(1356, 'Al-Muhakkimah', 't', '', '7A5.1', '2022-12-18', '2022-12-18'),
(1357, 'Azariqah', 't', '', '7A5.2', '2022-12-18', '2022-12-18'),
(1358, 'Najadat', 't', '', '7A5.3', '2022-12-18', '2022-12-18'),
(1359, '‘Atawiyah', 't', '', '7A5.4', '2022-12-18', '2022-12-18'),
(1360, 'Baihasiyah', 't', '', '7A5.5', '2022-12-18', '2022-12-18'),
(1361, '‘Ibadiyah', 't', '', '7A5.6', '2022-12-18', '2022-12-18'),
(1362, '‘Uthmaniyah', 't', '', '7A5.7', '2022-12-18', '2022-12-18'),
(1363, 'Other Kharijites', 't', '', '7A5.8', '2022-12-18', '2022-12-18'),
(1364, 'Medieval and Modern Sect', 't', '', '7A6', '2022-12-18', '2022-12-18'),
(1365, 'Sects Derived From Sunnites', 't', '', '7A6.1', '2022-12-18', '2022-12-18'),
(1366, 'Salafis', 't', '', '7A6.11', '2022-12-18', '2022-12-18'),
(1367, 'Mahdawiyah', 't', '', '7A6.12', '2022-12-18', '2022-12-18'),
(1368, 'Rawshaniyah', 't', '', '7A6.13', '2022-12-18', '2022-12-18'),
(1369, 'Din-i-Ilahi', 't', '', '7A6.14', '2022-12-18', '2022-12-18'),
(1370, 'Deobandis', 't', '', '7A6.15', '2022-12-18', '2022-12-18'),
(1371, 'Barelwis', 't', '', '7A6.16', '2022-12-18', '2022-12-18'),
(1372, 'Ahl al-Qur\'an', 't', '', '7A6.17', '2022-12-18', '2022-12-18'),
(1373, 'Ahl al-Hadith', 't', '', '7A6.18', '2022-12-18', '2022-12-18'),
(1374, 'Other Medieval and Modern Sunnite Sects', 't', '', '7A6.19', '2022-12-18', '2022-12-18'),
(1375, 'Sects derived from Shiites', 't', '', '7A6.2', '2022-12-18', '2022-12-18'),
(1376, 'Shabak', 't', '', '7A6.21', '2022-12-18', '2022-12-18'),
(1377, 'Kaba’is', 't', '', '7A6.22', '2022-12-18', '2022-12-18'),
(1378, 'Hurufis', 't', '', '7A6.23', '2022-12-18', '2022-12-18'),
(1379, 'Nuqtawis', 't', '', '7A6.24', '2022-12-18', '2022-12-18'),
(1380, 'Nur Bakhshiyah', 't', '', '7A6.25', '2022-12-18', '2022-12-18'),
(1381, 'Mahmudiyah', 't', '', '7A6.26', '2022-12-18', '2022-12-18'),
(1382, 'Akhbariyah', 't', '', '7A6.27', '2022-12-18', '2022-12-18'),
(1383, 'Ijtihadiyah', 't', '', '7A6.28', '2022-12-18', '2022-12-18'),
(1384, 'Shaikhiyah', 't', '', '7A6.31', '2022-12-18', '2022-12-18'),
(1385, 'Kashfiyah', 't', '', '7A6.32', '2022-12-18', '2022-12-18'),
(1386, 'Modernism', 't', '', '7A6.5', '2022-12-18', '2022-12-18'),
(1387, 'Islamic Movements', 't', '', '7A6.6', '2022-12-18', '2022-12-18'),
(1388, 'Heretical Sects Derived from Islam', 't', '', '7A7', '2022-12-18', '2022-12-18'),
(1389, 'Believers in Lawlessness', 't', '', '7A7.1', '2022-12-18', '2022-12-18'),
(1390, 'Believers in Transmigration', 't', '', '7A7.2', '2022-12-18', '2022-12-18'),
(1391, 'Believers in Incarnation', 't', '', '7A7.3', '2022-12-18', '2022-12-18'),
(1392, 'Bahaism', 't', '', '7A7.4', '2022-12-18', '2022-12-18'),
(1393, 'Babism', 't', '', '7A7.5', '2022-12-18', '2022-12-18'),
(1394, 'Ahmadiyah (Heretical)', 't', '', '7A7.6', '2022-12-18', '2022-12-18'),
(1395, 'Dahriyah', 't', '', '7A7.7', '2022-12-18', '2022-12-18'),
(1396, 'Other Heretical Sects', 't', '', '7A7.8', '2022-12-18', '2022-12-18'),
(1397, 'Comparative Religions', 't', '', '7A8', '2022-12-18', '2022-12-18'),
(1398, 'Judaism and Islam', 't', '', '7A8.1', '2022-12-18', '2022-12-18'),
(1399, 'Christianity and Islam', 't', '', '7A8.2', '2022-12-18', '2022-12-18'),
(1400, 'Hinduism and Islam', 't', '', '7A8.3', '2022-12-18', '2022-12-18'),
(1401, 'Buddhism and Islam', 't', '', '7A8.4', '2022-12-18', '2022-12-18'),
(1402, 'Sikhism and Islam', 't', '', '7A8.5', '2022-12-18', '2022-12-18'),
(1403, 'Other Religions and Islam', 't', '', '7A8.6', '2022-12-18', '2022-12-18'),
(1404, 'Divine Books', 't', '', '7A8.7', '2022-12-18', '2022-12-18'),
(1405, 'Concepts and Principles of War in Different Religions', 't', '', '7A8.8', '2022-12-18', '2022-12-18'),
(1406, 'Jewish Philosophy and Practice', 't', '', '7A8.81', '2022-12-18', '2022-12-18'),
(1407, 'Christian Philosophy and Practice', 't', '', '7A8.82', '2022-12-18', '2022-12-18'),
(1408, 'Hindu Philosophy and Practice', 't', '', '7A8.83', '2022-12-18', '2022-12-18'),
(1409, 'Budh Philosophy and Practice', 't', '', '7A8.84', '2022-12-18', '2022-12-18'),
(1410, 'Sikh Philosophy and Practice', 't', '', '7A8.85', '2022-12-18', '2022-12-18'),
(1411, 'Other Religions’ Philosophy and Practice', 't', '', '7A8.86', '2022-12-18', '2022-12-18'),
(1412, 'Sacred Places of Other Religions', 't', '', '7A8.9', '2022-12-18', '2022-12-18'),
(1413, 'Synagogues', 't', '', '7A8.91', '2022-12-18', '2022-12-18'),
(1414, 'Churches', 't', '', '7A8.92', '2022-12-18', '2022-12-18'),
(1415, 'Temples', 't', '', '7A8.93', '2022-12-18', '2022-12-18'),
(1416, 'Gurdawaras (Sikh Temples)', 't', '', '7A8.94', '2022-12-18', '2022-12-18'),
(1417, 'Other Sacred Places', 't', '', '7A8.95', '2022-12-18', '2022-12-18'),
(1418, 'Religious History & Geography', 't', '', '9A', '2022-12-18', '2022-12-18'),
(1419, 'Pre-Islamic Religions', 't', '', '9A1', '2022-12-18', '2022-12-18'),
(1420, 'History of Bani Israel', 't', '', '9A1.1', '2022-12-18', '2022-12-18'),
(1421, 'Judaic Religious History', 't', '', '9A1.2', '2022-12-18', '2022-12-18'),
(1422, 'Christian Religious History', 't', '', '9A1.3', '2022-12-18', '2022-12-18'),
(1423, 'History of Hinduism', 't', '', '9A1.4', '2022-12-18', '2022-12-18'),
(1424, 'History of Buddhism', 't', '', '9A1.5', '2022-12-18', '2022-12-18'),
(1425, 'Pre-Islamic Religions of Arab', 't', '', '9A1.6', '2022-12-18', '2022-12-18'),
(1426, 'History of Other Religions', 't', '', '9A1.7', '2022-12-18', '2022-12-18'),
(1427, 'Biography', 't', '', '9A2', '2022-12-18', '2022-12-18'),
(1428, 'Muslim Rulers, including Heads of States, Governors, Prime Ministers Etc.', 't', '', '9A2.1', '2022-12-18', '2022-12-18'),
(1429, 'Muslim Religious Leaders', 't', '', '9A2.2', '2022-12-18', '2022-12-18'),
(1430, 'Muslim Politicians and Social Scientists', 't', '', '9A2.3', '2022-12-18', '2022-12-18'),
(1431, 'Muslim Military Persons and Martyrs', 't', '', '9A2.4', '2022-12-18', '2022-12-18'),
(1432, 'Muslim Scientists and Scholars', 't', '', '9A2.5', '2022-12-18', '2022-12-18'),
(1433, 'Special Persons of other Religions and Religions derived from Islam', 't', '', '9A2.7', '2022-12-18', '2022-12-18'),
(1434, 'Muslim Artists and Literary Persons', 't', '', '9A2.8', '2022-12-18', '2022-12-18'),
(1435, 'Muslim Historians and Explorers', 't', '', '9A2.9', '2022-12-18', '2022-12-18'),
(1436, 'Geography & Demography', 't', '', '9A3', '2022-12-18', '2022-12-18'),
(1437, 'Muslim Geography', 't', '', '9A3.1', '2022-12-18', '2022-12-18'),
(1438, 'Dictionaries & Gazetteers', 't', '', '9A3.11', '2022-12-18', '2022-12-18'),
(1439, 'Atlases & Maps', 't', '', '9A3.12', '2022-12-18', '2022-12-18'),
(1440, 'Travelling', 't', '', '9A3.13', '2022-12-18', '2022-12-18'),
(1441, 'Navigation', 't', '', '9A3.14', '2022-12-18', '2022-12-18'),
(1442, 'Chronology & Calendars', 't', '', '9A3.2', '2022-12-18', '2022-12-18'),
(1443, 'Archaeology, Paleography, Epigraphy, Numismatics, Papyrology & Heraldry', 't', '', '9A3.3', '2022-12-18', '2022-12-18'),
(1444, 'Muslim Population', 't', '', '9A3.4', '2022-12-18', '2022-12-18'),
(1445, 'Birth Statistics', 't', '', '9A3.5', '2022-12-18', '2022-12-18'),
(1446, 'Death Statistics', 't', '', '9A3.6', '2022-12-18', '2022-12-18'),
(1447, 'Morbidity Statistics', 't', '', '9A3.7', '2022-12-18', '2022-12-18'),
(1448, 'Early Islamic History: Year 609-661 CE', 't', '', '9A4', '2022-12-18', '2022-12-18'),
(1449, 'Arabian History before Islam', 't', '', '9A4.1', '2022-12-18', '2022-12-18'),
(1450, 'Islamic History in the Period of Prophet ﷺ', 't', '', '9A4.2', '2022-12-18', '2022-12-18'),
(1451, 'Islamic History in the Period of Abu Bakr Caliphate', 't', '', '9A4.3', '2022-12-18', '2022-12-18'),
(1452, 'Islamic History in the Period of Umar Caliphate', 't', '', '9A4.4', '2022-12-18', '2022-12-18'),
(1453, 'Islamic History in the Period of Uthman Caliphate', 't', '', '9A4.5', '2022-12-18', '2022-12-18'),
(1454, 'Islamic History in the Period of Ali Caliphate', 't', '', '9A4.6', '2022-12-18', '2022-12-18'),
(1455, 'Banu Umayyad Dynasty: Year 661-750 CE & Year 711-1053 CE', 't', '', '9A5', '2022-12-18', '2022-12-18'),
(1456, 'Mu‘awiyah Ibn Abu Sufyan Period', 't', '', '9A5.1', '2022-12-18', '2022-12-18'),
(1457, 'Yazid Bin Mu‘awiyah Period', 't', '', '9A5.2', '2022-12-18', '2022-12-18'),
(1458, 'Incident of Karbala', 't', '', '9A5.21', '2022-12-18', '2022-12-18'),
(1459, 'Role of Imam Hussain (RA)', 't', '', '9A5.22', '2022-12-18', '2022-12-18'),
(1460, 'Dynasties of Mu‘awiyah Ibn Yazid, Marwan Ibn Hakam, Abdullah Ibn Zubair & Abdul Malik Ibn Marwan', 't', '', '9A5.3', '2022-12-18', '2022-12-18'),
(1461, 'Dynasties of Walid Ibn Abdul Malik & Sulaiman Ibn Abdul Malik', 't', '', '9A5.4', '2022-12-18', '2022-12-18'),
(1462, 'Dynasty of Umar Ibn Abdul Aziz', 't', '', '9A5.5', '2022-12-18', '2022-12-18'),
(1463, 'Dynasties of Yazid Ibn Abdul Malik, Hisham Ibn Abdul Malik, Walid Yazid Ibn Abdul Malik, Yazid Ibn Walid Ibn Abdul Malik, Ibrahim Ibn Walid Abdul Malik & Marwan Ibn Muhammad & Marwan Ibn Hakam', 't', '', '9A5.6', '2022-12-18', '2022-12-18'),
(1464, 'Banu Umayyad and other Muslim Dynasties in Spain & Portugal', 't', '', '9A5.7', '2022-12-18', '2022-12-18'),
(1465, 'Pre-Muslim Spain', 't', '', '9A5.71', '2022-12-18', '2022-12-18'),
(1466, 'Early Muslim Spain', 't', '', '9A5.72', '2022-12-18', '2022-12-18'),
(1467, 'Musa Ibn Nusair', 't', '', '9A5.73', '2022-12-18', '2022-12-18'),
(1468, 'Tariq Ibn Ziyad', 't', '', '9A5.74', '2022-12-18', '2022-12-18'),
(1469, 'Abdul Aziz Ibn Musa', 't', '', '9A5.75', '2022-12-18', '2022-12-18'),
(1470, 'Ayub Ibn Habib and Other Amirs before Abdur Rahman Ibn Mu‘awiyah al-Dakhil', 't', '', '9A5.76', '2022-12-18', '2022-12-18'),
(1471, 'Abdur Rahman Ibn Mu‘awiyah al-Dakhil Dynasty', 't', '', '9A5.77', '2022-12-18', '2022-12-18'),
(1472, 'Hishaam Ibn Abdur Rahmaan', 't', '', '9A5.78', '2022-12-18', '2022-12-18'),
(1473, 'Hakam Ibn Hishaam', 't', '', '9A5.79', '2022-12-18', '2022-12-18'),
(1474, 'Abdur Rahmaan II', 't', '', '9A5.81', '2022-12-18', '2022-12-18'),
(1475, 'Muhammad Ibn Abdur Rahmaan', 't', '', '9A5.82', '2022-12-18', '2022-12-18'),
(1476, 'Munzir Ibn Muhammad', 't', '', '9A5.83', '2022-12-18', '2022-12-18'),
(1477, 'Abdullah Ibn Muhammad', 't', '', '9A5.84', '2022-12-18', '2022-12-18'),
(1478, 'Abdur Rahmaan III', 't', '', '9A5.85', '2022-12-18', '2022-12-18'),
(1479, 'Hakam II Ibn Abdur Rahmaan III', 't', '', '9A5.86', '2022-12-18', '2022-12-18'),
(1480, 'Hisham II Ibn Hakam II and Others', 't', '', '9A5.87', '2022-12-18', '2022-12-18'),
(1481, 'Banu Hamud, Banu Ibad and Others', 't', '', '9A5.88', '2022-12-18', '2022-12-18'),
(1482, 'Decline of Muslim Dynasty in Spain & Portugal', 't', '', '9A5.9', '2022-12-18', '2022-12-18'),
(1483, 'Banu Abbas Dynasty: Year 750-1258 CE', 't', '', '9A6', '2022-12-18', '2022-12-18'),
(1484, 'Take Over of Banu Abbas', 't', '', '9A6.09', '2022-12-18', '2022-12-18'),
(1485, 'Abu al-Abbas Abdullah Safah', 't', '', '9A6.1', '2022-12-18', '2022-12-18'),
(1486, 'Abu Ja‘far Mansur', 't', '', '9A6.2', '2022-12-18', '2022-12-18'),
(1487, 'Harun al-Rashid, Amin al-Rashid, Ma’mun al-Rashid', 't', '', '9A6.3', '2022-12-18', '2022-12-18'),
(1488, 'Mu‘tasim Be-Allah, Wathiq Be-Allah, Mutawakkil ‘Ala-Allah, Muntasar Be-Allah, Must‘in Be-Allah, Mu‘tazz Be-Allah,', 't', '', '9A6.4', '2022-12-18', '2022-12-18'),
(1489, 'Muhtadi Be-Allah, Mu‘tmid ‘Ala Allah, Mu‘tadhidd Be-Allah, Muktafi Be-Allah, Muqtadar Be-Allah, Quahir Be-Allah,', 't', '', '9A6.5', '2022-12-18', '2022-12-18'),
(1490, 'Radhi Be-Allah, Muttaqui Le-Allah, Mutakaffi Be-Allah,', 't', '', '9A6.6', '2022-12-18', '2022-12-18'),
(1491, 'Muti‘ Le-Allah, Ta’i‘ le-Allah, Qadir Be-Allah and Later Caliphs', 't', '', '9A6.7', '2022-12-18', '2022-12-18'),
(1492, 'Abbasid Dynasty in Egypt and other Regions', 't', '', '9A6.8', '2022-12-18', '2022-12-18'),
(1493, 'Decline of Abbasid Dynasty', 't', '', '9A6.9', '2022-12-18', '2022-12-18'),
(1494, 'Islam and Muslims in Africa, Europe and America: Year 788-1900 CE', 't', '', '9A7', '2022-12-18', '2022-12-18'),
(1495, 'Egypt', 't', '', '9A7.1', '2022-12-18', '2022-12-18'),
(1496, 'Fatimid Dynasty in Egypt: Year 952-1171 CE', 't', '', '9A7.11', '2022-12-18', '2022-12-18'),
(1497, 'Islam and Muslims in other African Countries', 't', '', '9A7.2', '2022-12-18', '2022-12-18'),
(1498, 'Islam and Muslims in Europe', 't', '', '9A7.4', '2022-12-18', '2022-12-18'),
(1499, 'Islam and Muslims in America', 't', '', '9A7.6', '2022-12-18', '2022-12-18'),
(1500, 'Islam and Muslims in Indo Pak Subcontinent and Rest of Asia: Year 650-1900 CE', 't', '', '9A8', '2022-12-18', '2022-12-18'),
(1501, 'Islam and Muslims in Indian Subcontinent.', 't', '', '9A8.1', '2022-12-18', '2022-12-18'),
(1502, 'Muhammad bin Qasim and Adjacent Period', 't', '', '9A8.11', '2022-12-18', '2022-12-18'),
(1503, 'Mahmud Ghaznawi, Muhammad Ghauri, Slaves, Khilji, Tughlaq and Lodhi Dynasties', 't', '', '9A8.12', '2022-12-18', '2022-12-18'),
(1504, 'Mahmud Ghaznawi, Ghauri, Maids, Tughlaq and Khilji', 't', '', '9A8.14', '2022-12-18', '2022-12-18'),
(1505, 'Mughal Dynasty', 't', '', '9A8.15', '2022-12-18', '2022-12-18'),
(1506, 'British India', 't', '', '9A8.16', '2022-12-18', '2022-12-18'),
(1507, 'Islam and Muslims in Central Asia', 't', '', '9A8.2', '2022-12-18', '2022-12-18'),
(1508, 'Islam and Muslims in East Asia', 't', '', '9A8.4', '2022-12-18', '2022-12-18'),
(1509, 'Australian Muslim History', 't', '', '9A8.5', '2022-12-18', '2022-12-18'),
(1510, 'Islam and Muslims in Turkey', 't', '', '9A8.6', '2022-12-18', '2022-12-18'),
(1511, 'Ottoman Dynasty', 't', '', '9A8.61', '2022-12-18', '2022-12-18'),
(1512, 'Islam and Muslims in other parts of Asia', 't', '', '9A8.9', '2022-12-18', '2022-12-18'),
(1513, 'Contemporary Muslim World: Year 1900-', 't', '', '9A9', '2022-12-18', '2022-12-18'),
(1514, 'Muslim Democracies in Asia', 't', '', '9A9.1', '2022-12-18', '2022-12-18'),
(1515, 'Muslim Dictatorships in Asia', 't', '', '9A9.2', '2022-12-18', '2022-12-18'),
(1516, 'Muslim Minorities in Asia', 't', '', '9A9.3', '2022-12-18', '2022-12-18'),
(1517, 'Muslim Democracies in Africa', 't', '', '9A9.4', '2022-12-18', '2022-12-18'),
(1518, 'Muslim Dictatorships in Africa', 't', '', '9A9.5', '2022-12-18', '2022-12-18'),
(1519, 'Muslim Minorities in Africa', 't', '', '9A9.6', '2022-12-18', '2022-12-18'),
(1520, 'Muslim Minorities in Europe', 't', '', '9A9.7', '2022-12-18', '2022-12-18'),
(1521, 'Muslim Minorities in America', 't', '', '9A9.8', '2022-12-18', '2022-12-18'),
(1522, 'Muslim Minorities in Australian Continent', 't', '', '9A9.9', '2022-12-18', '2022-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `related_topic_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `options`, `path`, `created_at`, `updated_at`, `deleted_at`, `uid`) VALUES
('7b00e089d7cde0b8e98c9e181cd90d8c', '{\"version\":\"1.1.1\",\"db_version\":2}', 'C:\\slims9\\httpd\\htdocs\\bulian\\plugins\\member_self_registration\\member_self_registration.plugin.php', '2023-02-26 01:22:54', NULL, NULL, 1),
('ed7554654b65fa48e603004706a852bd', '{\"version\":\"1.1.1\",\"db_version\":2}', '/home/896782.cloudwaysapps.com/havgpxsbnd/public_html/plugins/member_self_registration/member_self_registration.plugin.php', '2023-04-29 16:19:45', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`reserve_id`, `member_id`, `biblio_id`, `item_code`, `reserve_date`) VALUES
(11, '1', 2, 'B00010', '2023-05-03 19:57:27'),
(12, '3', 11, '123', '2023-05-03 19:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_types` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT 0,
  `promoted` smallint(1) NOT NULL DEFAULT 0,
  `labels` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Dumping data for table `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `carrier_type`, `content_type`, `media_type`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(1, 'PHP 5 for dummies', '', '0764541668', 'Valade, Janet', 'Programming - Website', 'Text', 'Wiley', 'Hoboken, NJ', 'English', '005.13/3 22', '', '', '', '', NULL, '2004', NULL, 'For dummies', NULL, NULL, '005.13/3-22 Jan p', 0, 0, NULL, 'xiv, 392 p. : ill. ; 24 cm.', 'php5_dummies.jpg', '2007-11-29 15:36:50', '2007-11-29 16:26:59'),
(2, 'Linux In a Nutshell', 'Fifth Edition', '9780596009304', 'Siever, Ellen - Love, Robert - Robbins, Arnold - Figgins, Stephen - Weber, Aaron', 'Writing & Writers of Revelation  - Rare Phonetics', 'Book', 'OReilly', 'Sebastopol, CA', 'English', '005.4/32 22', '', '', '', '', 'Melbourne', '2005', NULL, 'In a Nutshell', 'B00009 - B00010', 'Fiction', '005.4/32-22 Ell l', 0, 0, NULL, 'xiv, 925 p. : ill. ; 23 cm.', 'linux_in_a_nutshell.jpg', '2007-11-29 15:53:35', '2023-05-01 21:28:07'),
(3, 'The Definitive Guide to MySQL 5', '', '9781590595350', 'Kofler, Michael - Kramer, David', 'Programming - Database - RDBMS', 'Text', 'Apress', '', 'English', '005.75/85 22', '', '', '', '', NULL, '2005', NULL, 'Definitive Guide Series', NULL, NULL, '005.75/85-22 Kof d', 0, 0, NULL, '784p.', 'mysql_def_guide.jpg', '2007-11-29 16:01:08', '2007-11-29 16:26:33'),
(4, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', '', '0-596-00108-8', 'Raymond, Eric', 'Linux - Open Source', 'Text', 'OReilly', 'Sebastopol, CA', 'English', '005.4/32 22', '', '', '', '', 'My Library', '2001', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', NULL, 'B00007 - B00008', 'Reference', '005.4/3222 Ray c', 0, 0, NULL, '208p.', 'cathedral_bazaar.jpg', '2007-11-29 16:14:44', '2007-11-29 16:25:43'),
(5, 'Producing open source software : how to run a successful free software project', '1st ed.', '9780596007591', 'Fogel, Karl', 'Open Source - Project', 'Text', 'OReilly', 'Sebastopol, CA', 'English', '005.1 22', '', '', '', '', NULL, '2005', 'Includes index.', NULL, NULL, NULL, '005.1-22 Fog p', 0, 0, NULL, 'xx, 279 p. ; 24 cm.', 'producing_oss.jpg', '2007-11-29 16:20:45', '2007-11-29 16:31:21'),
(7, 'Web application architecture : principles, protocols, and practices', '', '0471486566', 'Shklar, Leon - Rosen, Richard', 'Website - Design', 'Text', 'John Wiley', 'Hoboken, NJ', 'English', '005.7/2 21', '', '', '', '', NULL, '2003', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', NULL, NULL, NULL, '005.7/2-21 Leo w', 0, 0, NULL, 'xi, 357 p. : ill. ; 23 cm.', 'webapp_arch.jpg', '2007-11-29 16:41:57', '2007-11-29 16:32:46'),
(9, 'The organization of information', '2nd ed.', '1563089769', 'Taylor, Arlene G.', 'Information - Organization - Metadata', 'Text', 'Libraries Unlimited', 'Westport, Conn.', 'English', '025 22', '', '', '', '', NULL, '2004', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'Library and information science text series', NULL, NULL, '025-22 Tay o', 0, 0, NULL, 'xxvii, 417 p. : ill. ; 27 cm.', 'organization_information.jpg', '2007-11-29 16:54:12', '2007-11-29 16:27:20'),
(10, 'Library and Information Center Management', '7th ed.', '9781591584063', 'Stueart, Robert D. - Moran, Barbara B.', 'Information - Library', 'Text', 'Libraries Unlimited', 'Westport, Conn.', 'English', '025.1 22', '', '', '', '', NULL, '2007', NULL, 'Library and information science text series', NULL, NULL, '025.1-22 Stu l', 0, 0, NULL, 'xxviii, 492 p. : ill. ; 27 cm.', 'library_info_center.JPG', '2007-11-29 16:58:51', '2007-11-29 16:27:40'),
(11, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', '2nd ed.', '9780596000356', 'Morville, Peter - Rosenfeld, Louis', NULL, 'Book', 'OReilly', 'Cambridge, Mass', 'English', '006.7 22', 'https://www.php.net/manual/en/function.empty.php', '', '', '', 'Melbourne', '2002', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', NULL, '123', 'Fiction', '006.7-22 Mor i', 0, 0, NULL, '500p.', 'information_arch.jpg', '2007-11-29 17:26:14', '2023-05-02 21:27:40'),
(12, 'Corruption and development', '', '9780714649023', 'Robinson, Mark', 'Corruption - Development', 'Text', 'Taylor & Francis Inc.', 'London', 'English', '364.1/322/091724 21', '', '', '', '', 'My Library', '1998', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', NULL, 'B00006', 'Reference', '364.1 Rob c', 0, 0, NULL, '166 p. : ill. ; 22 cm.', 'corruption_development.jpg', '2007-11-29 17:45:30', '2007-11-29 16:20:53'),
(13, 'Corruption and development : the anti-corruption campaigns', '', '0230525504', 'Bracking, Sarah', 'Corruption', 'Text', 'Palgrave Macmillan', 'New York', 'English', '364.1/323091724 22', '', '', '', '', 'My Library', '2007', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', NULL, 'B00005', 'Reference', '364.1 Bra c', 0, 0, NULL, '310p.', 'corruption_development_anti_campaign.jpg', '2007-11-29 17:49:49', '2007-11-29 16:19:48'),
(14, 'Pigs at the trough : how corporate greed and political corruption are undermining America', '', '1400047714', 'Huffington, Arianna Stassinopoulos', 'Corruption', 'Text', 'Crown publishers', 'New York', 'English', '364.1323', '', '', '', '', 'My Library', '2003', NULL, NULL, 'B00004', 'Reference', '364.1323 Huf p', 0, 0, NULL, '275 p. ; 22 cm.', 'pigs_at_trough.jpg', '2007-11-29 17:56:00', '2007-11-29 16:18:33'),
(15, 'Lords of poverty : the power, prestige, and corruption of the international aid business', '', '9780871134691', 'Hancock, Graham', 'Corruption - Poverty', 'Text', 'Atlantic Monthly Press', 'New York', 'English', '338.9/1/091724 20', '', '', '', '', 'My Library', '1994', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', NULL, 'B00003', 'Reference', '338.9 Han l', 0, 0, NULL, 'xvi, 234 p. ; 22 cm.', 'lords_of_poverty.jpg', '2007-11-29 18:08:13', '2007-11-29 16:13:11'),
(6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '1st ed.', '0735712573', 'Douglas, Korry - Douglas, Susan', 'Writing & Writers of Revelation  - Rare Phonetics', 'Book', 'Sams', 'Indianapolis', 'English', '0A3', 'https://www.amazon.com.au/Healing-Emptiness-emotional-spiritual-well-being/dp/B09XZH8DD4/ref=asc_df_B09XZH8DD4/?tag=googleshopdsk-22&linkCode=df0&hvadid=464143480251&hvpos=&hvnetw=g&hvrand=7922449441192963026&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9060880&hvtargid=pla-1651851264467&psc=1', '', '', '', 'Melbourne', '2003', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'DeveloperÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s library', 'B00002 - B00021', 'Fiction', '0A3 KOR', 0, 0, NULL, 'xvii, 790 p. : ill. ; 23cm.', 'postgresql.jpg', '2007-11-29 16:29:33', '2023-05-01 21:24:13'),
(8, 'Ajax : creating Web pages with asynchronous JavaScript and XML', '', '9780132272674', 'Woychowsky, Edmond', 'Writing & Writers of Revelation  - Rare Phonetics', 'Book', 'Prentice Hall', 'Upper Saddle River, NJ', 'English', '2A2.814', '', '', '', '', 'Melbourne', '2007', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'Bruce PerensÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ Open Source series', 'B00023 - B00024', 'Children\'s Fiction - Fiction', '2A2.814 WOY', 0, 0, NULL, 'xxii, 384 p. : ill. ; 24 cm.', 'ajax.jpg', '2007-11-29 16:47:20', '2023-05-01 21:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:0:\"\";'),
(2, 'library_subname', 's:4:\"Home\";'),
(3, 'template', 'a:23:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:26:\"template/default/style.css\";s:10:\"responsive\";s:1:\"1\";s:23:\"classic_library_subname\";s:1:\"0\";s:28:\"classic_library_disableslide\";s:1:\"1\";s:24:\"classic_slide_transition\";s:4:\"fade\";s:23:\"classic_slide_animation\";s:4:\"none\";s:19:\"classic_slide_delay\";s:4:\"5000\";s:26:\"classic_popular_collection\";s:1:\"1\";s:31:\"classic_popular_collection_item\";s:2:\"12\";s:22:\"classic_new_collection\";s:1:\"1\";s:27:\"classic_new_collection_item\";s:2:\"12\";s:18:\"classic_top_reader\";s:1:\"0\";s:18:\"classic_suggestion\";s:1:\"0\";s:11:\"classic_map\";s:1:\"0\";s:16:\"classic_map_link\";s:0:\"\";s:16:\"classic_map_desc\";s:0:\"\";s:15:\"classic_fb_link\";s:0:\"\";s:20:\"classic_twitter_link\";s:0:\"\";s:20:\"classic_youtube_link\";s:0:\"\";s:22:\"classic_instagram_link\";s:0:\"\";s:23:\"classic_footer_about_us\";s:0:\"\";s:17:\"visitor_log_voice\";s:1:\"1\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"en_US\";'),
(6, 'opac_result_num', 's:2:\"30\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:1;'),
(10, 'loan_limit_override', 'b:1;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";'),
(23, 'logo_image', 'N;'),
(24, 'static_file_version', 'i:899147876;'),
(25, 'webicon', 's:11:\"webicon.png\";'),
(26, 'timezone', 's:19:\"Australia/Melbourne\";'),
(27, 'search_engine', 's:34:\"SLiMS\\\\SearchEngine\\\\DefaultEngine\";'),
(28, 'enable_counter_by_ip', 's:1:\"1\";'),
(29, 'allowed_counter_ip', 'a:1:{i:0;s:9:\"127.0.0.1\";}'),
(30, 'reserve_direct_database', 's:1:\"1\";'),
(31, 'reserve_on_loan_only', 's:1:\"0\";'),
(35, 'spellchecker_enabled', 'b:1;'),
(33, 'enable_chbox_confirm', 'i:1;'),
(38, 'selfRegistration', 'a:8:{s:22:\"selfRegistrationActive\";s:1:\"1\";s:5:\"title\";s:16:\"Join the library\";s:10:\"autoActive\";s:1:\"0\";s:9:\"withImage\";s:1:\"0\";s:13:\"separateTable\";s:1:\"1\";s:12:\"editableData\";s:1:\"0\";s:12:\"useRecaptcha\";s:1:\"0\";s:9:\"regisInfo\";s:59:\"Please see the librarian in person to activate your account\";}');

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT 0,
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0,
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sub_module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `sub_module`, `action`, `log_msg`, `log_date`) VALUES
(1, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2022-12-31 22:58:01'),
(2, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2022-12-31 23:02:33'),
(3, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2022-12-31 23:03:10'),
(4, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2022-12-31 23:03:38'),
(5, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2023-02-06 07:56:43'),
(6, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-06 07:59:19'),
(7, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2023-02-06 07:59:23'),
(8, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-06 07:59:35'),
(9, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (Faiz Ismail) with ID (1)', '2023-02-06 08:00:16'),
(10, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-02-06 08:00:27'),
(11, 'member', '1', 'circulation', 'Loan', 'Add', 'Admin insert new loan (B00002) for member (1)', '2023-02-06 08:00:30'),
(12, 'member', '1', 'circulation', 'Loan', 'Add', 'Admin insert new loan (B00006) for member (1)', '2023-02-06 08:00:32'),
(13, 'member', '1', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (1)', '2023-02-06 08:00:44'),
(14, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2023-02-06 08:01:57'),
(15, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 12:03:22'),
(16, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Lisensi SLiMS)', '2023-02-06 12:04:11'),
(17, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Tentang SLiMS)', '2023-02-06 12:04:11'),
(18, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Model Pengembangan Open Source)', '2023-02-06 12:04:11'),
(19, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Modul yang Tersedia)', '2023-02-06 12:04:11'),
(20, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Welcome To Admin Page)', '2023-02-06 12:04:11'),
(21, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Library Information)', '2023-02-06 12:04:11'),
(22, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Help On Usage)', '2023-02-06 12:04:11'),
(23, 'staff', '1', 'system', 'Content', 'Delete', 'Admin DELETE content (Homepage Info)', '2023-02-06 12:04:11'),
(24, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2023-02-06 13:19:49'),
(25, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-02-06 13:34:18'),
(26, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 13:34:23'),
(27, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-02-06 13:54:13'),
(28, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-06 13:54:19'),
(29, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-06 13:54:23'),
(30, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 13:54:30'),
(31, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-06 13:56:32'),
(32, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 13:56:38'),
(33, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 14:00:00'),
(34, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 14:01:39'),
(35, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 14:04:10'),
(36, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:05:54'),
(37, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:08:51'),
(38, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:12:06'),
(39, 'staff', '1', 'Login', '', '', 'Login FAILED for user 1 from address ::1', '2023-02-06 15:17:42'),
(40, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:17:52'),
(41, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:20:47'),
(42, 'staff', '1', 'Login', '', '', 'Login FAILED for user 1 from address ::1', '2023-02-06 15:22:15'),
(43, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:22:21'),
(44, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:23:40'),
(45, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-06 15:27:08'),
(46, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 127.0.0.1', '2023-02-06 15:28:08'),
(47, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-07 14:50:08'),
(48, 'member', 'sad', 'Login', '', '', 'Login FAILED for member sad from address ::1', '2023-02-07 14:50:21'),
(49, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-07 14:54:07'),
(50, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-07 15:09:13'),
(51, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-02-07 15:09:26'),
(52, 'member', '1', 'circulation', 'Loan', 'Return', 'Admin return item B00006 for member (1)', '2023-02-07 15:09:33'),
(53, 'member', '1', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (1)', '2023-02-07 15:09:37'),
(54, 'staff', '1', 'system', 'Logo', 'Delete', 'Admin remove logo', '2023-02-07 15:29:00'),
(55, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2023-02-07 15:29:10'),
(56, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-07 19:39:22'),
(57, 'staff', '1', 'system', 'Logo', 'Delete', 'Admin remove logo', '2023-02-07 19:39:32'),
(58, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2023-02-07 19:39:38'),
(59, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-09 00:07:33'),
(60, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-09 14:21:11'),
(61, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-13 22:21:42'),
(62, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-13 22:21:48'),
(63, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-13 23:36:16'),
(64, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-02-14 15:36:11'),
(65, 'staff', '1', 'bibliography', 'Item', 'Update', 'Admin update item data (B00002) with title (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases)', '2023-02-14 15:37:56'),
(66, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-02-14 15:38:50'),
(67, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-14 23:12:30'),
(68, 'staff', '1', 'bibliography', 'Item', 'Add', 'Admin insert item data (B00021) with title (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases)', '2023-02-14 23:13:54'),
(69, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-15 11:45:58'),
(70, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-15 12:23:30'),
(71, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-02-15 12:31:28'),
(72, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-15 12:31:33'),
(73, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-02-15 12:37:51'),
(74, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-15 12:37:58'),
(75, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-15 16:52:26'),
(76, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-16 00:03:31'),
(77, 'staff', '1', 'bibliography', 'Item', 'Add', 'Admin insert item data (B00022) with title (Ajax : creating Web pages with asynchronous JavaScript and XML)', '2023-02-16 00:38:42'),
(78, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-02-16 00:39:38'),
(79, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-02-16 00:41:04'),
(80, 'member', '1', 'circulation', 'Loan', 'Return', 'Admin return item B00002 for member (1)', '2023-02-16 00:41:12'),
(81, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item B00002 for member (1)', '2023-02-16 00:41:23'),
(82, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item B00001 for member (1)', '2023-02-16 00:41:26'),
(83, 'member', '1', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (1)', '2023-02-16 00:41:36'),
(84, 'staff', '1', 'bibliography', 'Item', 'Update', 'Admin update item data (B00022) with title (Ajax : creating Web pages with asynchronous JavaScript and XML)', '2023-02-16 00:42:15'),
(85, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-02-16 00:42:37'),
(86, 'staff', '1', 'bibliography', 'Item', 'Add', 'Admin insert item data (B00023) with title (Ajax : creating Web pages with asynchronous JavaScript and XML)', '2023-02-16 00:42:55'),
(87, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-02-16 00:42:56'),
(88, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-02-16 00:44:41'),
(89, 'staff', '1', 'bibliography', 'Item', 'Add', 'Admin insert item data (B00024) with title (Ajax : creating Web pages with asynchronous JavaScript and XML)', '2023-02-16 00:45:49'),
(90, 'staff', '1', 'bibliography', 'Item', 'Update', 'Admin update item data (B00024) with title (Ajax : creating Web pages with asynchronous JavaScript and XML)', '2023-02-16 00:46:07'),
(91, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-02-16 00:46:11'),
(92, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-16 10:12:13'),
(93, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-02-16 10:13:02'),
(94, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-17 09:39:38'),
(95, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-21 23:32:51'),
(96, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-22 23:11:52'),
(97, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-22 23:11:58'),
(98, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-23 23:46:57'),
(99, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-25 14:24:42'),
(100, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-26 00:13:25'),
(101, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-26 00:49:43'),
(102, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-26 00:54:14'),
(103, 'member', '658765', 'Login', '', '', 'Login FAILED for member 658765 from address ::1', '2023-02-26 00:56:25'),
(104, 'member', 'tyfdjytfd', 'Login', '', '', 'Login FAILED for member tyfdjytfd from address ::1', '2023-02-26 01:05:58'),
(105, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-02-26 01:18:22'),
(106, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-02-26 01:21:00'),
(107, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-26 01:26:31'),
(108, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-02-26 01:30:34'),
(109, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-02-26 01:30:49'),
(110, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-02-26 09:02:14'),
(111, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-03-01 00:21:29'),
(112, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-03-01 09:38:05'),
(113, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-03-02 21:14:38'),
(114, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2023-03-02 21:14:54'),
(115, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-03-02 21:47:34'),
(116, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-03-04 14:36:11'),
(117, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-03-04 16:45:07'),
(118, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-03-04 23:40:27'),
(119, 'staff', '1', 'bibliography', 'Item', 'Update', 'Admin update item data (B00002) with title (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases)', '2023-03-05 00:12:17'),
(120, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 00:12:21'),
(121, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 00:13:53'),
(122, 'staff', '1', 'bibliography', 'Attachment', 'Update', 'Admin updating file attachment data', '2023-03-05 00:17:56'),
(123, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 00:21:16'),
(124, 'staff', '1', 'bibliography', 'Attachment', 'Update', 'Admin updating file attachment data', '2023-03-05 00:21:55'),
(125, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 00:26:31'),
(126, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 00:43:32'),
(127, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 00:48:23'),
(128, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 01:24:36'),
(129, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 01:25:06'),
(130, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 01:33:50'),
(131, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-03-05 01:41:36'),
(132, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-03-05 01:42:31'),
(133, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Information Architecture for the World Wide Web: Designing Large-Scale Web Sites) with biblio_id (11)', '2023-03-05 01:44:06'),
(134, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-03-05 10:59:51'),
(135, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-03-05 11:06:51'),
(136, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-03-05 11:21:46'),
(137, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-03-05 11:21:49'),
(138, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-03-05 11:22:12'),
(139, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-03-05 11:22:14'),
(140, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-03-07 10:54:24'),
(141, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-05 16:55:13'),
(142, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-04-06 15:02:07'),
(143, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-06 15:11:14'),
(144, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-07 16:55:38'),
(145, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-04-08 15:32:03'),
(146, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-08 17:42:31'),
(147, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-10 17:16:05'),
(148, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address ::1', '2023-04-17 13:27:02'),
(149, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address ::1', '2023-04-17 13:46:07'),
(150, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address ::1', '2023-04-17 14:05:22'),
(151, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-17 14:05:36'),
(152, 'member', '', 'Login', '', '', 'Log Out from address ::1', '2023-04-17 14:16:07'),
(153, 'member', '1', 'Login', '', '', 'Login success for member 1 from address ::1', '2023-04-17 14:23:19'),
(154, 'member', 'admin', 'Login', '', '', 'Login FAILED for member admin from address ::1', '2023-04-27 23:24:01'),
(155, 'member', 'admin', 'Login', '', '', 'Login FAILED for member admin from address 103.244.176.197', '2023-04-28 20:29:05'),
(156, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-04-28 20:32:32'),
(157, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 1.120.8.70', '2023-04-29 16:19:27'),
(158, 'member', 'admin', 'Login', '', '', 'Login FAILED for member admin from address 223.123.105.162', '2023-04-29 16:20:48'),
(159, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 223.123.105.162', '2023-04-29 16:21:44'),
(160, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 223.123.105.162', '2023-04-29 16:38:18'),
(161, 'staff', '1', 'bibliography', 'Item', 'Update', 'Admin update item data (B00002) with title (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases)', '2023-04-29 16:58:44'),
(162, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-04-29 16:58:48'),
(163, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 202.67.108.219', '2023-04-29 23:00:05'),
(164, 'member', 'saad@sidtechno.com', 'Login', '', '', 'Login FAILED for member saad@sidtechno.com from address 223.123.121.115', '2023-04-30 13:50:41'),
(165, 'member', 'mf_ismaiil@hotmail.com', 'Login', '', '', 'Login FAILED for member mf_ismaiil@hotmail.com from address 223.123.121.115', '2023-04-30 13:53:52'),
(166, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 202.67.108.219', '2023-04-30 15:14:25'),
(167, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-01 15:51:37'),
(168, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 15:52:09'),
(169, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 16:04:48'),
(170, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 16:04:51'),
(171, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 16:04:52'),
(172, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 131.172.225.199', '2023-05-01 16:07:33'),
(173, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Faiz Ismail) with ID (1)', '2023-05-01 16:08:19'),
(174, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 131.172.225.199', '2023-05-01 16:08:45'),
(175, 'member', '', 'Login', '', '', 'Log Out from address 131.172.225.199', '2023-05-01 16:09:45'),
(176, 'member', '', 'Login', '', '', 'Log Out from address 131.172.225.199', '2023-05-01 16:09:51'),
(177, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 16:40:08'),
(178, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 16:40:20'),
(179, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:00:00'),
(180, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:00:16'),
(181, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:00:25'),
(182, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:01:03'),
(183, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:01:21'),
(184, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:01:26'),
(185, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:01:47'),
(186, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:03:13'),
(187, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:04:02'),
(188, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:07:02'),
(189, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:07:21'),
(190, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:07:23'),
(191, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:07:31'),
(192, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:07:33'),
(193, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:07:38'),
(194, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:10:05'),
(195, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:10:07'),
(196, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:10:30'),
(197, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:10:33'),
(198, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:16:43'),
(199, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:17:11'),
(200, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:17:16'),
(201, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:17:28'),
(202, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:17:32'),
(203, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:17:38'),
(204, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:17:41'),
(205, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:24:58'),
(206, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:29:44'),
(207, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:30:48'),
(208, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:30:59'),
(209, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:31:06'),
(210, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-01 17:31:11'),
(211, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 17:31:16'),
(212, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 17:31:44'),
(213, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 20:51:15'),
(214, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-01 21:12:56'),
(215, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-01 21:13:08'),
(216, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 202.67.108.219', '2023-05-01 21:23:07'),
(217, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases) with biblio_id (6)', '2023-05-01 21:24:13'),
(218, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-05-01 21:25:19'),
(219, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Linux In a Nutshell) with biblio_id (2)', '2023-05-01 21:25:55'),
(220, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Linux In a Nutshell) with biblio_id (2)', '2023-05-01 21:28:07'),
(221, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Ajax : creating Web pages with asynchronous JavaScript and XML) with biblio_id (8)', '2023-05-01 21:28:42'),
(222, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-01 21:40:10'),
(223, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (test) with ID (2)', '2023-05-01 21:53:07'),
(224, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 202.67.108.219', '2023-05-01 21:53:18'),
(225, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-02 14:38:59'),
(226, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 131.172.225.199', '2023-05-02 14:39:44'),
(227, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-02 15:20:45'),
(228, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 131.172.225.199', '2023-05-02 15:49:51'),
(229, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-02 17:33:31'),
(230, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 17:44:07'),
(231, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 17:59:16'),
(232, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 17:59:28'),
(233, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 18:02:14'),
(234, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:02:22'),
(235, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 18:03:23'),
(236, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:03:28'),
(237, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 18:04:10'),
(238, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:04:15'),
(239, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 18:04:57'),
(240, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:05:03'),
(241, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 18:05:23'),
(242, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:05:29'),
(243, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 18:08:39'),
(244, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:10:15'),
(245, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 18:48:33'),
(246, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-02 19:13:38'),
(247, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-02 19:13:51'),
(248, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-02 19:52:35'),
(249, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-05-02 19:52:43'),
(250, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 202.67.108.219', '2023-05-02 21:19:33'),
(251, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-02 21:26:53'),
(252, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 202.67.108.219', '2023-05-02 21:27:22'),
(253, 'staff', '1', 'bibliography', 'Item', 'Add', 'Admin insert item data (123) with title (Information Architecture for the World Wide Web: Designing Large-Scale Web Sites)', '2023-05-02 21:27:33'),
(254, 'staff', '1', 'bibliography', '', '', 'Admin update bibliographic data (Information Architecture for the World Wide Web: Designing Large-Scale Web Sites) with biblio_id (11)', '2023-05-02 21:27:40'),
(255, 'member', '', 'Login', '', '', 'Log Out from address 202.67.108.219', '2023-05-02 22:33:07'),
(256, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 202.67.108.219', '2023-05-02 22:33:18'),
(257, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 00:12:11'),
(258, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 202.67.108.219', '2023-05-03 00:22:32'),
(259, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 202.67.108.219', '2023-05-03 00:25:09'),
(260, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-03 00:27:41'),
(261, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-05-03 00:27:53'),
(262, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 202.67.108.219', '2023-05-03 00:29:40'),
(263, 'member', '', 'Login', '', '', 'Log Out from address 202.67.108.219', '2023-05-03 00:30:33'),
(264, 'member', '', 'Login', '', '', 'Log Out from address 202.67.108.219', '2023-05-03 00:30:33'),
(265, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 202.67.108.219', '2023-05-03 00:30:40'),
(266, 'member', '', 'Login', '', '', 'Log Out from address 202.67.108.219', '2023-05-03 00:32:59'),
(267, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item B00024 for member (1)', '2023-05-03 00:58:51'),
(268, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item 123 for member (1)', '2023-05-03 00:58:58'),
(269, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item B00010 for member (1)', '2023-05-03 00:59:34'),
(270, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item B00010 for member (1)', '2023-05-03 01:07:51'),
(271, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 218.214.189.27', '2023-05-03 09:32:15'),
(272, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 218.214.189.27', '2023-05-03 09:49:19'),
(273, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:19:13'),
(274, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:36:52'),
(275, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:37:25'),
(276, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:37:45'),
(277, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:37:55'),
(278, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:39:09'),
(279, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:41:26'),
(280, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:41:36'),
(281, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:41:42'),
(282, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:42:47'),
(283, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:42:58'),
(284, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:43:04'),
(285, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:44:43'),
(286, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:44:49'),
(287, 'member', '2', 'Login', '', '', 'Login success for member 2 from address 131.172.30.176', '2023-05-03 10:44:59'),
(288, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 10:48:44'),
(289, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 131.172.30.176', '2023-05-03 10:51:20'),
(290, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-05-03 10:52:18'),
(291, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 131.172.30.176', '2023-05-03 10:54:28'),
(292, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 131.172.30.176', '2023-05-03 11:37:24'),
(293, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 131.172.30.176', '2023-05-03 11:38:29'),
(294, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 11:58:45'),
(295, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Muhammad Ismail) with ID (3)', '2023-05-03 12:05:36'),
(296, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 13:49:52'),
(297, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-03 14:19:16'),
(298, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-03 14:22:03'),
(299, 'member', '', 'Forgot Password', 'Password', 'Request', 'has been requested a new password.', '2023-05-03 14:51:31'),
(300, 'member', '', 'Forgot Password', 'Password', 'Request', 'has been requested a new password.', '2023-05-03 14:52:02'),
(301, 'member', '', 'Forgot Password', 'Password', 'Request', 'has been requested a new password.', '2023-05-03 14:52:41'),
(302, 'member', '', 'Login', 'Password', 'Update', 'Change password SUCCESS for user  from address 103.244.176.197', '2023-05-03 14:59:43'),
(303, 'member', '1000', 'Login', '', '', 'Login success for member 1000 from address 103.244.176.197', '2023-05-03 14:59:54'),
(304, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 131.172.30.176', '2023-05-03 15:07:17'),
(305, 'member', '', 'Login', '', '', 'Log Out from address 131.172.30.176', '2023-05-03 15:07:19'),
(306, 'member', 'Muhammad Ismail', 'Forgot Password', 'Password', 'Request', 'Muhammad Ismail has been requested a new password.', '2023-05-03 15:07:31'),
(307, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-03 15:14:02'),
(308, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-03 15:15:25'),
(309, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 15:21:25'),
(310, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-03 15:41:41'),
(311, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Muhammad Saads) with ID (1000)', '2023-05-03 15:57:26'),
(312, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Muhammad Saads) with ID (1000)', '2023-05-03 15:57:40'),
(313, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Muhammada Saads) with ID (1000)', '2023-05-03 15:57:59'),
(314, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Muhammada Saads) with ID (1000)', '2023-05-03 16:00:35'),
(315, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Muhammada Saads) with ID (1000)', '2023-05-03 16:01:57'),
(316, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-03 16:02:59'),
(317, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-03 16:03:05'),
(318, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 16:03:18'),
(319, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 16:31:32'),
(320, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-03 16:35:10'),
(321, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-03 16:35:21'),
(322, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-05-03 16:35:31'),
(323, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item 123 for member (1)', '2023-05-03 16:35:38'),
(324, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item B00023 for member (1)', '2023-05-03 16:50:02'),
(325, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-03 16:51:22'),
(326, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 16:51:29'),
(327, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item 123 for member (1)', '2023-05-03 16:55:55'),
(328, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 18:49:33'),
(329, 'member', '', 'Login', '', '', 'Log Out from address 1.120.8.70', '2023-05-03 18:54:44'),
(330, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 1.120.8.70', '2023-05-03 18:55:48'),
(331, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 18:59:30'),
(332, 'member', '', 'Login', '', '', 'Log Out from address 1.120.8.70', '2023-05-03 19:00:28'),
(333, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 19:00:37'),
(334, 'member', '', 'Login', '', '', 'Log Out from address 1.120.8.70', '2023-05-03 19:00:41'),
(335, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 19:00:55'),
(336, 'member', '', 'Login', '', '', 'Log Out from address 1.120.8.70', '2023-05-03 19:00:59'),
(337, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 19:01:15'),
(338, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 103.244.176.197', '2023-05-03 19:18:32'),
(339, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 1.120.8.70', '2023-05-03 19:45:16'),
(340, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 19:46:27'),
(341, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-03 19:48:38'),
(342, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-03 19:48:43'),
(343, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-03 19:48:51'),
(344, 'member', '1', 'Login', '', '', 'Login FAILED for member 1 from address 103.244.176.197', '2023-05-03 19:48:59'),
(345, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 19:49:11'),
(346, 'member', '1', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (1)', '2023-05-03 19:55:19'),
(347, 'member', '1', 'circulation', 'Reservation', 'Delete', 'Admin remove reservation for item 123 for member (1)', '2023-05-03 19:55:28'),
(348, 'member', '', 'Login', '', '', 'Log Out from address 103.244.176.197', '2023-05-03 19:57:05'),
(349, 'member', '1', 'Login', '', '', 'Login success for member 1 from address 103.244.176.197', '2023-05-03 19:57:10'),
(350, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 20:01:11'),
(351, 'member', '', 'Login', '', '', 'Log Out from address 1.120.8.70', '2023-05-03 20:02:22'),
(352, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 20:02:32'),
(353, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 1.120.8.70', '2023-05-03 20:05:43'),
(354, 'member', '', 'Login', '', '', 'Log Out from address 1.120.8.70', '2023-05-03 20:06:46'),
(355, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 20:08:19'),
(356, 'member', '3', 'Login', '', '', 'Login success for member 3 from address 1.120.8.70', '2023-05-03 20:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_template` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgot` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `admin_template`, `forgot`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$RD7K4/uwM2J8SR9soZQZr.cu9N58b9eqRuH43tFbYk/AiwNByTVcO', NULL, NULL, NULL, NULL, '2023-05-03 20:05:43', '1.120.8.70', 'a:1:{i:0;s:1:\"1\";}', 'a:4:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";s:13:\"default_color\";s:7:\"#031c3e\";s:18:\"always_show_tracks\";s:1:\"1\";}', NULL, '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_count`
--

INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `first_name`, `last_name`, `institution`, `checkin_date`) VALUES
(1, '1', 'Faiz Ismail', '', '', '', '2023-02-06 08:00:44'),
(2, '1', 'Faiz Ismail', '', '', '', '2023-02-07 15:09:37'),
(3, '1', 'Faiz Ismail', '', '', '', '2023-02-16 00:41:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Indexes for table `biblio_mark`
--
ALTER TABLE `biblio_mark`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `files_read`
--
ALTER TABLE `files_read`
  ADD PRIMARY KEY (`filelog_id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `index_documents`
--
ALTER TABLE `index_documents`
  ADD PRIMARY KEY (`document_id`,`word_id`,`location`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `index_words`
--
ALTER TABLE `index_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Indexes for table `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `member_name` (`member_name`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_online`
--
ALTER TABLE `member_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  ADD PRIMARY KEY (`dbfield`),
  ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`) USING HASH;

--
-- Indexes for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`,`series_title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_read`
--
ALTER TABLE `files_read`
  MODIFY `filelog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `index_words`
--
ALTER TABLE `index_words`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member_online`
--
ALTER TABLE `member_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1523;

--
-- AUTO_INCREMENT for table `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
