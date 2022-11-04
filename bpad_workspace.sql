-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 09:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpad_workspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `ossn_annotations`
--

CREATE TABLE `ossn_annotations` (
  `id` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_annotations`
--

INSERT INTO `ossn_annotations` (`id`, `owner_guid`, `subject_guid`, `type`, `time_created`) VALUES
(1, 1, 2, 'messagetypingstatus', 1663230661);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_components`
--

CREATE TABLE `ossn_components` (
  `id` bigint(20) NOT NULL,
  `com_id` varchar(50) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_components`
--

INSERT INTO `ossn_components` (`id`, `com_id`, `active`) VALUES
(1, 'OssnProfile', 1),
(2, 'OssnWall', 1),
(3, 'OssnComments', 1),
(4, 'OssnLikes', 1),
(5, 'OssnPhotos', 1),
(6, 'OssnNotifications', 1),
(7, 'OssnSearch', 1),
(8, 'OssnMessages', 1),
(9, 'OssnAds', 1),
(10, 'OssnGroups', 1),
(11, 'OssnSitePages', 1),
(12, 'OssnBlock', 1),
(13, 'OssnChat', 1),
(14, 'OssnPoke', 1),
(15, 'OssnInvite', 1),
(16, 'OssnEmbed', 1),
(17, 'OssnSmilies', 1),
(18, 'OssnSounds', 1),
(19, 'OssnAutoPagination', 1),
(20, 'OssnMessageTyping', 1),
(21, 'OssnRealTimeComments', 1),
(22, 'OssnPostBackground', 1),
(23, 'OssnGiphy', 1),
(24, 'SearchPosts', 1),
(25, 'CSVUser', 1),
(33, 'Google', 1),
(29, 'Greetings', 1),
(30, 'TimeZone', 1),
(31, 'Blank', 1),
(34, 'Pacman', 1),
(35, 'OssnServices', 1),
(39, 'Pages', 1),
(38, 'MenuBuilder', 1),
(40, 'FastPreLoader', 1),
(43, 'fancybox', 1),
(44, 'MentionNotifications', 1),
(45, 'Mentions', 1),
(46, 'ImagesInMessage', 1),
(48, 'WhoIsOnline', 1),
(49, 'userautovalidate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_entities`
--

CREATE TABLE `ossn_entities` (
  `guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_entities`
--

INSERT INTO `ossn_entities` (`guid`, `owner_guid`, `type`, `subtype`, `time_created`, `time_updated`, `permission`, `active`) VALUES
(1, 1, 'user', 'birthdate', 1661828166, 1663129289, 2, 1),
(2, 1, 'user', 'gender', 1661828166, 1663129289, 2, 1),
(3, 1, 'user', 'password_algorithm', 1661828166, 0, 2, 1),
(4, 1, 'object', 'membership', 1661828800, 1664347963, 2, 1),
(5, 2, 'object', 'membership', 1661828839, 1664347997, 2, 1),
(6, 1, 'user', 'cover_time', 1661828853, 1663129477, 2, 1),
(7, 1, 'user', 'file:profile:photo', 1661828938, 0, 2, 1),
(8, 1, 'user', 'icon_time', 1661828938, 1663129621, 2, 1),
(9, 1, 'user', 'icon_guid', 1661828938, 1663129621, 2, 1),
(104, 42, 'object', 'membership', 1663135956, 1664348751, 2, 1),
(103, 41, 'object', 'membership', 1663135457, 1664348723, 2, 1),
(102, 40, 'object', 'membership', 1663135431, 1664348636, 2, 1),
(15, 4, 'object', 'item_type', 1661829037, 0, 2, 1),
(16, 4, 'object', 'item_guid', 1661829037, 0, 2, 1),
(17, 4, 'object', 'poster_guid', 1661829037, 0, 2, 1),
(18, 4, 'object', 'access', 1661829037, 0, 2, 1),
(19, 4, 'object', 'time_updated', 1661829037, 0, 2, 1),
(20, 5, 'object', 'item_type', 1661829201, 0, 2, 1),
(21, 5, 'object', 'item_guid', 1661829201, 0, 2, 1),
(22, 5, 'object', 'poster_guid', 1661829201, 0, 2, 1),
(23, 5, 'object', 'access', 1661829201, 0, 2, 1),
(24, 5, 'object', 'time_updated', 1661829201, 0, 2, 1),
(25, 6, 'object', 'item_type', 1661829465, 0, 2, 1),
(26, 6, 'object', 'item_guid', 1661829465, 0, 2, 1),
(27, 6, 'object', 'poster_guid', 1661829465, 0, 2, 1),
(28, 6, 'object', 'access', 1661829465, 0, 2, 1),
(29, 6, 'object', 'time_updated', 1661829465, 0, 2, 1),
(30, 6, 'component', 'close_anywhere', 1661829740, 0, 2, 1),
(31, 7, 'object', 'site_url', 1661829845, 0, 2, 1),
(32, 7, 'object', 'file:ossnads', 1661829845, 0, 2, 1),
(110, 45, 'object', 'access', 1663230209, 0, 2, 1),
(246, 76, 'object', 'newtab', 1664946448, 0, 2, 1),
(245, 76, 'object', 'icon_unicode', 1664946448, 0, 2, 1),
(107, 1, 'user', 'login:reset:code', 1663214548, 0, 2, 1),
(39, 1, 'user', 'file:profile:cover', 1661833929, 0, 2, 1),
(40, 1, 'user', 'cover_guid', 1661833930, 1663129477, 2, 1),
(50, 2, 'user', 'cover_time', 1661835073, 0, 2, 1),
(49, 2, 'user', 'password_algorithm', 1661834999, 0, 2, 1),
(48, 2, 'user', 'gender', 1661834999, 0, 2, 1),
(47, 2, 'user', 'birthdate', 1661834999, 0, 2, 1),
(46, 1, 'user', 'cover_position', 1661833961, 1663129496, 2, 1),
(51, 2, 'user', 'file:profile:photo', 1661835248, 0, 2, 1),
(52, 2, 'user', 'icon_time', 1661835248, 1661835266, 2, 1),
(53, 2, 'user', 'icon_guid', 1661835248, 1661835266, 2, 1),
(59, 2, 'user', 'file:profile:photo', 1661835257, 0, 2, 1),
(65, 2, 'user', 'file:profile:photo', 1661835266, 0, 2, 1),
(66, 14, 'object', 'item_type', 1661835266, 0, 2, 1),
(67, 14, 'object', 'item_guid', 1661835266, 0, 2, 1),
(68, 14, 'object', 'poster_guid', 1661835266, 0, 2, 1),
(69, 14, 'object', 'access', 1661835266, 0, 2, 1),
(70, 14, 'object', 'time_updated', 1661835266, 0, 2, 1),
(71, 1, 'user', 'language', 1663056974, 1663129289, 2, 1),
(72, 1, 'user', 'file:profile:photo', 1663057779, 0, 2, 1),
(73, 1, 'user', 'file:profile:photo', 1663057812, 0, 2, 1),
(74, 1, 'user', 'file:profile:photo', 1663057824, 0, 2, 1),
(75, 1, 'user', 'timezone', 1663060947, 1663129289, 2, 1),
(76, 1, 'user', 'file:profile:cover', 1663129317, 0, 2, 1),
(111, 45, 'object', 'file:ossn:aphoto', 1663230538, 0, 2, 1),
(106, 44, 'object', 'membership', 1663136054, 1664348866, 2, 1),
(105, 43, 'object', 'membership', 1663136015, 1664348799, 2, 1),
(82, 1, 'user', 'file:profile:cover', 1663129476, 0, 2, 1),
(97, 35, 'object', 'membership', 1663135099, 1664348288, 2, 1),
(96, 34, 'object', 'membership', 1663135019, 0, 2, 1),
(95, 33, 'object', 'membership', 1663134366, 1664348245, 2, 1),
(94, 32, 'object', 'membership', 1663134229, 1664348035, 2, 1),
(88, 1, 'user', 'file:profile:photo', 1663129621, 0, 2, 1),
(101, 39, 'object', 'membership', 1663135405, 1664348650, 2, 1),
(100, 38, 'object', 'membership', 1663135287, 1664348399, 2, 1),
(99, 37, 'object', 'membership', 1663135249, 1664755227, 2, 1),
(98, 36, 'object', 'membership', 1663135156, 1664348312, 2, 1),
(112, 45, 'object', 'file:ossn:aphoto', 1663230539, 0, 2, 1),
(113, 45, 'object', 'file:ossn:aphoto', 1663230539, 0, 2, 1),
(114, 45, 'object', 'file:ossn:aphoto', 1663230540, 0, 2, 1),
(115, 46, 'object', 'photos_guids', 1663230552, 0, 2, 1),
(116, 46, 'object', 'item_type', 1663230552, 0, 2, 1),
(117, 46, 'object', 'item_guid', 1663230552, 0, 2, 1),
(118, 46, 'object', 'poster_guid', 1663230552, 0, 2, 1),
(119, 46, 'object', 'access', 1663230552, 0, 2, 1),
(120, 46, 'object', 'time_updated', 1663230552, 0, 2, 1),
(121, 1, 'annotation', 'status_time_updated', 1663230661, 1663234172, 2, 1),
(122, 1, 'annotation', 'messagetypingstatus', 1663230661, 1663234172, 2, 1),
(123, 1, 'message', 'is_deleted_from', 1663230664, 0, 2, 1),
(124, 1, 'message', 'is_deleted_to', 1663230664, 1664440285, 2, 1),
(154, 3, 'user', 'cover_time', 1663828536, 0, 2, 1),
(153, 3, 'user', 'password_algorithm', 1663828447, 0, 2, 1),
(152, 3, 'user', 'timezone', 1663828447, 0, 2, 1),
(150, 3, 'user', 'birthdate', 1663828447, 0, 2, 1),
(151, 3, 'user', 'gender', 1663828447, 0, 2, 1),
(244, 76, 'object', 'icon_name', 1664946448, 0, 2, 1),
(242, 76, 'object', 'menu_type', 1664946448, 0, 2, 1),
(243, 76, 'object', 'menu_subtype', 1664946448, 0, 2, 1),
(172, 58, 'object', 'icon_name', 1663912502, 0, 2, 1),
(171, 58, 'object', 'menu_subtype', 1663912502, 0, 2, 1),
(170, 58, 'object', 'menu_type', 1663912502, 0, 2, 1),
(173, 58, 'object', 'icon_unicode', 1663912502, 0, 2, 1),
(174, 58, 'object', 'newtab', 1663912502, 0, 2, 1),
(175, 60, 'object', 'menu_type', 1663913912, 0, 2, 1),
(176, 60, 'object', 'menu_subtype', 1663913912, 0, 2, 1),
(177, 60, 'object', 'icon_name', 1663913912, 0, 2, 1),
(178, 60, 'object', 'icon_unicode', 1663913912, 0, 2, 1),
(179, 60, 'object', 'newtab', 1663913912, 0, 2, 1),
(197, 65, 'object', 'icon_name', 1663921309, 0, 2, 1),
(198, 65, 'object', 'icon_unicode', 1663921309, 0, 2, 1),
(199, 65, 'object', 'newtab', 1663921309, 0, 2, 1),
(195, 65, 'object', 'menu_type', 1663921309, 0, 2, 1),
(196, 65, 'object', 'menu_subtype', 1663921309, 0, 2, 1),
(207, 68, 'object', 'icon_name', 1663923670, 0, 2, 1),
(206, 68, 'object', 'menu_subtype', 1663923670, 0, 2, 1),
(205, 68, 'object', 'menu_type', 1663923670, 0, 2, 1),
(208, 68, 'object', 'icon_unicode', 1663923670, 0, 2, 1),
(209, 68, 'object', 'newtab', 1663923670, 0, 2, 1),
(210, 4, 'user', 'birthdate', 1664352935, 0, 2, 1),
(211, 4, 'user', 'gender', 1664352935, 0, 2, 1),
(212, 4, 'user', 'timezone', 1664352935, 0, 2, 1),
(213, 4, 'user', 'password_algorithm', 1664352935, 0, 2, 1),
(214, 4, 'user', 'cover_time', 1664354087, 0, 2, 1),
(215, 2, 'message', 'is_deleted_from', 1664440090, 0, 2, 1),
(216, 2, 'message', 'is_deleted_to', 1664440090, 0, 2, 1),
(217, 2, 'message', 'is_deleted', 1664440298, 0, 2, 1),
(218, 5, 'user', 'birthdate', 1664441654, 0, 2, 1),
(219, 5, 'user', 'gender', 1664441654, 0, 2, 1),
(220, 5, 'user', 'timezone', 1664441654, 0, 2, 1),
(221, 5, 'user', 'password_algorithm', 1664441654, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_entities_metadata`
--

CREATE TABLE `ossn_entities_metadata` (
  `id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_entities_metadata`
--

INSERT INTO `ossn_entities_metadata` (`id`, `guid`, `value`) VALUES
(1, 1, '26/04/1986'),
(2, 2, 'male'),
(3, 3, 'bcrypt'),
(4, 4, '2'),
(5, 5, '1'),
(6, 6, '1663129477'),
(7, 7, 'profile/photo/e20c4e2759d96c8d8083ee13978e30c8.jfif'),
(8, 8, '1663129621'),
(9, 9, '88'),
(113, 113, 'album/photos/cb6e125fe19635b4713d542c0ee07c78.png'),
(106, 106, '1'),
(105, 105, '1'),
(104, 104, '1'),
(15, 15, ''),
(16, 16, ''),
(17, 17, '1'),
(18, 18, '2'),
(19, 19, '0'),
(20, 20, ''),
(21, 21, ''),
(22, 22, '1'),
(23, 23, '2'),
(24, 24, '0'),
(25, 25, ''),
(26, 26, ''),
(27, 27, '1'),
(28, 28, '2'),
(29, 29, '0'),
(30, 30, 'on'),
(31, 31, 'https://jamc.jakarta.go.id/portal/'),
(32, 32, 'ossnads/images/ecc681b852edcbe3e75bf3bd430c7ba5.png'),
(112, 112, 'album/photos/a2f011fd51595b2554ae50b80f42af16.png'),
(111, 111, 'album/photos/0cca939295cebb2941c1e913d717129f.jpg'),
(244, 244, 'fas fa-border-all'),
(110, 110, '2'),
(246, 246, 'no'),
(107, 107, '2d9b4fffd3823f197ed1353dcd1381114dd1e7a849458b5e151ec2043321c93d'),
(39, 39, 'profile/cover/8ff7cf94b154fb532b6ef5d7bae03eed.jpg'),
(40, 40, '82'),
(49, 49, 'bcrypt'),
(48, 48, 'male'),
(47, 47, '16/08/1971'),
(46, 46, '[\"-268px\",\"0px\"]'),
(50, 50, '1661835073'),
(51, 51, 'profile/photo/d88d21996f853fe4478f30bbc5ae7864.jfif'),
(52, 52, '1661835266'),
(53, 53, '65'),
(59, 59, 'profile/photo/d1b2c1b17a2968ce97f4cf1f3129e5fc.png'),
(65, 65, 'profile/photo/d5d741a4e1c72985c3b28b3075ea6531.png'),
(66, 66, 'profile:photo'),
(67, 67, '65'),
(68, 68, '2'),
(69, 69, '3'),
(70, 70, '0'),
(71, 71, 'id'),
(72, 72, 'profile/photo/7a7fa9988dfb584930098d82d1fba281.png'),
(73, 73, 'profile/photo/654750b65ef9eeac77c4e9c48b4f700b.png'),
(74, 74, 'profile/photo/da13b34f9b335a2113ef0db7d7d928bf.png'),
(75, 75, 'Asia/Jakarta'),
(76, 76, 'profile/cover/1a809a1b45109085e0ea1425808b3ec0.jpg'),
(114, 114, 'album/photos/75108939d10f8274b9e3f0069691adad.jpg'),
(82, 82, 'profile/cover/65cd421813b195833e62a5f260ae4ef1.jpg'),
(98, 98, '1'),
(97, 97, '1'),
(96, 96, '1'),
(95, 95, '1'),
(94, 94, '1'),
(88, 88, 'profile/photo/a7f710526508ecaf3bf724f721e51341.jpg'),
(103, 103, '1'),
(102, 102, '1'),
(101, 101, '1'),
(100, 100, '1'),
(99, 99, '1'),
(115, 115, '111,112,113,114'),
(116, 116, 'album:photos:wall'),
(117, 117, '45'),
(118, 118, '1'),
(119, 119, '2'),
(120, 120, '0'),
(121, 121, '1663234172'),
(122, 122, 'no'),
(123, 123, ''),
(124, 124, '1'),
(245, 245, '\\f84c'),
(154, 154, '1663828536'),
(153, 153, 'bcrypt'),
(152, 152, 'Asia/Jakarta'),
(150, 150, '18/09/1994'),
(151, 151, 'female'),
(243, 243, 'google'),
(242, 242, 'newsfeed'),
(172, 172, 'fas fa-crow'),
(171, 171, 'games'),
(170, 170, 'newsfeed'),
(173, 173, '\\f520'),
(174, 174, 'no'),
(175, 175, 'newsfeed'),
(176, 176, 'games'),
(177, 177, 'fas fa-compress'),
(178, 178, '\\f066'),
(179, 179, 'no'),
(199, 199, 'no'),
(197, 197, 'fas fa-binoculars'),
(198, 198, '\\f1e5'),
(195, 195, 'newsfeed'),
(196, 196, 'google'),
(207, 207, 'fas fa-map-marker-alt'),
(206, 206, 'google'),
(205, 205, 'newsfeed'),
(208, 208, '\\f3c5'),
(209, 209, 'no'),
(210, 210, '01/09/1986'),
(211, 211, 'male'),
(212, 212, 'Asia/Jakarta'),
(213, 213, 'bcrypt'),
(214, 214, '1664354087'),
(215, 215, ''),
(216, 216, ''),
(217, 217, '1'),
(218, 218, '13/09/1994'),
(219, 219, 'female'),
(220, 220, 'Asia/Jakarta'),
(221, 221, 'bcrypt');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_likes`
--

CREATE TABLE `ossn_likes` (
  `id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subtype` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_likes`
--

INSERT INTO `ossn_likes` (`id`, `subject_id`, `guid`, `type`, `subtype`) VALUES
(1, 6, 1, 'post', 'like');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_messages`
--

CREATE TABLE `ossn_messages` (
  `id` bigint(20) NOT NULL,
  `message_from` bigint(20) NOT NULL,
  `message_to` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_messages`
--

INSERT INTO `ossn_messages` (`id`, `message_from`, `message_to`, `message`, `viewed`, `time`) VALUES
(1, 2, 1, 'tes', '1', 1663230664),
(2, 1, 2, '', '0', 1664440090);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_notifications`
--

CREATE TABLE `ossn_notifications` (
  `guid` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `poster_guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time_created` int(11) NOT NULL,
  `item_guid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_notifications`
--

INSERT INTO `ossn_notifications` (`guid`, `type`, `poster_guid`, `owner_guid`, `subject_guid`, `viewed`, `time_created`, `item_guid`) VALUES
(1, 'group:joinrequest', 2, 1, 1, '', 1661836352, 0),
(2, 'group:joinrequest', 2, 1, 2, '', 1661836361, 0),
(3, 'group:joinrequest', 1, 2, 2, '', 1663134846, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_object`
--

CREATE TABLE `ossn_object` (
  `guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time_created` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `subtype` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_object`
--

INSERT INTO `ossn_object` (`guid`, `owner_guid`, `type`, `time_created`, `title`, `description`, `subtype`) VALUES
(1, 1, 'user', 1661828800, 'BPAD', 'Badan Pengelolaan Aset Daerah Provinsi DKI Jakarta', 'ossngroup'),
(2, 2, 'user', 1661828839, 'PUSDATIN', 'Pusat Data dan Informasi Aset', 'ossngroup'),
(35, 1, 'user', 1663135099, 'Bidang PPSA', 'Bidang Perolehan, Pembinaan dan Sengketa Aset', 'ossngroup'),
(4, 1, 'user', 1661829037, '', '{\"post\":\"Test-post\",\"location\":\"Jalan Abdul Muis, Gambir, Daerah Khusus Ibukota Jakarta, Indonesia\"}', 'wall'),
(5, 1, 'user', 1661829201, '', '{\"post\":\"https:\\/\\/www.youtube.com\\/watch?v=tsf2SvsKh-E\"}', 'wall'),
(6, 1, 'user', 1661829465, '', '{\"post\":\"https:\\/\\/www.tiktok.com\\/@bpad_jakarta\\/video\\/7106882981394009371?is_from_webapp=1&amp;amp;sender_device=pc&amp;amp;web_id=7137501578693789185\"}', 'wall'),
(7, 1, 'site', 1661829845, 'Jakarta Asset Management Center', 'Membantu Badan Menyelenggarakan Kegiatan Teknis Operasional Optimalisasi Pendayagunaan Barang Milik Daerah', 'ossnads'),
(46, 1, 'user', 1663230552, '', '{\"post\":\"null:data\"}', 'wall'),
(45, 1, 'user', 1663230209, 'Sample Album', '', 'ossn:album'),
(14, 2, 'user', 1661835266, '', '{\"post\":\"null:data\"}', 'wall'),
(42, 1, 'user', 1663135956, 'Suban - Selatan', 'Suku Badan Pengelolaan Aset Daerah Kota Jakarta Selatan', 'ossngroup'),
(41, 1, 'user', 1663135457, 'Suban - Barat', 'Suku Badan Pengelolaan Aset Daerah Kota Jakarta Barat', 'ossngroup'),
(40, 1, 'user', 1663135431, 'Suban - Utara', 'Suku Badan Pengelolaan Aset Daerah Kota Jakarta Utara', 'ossngroup'),
(39, 1, 'user', 1663135405, 'Suban - Pusat', 'Suku Badan Pengelolaan Aset Daerah Kota Jakarta Pusat', 'ossngroup'),
(38, 1, 'user', 1663135287, 'Bidang PUA', 'Bidang Penatausahaan Aset', 'ossngroup'),
(37, 1, 'user', 1663135249, 'Bidang P2P', 'Bidang Perolehan, Pemanfaatan dan Penilaian Aset', 'ossngroup'),
(36, 1, 'user', 1663135156, 'Bidang PSDA', 'Bidang Pengalihan Status dan Dokumentasi Aset', 'ossngroup'),
(34, 1, 'user', 1663135019, 'Sekretariat', '', 'ossngroup'),
(32, 1, 'user', 1663134229, 'UPMA', 'Unit Pengelola Manajemen Aset', 'ossngroup'),
(33, 1, 'user', 1663134366, 'PPBD', 'Pusat Penyimpanan Barang Daerah', 'ossngroup'),
(43, 1, 'user', 1663136015, 'Suban - Timur', 'Suku Badan Pengelolaan Aset Daerah Kota Jakarta Timur', 'ossngroup'),
(44, 1, 'user', 1663136054, 'Suban - Kep. Seribu', 'Suku Badan Pengelolaan Aset Daerah Kabupaten Kepulauan Seribu', 'ossngroup'),
(57, 1, 'site', 1663908062, 'Clumsy Bird', '&lt;div class=&quot;icontainer&quot;&gt;\r\n&lt;p&gt;&lt;iframe class=&quot;responsive-iframe&quot; style=&quot;border: 0;&quot; src=&quot;https://ellisonleao.github.io/clumsy-bird/&quot; width=&quot;1024&quot; height=&quot;768&quot; allowfullscreen=&quot;allowfullscreen&quot; loading=&quot;lazy&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'custom:page'),
(59, 1, 'site', 1663913185, 'Astray Ball', '&lt;div class=&quot;icontainer&quot;&gt;\r\n&lt;p&gt;&lt;iframe class=&quot;responsive-iframe&quot; style=&quot;border: 0;&quot; src=&quot;https://wwwtyro.github.io/Astray/&quot; width=&quot;750&quot; height=&quot;650&quot; allowfullscreen=&quot;allowfullscreen&quot; loading=&quot;lazy&quot;&gt;&lt;/iframe&gt;&lt;/p&gt;\r\n&lt;/div&gt;', 'custom:page'),
(58, 1, 'site', 1663912502, 'Clumsy Bird', 'http://10.10.96.174/bpadws/p/57/clumsy-bird', 'menubuilder:menuitem'),
(60, 1, 'site', 1663913912, 'Astray Ball', 'http://10.10.96.174/bpadws/p/59/astray-ball', 'menubuilder:menuitem'),
(61, 1, 'site', 1663917697, 'Google Search', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;div class=&quot;icontainer&quot;&gt;&lt;iframe class=&quot;responsive-iframe&quot; src=&quot;https://www.google.com/webhp?igu=1&quot; width=&quot;750&quot; height=&quot;650&quot; frameborder=&quot;0&quot; scrolling=&quot;auto&quot; allowfullscreen=&quot;allowfullscreen&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;', 'custom:page'),
(65, 1, 'site', 1663921309, 'Google Search', 'http://10.10.96.174/bpadws/p/61/google-search', 'menubuilder:menuitem'),
(66, 1, 'site', 1663922523, 'Google Maps', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;div class=&quot;icontainer&quot;&gt;&lt;iframe class=&quot;responsive-iframe&quot; src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2804.8313399933913!2d106.82087537197698!3d-6.180183833115151!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f42a96d4428f%3A0x19ca3e98a96811ee!2sBPAD%20Provinsi%20DKI%20Jakarta!5e0!3m2!1sen!2sid!4v1662094125905!5m2!1sen!2sid&quot; width=&quot;1024&quot; height=&quot;768&quot; frameborder=&quot;0&quot; scrolling=&quot;auto&quot; allowfullscreen=&quot;allowfullscreen&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;', 'custom:page'),
(68, 1, 'site', 1663923670, 'Google Maps', 'http://10.10.96.174/bpadws/p/66/google-maps', 'menubuilder:menuitem');
INSERT INTO `ossn_object` (`guid`, `owner_guid`, `type`, `time_created`, `title`, `description`, `subtype`) VALUES
(75, 1, 'site', 1664944603, 'Google Suites', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;https://drive.google.com/drive/my-drive?lfhs=2&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img src=&quot;data:image/png;base64,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&quot; width=&quot;128&quot; height=&quot;128&quot; /&gt;&lt;/a&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;a href=&quot;https://docs.google.com/document/u/0/&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img src=&quot;data:image/png;base64,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&quot; width=&quot;93&quot; height=&quot;128&quot; /&gt;&lt;/a&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;a href=&quot;https://docs.google.com/spreadsheets/u/0/&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img src=&quot;data:image/png;base64,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&quot; width=&quot;95&quot; height=&quot;128&quot; /&gt;&lt;/a&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;a href=&quot;https://docs.google.com/forms/u/0/&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img src=&quot;data:image/png;base64,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&quot; width=&quot;93&quot; height=&quot;128&quot; /&gt;&lt;/a&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;a href=&quot;https://docs.google.com/presentation/u/0/&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img src=&quot;data:image/png;base64,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&quot; width=&quot;93&quot; height=&quot;128&quot; /&gt;&lt;/a&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;a href=&quot;https://mail.google.com/mail/u/0/#inbox&quot; target=&quot;_blank&quot; rel=&quot;noopener noreferrer&quot;&gt;&lt;img style=&quot;width: 120px; height: 89.3023px;&quot; src=&quot;data:image/png;base64,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&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;', 'custom:page'),
(76, 1, 'site', 1664946448, 'Google Suites', 'http://10.10.96.174/bpadws/p/75/google-suites', 'menubuilder:menuitem');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_relationships`
--

CREATE TABLE `ossn_relationships` (
  `relation_id` bigint(20) NOT NULL,
  `relation_from` bigint(20) NOT NULL,
  `relation_to` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_relationships`
--

INSERT INTO `ossn_relationships` (`relation_id`, `relation_from`, `relation_to`, `type`, `time`) VALUES
(1, 1, 1, 'group:join', 1661828800),
(2, 1, 1, 'group:join:approve', 1661828800),
(16, 2, 1, 'group:join:approve', 1663134914),
(15, 1, 2, 'group:join', 1663134846),
(5, 1, 2, 'friend:request', 1661835156),
(6, 2, 1, 'friend:request', 1661835166),
(7, 2, 1, 'group:join', 1661836352),
(8, 2, 2, 'group:join', 1661836361),
(9, 1, 2, 'group:join:approve', 1661836372),
(10, 2, 2, 'group:join:approve', 1661836384),
(11, 1, 32, 'group:join', 1663134229),
(12, 32, 1, 'group:join:approve', 1663134229),
(13, 1, 33, 'group:join', 1663134366),
(14, 33, 1, 'group:join:approve', 1663134366),
(17, 1, 34, 'group:join', 1663135019),
(18, 34, 1, 'group:join:approve', 1663135019),
(19, 1, 35, 'group:join', 1663135099),
(20, 35, 1, 'group:join:approve', 1663135099),
(21, 1, 36, 'group:join', 1663135156),
(22, 36, 1, 'group:join:approve', 1663135156),
(23, 1, 37, 'group:join', 1663135249),
(24, 37, 1, 'group:join:approve', 1663135249),
(25, 1, 38, 'group:join', 1663135287),
(26, 38, 1, 'group:join:approve', 1663135287),
(27, 1, 39, 'group:join', 1663135405),
(28, 39, 1, 'group:join:approve', 1663135405),
(29, 1, 40, 'group:join', 1663135431),
(30, 40, 1, 'group:join:approve', 1663135431),
(31, 1, 41, 'group:join', 1663135457),
(32, 41, 1, 'group:join:approve', 1663135457),
(33, 1, 42, 'group:join', 1663135956),
(34, 42, 1, 'group:join:approve', 1663135956),
(35, 1, 43, 'group:join', 1663136015),
(36, 43, 1, 'group:join:approve', 1663136015),
(37, 1, 44, 'group:join', 1663136054),
(38, 44, 1, 'group:join:approve', 1663136054),
(39, 1, 65, 'rtctypingentity', 1664439700),
(40, 1, 6, 'rtctypingpost', 1664440020),
(41, 1, 3, 'friend:request', 1663828533),
(42, 3, 1, 'friend:request', 1663830736),
(43, 1, 4, 'friend:request', 1664353812),
(44, 4, 1, 'friend:request', 1664353837),
(45, 4, 6, 'rtctypingpost', 1664354161);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_site_settings`
--

CREATE TABLE `ossn_site_settings` (
  `setting_id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_site_settings`
--

INSERT INTO `ossn_site_settings` (`setting_id`, `name`, `value`) VALUES
(1, 'theme', 'goblue'),
(2, 'site_name', 'JAKASET WORKSPACE'),
(3, 'language', 'id'),
(4, 'cache', '1'),
(5, 'owner_email', 'dillyramadhani@gmail.com'),
(6, 'notification_email', 'noreply@localhost'),
(7, 'upgrades', '[\"1605286634.php\", \"1632413382.php\", \"1633420776.php\", \"1655424000.php\", \"1655453491.php\", \"1659870406.php\"]'),
(9, 'display_errors', 'on'),
(10, 'site_key', 'd5643c7f'),
(11, 'last_cache', '1665042007'),
(12, 'site_version', '6.4'),
(13, 'com:ossnservices:apikey', 'b58d8f2c6ffaa0d94baa1a310a72210e060af4b6dfcb94addf6124313e0e4d15');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_users`
--

CREATE TABLE `ossn_users` (
  `guid` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(65) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `last_login` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `activation` varchar(32) DEFAULT NULL,
  `time_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_users`
--

INSERT INTO `ossn_users` (`guid`, `type`, `username`, `email`, `password`, `salt`, `first_name`, `last_name`, `last_login`, `last_activity`, `activation`, `time_created`) VALUES
(1, 'admin', 'admin', 'dillyramadhani@gmail.com', '$2y$10$kNNhzvthWdJWsl5N8wTvSOuRqXQsnyH2093qg0dKiT4PSgNb93lLS', 'c46386be', 'Administrator', 'Workspace', 1665041070, 1665042891, '', 1661828166),
(2, 'normal', 'suripto', 'suripto.rp@gmail.com', '$2y$10$rP.ood254A.8jdP6ijrqmuLqjRfkM0RoeGmvC7KiiOrVBV6wFdrye', '6f77d77b', 'Suripto', 'Sastrowiyono', 1663230648, 1663241343, '', 1661834999),
(3, 'normal', 'vinatri', 'vina.tri@gmail.com', '$2y$10$sUw6dHBB2FK4DMpWoCNn3OjR77QOqIKiY3incAucRPwR5UP/r075m', '1dfb0497', 'Vina Tri', 'Widiyati', 1663830720, 1663908310, '', 1663828447),
(4, 'normal', 'ekosetia', 'ekosb@gmail.com', '$2y$10$29ovcHFkpjZJlxfPo7sjlOe./aoc.t7JHzVJh1DMcpvblq.US7BvW', '2a75eb89', 'Eko', 'Setiabudi', 1664353008, 1664354832, '', 1664352935),
(5, 'normal', 'nissanisse', 'nissanisse@gmail.com', '$2y$10$ogy9wplig40AguLOZkgt7.ndnNsljxL95x6i/i.W0fp/zwaRdPnI2', 'd3670dc9', 'Annisa', 'Triani', 0, 0, 'e1a6ffddc494c7f36eb6d0bd74094244', 1664441654);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ossn_annotations`
--
ALTER TABLE `ossn_annotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `subject_guid` (`subject_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ossn_components`
--
ALTER TABLE `ossn_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_com_id` (`com_id`),
  ADD KEY `index_active` (`active`);

--
-- Indexes for table `ossn_entities`
--
ALTER TABLE `ossn_entities`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `time_updated` (`time_updated`),
  ADD KEY `active` (`active`),
  ADD KEY `permission` (`permission`),
  ADD KEY `type` (`type`),
  ADD KEY `subtype` (`subtype`),
  ADD KEY `eky_ts` (`type`,`subtype`),
  ADD KEY `eky_tso` (`type`,`subtype`,`owner_guid`);

--
-- Indexes for table `ossn_entities_metadata`
--
ALTER TABLE `ossn_entities_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guid` (`guid`);
ALTER TABLE `ossn_entities_metadata` ADD FULLTEXT KEY `value` (`value`);

--
-- Indexes for table `ossn_likes`
--
ALTER TABLE `ossn_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subtype` (`subtype`),
  ADD KEY `index_subject_id_guid_type` (`subject_id`,`guid`,`type`),
  ADD KEY `index_subject_id_type` (`subject_id`,`type`);

--
-- Indexes for table `ossn_messages`
--
ALTER TABLE `ossn_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_to` (`message_to`),
  ADD KEY `message_from` (`message_from`);

--
-- Indexes for table `ossn_notifications`
--
ALTER TABLE `ossn_notifications`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `poster_guid` (`poster_guid`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `subject_guid` (`subject_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `item_guid` (`item_guid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ossn_object`
--
ALTER TABLE `ossn_object`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `type` (`type`),
  ADD KEY `subtype` (`subtype`),
  ADD KEY `oky_ts` (`type`,`subtype`),
  ADD KEY `oky_tsg` (`type`,`subtype`,`guid`);

--
-- Indexes for table `ossn_relationships`
--
ALTER TABLE `ossn_relationships`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `relation_to` (`relation_to`),
  ADD KEY `relation_from` (`relation_from`),
  ADD KEY `time` (`time`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ossn_site_settings`
--
ALTER TABLE `ossn_site_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `ossn_users`
--
ALTER TABLE `ossn_users`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `last_login` (`last_login`),
  ADD KEY `last_activity` (`last_activity`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `index_username` (`username`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `type` (`type`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `email` (`email`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `first_name` (`first_name`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `last_name` (`last_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ossn_annotations`
--
ALTER TABLE `ossn_annotations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ossn_components`
--
ALTER TABLE `ossn_components`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ossn_entities`
--
ALTER TABLE `ossn_entities`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `ossn_entities_metadata`
--
ALTER TABLE `ossn_entities_metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `ossn_likes`
--
ALTER TABLE `ossn_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ossn_messages`
--
ALTER TABLE `ossn_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ossn_notifications`
--
ALTER TABLE `ossn_notifications`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ossn_object`
--
ALTER TABLE `ossn_object`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `ossn_relationships`
--
ALTER TABLE `ossn_relationships`
  MODIFY `relation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ossn_site_settings`
--
ALTER TABLE `ossn_site_settings`
  MODIFY `setting_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ossn_users`
--
ALTER TABLE `ossn_users`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
