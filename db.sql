-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 22, 2016 at 06:45 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aistinvest`
--

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_aist_graph`
--

DROP TABLE IF EXISTS `vw7az_aist_graph`;
CREATE TABLE `vw7az_aist_graph` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `introtext` text NOT NULL,
  `fulltext` text NOT NULL,
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `hits` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` int(2) NOT NULL,
  `params` text NOT NULL,
  `catid` int(11) NOT NULL,
  `fix` varchar(250) NOT NULL,
  `gyear` int(4) NOT NULL,
  `gmonth` int(2) NOT NULL,
  `gpercent` varchar(250) NOT NULL,
  `gpercent30` varchar(250) NOT NULL,
  `gusd` varchar(250) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vw7az_aist_graph`
--

INSERT INTO `vw7az_aist_graph` (`id`, `title`, `alias`, `asset_id`, `introtext`, `fulltext`, `created`, `ordering`, `metakey`, `metadesc`, `hits`, `created_by`, `published`, `params`, `catid`, `fix`, `gyear`, `gmonth`, `gpercent`, `gpercent30`, `gusd`) VALUES
(4, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 2, '-3.61', '-3.61', '5.12'),
(3, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 1, '12.42', '8.69', '-9.38'),
(5, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 3, '6.68', '4.68', '12.63'),
(6, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 4, '16.98', '11.89', '24.86'),
(7, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 5, '4.02', '2.81', '3.54'),
(8, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 6, '3.95', '2.77', '-5.24'),
(9, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 7, '4.49', '3.14', '-3.78'),
(10, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 8, '12.41', '8.69', '-2.53'),
(11, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 9, '-10.87', '-10.87', '-10.53'),
(12, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 10, '17.01', '15.17', '18.50'),
(13, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 11, '-10.24', '-10.24', '-12.76'),
(14, '', '', 56, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2015, 12, '6.43', '6.43', '-3.28'),
(15, '', '', 73, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2016, 2, '3.47', '2.43', '2.54'),
(16, '', '', 74, '', '', '2016-04-13 15:24:28', 0, '', '', 0, 225, 1, '', 0, '', 2016, 3, '-7.54', '-7.54', '2.70'),
(17, '', '', 60, '', '', '2016-04-22 08:47:33', 0, '', '', 0, 224, 1, '', 0, '', 2014, 1, '7.32', '5.12', '-1.51'),
(18, '', '', 61, '', '', '2016-04-22 08:51:47', 0, '', '', 0, 224, 1, '', 0, '', 2014, 2, '14.21', '9.95', '7.00'),
(19, '', '', 62, '', '', '2016-04-22 09:08:08', 0, '', '', 0, 224, 1, '', 0, '', 2014, 3, '23.68', '16.58', '17.96'),
(20, '', '', 63, '', '', '2016-04-22 09:08:43', 0, '', '', 0, 224, 1, '', 0, '', 2014, 4, '18.90', '13.23', '11.96'),
(21, '', '', 64, '', '', '2016-04-22 09:09:07', 0, '', '', 0, 224, 1, '', 0, '', 2014, 5, '23.31', '16.32', '20.91'),
(22, '', '', 65, '', '', '2016-04-22 09:09:28', 0, '', '', 0, 224, 1, '', 0, '', 2014, 6, '12.72', '8.90', '9.76'),
(23, '', '', 66, '', '', '2016-04-22 09:09:49', 0, '', '', 0, 224, 1, '', 0, '', 2014, 7, '13.64', '9.55', '5.21'),
(24, '', '', 67, '', '', '2016-04-22 09:10:11', 0, '', '', 0, 224, 1, '', 0, '', 2014, 8, '4.80', '3.36', '1.23'),
(25, '', '', 68, '', '', '2016-04-22 09:10:31', 0, '', '', 0, 224, 1, '', 0, '', 2014, 9, '13.55', '9.49', '0.60'),
(26, '', '', 69, '', '', '2016-04-22 09:10:53', 0, '', '', 0, 224, 1, '', 0, '', 2014, 10, '10.70', '7.49', '0.07'),
(27, '', '', 70, '', '', '2016-04-22 09:11:12', 0, '', '', 0, 224, 1, '', 0, '', 2014, 11, '18.47', '12.93', '2.55'),
(28, '', '', 71, '', '', '2016-04-22 09:11:31', 0, '', '', 0, 224, 1, '', 0, '', 2014, 12, '33.29', '23.30', '2.27'),
(29, '', '', 72, '', '', '2016-04-22 09:17:10', 0, '', '', 0, 224, 1, '', 0, '', 2016, 1, '15.22', '11.80', '8.39');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_assets`
--

DROP TABLE IF EXISTS `vw7az_assets`;
CREATE TABLE `vw7az_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_assets`
--

INSERT INTO `vw7az_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 143, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 41, 76, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 77, 80, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 81, 82, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 83, 84, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 85, 86, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 87, 88, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 89, 92, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 93, 94, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 78, 79, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 90, 91, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 95, 96, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 97, 98, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 99, 100, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 101, 102, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 103, 104, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 105, 106, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 27, 19, 20, 3, 'com_content.article.1', 'ЧАСТЫЕ ВОПРОСЫ', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(55, 1, 107, 108, 1, 'com_aistresult', 'com_aistresult', '{}'),
(56, 1, 109, 110, 1, '#__aist_graph.1', '#__aist_graph.1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 1, 111, 112, 1, '#__aist_graph.2', '#__aist_graph.2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 72, 73, 2, 'com_modules.module.87', 'mod_aistchart_script', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(59, 18, 74, 75, 2, 'com_modules.module.88', 'mod_aistchart_graph', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(60, 1, 113, 114, 1, '#__aist_graph.17', '#__aist_graph.17', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 1, 115, 116, 1, '#__aist_graph.18', '#__aist_graph.18', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 1, 117, 118, 1, '#__aist_graph.19', '#__aist_graph.19', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 1, 119, 120, 1, '#__aist_graph.20', '#__aist_graph.20', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 1, 121, 122, 1, '#__aist_graph.21', '#__aist_graph.21', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 1, 123, 124, 1, '#__aist_graph.22', '#__aist_graph.22', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 1, 125, 126, 1, '#__aist_graph.23', '#__aist_graph.23', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 1, 127, 128, 1, '#__aist_graph.24', '#__aist_graph.24', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 1, 129, 130, 1, '#__aist_graph.25', '#__aist_graph.25', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 1, 131, 132, 1, '#__aist_graph.26', '#__aist_graph.26', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 1, 133, 134, 1, '#__aist_graph.27', '#__aist_graph.27', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 1, 135, 136, 1, '#__aist_graph.28', '#__aist_graph.28', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 1, 137, 138, 1, '#__aist_graph.29', '#__aist_graph.29', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 1, 139, 140, 1, '#__aist_graph.15', '#__aist_graph.15', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 1, 141, 142, 1, '#__aist_graph.16', '#__aist_graph.16', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_associations`
--

DROP TABLE IF EXISTS `vw7az_associations`;
CREATE TABLE `vw7az_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_banners`
--

DROP TABLE IF EXISTS `vw7az_banners`;
CREATE TABLE `vw7az_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_banner_clients`
--

DROP TABLE IF EXISTS `vw7az_banner_clients`;
CREATE TABLE `vw7az_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_banner_tracks`
--

DROP TABLE IF EXISTS `vw7az_banner_tracks`;
CREATE TABLE `vw7az_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_categories`
--

DROP TABLE IF EXISTS `vw7az_categories`;
CREATE TABLE `vw7az_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_categories`
--

INSERT INTO `vw7az_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_contact_details`
--

DROP TABLE IF EXISTS `vw7az_contact_details`;
CREATE TABLE `vw7az_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_content`
--

DROP TABLE IF EXISTS `vw7az_content`;
CREATE TABLE `vw7az_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_content`
--

INSERT INTO `vw7az_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 54, 'ЧАСТЫЕ ВОПРОСЫ', 'chastye-voprosy', '<div class="faq-item">\r\n<div class="faq-item-title">Что вы предлагаете по сути?</div>\r\n<p>Мы предлагаем подключить к вашему обычному брокерскому счету наших торговых роботов. Деньги находятся у вас, мы торгуем. Прибыль делим.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Какого брокера рекомендуете?</div>\r\n<p>Любого крупного, у которого есть интерфейс Plaza2, например, Финам, Открытие, БКС, IT invest.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">На чье имя открывается брокерский счет?</div>\r\n<p>Счет открывается на ваше имя по общей брокерской процедуре.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Чем и как торгуете?</div>\r\n<p>Фьючерсы на валюты, индекс РТС и акции Сбербанка. Трендовые алгоритмы. Мы постоянно расширяем линейку инструментов.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как делится прибыль?</div>\r\n<p>Комиссия Аист Инвест от прибыли после уплаты всех налогов:<br /> 30% для счетов от 1.000.000 до 35.000.000<br /> 25% для счетов от 35.000.001 до 200.000.000<br /> 20% для счетов от 200.000.001<br /> Комиссия фиксируется договором.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">У вас доступ только на торговлю, но не на ввод-вывод денег?</div>\r\n<p>Да. У нас только торговые логин и пароль, а вывод осуществляется через личный кабинет. У нас к нему доступа нет. К тому же, со счета брокера вы можете вывести деньги только на банковский счет, который принадлежит вам (владельцу брокерского счета), это стандартное ограничение всех брокеров.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как это оформляется юридически?</div>\r\n<p>Мы подписываем соглашение о сотрудничестве и доверенность на совершение сделок. Там прописаны все процедуры, размер комиссии, риски и прочие существенные условия.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как физически выглядит подключение, какое-то заявление брокеру подается?</div>\r\n<p>Да, вы пишите брокеру заявление на подключение Plaza 2. Подробную инструкцию дадим.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">У вас есть возможность торговать в долларах?</div>\r\n<p>Да, если вы используете брокерский счет в Финаме. Они позволяют торговать в рублях, а хранить денежные средства в долларах или евро. Каждый день брокер оценивает рубли по курсу ЦБ и производит пересчет в валюту.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как вы считаете, лучше торговать в долларах или рублях?</div>\r\n<p>Это вам решать, мы не можем предсказать глобальные валютные колебания, мы можем лишь зарабатывать на них, после того, как они случились.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Какие налоги платятся с прибыли? Как рассчитывается комиссия?</div>\r\n<p>От полученной прибыли отнимается комиссия брокера за заключение сделок, а так же биржевой сбор. Затем уплачивается налог исходя из вашей юридической формы (например, 13% для физических лиц), оставшаяся после этого прибыль делится согласно пропорции, прописанной в соглашении между нами. Расчет производится ежеквартально. Также учтите, что ежемесячное обслуживание счета у брокера стоит 5-10 тысяч рублей.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Почему такой высокий порог входа?</div>\r\n<p>1. Мы не хотим, чтобы у нас было более 75 счетов, к которым подключены роботы.<br /> Это позволяет сохранить гибкость, персональный подход к клиентам и сконцентрироваться на главном - доходной торговле.<br /> 2. У клиента есть регулярные платежи за обслуживание счета у брокера, и у счетов с небольшими суммами заметно снижается доходность из-за ежемесячных платежей (заплатить 10 тысяч рублей в месяц при прибыли 50 тысяч гораздо заметнее, чем с прибыли 200 тысяч рублей).</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Что будет происходить, когда закончится пробный период?</div>\r\n<p>1. Вы вносите сумму, чтобы общая сумма на счету была выше минимального лимита. Это могут быть ваши личные деньги или вы можете объединиться с другом или знакомым. 2. Мы расторгаем договор в одностороннем порядке и отключаем роботов.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как часто можно выводить прибыль?</div>\r\n<p>Прибыль рекомендуем выводить ежемесячно или ежеквартально, это происходит одновременно с выплатой комиссии с прибыли. Технически же вы можете забрать деньги с брокерского счета в любой рабочий день, это стандартная процедура у любого брокера. Если вы снимаете деньги внепланово, мы считаем нашу комиссию на текущую дату и все ок.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как правильно выбрать риски? С каким риском выгоднее инвестирововать?</div>\r\n<p>Выгоднее всего инвестировать с рисками 50%, в этом случае мы полностью используем деньги на счету. При меньших рисках, часть денег на счету остаются просто не задействованными и смысла их хранить на счету нет. Гораздо лучше их положить на депозит или в другие низкорисковые активы. Пример: У вас счет на 10 000 000 рублей с риском 20%. Мы используем только 4 000 000 рублей ваших средств, остальные средства лежат без дела. В таком случае выгоднее будет сделать так: оставить у нас 4 000 000 рублей с риском 50%, а 6 000 000 внести в банк на депозит. Таким образом, на ту же сумму в 10 000 000 рублей вы получите в любом случае больше дохода.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Как вы вообще пришли в сферу торговли на рынках?</div>\r\n<p>Основатель торговал руками и программировал, объединил навыки и создал несколько успешных стратегий, которые позволили системно заниматься торговлей. Многолетний интерес к теме и навыки переросли в регулярный бизнес, доход с которого позволил нанять других трейдеров, начать системную работу с клиентами и создать всю необходимую инфраструктуру.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Почему рост в 2015 году ниже, чем в 2014?</div>\r\n<p>Если кратко, то сменился рыночный цикл, а наша доходность напрямую зависит от того, что происходит на рынке. У нас торгуют трендовые системы - мы хорошо зарабатываем, когда есть какие-то устойчивые направленные движения на рынке. Сейчас таких движений стало заметно меньше, и они стали короче по времени, больше боковых движений. В боковых движениях мы теряем деньги. Т.е. сейчас все работает по стратегии, ничего необычного не произошло, мы начнем стабильно зарабатывать, когда сменится цикл на рынке. Тем не менее, мы уже давно ведем разработку стратегий другого типа - которого будут хорошо зарабатывать как раз при боковом движении рынка (такие стратегии называются контр-трендовые) и минимум терять при трендовых движениях (минусов во время боковых движений не будет, либо будут, но гораздо меньше чем сейчас).</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Почему вы не привлекаете кредиты, если все так замечательно, и ищете деньги на рынке?</div>\r\n<p>1. Найти заемное финансирование под такую деятельность сложно;<br /> 2. Мы работаем с инвестиционными департаментами некоторых банков и инвесткомпаниями, у которых стратегия предусматривает подобные инвестиции, размера их капитала нам пока достаточно для работы;<br /> 3. У нас широкая сеть контактов на финансовом рынке и мы общаемся со всеми, кому может быть интересно наше предложение (инвестиционные компании, частные состоятельные клиенты, брокеры, фонды и т.д.). Это менее трудоемко для нас, чем привлекать кредиты.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Кто и как компенсирует просадку выше оговоренного лимита?</div>\r\n<p>Просадку мы компенсируем сами из собственных средств компании.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Я занимаюсь благотворительностью. Какие есть варианты для меня?</div>\r\n<p>Мы делаем пропорциональную скидку со своей комиссии, если вы жертвуете часть свой прибыли.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">В чем подвох? Это что, правда работает?</div>\r\n<p>Да, это правда работает. Подвох в том, что вы можете потерять часть капитала в рамках оговоренных рисков и, в отличии от депозита, где все стабильно растет каждый день, у нас есть скачки баланса. Иногда это эмоционально тяжело.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Что я могу почитать еще, чтобы принять решение?</div>\r\n<p>По запросу мы пришлем отчеты об аудите от БДО «Юникон», отчеты брокера, соглашение о сотрудничестве. Этого достаточно, чтобы убедиться в результатах и понять все технические детали. И, конечно, мы всегда можем встретиться и все обсудить.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Чем ваши алгоритмы лучше, чем у конкурентов?</div>\r\n<p>Они доходны в реальной торговле на значительных суммах реальных денег и на исторических данных, чего не могут достигнуть 90% трейдеров на рынке. С остальными 10% вы можете работать так же, как и с нами, с точки зрения результата все будет одинаково - у вас станет больше денег, чем было, с примерно одинаковым уровнем риска.</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Что еще важного я должен знать?</div>\r\n<p>Это не депозит. Результаты деятельности в прошлом не определяют результаты в будущем. Доходность в прошлом не гарантирует доходности в будущем. Результаты могут быть как положительными, так и отрицательными, мы не гарантируем доходность. Указание ориентира по доходности является предположительным и не является обещанием или гарантией доходности. Внимательно ознакомьтесь с соглашением о сотрудничестве перед его подписанием!</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Что нужно сделать, чтобы начать работу?</div>\r\n<p>1. Встретиться с управляющим партнером, познакомиться, подписать «Соглашение о сотрудничестве».<br /> 2. Открыть ваш личный или корпоративный торговый счет у брокера, пополнить его на сумму согласно «Соглашению о сотрудничестве» (или более, при желании).<br /> 3. Сообщить нам логин, пароль и специальный ключ для осуществления торговых операций, чтобы мы могли подключить к вашему счету наших торговых роботов и начать торговать.<br /> Мы дадим лист с полной детальной инструкцией после подписания «Соглашения о сотрудничестве».</p>\r\n</div>\r\n<div class="faq-item">\r\n<div class="faq-item-title">Какие ключевые детали о стратегии торговли вы можете раскрыть?</div>\r\n<p>- у нас одновременно работают 3 торговых логики на 3 инструментах на 3 тайм-фреймах (всего 81 уникальная стратегия). У роботов разное число и продолжительность сделок за любой период. В целом можно сказать, что мы делаем десятки сделок в день и держим позицию от нескольких минут до нескольких недель. Мы не используем усреднение/мартингейл;<br /> - мы часто и понемногу «сливаем», редко и помногу зарабатываем. Абсолютно нормальна и типична ситуация, когда идет постепенное уменьшение баланса счета на протяжении нескольких недель, а затем мы за несколько дней или даже часов выходим в плюс;<br /> - максимальный дропдаун на реальной торговле – 12,7%, максимальная просадка за день – 3,5% (в среднем это 1% при рисках 20%);<br /> - мы постоянно увеличиваем число торговых логик, разрабатываем новые алгоритмы;<br /> - все инвесторы-клиенты находятся в примерно одинаковых условиях, изменяется только число покупаемых лотов в зависимости от объема счета, и плеча, в зависимости от оговоренного уровня риска. Для всех инвесторов подключаются примерно одинаковые роботы, поэтому усредненные результаты у всех инвесторов с сопоставимыми суммами и рисками – одинаковы. Вся торговля имеет одинаковый приоритет и исполняется равномерно;<br /> - мы не раскрываем исходный код роботов и реестр сделок;<br /> - политика по минимизации просадок: диверсификация по стратегиям, тайм-фреймам, инструментам. У каждого алгоритма есть максимальный уровень потерь на сделку. Уровень плеча ограничен х5, при нормальных рисках – х2-х3 (на основном корпоративном счету используем х2 максимум);<br /> - допустимая просадка в день/месяц для каждого инвестора индивидуальна, но обычно равняется максимально допустимой просадке;<br /> - в редких случаях мы руками вмешиваемся в работу роботов, если предстоят непрогнозируемые события, которые могут дать резкие скачки котировок (долгие праздники, когда весь остальной мир торгует, выходные, на которых ожидаются политические новости, нетипичные резкие колебания курса, когда есть основания к развороту и т.д.);<br /> - вся торговля, особенно в период убытков, отслеживается оператором (риск-менеджером).</p>\r\n</div>', '', 1, 2, '2016-03-24 09:46:36', 224, '', '2016-04-22 07:57:50', 224, 0, '0000-00-00 00:00:00', '2016-03-24 09:46:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 40, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_contentitem_tag_map`
--

DROP TABLE IF EXISTS `vw7az_contentitem_tag_map`;
CREATE TABLE `vw7az_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_content_frontpage`
--

DROP TABLE IF EXISTS `vw7az_content_frontpage`;
CREATE TABLE `vw7az_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_content_rating`
--

DROP TABLE IF EXISTS `vw7az_content_rating`;
CREATE TABLE `vw7az_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_content_types`
--

DROP TABLE IF EXISTS `vw7az_content_types`;
CREATE TABLE `vw7az_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_content_types`
--

INSERT INTO `vw7az_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_core_log_searches`
--

DROP TABLE IF EXISTS `vw7az_core_log_searches`;
CREATE TABLE `vw7az_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_extensions`
--

DROP TABLE IF EXISTS `vw7az_extensions`;
CREATE TABLE `vw7az_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_extensions`
--

INSERT INTO `vw7az_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"d31d5d5bdb5242b16c43860745ec022e"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.12","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `vw7az_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1461333919}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":1,"lastrun":1461311851,"unique_id":"821e222ec4d895356b478e9307a118866fd5911a","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"April 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'AistInvest', 'template', 'aistinvest', '', 0, 1, 1, 0, '{"name":"AistInvest","type":"template","creationDate":"2016-03-08","author":"Alexey","copyright":"SEOTEAM.PRO","authorEmail":"a.kiselev@seoteam.pro","authorUrl":"http:\\/\\/www.seoteam.pro\\/","version":"1.0.0","description":"TMP_AISTINVEST_DESC","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian language pack (site) for Joomla! 3.5.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, '', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f)","type":"language","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian language pack (administrator) for Joomla! 3.5.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian (ru-RU) Language Pack","type":"package","creationDate":"2016-04-01","author":"Russian Translation Team","copyright":"","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.0.6","description":"Russian (ru-RU) language pack for Joomla","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'com_aistresult', 'component', 'com_aistresult', '', 1, 1, 0, 0, '{"name":"com_aistresult","type":"component","creationDate":"13 April 2016","author":"Arhet","copyright":"","authorEmail":"arhetstudio@gmail.com","authorUrl":"","version":"1.0","description":"COM_AISTRESULT_DESC","group":"","filename":"aistresult"}', '{"start":"2014","triggerA":"#c0af86","triggerB":"#40806a","triggerC":"#a66bb3"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'mod_aistchart_script', 'module', 'mod_aistchart_script', '', 0, 1, 0, 0, '{"name":"mod_aistchart_script","type":"module","creationDate":"July 2004","author":"Arhet","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0","description":"\\u0421\\u043a\\u0440\\u0438\\u043f\\u0442 \\u0434\\u043b\\u044f \\u0447\\u0430\\u0440\\u0442\\u0430","group":"","filename":"mod_aistchart_script"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'mod_aistchart_graph', 'module', 'mod_aistchart_graph', '', 0, 1, 0, 0, '{"name":"mod_aistchart_graph","type":"module","creationDate":"July 2004","author":"Arhet","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0","description":"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0430 \\u0433\\u0440\\u0430\\u0444\\u0438\\u043a\\u0430","group":"","filename":"mod_aistchart_graph"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_filters`
--

DROP TABLE IF EXISTS `vw7az_finder_filters`;
CREATE TABLE `vw7az_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` mediumtext NOT NULL,
  `params` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links`
--

DROP TABLE IF EXISTS `vw7az_finder_links`;
CREATE TABLE `vw7az_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms0`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms0`;
CREATE TABLE `vw7az_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms1`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms1`;
CREATE TABLE `vw7az_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms2`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms2`;
CREATE TABLE `vw7az_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms3`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms3`;
CREATE TABLE `vw7az_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms4`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms4`;
CREATE TABLE `vw7az_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms5`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms5`;
CREATE TABLE `vw7az_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms6`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms6`;
CREATE TABLE `vw7az_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms7`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms7`;
CREATE TABLE `vw7az_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms8`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms8`;
CREATE TABLE `vw7az_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_terms9`
--

DROP TABLE IF EXISTS `vw7az_finder_links_terms9`;
CREATE TABLE `vw7az_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_termsa`
--

DROP TABLE IF EXISTS `vw7az_finder_links_termsa`;
CREATE TABLE `vw7az_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_termsb`
--

DROP TABLE IF EXISTS `vw7az_finder_links_termsb`;
CREATE TABLE `vw7az_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_termsc`
--

DROP TABLE IF EXISTS `vw7az_finder_links_termsc`;
CREATE TABLE `vw7az_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_termsd`
--

DROP TABLE IF EXISTS `vw7az_finder_links_termsd`;
CREATE TABLE `vw7az_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_termse`
--

DROP TABLE IF EXISTS `vw7az_finder_links_termse`;
CREATE TABLE `vw7az_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_links_termsf`
--

DROP TABLE IF EXISTS `vw7az_finder_links_termsf`;
CREATE TABLE `vw7az_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_taxonomy`
--

DROP TABLE IF EXISTS `vw7az_finder_taxonomy`;
CREATE TABLE `vw7az_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vw7az_finder_taxonomy`
--

INSERT INTO `vw7az_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `vw7az_finder_taxonomy_map`;
CREATE TABLE `vw7az_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_terms`
--

DROP TABLE IF EXISTS `vw7az_finder_terms`;
CREATE TABLE `vw7az_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_terms_common`
--

DROP TABLE IF EXISTS `vw7az_finder_terms_common`;
CREATE TABLE `vw7az_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vw7az_finder_terms_common`
--

INSERT INTO `vw7az_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_tokens`
--

DROP TABLE IF EXISTS `vw7az_finder_tokens`;
CREATE TABLE `vw7az_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `vw7az_finder_tokens_aggregate`;
CREATE TABLE `vw7az_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_finder_types`
--

DROP TABLE IF EXISTS `vw7az_finder_types`;
CREATE TABLE `vw7az_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_languages`
--

DROP TABLE IF EXISTS `vw7az_languages`;
CREATE TABLE `vw7az_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_languages`
--

INSERT INTO `vw7az_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_menu`
--

DROP TABLE IF EXISTS `vw7az_menu`;
CREATE TABLE `vw7az_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_menu`
--

INSERT INTO `vw7az_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 51, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu', 'FAQ', 'faq', '', 'faq', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(103, 'main', 'COM_AISTRESULT', 'com-aistresult', '', 'com-aistresult', 'index.php?option=com_aistresult', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 45, 48, 0, '', 1),
(104, 'main', 'GRAPHS_SUBMENU', 'graphs-submenu', '', 'com-aistresult/graphs-submenu', 'index.php?option=com_aistresult&view=graphss', 'component', 0, 103, 2, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:graphss', 0, '{}', 46, 47, 0, '', 1),
(105, 'mainmenu', 'Графики', 'graphs', '', 'graphs', 'index.php?option=com_aistresult&view=graphs', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_menu_types`
--

DROP TABLE IF EXISTS `vw7az_menu_types`;
CREATE TABLE `vw7az_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_menu_types`
--

INSERT INTO `vw7az_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_messages`
--

DROP TABLE IF EXISTS `vw7az_messages`;
CREATE TABLE `vw7az_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_messages_cfg`
--

DROP TABLE IF EXISTS `vw7az_messages_cfg`;
CREATE TABLE `vw7az_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_modules`
--

DROP TABLE IF EXISTS `vw7az_modules`;
CREATE TABLE `vw7az_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_modules`
--

INSERT INTO `vw7az_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 58, 'mod_aistchart_script', '', '', 1, 'script', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_aistchart_script', 1, 1, '{"moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 59, 'mod_aistchart_graph', '', '', 1, 'graph', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_aistchart_graph', 1, 1, '{"method":"","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_modules_menu`
--

DROP TABLE IF EXISTS `vw7az_modules_menu`;
CREATE TABLE `vw7az_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_modules_menu`
--

INSERT INTO `vw7az_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 101);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_newsfeeds`
--

DROP TABLE IF EXISTS `vw7az_newsfeeds`;
CREATE TABLE `vw7az_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_overrider`
--

DROP TABLE IF EXISTS `vw7az_overrider`;
CREATE TABLE `vw7az_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_postinstall_messages`
--

DROP TABLE IF EXISTS `vw7az_postinstall_messages`;
CREATE TABLE `vw7az_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_postinstall_messages`
--

INSERT INTO `vw7az_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_redirect_links`
--

DROP TABLE IF EXISTS `vw7az_redirect_links`;
CREATE TABLE `vw7az_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_schemas`
--

DROP TABLE IF EXISTS `vw7az_schemas`;
CREATE TABLE `vw7az_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_schemas`
--

INSERT INTO `vw7az_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.5.1-2016-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_session`
--

DROP TABLE IF EXISTS `vw7az_session`;
CREATE TABLE `vw7az_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_session`
--

INSERT INTO `vw7az_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('1b7b792eb1948ecd8e72630285a6b0e0', 1, 0, '1461339518', 'joomla|s:2452:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyODtzOjU6InRva2VuIjtzOjMyOiJ6OHczbmlHaXdVMWNhREtQU3hUZ21hdDJEdFZ6QWZ0TSI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDYxMzM2MzI2O3M6NDoibGFzdCI7aToxNDYxMzM5NTE3O3M6Mzoibm93IjtpOjE0NjEzMzk1MTc7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMzoiY29tX3RlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InN0eWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czoxMDoiY29tX2NvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJjb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZ2xvYmFsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjI4OntzOjk6IgAqAGlzUm9vdCI7YjoxO3M6MjoiaWQiO3M6MzoiMjI0IjtzOjQ6Im5hbWUiO3M6MTA6IlN1cGVyIFVzZXIiO3M6ODoidXNlcm5hbWUiO3M6NToiYWRtaW4iO3M6NToiZW1haWwiO3M6MjE6ImEua2lzZWxldkBzZW90ZWFtLnBybyI7czo4OiJwYXNzd29yZCI7czo2MDoiJDJ5JDEwJHRETHhvL05PcnZvUWRORmZqdkxkSnUwTkNIYm1DeDBveUE3YlRSMGN2L2pTYzVORWlidE9DIjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO3M6MToiMCI7czo5OiJzZW5kRW1haWwiO3M6MToiMSI7czoxMjoicmVnaXN0ZXJEYXRlIjtzOjE5OiIyMDE2LTAzLTA4IDE0OjM4OjA2IjtzOjEzOiJsYXN0dmlzaXREYXRlIjtzOjE5OiIyMDE2LTA0LTIyIDE0OjMwOjAyIjtzOjEwOiJhY3RpdmF0aW9uIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjA6IiI7czo2OiJncm91cHMiO2E6MTp7aTo4O3M6MToiOCI7fXM6NToiZ3Vlc3QiO2k6MDtzOjEzOiJsYXN0UmVzZXRUaW1lIjtzOjE5OiIwMDAwLTAwLTAwIDAwOjAwOjAwIjtzOjEwOiJyZXNldENvdW50IjtzOjE6IjAiO3M6MTI6InJlcXVpcmVSZXNldCI7czoxOiIwIjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjg7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjU6e2k6MDtpOjE7aToxO2k6MTtpOjI7aToyO2k6MztpOjM7aTo0O2k6Njt9czoxNToiACoAX2F1dGhBY3Rpb25zIjtOO3M6MTI6IgAqAF9lcnJvck1zZyI7TjtzOjEzOiIAKgB1c2VySGVscGVyIjtPOjE4OiJKVXNlcldyYXBwZXJIZWxwZXIiOjA6e31zOjEwOiIAKgBfZXJyb3JzIjthOjA6e31zOjM6ImFpZCI7aTowO3M6Njoib3RwS2V5IjtzOjA6IiI7czo0OiJvdGVwIjtzOjA6IiI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 224, 'admin'),
('80f162765e5493c38c55835ca712321d', 0, 1, '1461339773', 'joomla|s:1968:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTozOTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NjEzMzUzNzY7czo0OiJsYXN0IjtpOjE0NjEzMzk3NzA7czozOiJub3ciO2k6MTQ2MTMzOTc3Mzt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO319czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtiOjA7czoyOiJpZCI7aTowO3M6NDoibmFtZSI7TjtzOjg6InVzZXJuYW1lIjtOO3M6NToiZW1haWwiO047czo4OiJwYXNzd29yZCI7TjtzOjE0OiJwYXNzd29yZF9jbGVhciI7czowOiIiO3M6NToiYmxvY2siO047czo5OiJzZW5kRW1haWwiO2k6MDtzOjEyOiJyZWdpc3RlckRhdGUiO047czoxMzoibGFzdHZpc2l0RGF0ZSI7TjtzOjEwOiJhY3RpdmF0aW9uIjtOO3M6NjoicGFyYW1zIjtOO3M6NjoiZ3JvdXBzIjthOjE6e2k6MDtzOjE6IjkiO31zOjU6Imd1ZXN0IjtpOjE7czoxMzoibGFzdFJlc2V0VGltZSI7TjtzOjEwOiJyZXNldENvdW50IjtOO3M6MTI6InJlcXVpcmVSZXNldCI7TjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjk7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjM6e2k6MDtpOjE7aToxO2k6MTtpOjI7aTo1O31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6MzoiYWlkIjtpOjA7fXM6MTA6ImNvbV9tYWlsdG8iO086ODoic3RkQ2xhc3MiOjE6e3M6NToibGlua3MiO2E6MTp7czo0MDoiNWQwZTIzYjYxNTM2YWU3M2U2MmQ2YzU4NDg5Y2RkMTI3YWRmMzdiMCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJsaW5rIjtzOjEwNDoiaHR0cDovL2Fpc3RpbnZlc3Q6ODg4OC9pbmRleC5waHA/b3B0aW9uPWNvbV9jb250ZW50JnZpZXc9YXJ0aWNsZSZpZD0xOmNoYXN0eWUtdm9wcm9zeSZjYXRpZD0yJkl0ZW1pZD0xMDIiO3M6NjoiZXhwaXJ5IjtpOjE0NjEzMzk3NzE7fX19fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_tags`
--

DROP TABLE IF EXISTS `vw7az_tags`;
CREATE TABLE `vw7az_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_tags`
--

INSERT INTO `vw7az_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_template_styles`
--

DROP TABLE IF EXISTS `vw7az_template_styles`;
CREATE TABLE `vw7az_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_template_styles`
--

INSERT INTO `vw7az_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'aistinvest', 0, '1', 'AistInvest - Default', '{"ek1_slogan_1":"Мы торгуем на фондовом рынке России и США, используя торговых роботов","ek1_slogan_2":"Мы управляем своими деньгами и даем рекомендации другим инвесторам за долю от прибыли.","ek2_table":"<table>\\r\\n                                <thead>\\r\\n                                <tr>\\r\\n                                    <th><\\/th>\\r\\n                                    <th>Январь<\\/th>\\r\\n                                    <th>Февраль<\\/th>\\r\\n                                    <th>Март<\\/th>\\r\\n                                    <th>Апрель<\\/th>\\r\\n                                    <th>Май<\\/th>\\r\\n                                    <th>Июнь<\\/th>\\r\\n                                    <th>Июль<\\/th>\\r\\n                                    <th>Август<\\/th>\\r\\n                                    <th>Сентябрь<\\/th>\\r\\n                                    <th>Октябрь<\\/th>\\r\\n                                    <th>Ноябрь<\\/th>\\r\\n                                    <th>Декабрь<\\/th>\\r\\n                                    <th>Год<\\/th>\\r\\n                                <\\/tr>\\r\\n                                <\\/thead>\\r\\n                                <tbody>\\r\\n                                <tr>\\r\\n                                    <td>2014<\\/td>\\r\\n                                    <td> 7,32%<\\/td>\\r\\n                                    <td> 14,21%<\\/td>\\r\\n                                    <td> 23,68%<\\/td>\\r\\n                                    <td> 18,90%<\\/td>\\r\\n                                    <td> 23,31%<\\/td>\\r\\n                                    <td> 12,72%<\\/td>\\r\\n                                    <td> 13,64%<\\/td>\\r\\n                                    <td> 4,80%<\\/td>\\r\\n                                    <td> 13,55%<\\/td>\\r\\n                                    <td> 10,70%<\\/td>\\r\\n                                    <td> 18,47%<\\/td>\\r\\n                                    <td> 33,29%<\\/td>\\r\\n                                    <td> 194,59%<\\/td>\\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    <td>2015<\\/td>\\r\\n                                    <td> 12,42%<\\/td>\\r\\n                                    <td>-3,61%<\\/td>\\r\\n                                    <td> 6,68%<\\/td>\\r\\n                                    <td> 16,98%<\\/td>\\r\\n                                    <td> 4,02%<\\/td>\\r\\n                                    <td> 3,95%<\\/td>\\r\\n                                    <td> 4,49%<\\/td>\\r\\n                                    <td> 12,41%<\\/td>\\r\\n                                    <td>-10,87%<\\/td>\\r\\n                                    <td> 17,01%<\\/td>\\r\\n                                    <td>-10,24%<\\/td>\\r\\n                                    <td> 6,43%<\\/td>\\r\\n                                    <td> 59,67%<\\/td>\\r\\n                                <\\/tr>\\r\\n                                <tr>\\r\\n                                    <td>2016<\\/td>\\r\\n                                    <td> 15,22%<\\/td>\\r\\n                                    <td> 3,47%<\\/td>\\r\\n                                    <td>-7,54 <\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                    <td>-<\\/td>\\r\\n                                <\\/tr>\\r\\n                                <\\/tbody>\\r\\n                            <\\/table>","ek_3_label":"Мы работаем со счетами от 5 миллионов рублей","ek_3_desc":"Возможен пробный период от 1 миллиона рублей на 3 месяца. <br\\/>Агенту, приведшему инвестора, регулярно выплачивается комиссия от прибыли.","ek_3_advantages_1_label":"Ваши деньги у вас","ek_3_advantages_1_desc":"Брокерский счет открыт у независимого брокера и принадлежит вам","ek_3_advantages_2_label":"Контроль рисков","ek_3_advantages_2_desc":"Мы сразу договариваемся о максимально возможных убытках","ek_4_label":"Что нужно, чтобы начать работать с нами","ek_4_text":"<ol>\\r\\n<li>\\r\\n<p>Встретиться с управляющим партнером, познакомиться, подписать «Соглашение<\\/p>\\r\\n<p>о сотрудничестве»<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>Открыть ваш личный или корпоративный торговый счет у брокера, пополнить его<\\/p>\\r\\n<p>на сумму согласно «Соглашение о сотрудничестве»<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p>Сообщить нам логин, пароль и ключ для осуществления торговых операций, чтобы мы могли подключить к вашему счету наших торговых роботов и начать торговать. Мы дадим лист с полной детальной инструкцией после подписания «Соглашение<\\/p>\\r\\n<p>о сотрудничестве»<\\/p>\\r\\n<\\/li>\\r\\n<\\/ol>","ek_4_btn_on":"1","ek_4_btn_label":"ОТВЕТЫ НА ЧАСТЫЕ ВОПРОСЫ","ek_4_btn_url":"102","ek_5_label":"Контакты","ek_5_text":"Официальный аудированный отчет о доходности, шаблон договора <br \\/>или договориться о встрече &mdash;\\r\\n                        <a href=\\"mailto:lp@aistinvest.ru\\" class=\\"mail-to\\">\\r\\n                            <span>lp@aistinvest.ru<\\/span>\\r\\n                        <\\/a>","ek_5_address":"г. Москва, ул. Плеханова, 4А","ek_5_phone":"+7 (495) 733-98-75"}');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_ucm_base`
--

DROP TABLE IF EXISTS `vw7az_ucm_base`;
CREATE TABLE `vw7az_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_ucm_content`
--

DROP TABLE IF EXISTS `vw7az_ucm_content`;
CREATE TABLE `vw7az_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_ucm_history`
--

DROP TABLE IF EXISTS `vw7az_ucm_history`;
CREATE TABLE `vw7az_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_ucm_history`
--

INSERT INTO `vw7az_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2016-03-24 09:46:36', 224, 15014, 'cca909656b898e3f467b0471da4f395d61cfb2d3', '{"id":1,"asset_id":54,"title":"\\u0427\\u0410\\u0421\\u0422\\u042b\\u0415 \\u0412\\u041e\\u041f\\u0420\\u041e\\u0421\\u042b","alias":"chastye-voprosy","introtext":"<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? <br \\/>\\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u0421\\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? <br \\/>\\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u0421\\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0424\\u0438\\u043d\\u0430\\u043c\\u0435. \\u041e\\u043d\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0442 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445, \\u0430 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0435\\u0432\\u0440\\u043e. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0440\\u0443\\u0431\\u043b\\u0438 \\u043f\\u043e \\u043a\\u0443\\u0440\\u0441\\u0443 \\u0426\\u0411 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0424\\u0438\\u043d\\u0430\\u043c\\u0435. \\u041e\\u043d\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0442 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445, \\u0430 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0435\\u0432\\u0440\\u043e. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0440\\u0443\\u0431\\u043b\\u0438 \\u043f\\u043e \\u043a\\u0443\\u0440\\u0441\\u0443 \\u0426\\u0411 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u0432\\u0430\\u043c \\u0440\\u0435\\u0448\\u0430\\u0442\\u044c, \\u043c\\u044b \\u043d\\u0435 \\u043c\\u043e\\u0436\\u0435\\u043c \\u043f\\u0440\\u0435\\u0434\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u0433\\u043b\\u043e\\u0431\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u0430\\u043b\\u044e\\u0442\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f, \\u043c\\u044b \\u043c\\u043e\\u0436\\u0435\\u043c \\u043b\\u0438\\u0448\\u044c \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043d\\u0438\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438\\u0441\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u0432\\u0430\\u043c \\u0440\\u0435\\u0448\\u0430\\u0442\\u044c, \\u043c\\u044b \\u043d\\u0435 \\u043c\\u043e\\u0436\\u0435\\u043c \\u043f\\u0440\\u0435\\u0434\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u0433\\u043b\\u043e\\u0431\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u0430\\u043b\\u044e\\u0442\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f, \\u043c\\u044b \\u043c\\u043e\\u0436\\u0435\\u043c \\u043b\\u0438\\u0448\\u044c \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043d\\u0438\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438\\u0441\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? <br \\/>\\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u0421\\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? <br \\/>\\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u0421\\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 09:46:36","created_by":"224","created_by_alias":"","modified":"2016-03-24 09:46:36","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-03-24 09:46:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `vw7az_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(2, 1, 1, '', '2016-04-07 13:02:21', 224, 56357, 'fab9c923b8180131dc2ce888e5f348174ebaa886', '{"id":1,"asset_id":"54","title":"\\u0427\\u0410\\u0421\\u0422\\u042b\\u0415 \\u0412\\u041e\\u041f\\u0420\\u041e\\u0421\\u042b","alias":"chastye-voprosy","introtext":"<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0432\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442\\u0435 \\u043f\\u043e \\u0441\\u0443\\u0442\\u0438?<\\/div>\\r\\n<p>\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c \\u043a \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e\\u043c\\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432. \\u0414\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0443 \\u0432\\u0430\\u0441, \\u043c\\u044b \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u043c. \\u041f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u043e\\u0433\\u043e \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u0442\\u0435?<\\/div>\\r\\n<p>\\u041b\\u044e\\u0431\\u043e\\u0433\\u043e \\u043a\\u0440\\u0443\\u043f\\u043d\\u043e\\u0433\\u043e, \\u0443 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u0435\\u0441\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441 Plaza2, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0424\\u0438\\u043d\\u0430\\u043c, \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435, \\u0411\\u041a\\u0421, IT invest.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041d\\u0430 \\u0447\\u044c\\u0435 \\u0438\\u043c\\u044f \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442?<\\/div>\\r\\n<p>\\u0421\\u0447\\u0435\\u0442 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0432\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f \\u043f\\u043e \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u0435.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0435\\u043c \\u0438 \\u043a\\u0430\\u043a \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u0442\\u0435?<\\/div>\\r\\n<p>\\u0424\\u044c\\u044e\\u0447\\u0435\\u0440\\u0441\\u044b \\u043d\\u0430 \\u0432\\u0430\\u043b\\u044e\\u0442\\u044b, \\u0438\\u043d\\u0434\\u0435\\u043a\\u0441 \\u0420\\u0422\\u0421 \\u0438 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0421\\u0431\\u0435\\u0440\\u0431\\u0430\\u043d\\u043a\\u0430. \\u0422\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b. \\u041c\\u044b \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u044f\\u0435\\u043c \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0432\\u044b\\u0433\\u043b\\u044f\\u0434\\u0438\\u0442 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435, \\u043a\\u0430\\u043a\\u043e\\u0435-\\u0442\\u043e \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0443 \\u043f\\u043e\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0432\\u044b \\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0443 \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0430 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 Plaza 2. \\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0443\\u044e \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u044e \\u0434\\u0430\\u0434\\u0438\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044e, \\u043d\\u043e \\u043d\\u0435 \\u043d\\u0430 \\u0432\\u0432\\u043e\\u0434-\\u0432\\u044b\\u0432\\u043e\\u0434 \\u0434\\u0435\\u043d\\u0435\\u0433?<\\/div>\\r\\n<p>\\u0414\\u0430. \\u0423 \\u043d\\u0430\\u0441 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0435 \\u043b\\u043e\\u0433\\u0438\\u043d \\u0438 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c, \\u0430 \\u0432\\u044b\\u0432\\u043e\\u0434 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442. \\u0423 \\u043d\\u0430\\u0441 \\u043a \\u043d\\u0435\\u043c\\u0443 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u0430 \\u043d\\u0435\\u0442. \\u041a \\u0442\\u043e\\u043c\\u0443 \\u0436\\u0435, \\u0441\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0432\\u044b\\u0432\\u0435\\u0441\\u0442\\u0438 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u0438\\u0442 \\u0432\\u0430\\u043c (\\u0432\\u043b\\u0430\\u0434\\u0435\\u043b\\u044c\\u0446\\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430), \\u044d\\u0442\\u043e \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u044d\\u0442\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438?<\\/div>\\r\\n<p>\\u041c\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044b\\u0432\\u0430\\u0435\\u043c \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u0438 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a. \\u0422\\u0430\\u043c \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u044b \\u0432\\u0441\\u0435 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u044b, \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438, \\u0440\\u0438\\u0441\\u043a\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c?<\\/div>\\r\\n<p>\\u041a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0410\\u0438\\u0441\\u0442 \\u0418\\u043d\\u0432\\u0435\\u0441\\u0442 \\u043e\\u0442 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0443\\u043f\\u043b\\u0430\\u0442\\u044b \\u0432\\u0441\\u0435\\u0445 \\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432:<br \\/> 30% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 1.000.000 \\u0434\\u043e 35.000.000,<br \\/> 25% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 35.000.001 \\u0434\\u043e 200.000.000,<br \\/> 20% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 200.000.001.<br \\/> \\u041a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u043e\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? \\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u0421\\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0424\\u0438\\u043d\\u0430\\u043c\\u0435. \\u041e\\u043d\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0442 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445, \\u0430 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0435\\u0432\\u0440\\u043e. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0440\\u0443\\u0431\\u043b\\u0438 \\u043f\\u043e \\u043a\\u0443\\u0440\\u0441\\u0443 \\u0426\\u0411 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u0432\\u0430\\u043c \\u0440\\u0435\\u0448\\u0430\\u0442\\u044c, \\u043c\\u044b \\u043d\\u0435 \\u043c\\u043e\\u0436\\u0435\\u043c \\u043f\\u0440\\u0435\\u0434\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u0433\\u043b\\u043e\\u0431\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u0430\\u043b\\u044e\\u0442\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f, \\u043c\\u044b \\u043c\\u043e\\u0436\\u0435\\u043c \\u043b\\u0438\\u0448\\u044c \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043d\\u0438\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438\\u0441\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0442\\u0430\\u043a\\u043e\\u0439 \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0433 \\u0432\\u0445\\u043e\\u0434\\u0430?<\\/div>\\r\\n<p>1. \\u041c\\u044b \\u043d\\u0435 \\u0445\\u043e\\u0442\\u0438\\u043c, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0443 \\u043d\\u0430\\u0441 \\u0431\\u044b\\u043b\\u043e \\u0431\\u043e\\u043b\\u0435\\u0435 75 \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432, \\u043a \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u043c \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u044b \\u0440\\u043e\\u0431\\u043e\\u0442\\u044b.<br \\/> \\u042d\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0433\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c, \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c \\u0438 \\u0441\\u043a\\u043e\\u043d\\u0446\\u0435\\u043d\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u043c - \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435.<br \\/> 2. \\u0423 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0435\\u0441\\u0442\\u044c \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u0438 \\u0437\\u0430 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u0438 \\u0443 \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u0441 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043c\\u0438 \\u0441\\u0443\\u043c\\u043c\\u0430\\u043c\\u0438 \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u043e \\u0441\\u043d\\u0438\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u0438\\u0437-\\u0437\\u0430 \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u044b\\u0445 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u0435\\u0439 (\\u0437\\u0430\\u043f\\u043b\\u0430\\u0442\\u0438\\u0442\\u044c 10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432 \\u043c\\u0435\\u0441\\u044f\\u0446 \\u043f\\u0440\\u0438 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 50 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0433\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u0435\\u0435, \\u0447\\u0435\\u043c \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 200 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0437\\u0430\\u043a\\u043e\\u043d\\u0447\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0431\\u043d\\u044b\\u0439 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434?<\\/div>\\r\\n<p>1. \\u0412\\u044b \\u0432\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435 \\u0441\\u0443\\u043c\\u043c\\u0443, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u0431\\u044b\\u043b\\u0430 \\u0432\\u044b\\u0448\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043b\\u0438\\u043c\\u0438\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0432\\u0430\\u0448\\u0438 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0438\\u043b\\u0438 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0434\\u0440\\u0443\\u0433\\u043e\\u043c \\u0438\\u043b\\u0438 \\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044b\\u043c.<br \\/> \\u0438\\u043b\\u0438<br \\/> 2. \\u041c\\u044b \\u0440\\u0430\\u0441\\u0442\\u043e\\u0440\\u0433\\u0430\\u0435\\u043c \\u0434\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440 \\u0432 \\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u043d\\u0435\\u043c \\u043f\\u043e\\u0440\\u044f\\u0434\\u043a\\u0435 \\u0438 \\u043e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u043c \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0447\\u0430\\u0441\\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c?<\\/div>\\r\\n<p>\\u041f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e, \\u044d\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0441 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u043e\\u0439 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438 \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438. \\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0436\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0441 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0447\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u044d\\u0442\\u043e \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u0430 \\u0443 \\u043b\\u044e\\u0431\\u043e\\u0433\\u043e \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0441\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0432\\u043d\\u0435\\u043f\\u043b\\u0430\\u043d\\u043e\\u0432\\u043e, \\u043c\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c \\u043d\\u0430\\u0448\\u0443 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044e \\u043d\\u0430 \\u0442\\u0435\\u043a\\u0443\\u0449\\u0443\\u044e \\u0434\\u0430\\u0442\\u0443 \\u0438 \\u0432\\u0441\\u0435 \\u043e\\u043a.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u044c\\u043d\\u043e \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0440\\u0438\\u0441\\u043a\\u0438? \\u0421 \\u043a\\u0430\\u043a\\u0438\\u043c \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c?<\\/div>\\r\\n<p>\\u0412\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0441 \\u0440\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 50%, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043c\\u044b \\u043f\\u043e\\u043b\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443. \\u041f\\u0440\\u0438 \\u043c\\u0435\\u043d\\u044c\\u0448\\u0438\\u0445 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445, \\u0447\\u0430\\u0441\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0433 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043e\\u0441\\u0442\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e \\u043d\\u0435 \\u0437\\u0430\\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0441\\u043c\\u044b\\u0441\\u043b\\u0430 \\u0438\\u0445 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0435\\u0442. \\u0413\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0438\\u0445 \\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u043d\\u0430 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442 \\u0438\\u043b\\u0438 \\u0432 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043d\\u0438\\u0437\\u043a\\u043e\\u0440\\u0438\\u0441\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u044b. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440: \\u0423 \\u0432\\u0430\\u0441 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430 10 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0441 \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c 20%. \\u041c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e 4 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432\\u0430\\u0448\\u0438\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432, \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0431\\u0435\\u0437 \\u0434\\u0435\\u043b\\u0430. \\u0412 \\u0442\\u0430\\u043a\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0442\\u0430\\u043a: \\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0443 \\u043d\\u0430\\u0441 4 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0441 \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c 50%, \\u0430 6 000 000 \\u0432\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0432 \\u0431\\u0430\\u043d\\u043a \\u043d\\u0430 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442. \\u0422\\u0430\\u043a\\u0438\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c, \\u043d\\u0430 \\u0442\\u0443 \\u0436\\u0435 \\u0441\\u0443\\u043c\\u043c\\u0443 \\u0432 10 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0434\\u043e\\u0445\\u043e\\u0434\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043a\\u043b\\u044e\\u0447\\u0435\\u0432\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u044c?<\\/div>\\r\\n<p>- \\u0443 \\u043d\\u0430\\u0441 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 3 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043b\\u043e\\u0433\\u0438\\u043a\\u0438 \\u043d\\u0430 3 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0445 \\u043d\\u0430 3 \\u0442\\u0430\\u0439\\u043c-\\u0444\\u0440\\u0435\\u0439\\u043c\\u0430\\u0445 (\\u0432\\u0441\\u0435\\u0433\\u043e 81 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f). \\u0423 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0440\\u0430\\u0437\\u043d\\u043e\\u0435 \\u0447\\u0438\\u0441\\u043b\\u043e \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a \\u0437\\u0430 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434. \\u0412 \\u0446\\u0435\\u043b\\u043e\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c, \\u0447\\u0442\\u043e \\u043c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0434\\u0435\\u0441\\u044f\\u0442\\u043a\\u0438 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a \\u0432 \\u0434\\u0435\\u043d\\u044c \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0438\\u043c \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044e \\u043e\\u0442 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u0434\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c. \\u041c\\u044b \\u043d\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0443\\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043d\\u0438\\u0435\\/\\u043c\\u0430\\u0440\\u0442\\u0438\\u043d\\u0433\\u0435\\u0439\\u043b;<br \\/> - \\u043c\\u044b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0438 \\u043f\\u043e\\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u0443 \\u00ab\\u0441\\u043b\\u0438\\u0432\\u0430\\u0435\\u043c\\u00bb, \\u0440\\u0435\\u0434\\u043a\\u043e \\u0438 \\u043f\\u043e\\u043c\\u043d\\u043e\\u0433\\u0443 \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c. \\u0410\\u0431\\u0441\\u043e\\u043b\\u044e\\u0442\\u043d\\u043e \\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430 \\u0438 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u0430 \\u0441\\u0438\\u0442\\u0443\\u0430\\u0446\\u0438\\u044f, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0435\\u0442 \\u043f\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0443\\u043c\\u0435\\u043d\\u044c\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c, \\u0430 \\u0437\\u0430\\u0442\\u0435\\u043c \\u043c\\u044b \\u0437\\u0430 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0434\\u043d\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0434\\u0430\\u0436\\u0435 \\u0447\\u0430\\u0441\\u043e\\u0432 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0438\\u043c \\u0432 \\u043f\\u043b\\u044e\\u0441;<br \\/> - \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0434\\u0440\\u043e\\u043f\\u0434\\u0430\\u0443\\u043d \\u043d\\u0430 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435 \\u2013 12,7%, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0437\\u0430 \\u0434\\u0435\\u043d\\u044c \\u2013 3,5% (\\u0432 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u044d\\u0442\\u043e 1% \\u043f\\u0440\\u0438 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445 20%);<br \\/> - \\u043c\\u044b \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u0435\\u043c \\u0447\\u0438\\u0441\\u043b\\u043e \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043b\\u043e\\u0433\\u0438\\u043a, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u043d\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b;<br \\/> - \\u0432\\u0441\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u044b-\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445, \\u0438\\u0437\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0447\\u0438\\u0441\\u043b\\u043e \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0435\\u043c\\u044b\\u0445 \\u043b\\u043e\\u0442\\u043e\\u0432 \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u0431\\u044a\\u0435\\u043c\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0430, \\u0438 \\u043f\\u043b\\u0435\\u0447\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f \\u0440\\u0438\\u0441\\u043a\\u0430. \\u0414\\u043b\\u044f \\u0432\\u0441\\u0435\\u0445 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u043e\\u0432 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0440\\u043e\\u0431\\u043e\\u0442\\u044b, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0443\\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0443 \\u0432\\u0441\\u0435\\u0445 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u043e\\u0432 \\u0441 \\u0441\\u043e\\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c\\u044b\\u043c\\u0438 \\u0441\\u0443\\u043c\\u043c\\u0430\\u043c\\u0438 \\u0438 \\u0440\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 \\u2013 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b. \\u0412\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0432\\u043d\\u043e\\u043c\\u0435\\u0440\\u043d\\u043e;<br \\/> - \\u043c\\u044b \\u043d\\u0435 \\u0440\\u0430\\u0441\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u043c \\u0438\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0438 \\u0440\\u0435\\u0435\\u0441\\u0442\\u0440 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a;<br \\/> - \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430 \\u043f\\u043e \\u043c\\u0438\\u043d\\u0438\\u043c\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043e\\u043a: \\u0434\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f \\u043f\\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f\\u043c, \\u0442\\u0430\\u0439\\u043c-\\u0444\\u0440\\u0435\\u0439\\u043c\\u0430\\u043c, \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c. \\u0423 \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043f\\u043e\\u0442\\u0435\\u0440\\u044c \\u043d\\u0430 \\u0441\\u0434\\u0435\\u043b\\u043a\\u0443. \\u0423\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043f\\u043b\\u0435\\u0447\\u0430 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d \\u04455, \\u043f\\u0440\\u0438 \\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445 \\u2013 \\u04452-\\u04453 (\\u043d\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u043c \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e\\u043c \\u0441\\u0447\\u0435\\u0442\\u0443 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u04452 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0443\\u043c);<br \\/> - \\u0434\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438\\u043c\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0432 \\u0434\\u0435\\u043d\\u044c\\/\\u043c\\u0435\\u0441\\u044f\\u0446 \\u0434\\u043b\\u044f \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430 \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430, \\u043d\\u043e \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e \\u0440\\u0430\\u0432\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0434\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438\\u043c\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0435;<br \\/> - \\u0432 \\u0440\\u0435\\u0434\\u043a\\u0438\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u043c\\u044b \\u0440\\u0443\\u043a\\u0430\\u043c\\u0438 \\u0432\\u043c\\u0435\\u0448\\u0438\\u0432\\u0430\\u0435\\u043c\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432, \\u0435\\u0441\\u043b\\u0438 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0442 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0433\\u043d\\u043e\\u0437\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u0430\\u0442\\u044c \\u0440\\u0435\\u0437\\u043a\\u0438\\u0435 \\u0441\\u043a\\u0430\\u0447\\u043a\\u0438 \\u043a\\u043e\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u043a (\\u0434\\u043e\\u043b\\u0433\\u0438\\u0435 \\u043f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u043a\\u0438, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0432\\u0435\\u0441\\u044c \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0438\\u0440 \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u0442, \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435, \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043e\\u0436\\u0438\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u043d\\u0435\\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0440\\u0435\\u0437\\u043a\\u0438\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f \\u043a\\u0443\\u0440\\u0441\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043a \\u0440\\u0430\\u0437\\u0432\\u043e\\u0440\\u043e\\u0442\\u0443 \\u0438 \\u0442.\\u0434.);<br \\/> - \\u0432\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0432 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434 \\u0443\\u0431\\u044b\\u0442\\u043a\\u043e\\u0432, \\u043e\\u0442\\u0441\\u043b\\u0435\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c (\\u0440\\u0438\\u0441\\u043a-\\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u043e\\u043c).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0440\\u043e\\u0441\\u0442 \\u0432 2015 \\u0433\\u043e\\u0434\\u0443 \\u043d\\u0438\\u0436\\u0435, \\u0447\\u0435\\u043c \\u0432 2014?<\\/div>\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u043a\\u0440\\u0430\\u0442\\u043a\\u043e, \\u0442\\u043e \\u0441\\u043c\\u0435\\u043d\\u0438\\u043b\\u0441\\u044f \\u0440\\u044b\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b, \\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430\\u043f\\u0440\\u044f\\u043c\\u0443\\u044e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u0442 \\u043e\\u0442 \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0423 \\u043d\\u0430\\u0441 \\u0442\\u043e\\u0440\\u0433\\u0443\\u044e\\u0442 \\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b - \\u043c\\u044b \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043a\\u0430\\u043a\\u0438\\u0435-\\u0442\\u043e \\u0443\\u0441\\u0442\\u043e\\u0439\\u0447\\u0438\\u0432\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0421\\u0435\\u0439\\u0447\\u0430\\u0441 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0441\\u0442\\u0430\\u043b\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u043e \\u043c\\u0435\\u043d\\u044c\\u0448\\u0435, \\u0438 \\u043e\\u043d\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043a\\u043e\\u0440\\u043e\\u0447\\u0435 \\u043f\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439. \\u0412 \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445 \\u043c\\u044b \\u0442\\u0435\\u0440\\u044f\\u0435\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438. \\u0422.\\u0435. \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441 \\u0432\\u0441\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u043f\\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438, \\u043d\\u0438\\u0447\\u0435\\u0433\\u043e \\u043d\\u0435\\u043e\\u0431\\u044b\\u0447\\u043d\\u043e\\u0433\\u043e \\u043d\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u043e, \\u043c\\u044b \\u043d\\u0430\\u0447\\u043d\\u0435\\u043c \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0441\\u043c\\u0435\\u043d\\u0438\\u0442\\u0441\\u044f \\u0446\\u0438\\u043a\\u043b \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0422\\u0435\\u043c \\u043d\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0435, \\u043c\\u044b \\u0443\\u0436\\u0435 \\u0434\\u0430\\u0432\\u043d\\u043e \\u0432\\u0435\\u0434\\u0435\\u043c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0439 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0433\\u043e \\u0442\\u0438\\u043f\\u0430 - \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0431\\u043e\\u043a\\u043e\\u0432\\u043e\\u043c \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0440\\u044b\\u043d\\u043a\\u0430 (\\u0442\\u0430\\u043a\\u0438\\u0435 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438 \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043a\\u043e\\u043d\\u0442\\u0440-\\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435) \\u0438 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u0442\\u0435\\u0440\\u044f\\u0442\\u044c \\u043f\\u0440\\u0438 \\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445 (\\u043c\\u0438\\u043d\\u0443\\u0441\\u043e\\u0432 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u043b\\u0438\\u0431\\u043e \\u0431\\u0443\\u0434\\u0443\\u0442, \\u043d\\u043e \\u0433\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u043c\\u0435\\u043d\\u044c\\u0448\\u0435 \\u0447\\u0435\\u043c \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0442\\u043e \\u0438 \\u043a\\u0430\\u043a \\u043a\\u043e\\u043c\\u043f\\u0435\\u043d\\u0441\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0443 \\u0432\\u044b\\u0448\\u0435 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043b\\u0438\\u043c\\u0438\\u0442\\u0430?<\\/div>\\r\\n<p>\\u041f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0443 \\u043c\\u044b \\u043a\\u043e\\u043c\\u043f\\u0435\\u043d\\u0441\\u0438\\u0440\\u0443\\u0435\\u043c \\u0441\\u0430\\u043c\\u0438 \\u0438\\u0437 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b \\u043d\\u0435 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0435\\u0442\\u0435 \\u043a\\u0440\\u0435\\u0434\\u0438\\u0442\\u044b, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u0441\\u0435 \\u0442\\u0430\\u043a \\u0437\\u0430\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e, \\u0438 \\u0438\\u0449\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435?<\\/div>\\r\\n<p>1. \\u041d\\u0430\\u0439\\u0442\\u0438 \\u0437\\u0430\\u0435\\u043c\\u043d\\u043e\\u0435 \\u0444\\u0438\\u043d\\u0430\\u043d\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0434 \\u0442\\u0430\\u043a\\u0443\\u044e \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e;<br \\/> 2. \\u041c\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0441 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0435\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432 \\u0438 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\\u043c\\u0438, \\u0443 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f \\u043f\\u0440\\u0435\\u0434\\u0443\\u0441\\u043c\\u0430\\u0442\\u0440\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043e\\u0431\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u0438, \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u0438\\u0445 \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\\u0430 \\u043d\\u0430\\u043c \\u043f\\u043e\\u043a\\u0430 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u0434\\u043b\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b;<br \\/> 3. \\u0423 \\u043d\\u0430\\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432 \\u043d\\u0430 \\u0444\\u0438\\u043d\\u0430\\u043d\\u0441\\u043e\\u0432\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0438 \\u043c\\u044b \\u043e\\u0431\\u0449\\u0430\\u0435\\u043c\\u0441\\u044f \\u0441\\u043e \\u0432\\u0441\\u0435\\u043c\\u0438, \\u043a\\u043e\\u043c\\u0443 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e \\u043d\\u0430\\u0448\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 (\\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0447\\u0430\\u0441\\u0442\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b, \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u044b, \\u0444\\u043e\\u043d\\u0434\\u044b \\u0438 \\u0442.\\u0434.). \\u042d\\u0442\\u043e \\u043c\\u0435\\u043d\\u0435\\u0435 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0435\\u043c\\u043a\\u043e \\u0434\\u043b\\u044f \\u043d\\u0430\\u0441, \\u0447\\u0435\\u043c \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u044c \\u043a\\u0440\\u0435\\u0434\\u0438\\u0442\\u044b.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0432\\u043e\\u043e\\u0431\\u0449\\u0435 \\u043f\\u0440\\u0438\\u0448\\u043b\\u0438 \\u0432 \\u0441\\u0444\\u0435\\u0440\\u0443 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0430\\u0445?<\\/div>\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u043b \\u0440\\u0443\\u043a\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b, \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043b \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u043b\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u043e \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435\\u0439. \\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441 \\u043a \\u0442\\u0435\\u043c\\u0435 \\u0438 \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438 \\u043f\\u0435\\u0440\\u0435\\u0440\\u043e\\u0441\\u043b\\u0438 \\u0432 \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441, \\u0434\\u043e\\u0445\\u043e\\u0434 \\u0441 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u043b \\u043d\\u0430\\u043d\\u044f\\u0442\\u044c \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0442\\u0440\\u0435\\u0439\\u0434\\u0435\\u0440\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u0443\\u044e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0432\\u0441\\u044e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u0438\\u043d\\u0444\\u0440\\u0430\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u042f \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0441\\u044c \\u0431\\u043b\\u0430\\u0433\\u043e\\u0442\\u0432\\u043e\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041a\\u0430\\u043a\\u0438\\u0435 \\u0435\\u0441\\u0442\\u044c \\u0432\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043c\\u0435\\u043d\\u044f?<\\/div>\\r\\n<p>\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0441\\u043a\\u0438\\u0434\\u043a\\u0443 \\u0441\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0436\\u0435\\u0440\\u0442\\u0432\\u0443\\u0435\\u0442\\u0435 \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0412 \\u0447\\u0435\\u043c \\u043f\\u043e\\u0434\\u0432\\u043e\\u0445? \\u042d\\u0442\\u043e \\u0447\\u0442\\u043e, \\u043f\\u0440\\u0430\\u0432\\u0434\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u0432\\u0434\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442. \\u041f\\u043e\\u0434\\u0432\\u043e\\u0445 \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u044f\\u0442\\u044c \\u0447\\u0430\\u0441\\u0442\\u044c \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\\u0430 \\u0432 \\u0440\\u0430\\u043c\\u043a\\u0430\\u0445 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0440\\u0438\\u0441\\u043a\\u043e\\u0432 \\u0438, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043e\\u0442 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442\\u0430, \\u0433\\u0434\\u0435 \\u0432\\u0441\\u0435 \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e \\u0440\\u0430\\u0441\\u0442\\u0435\\u0442 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u0443 \\u043d\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0441\\u043a\\u0430\\u0447\\u043a\\u0438 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430. \\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u044d\\u0442\\u043e \\u044d\\u043c\\u043e\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e \\u0442\\u044f\\u0436\\u0435\\u043b\\u043e.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u044f \\u043c\\u043e\\u0433\\u0443 \\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c \\u0435\\u0449\\u0435, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043f\\u0440\\u0438\\u043d\\u044f\\u0442\\u044c \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435?<\\/div>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u043f\\u0440\\u0438\\u0448\\u043b\\u0435\\u043c \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u0442\\u0435 \\u043e\\u0442 \\u0411\\u0414\\u041e \\u00ab\\u042e\\u043d\\u0438\\u043a\\u043e\\u043d\\u00bb, \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435. \\u042d\\u0442\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f \\u0432 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430\\u0445 \\u0438 \\u043f\\u043e\\u043d\\u044f\\u0442\\u044c \\u0432\\u0441\\u0435 \\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438. \\u0418, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e, \\u043c\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043c\\u043e\\u0436\\u0435\\u043c \\u0432\\u0441\\u0442\\u0440\\u0435\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0438 \\u0432\\u0441\\u0435 \\u043e\\u0431\\u0441\\u0443\\u0434\\u0438\\u0442\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0435\\u043c \\u0432\\u0430\\u0448\\u0438 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b \\u043b\\u0443\\u0447\\u0448\\u0435, \\u0447\\u0435\\u043c \\u0443 \\u043a\\u043e\\u043d\\u043a\\u0443\\u0440\\u0435\\u043d\\u0442\\u043e\\u0432?<\\/div>\\r\\n<p>\\u041e\\u043d\\u0438 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b \\u0432 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435 \\u043d\\u0430 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0443\\u043c\\u043c\\u0430\\u0445 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0435\\u043d\\u0435\\u0433 \\u0438 \\u043d\\u0430 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0447\\u0435\\u0433\\u043e \\u043d\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0442\\u044c 90% \\u0442\\u0440\\u0435\\u0439\\u0434\\u0435\\u0440\\u043e\\u0432 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0421 \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 10% \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u0442\\u0430\\u043a \\u0436\\u0435, \\u043a\\u0430\\u043a \\u0438 \\u0441 \\u043d\\u0430\\u043c\\u0438, \\u0441 \\u0442\\u043e\\u0447\\u043a\\u0438 \\u0437\\u0440\\u0435\\u043d\\u0438\\u044f \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430 \\u0432\\u0441\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u043e - \\u0443 \\u0432\\u0430\\u0441 \\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0434\\u0435\\u043d\\u0435\\u0433, \\u0447\\u0435\\u043c \\u0431\\u044b\\u043b\\u043e, \\u0441 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u043c \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435\\u043c \\u0440\\u0438\\u0441\\u043a\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0435\\u0449\\u0435 \\u0432\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u044f \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0437\\u043d\\u0430\\u0442\\u044c?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u043d\\u0435 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u043d\\u0435 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u044e\\u0442 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c. \\u0414\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u0432 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u043d\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043a\\u0430\\u043a \\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u0442\\u0430\\u043a \\u0438 \\u043e\\u0442\\u0440\\u0438\\u0446\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u043a\\u0430\\u0437\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0430 \\u043f\\u043e \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438 \\u043d\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0431\\u0435\\u0449\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438\\u043b\\u0438 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0435\\u0439 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438. \\u0412\\u043d\\u0438\\u043c\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044c\\u0442\\u0435\\u0441\\u044c \\u0441 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0435\\u0433\\u043e \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\\u043c!<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443?<\\/div>\\r\\n<p>1. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u044e\\u0449\\u0438\\u043c \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u043c, \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f, \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb.<br \\/> 2. \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044c \\u0432\\u0430\\u0448 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u043f\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u043d\\u0430 \\u0441\\u0443\\u043c\\u043c\\u0443 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044e \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb (\\u0438\\u043b\\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435, \\u043f\\u0440\\u0438 \\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u0438).<br \\/> 3. \\u0421\\u043e\\u043e\\u0431\\u0449\\u0438\\u0442\\u044c \\u043d\\u0430\\u043c \\u043b\\u043e\\u0433\\u0438\\u043d, \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043b\\u044e\\u0447 \\u0434\\u043b\\u044f \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0439, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043c\\u044b \\u043c\\u043e\\u0433\\u043b\\u0438 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c \\u043a \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0438 \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c.<br \\/> \\u041c\\u044b \\u0434\\u0430\\u0434\\u0438\\u043c \\u043b\\u0438\\u0441\\u0442 \\u0441 \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u0435\\u0439 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u044f \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb.<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 09:46:36","created_by":"224","created_by_alias":"","modified":"2016-04-07 13:02:21","modified_by":"224","checked_out":"224","checked_out_time":"2016-04-07 12:48:44","publish_up":"2016-03-24 09:46:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"28","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `vw7az_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(3, 1, 1, '', '2016-04-07 13:03:30', 224, 56357, '385c7f8ffff371eedbdbe5ffbc0d1134329c6494', '{"id":1,"asset_id":"54","title":"\\u0427\\u0410\\u0421\\u0422\\u042b\\u0415 \\u0412\\u041e\\u041f\\u0420\\u041e\\u0421\\u042b","alias":"chastye-voprosy","introtext":"<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0432\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442\\u0435 \\u043f\\u043e \\u0441\\u0443\\u0442\\u0438?<\\/div>\\r\\n<p>\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c \\u043a \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e\\u043c\\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432. \\u0414\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0443 \\u0432\\u0430\\u0441, \\u043c\\u044b \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u043c. \\u041f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u043e\\u0433\\u043e \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u0442\\u0435?<\\/div>\\r\\n<p>\\u041b\\u044e\\u0431\\u043e\\u0433\\u043e \\u043a\\u0440\\u0443\\u043f\\u043d\\u043e\\u0433\\u043e, \\u0443 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u0435\\u0441\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441 Plaza2, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0424\\u0438\\u043d\\u0430\\u043c, \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435, \\u0411\\u041a\\u0421, IT invest.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041d\\u0430 \\u0447\\u044c\\u0435 \\u0438\\u043c\\u044f \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442?<\\/div>\\r\\n<p>\\u0421\\u0447\\u0435\\u0442 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0432\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f \\u043f\\u043e \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u0435.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0435\\u043c \\u0438 \\u043a\\u0430\\u043a \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u0442\\u0435?<\\/div>\\r\\n<p>\\u0424\\u044c\\u044e\\u0447\\u0435\\u0440\\u0441\\u044b \\u043d\\u0430 \\u0432\\u0430\\u043b\\u044e\\u0442\\u044b, \\u0438\\u043d\\u0434\\u0435\\u043a\\u0441 \\u0420\\u0422\\u0421 \\u0438 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0421\\u0431\\u0435\\u0440\\u0431\\u0430\\u043d\\u043a\\u0430. \\u0422\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b. \\u041c\\u044b \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u044f\\u0435\\u043c \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0432\\u044b\\u0433\\u043b\\u044f\\u0434\\u0438\\u0442 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435, \\u043a\\u0430\\u043a\\u043e\\u0435-\\u0442\\u043e \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0443 \\u043f\\u043e\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0432\\u044b \\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0443 \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0430 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 Plaza 2. \\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0443\\u044e \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u044e \\u0434\\u0430\\u0434\\u0438\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044e, \\u043d\\u043e \\u043d\\u0435 \\u043d\\u0430 \\u0432\\u0432\\u043e\\u0434-\\u0432\\u044b\\u0432\\u043e\\u0434 \\u0434\\u0435\\u043d\\u0435\\u0433?<\\/div>\\r\\n<p>\\u0414\\u0430. \\u0423 \\u043d\\u0430\\u0441 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0435 \\u043b\\u043e\\u0433\\u0438\\u043d \\u0438 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c, \\u0430 \\u0432\\u044b\\u0432\\u043e\\u0434 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442. \\u0423 \\u043d\\u0430\\u0441 \\u043a \\u043d\\u0435\\u043c\\u0443 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u0430 \\u043d\\u0435\\u0442. \\u041a \\u0442\\u043e\\u043c\\u0443 \\u0436\\u0435, \\u0441\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0432\\u044b\\u0432\\u0435\\u0441\\u0442\\u0438 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u0438\\u0442 \\u0432\\u0430\\u043c (\\u0432\\u043b\\u0430\\u0434\\u0435\\u043b\\u044c\\u0446\\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430), \\u044d\\u0442\\u043e \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u044d\\u0442\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438?<\\/div>\\r\\n<p>\\u041c\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044b\\u0432\\u0430\\u0435\\u043c \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u0438 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a. \\u0422\\u0430\\u043c \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u044b \\u0432\\u0441\\u0435 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u044b, \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438, \\u0440\\u0438\\u0441\\u043a\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c?<\\/div>\\r\\n<p>\\u041a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0410\\u0438\\u0441\\u0442 \\u0418\\u043d\\u0432\\u0435\\u0441\\u0442 \\u043e\\u0442 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0443\\u043f\\u043b\\u0430\\u0442\\u044b \\u0432\\u0441\\u0435\\u0445 \\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432:<br \\/> 30% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 1.000.000 \\u0434\\u043e 35.000.000,<br \\/> 25% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 35.000.001 \\u0434\\u043e 200.000.000,<br \\/> 20% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 200.000.001.<br \\/> \\u041a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u043e\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? \\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u0421\\u043d\\u0430\\u0447\\u0430\\u043b\\u0430 \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0424\\u0438\\u043d\\u0430\\u043c\\u0435. \\u041e\\u043d\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0442 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445, \\u0430 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0435\\u0432\\u0440\\u043e. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0440\\u0443\\u0431\\u043b\\u0438 \\u043f\\u043e \\u043a\\u0443\\u0440\\u0441\\u0443 \\u0426\\u0411 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u0432\\u0430\\u043c \\u0440\\u0435\\u0448\\u0430\\u0442\\u044c, \\u043c\\u044b \\u043d\\u0435 \\u043c\\u043e\\u0436\\u0435\\u043c \\u043f\\u0440\\u0435\\u0434\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u0433\\u043b\\u043e\\u0431\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u0430\\u043b\\u044e\\u0442\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f, \\u043c\\u044b \\u043c\\u043e\\u0436\\u0435\\u043c \\u043b\\u0438\\u0448\\u044c \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043d\\u0438\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438\\u0441\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0442\\u0430\\u043a\\u043e\\u0439 \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0433 \\u0432\\u0445\\u043e\\u0434\\u0430?<\\/div>\\r\\n<p>1. \\u041c\\u044b \\u043d\\u0435 \\u0445\\u043e\\u0442\\u0438\\u043c, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0443 \\u043d\\u0430\\u0441 \\u0431\\u044b\\u043b\\u043e \\u0431\\u043e\\u043b\\u0435\\u0435 75 \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432, \\u043a \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u043c \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u044b \\u0440\\u043e\\u0431\\u043e\\u0442\\u044b.<br \\/> \\u042d\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0433\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c, \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c \\u0438 \\u0441\\u043a\\u043e\\u043d\\u0446\\u0435\\u043d\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u043c - \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435.<br \\/> 2. \\u0423 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0435\\u0441\\u0442\\u044c \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u0438 \\u0437\\u0430 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u0438 \\u0443 \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u0441 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043c\\u0438 \\u0441\\u0443\\u043c\\u043c\\u0430\\u043c\\u0438 \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u043e \\u0441\\u043d\\u0438\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u0438\\u0437-\\u0437\\u0430 \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u044b\\u0445 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u0435\\u0439 (\\u0437\\u0430\\u043f\\u043b\\u0430\\u0442\\u0438\\u0442\\u044c 10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432 \\u043c\\u0435\\u0441\\u044f\\u0446 \\u043f\\u0440\\u0438 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 50 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0433\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u0435\\u0435, \\u0447\\u0435\\u043c \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 200 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0437\\u0430\\u043a\\u043e\\u043d\\u0447\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0431\\u043d\\u044b\\u0439 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434?<\\/div>\\r\\n<p>1. \\u0412\\u044b \\u0432\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435 \\u0441\\u0443\\u043c\\u043c\\u0443, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u0431\\u044b\\u043b\\u0430 \\u0432\\u044b\\u0448\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043b\\u0438\\u043c\\u0438\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0432\\u0430\\u0448\\u0438 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0438\\u043b\\u0438 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0434\\u0440\\u0443\\u0433\\u043e\\u043c \\u0438\\u043b\\u0438 \\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044b\\u043c.<br \\/> \\u0438\\u043b\\u0438<br \\/> 2. \\u041c\\u044b \\u0440\\u0430\\u0441\\u0442\\u043e\\u0440\\u0433\\u0430\\u0435\\u043c \\u0434\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440 \\u0432 \\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u043d\\u0435\\u043c \\u043f\\u043e\\u0440\\u044f\\u0434\\u043a\\u0435 \\u0438 \\u043e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u043c \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0447\\u0430\\u0441\\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c?<\\/div>\\r\\n<p>\\u041f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e, \\u044d\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0441 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u043e\\u0439 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438 \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438. \\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0436\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0441 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0447\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u044d\\u0442\\u043e \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u0430 \\u0443 \\u043b\\u044e\\u0431\\u043e\\u0433\\u043e \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0441\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0432\\u043d\\u0435\\u043f\\u043b\\u0430\\u043d\\u043e\\u0432\\u043e, \\u043c\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c \\u043d\\u0430\\u0448\\u0443 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044e \\u043d\\u0430 \\u0442\\u0435\\u043a\\u0443\\u0449\\u0443\\u044e \\u0434\\u0430\\u0442\\u0443 \\u0438 \\u0432\\u0441\\u0435 \\u043e\\u043a.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u044c\\u043d\\u043e \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0440\\u0438\\u0441\\u043a\\u0438? \\u0421 \\u043a\\u0430\\u043a\\u0438\\u043c \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c?<\\/div>\\r\\n<p>\\u0412\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0441 \\u0440\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 50%, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043c\\u044b \\u043f\\u043e\\u043b\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443. \\u041f\\u0440\\u0438 \\u043c\\u0435\\u043d\\u044c\\u0448\\u0438\\u0445 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445, \\u0447\\u0430\\u0441\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0433 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043e\\u0441\\u0442\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e \\u043d\\u0435 \\u0437\\u0430\\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0441\\u043c\\u044b\\u0441\\u043b\\u0430 \\u0438\\u0445 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0435\\u0442. \\u0413\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0438\\u0445 \\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u043d\\u0430 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442 \\u0438\\u043b\\u0438 \\u0432 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043d\\u0438\\u0437\\u043a\\u043e\\u0440\\u0438\\u0441\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u044b. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440: \\u0423 \\u0432\\u0430\\u0441 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430 10 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0441 \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c 20%. \\u041c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e 4 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432\\u0430\\u0448\\u0438\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432, \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0431\\u0435\\u0437 \\u0434\\u0435\\u043b\\u0430. \\u0412 \\u0442\\u0430\\u043a\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0442\\u0430\\u043a: \\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0443 \\u043d\\u0430\\u0441 4 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0441 \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c 50%, \\u0430 6 000 000 \\u0432\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0432 \\u0431\\u0430\\u043d\\u043a \\u043d\\u0430 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442. \\u0422\\u0430\\u043a\\u0438\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c, \\u043d\\u0430 \\u0442\\u0443 \\u0436\\u0435 \\u0441\\u0443\\u043c\\u043c\\u0443 \\u0432 10 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0434\\u043e\\u0445\\u043e\\u0434\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0440\\u043e\\u0441\\u0442 \\u0432 2015 \\u0433\\u043e\\u0434\\u0443 \\u043d\\u0438\\u0436\\u0435, \\u0447\\u0435\\u043c \\u0432 2014?<\\/div>\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u043a\\u0440\\u0430\\u0442\\u043a\\u043e, \\u0442\\u043e \\u0441\\u043c\\u0435\\u043d\\u0438\\u043b\\u0441\\u044f \\u0440\\u044b\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b, \\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430\\u043f\\u0440\\u044f\\u043c\\u0443\\u044e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u0442 \\u043e\\u0442 \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0423 \\u043d\\u0430\\u0441 \\u0442\\u043e\\u0440\\u0433\\u0443\\u044e\\u0442 \\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b - \\u043c\\u044b \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043a\\u0430\\u043a\\u0438\\u0435-\\u0442\\u043e \\u0443\\u0441\\u0442\\u043e\\u0439\\u0447\\u0438\\u0432\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0421\\u0435\\u0439\\u0447\\u0430\\u0441 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0441\\u0442\\u0430\\u043b\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u043e \\u043c\\u0435\\u043d\\u044c\\u0448\\u0435, \\u0438 \\u043e\\u043d\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043a\\u043e\\u0440\\u043e\\u0447\\u0435 \\u043f\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439. \\u0412 \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445 \\u043c\\u044b \\u0442\\u0435\\u0440\\u044f\\u0435\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438. \\u0422.\\u0435. \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441 \\u0432\\u0441\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u043f\\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438, \\u043d\\u0438\\u0447\\u0435\\u0433\\u043e \\u043d\\u0435\\u043e\\u0431\\u044b\\u0447\\u043d\\u043e\\u0433\\u043e \\u043d\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u043e, \\u043c\\u044b \\u043d\\u0430\\u0447\\u043d\\u0435\\u043c \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0441\\u043c\\u0435\\u043d\\u0438\\u0442\\u0441\\u044f \\u0446\\u0438\\u043a\\u043b \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0422\\u0435\\u043c \\u043d\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0435, \\u043c\\u044b \\u0443\\u0436\\u0435 \\u0434\\u0430\\u0432\\u043d\\u043e \\u0432\\u0435\\u0434\\u0435\\u043c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0439 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0433\\u043e \\u0442\\u0438\\u043f\\u0430 - \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0431\\u043e\\u043a\\u043e\\u0432\\u043e\\u043c \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0440\\u044b\\u043d\\u043a\\u0430 (\\u0442\\u0430\\u043a\\u0438\\u0435 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438 \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043a\\u043e\\u043d\\u0442\\u0440-\\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435) \\u0438 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u0442\\u0435\\u0440\\u044f\\u0442\\u044c \\u043f\\u0440\\u0438 \\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445 (\\u043c\\u0438\\u043d\\u0443\\u0441\\u043e\\u0432 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u043b\\u0438\\u0431\\u043e \\u0431\\u0443\\u0434\\u0443\\u0442, \\u043d\\u043e \\u0433\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u043c\\u0435\\u043d\\u044c\\u0448\\u0435 \\u0447\\u0435\\u043c \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0442\\u043e \\u0438 \\u043a\\u0430\\u043a \\u043a\\u043e\\u043c\\u043f\\u0435\\u043d\\u0441\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0443 \\u0432\\u044b\\u0448\\u0435 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043b\\u0438\\u043c\\u0438\\u0442\\u0430?<\\/div>\\r\\n<p>\\u041f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0443 \\u043c\\u044b \\u043a\\u043e\\u043c\\u043f\\u0435\\u043d\\u0441\\u0438\\u0440\\u0443\\u0435\\u043c \\u0441\\u0430\\u043c\\u0438 \\u0438\\u0437 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b \\u043d\\u0435 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0435\\u0442\\u0435 \\u043a\\u0440\\u0435\\u0434\\u0438\\u0442\\u044b, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u0441\\u0435 \\u0442\\u0430\\u043a \\u0437\\u0430\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e, \\u0438 \\u0438\\u0449\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435?<\\/div>\\r\\n<p>1. \\u041d\\u0430\\u0439\\u0442\\u0438 \\u0437\\u0430\\u0435\\u043c\\u043d\\u043e\\u0435 \\u0444\\u0438\\u043d\\u0430\\u043d\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0434 \\u0442\\u0430\\u043a\\u0443\\u044e \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e;<br \\/> 2. \\u041c\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0441 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0435\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432 \\u0438 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\\u043c\\u0438, \\u0443 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f \\u043f\\u0440\\u0435\\u0434\\u0443\\u0441\\u043c\\u0430\\u0442\\u0440\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043e\\u0431\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u0438, \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u0438\\u0445 \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\\u0430 \\u043d\\u0430\\u043c \\u043f\\u043e\\u043a\\u0430 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u0434\\u043b\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b;<br \\/> 3. \\u0423 \\u043d\\u0430\\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432 \\u043d\\u0430 \\u0444\\u0438\\u043d\\u0430\\u043d\\u0441\\u043e\\u0432\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0438 \\u043c\\u044b \\u043e\\u0431\\u0449\\u0430\\u0435\\u043c\\u0441\\u044f \\u0441\\u043e \\u0432\\u0441\\u0435\\u043c\\u0438, \\u043a\\u043e\\u043c\\u0443 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e \\u043d\\u0430\\u0448\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 (\\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0447\\u0430\\u0441\\u0442\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b, \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u044b, \\u0444\\u043e\\u043d\\u0434\\u044b \\u0438 \\u0442.\\u0434.). \\u042d\\u0442\\u043e \\u043c\\u0435\\u043d\\u0435\\u0435 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0435\\u043c\\u043a\\u043e \\u0434\\u043b\\u044f \\u043d\\u0430\\u0441, \\u0447\\u0435\\u043c \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u044c \\u043a\\u0440\\u0435\\u0434\\u0438\\u0442\\u044b.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0432\\u043e\\u043e\\u0431\\u0449\\u0435 \\u043f\\u0440\\u0438\\u0448\\u043b\\u0438 \\u0432 \\u0441\\u0444\\u0435\\u0440\\u0443 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0430\\u0445?<\\/div>\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u043b \\u0440\\u0443\\u043a\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b, \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043b \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u043b\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u043e \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435\\u0439. \\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441 \\u043a \\u0442\\u0435\\u043c\\u0435 \\u0438 \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438 \\u043f\\u0435\\u0440\\u0435\\u0440\\u043e\\u0441\\u043b\\u0438 \\u0432 \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441, \\u0434\\u043e\\u0445\\u043e\\u0434 \\u0441 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u043b \\u043d\\u0430\\u043d\\u044f\\u0442\\u044c \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0442\\u0440\\u0435\\u0439\\u0434\\u0435\\u0440\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u0443\\u044e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0432\\u0441\\u044e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u0438\\u043d\\u0444\\u0440\\u0430\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u042f \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0441\\u044c \\u0431\\u043b\\u0430\\u0433\\u043e\\u0442\\u0432\\u043e\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041a\\u0430\\u043a\\u0438\\u0435 \\u0435\\u0441\\u0442\\u044c \\u0432\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043c\\u0435\\u043d\\u044f?<\\/div>\\r\\n<p>\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0441\\u043a\\u0438\\u0434\\u043a\\u0443 \\u0441\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0436\\u0435\\u0440\\u0442\\u0432\\u0443\\u0435\\u0442\\u0435 \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0412 \\u0447\\u0435\\u043c \\u043f\\u043e\\u0434\\u0432\\u043e\\u0445? \\u042d\\u0442\\u043e \\u0447\\u0442\\u043e, \\u043f\\u0440\\u0430\\u0432\\u0434\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u0432\\u0434\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442. \\u041f\\u043e\\u0434\\u0432\\u043e\\u0445 \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u044f\\u0442\\u044c \\u0447\\u0430\\u0441\\u0442\\u044c \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\\u0430 \\u0432 \\u0440\\u0430\\u043c\\u043a\\u0430\\u0445 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0440\\u0438\\u0441\\u043a\\u043e\\u0432 \\u0438, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043e\\u0442 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442\\u0430, \\u0433\\u0434\\u0435 \\u0432\\u0441\\u0435 \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e \\u0440\\u0430\\u0441\\u0442\\u0435\\u0442 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u0443 \\u043d\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0441\\u043a\\u0430\\u0447\\u043a\\u0438 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430. \\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u044d\\u0442\\u043e \\u044d\\u043c\\u043e\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e \\u0442\\u044f\\u0436\\u0435\\u043b\\u043e.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u044f \\u043c\\u043e\\u0433\\u0443 \\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c \\u0435\\u0449\\u0435, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043f\\u0440\\u0438\\u043d\\u044f\\u0442\\u044c \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435?<\\/div>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u043f\\u0440\\u0438\\u0448\\u043b\\u0435\\u043c \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u0442\\u0435 \\u043e\\u0442 \\u0411\\u0414\\u041e \\u00ab\\u042e\\u043d\\u0438\\u043a\\u043e\\u043d\\u00bb, \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435. \\u042d\\u0442\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f \\u0432 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430\\u0445 \\u0438 \\u043f\\u043e\\u043d\\u044f\\u0442\\u044c \\u0432\\u0441\\u0435 \\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438. \\u0418, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e, \\u043c\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043c\\u043e\\u0436\\u0435\\u043c \\u0432\\u0441\\u0442\\u0440\\u0435\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0438 \\u0432\\u0441\\u0435 \\u043e\\u0431\\u0441\\u0443\\u0434\\u0438\\u0442\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0435\\u043c \\u0432\\u0430\\u0448\\u0438 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b \\u043b\\u0443\\u0447\\u0448\\u0435, \\u0447\\u0435\\u043c \\u0443 \\u043a\\u043e\\u043d\\u043a\\u0443\\u0440\\u0435\\u043d\\u0442\\u043e\\u0432?<\\/div>\\r\\n<p>\\u041e\\u043d\\u0438 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b \\u0432 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435 \\u043d\\u0430 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0443\\u043c\\u043c\\u0430\\u0445 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0435\\u043d\\u0435\\u0433 \\u0438 \\u043d\\u0430 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0447\\u0435\\u0433\\u043e \\u043d\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0442\\u044c 90% \\u0442\\u0440\\u0435\\u0439\\u0434\\u0435\\u0440\\u043e\\u0432 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0421 \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 10% \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u0442\\u0430\\u043a \\u0436\\u0435, \\u043a\\u0430\\u043a \\u0438 \\u0441 \\u043d\\u0430\\u043c\\u0438, \\u0441 \\u0442\\u043e\\u0447\\u043a\\u0438 \\u0437\\u0440\\u0435\\u043d\\u0438\\u044f \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430 \\u0432\\u0441\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u043e - \\u0443 \\u0432\\u0430\\u0441 \\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0434\\u0435\\u043d\\u0435\\u0433, \\u0447\\u0435\\u043c \\u0431\\u044b\\u043b\\u043e, \\u0441 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u043c \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435\\u043c \\u0440\\u0438\\u0441\\u043a\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0435\\u0449\\u0435 \\u0432\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u044f \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0437\\u043d\\u0430\\u0442\\u044c?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u043d\\u0435 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u043d\\u0435 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u044e\\u0442 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c. \\u0414\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u0432 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u043d\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043a\\u0430\\u043a \\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u0442\\u0430\\u043a \\u0438 \\u043e\\u0442\\u0440\\u0438\\u0446\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u043a\\u0430\\u0437\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0430 \\u043f\\u043e \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438 \\u043d\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0431\\u0435\\u0449\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438\\u043b\\u0438 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0435\\u0439 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438. \\u0412\\u043d\\u0438\\u043c\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044c\\u0442\\u0435\\u0441\\u044c \\u0441 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0435\\u0433\\u043e \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\\u043c!<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443?<\\/div>\\r\\n<p>1. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u044e\\u0449\\u0438\\u043c \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u043c, \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f, \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb.<br \\/> 2. \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044c \\u0432\\u0430\\u0448 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u043f\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u043d\\u0430 \\u0441\\u0443\\u043c\\u043c\\u0443 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044e \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb (\\u0438\\u043b\\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435, \\u043f\\u0440\\u0438 \\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u0438).<br \\/> 3. \\u0421\\u043e\\u043e\\u0431\\u0449\\u0438\\u0442\\u044c \\u043d\\u0430\\u043c \\u043b\\u043e\\u0433\\u0438\\u043d, \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043b\\u044e\\u0447 \\u0434\\u043b\\u044f \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0439, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043c\\u044b \\u043c\\u043e\\u0433\\u043b\\u0438 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c \\u043a \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0438 \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c.<br \\/> \\u041c\\u044b \\u0434\\u0430\\u0434\\u0438\\u043c \\u043b\\u0438\\u0441\\u0442 \\u0441 \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u0435\\u0439 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u044f \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043a\\u043b\\u044e\\u0447\\u0435\\u0432\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u044c?<\\/div>\\r\\n<p>- \\u0443 \\u043d\\u0430\\u0441 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 3 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043b\\u043e\\u0433\\u0438\\u043a\\u0438 \\u043d\\u0430 3 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0445 \\u043d\\u0430 3 \\u0442\\u0430\\u0439\\u043c-\\u0444\\u0440\\u0435\\u0439\\u043c\\u0430\\u0445 (\\u0432\\u0441\\u0435\\u0433\\u043e 81 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f). \\u0423 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0440\\u0430\\u0437\\u043d\\u043e\\u0435 \\u0447\\u0438\\u0441\\u043b\\u043e \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a \\u0437\\u0430 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434. \\u0412 \\u0446\\u0435\\u043b\\u043e\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c, \\u0447\\u0442\\u043e \\u043c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0434\\u0435\\u0441\\u044f\\u0442\\u043a\\u0438 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a \\u0432 \\u0434\\u0435\\u043d\\u044c \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0438\\u043c \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044e \\u043e\\u0442 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u0434\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c. \\u041c\\u044b \\u043d\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0443\\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043d\\u0438\\u0435\\/\\u043c\\u0430\\u0440\\u0442\\u0438\\u043d\\u0433\\u0435\\u0439\\u043b;<br \\/> - \\u043c\\u044b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0438 \\u043f\\u043e\\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u0443 \\u00ab\\u0441\\u043b\\u0438\\u0432\\u0430\\u0435\\u043c\\u00bb, \\u0440\\u0435\\u0434\\u043a\\u043e \\u0438 \\u043f\\u043e\\u043c\\u043d\\u043e\\u0433\\u0443 \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c. \\u0410\\u0431\\u0441\\u043e\\u043b\\u044e\\u0442\\u043d\\u043e \\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430 \\u0438 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u0430 \\u0441\\u0438\\u0442\\u0443\\u0430\\u0446\\u0438\\u044f, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0435\\u0442 \\u043f\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0443\\u043c\\u0435\\u043d\\u044c\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c, \\u0430 \\u0437\\u0430\\u0442\\u0435\\u043c \\u043c\\u044b \\u0437\\u0430 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0434\\u043d\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0434\\u0430\\u0436\\u0435 \\u0447\\u0430\\u0441\\u043e\\u0432 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0438\\u043c \\u0432 \\u043f\\u043b\\u044e\\u0441;<br \\/> - \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0434\\u0440\\u043e\\u043f\\u0434\\u0430\\u0443\\u043d \\u043d\\u0430 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435 \\u2013 12,7%, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0437\\u0430 \\u0434\\u0435\\u043d\\u044c \\u2013 3,5% (\\u0432 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u044d\\u0442\\u043e 1% \\u043f\\u0440\\u0438 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445 20%);<br \\/> - \\u043c\\u044b \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u0435\\u043c \\u0447\\u0438\\u0441\\u043b\\u043e \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043b\\u043e\\u0433\\u0438\\u043a, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u043d\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b;<br \\/> - \\u0432\\u0441\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u044b-\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445, \\u0438\\u0437\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0447\\u0438\\u0441\\u043b\\u043e \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0435\\u043c\\u044b\\u0445 \\u043b\\u043e\\u0442\\u043e\\u0432 \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u0431\\u044a\\u0435\\u043c\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0430, \\u0438 \\u043f\\u043b\\u0435\\u0447\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f \\u0440\\u0438\\u0441\\u043a\\u0430. \\u0414\\u043b\\u044f \\u0432\\u0441\\u0435\\u0445 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u043e\\u0432 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0440\\u043e\\u0431\\u043e\\u0442\\u044b, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0443\\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0443 \\u0432\\u0441\\u0435\\u0445 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u043e\\u0432 \\u0441 \\u0441\\u043e\\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c\\u044b\\u043c\\u0438 \\u0441\\u0443\\u043c\\u043c\\u0430\\u043c\\u0438 \\u0438 \\u0440\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 \\u2013 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b. \\u0412\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0432\\u043d\\u043e\\u043c\\u0435\\u0440\\u043d\\u043e;<br \\/> - \\u043c\\u044b \\u043d\\u0435 \\u0440\\u0430\\u0441\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u043c \\u0438\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0438 \\u0440\\u0435\\u0435\\u0441\\u0442\\u0440 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a;<br \\/> - \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430 \\u043f\\u043e \\u043c\\u0438\\u043d\\u0438\\u043c\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043e\\u043a: \\u0434\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f \\u043f\\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f\\u043c, \\u0442\\u0430\\u0439\\u043c-\\u0444\\u0440\\u0435\\u0439\\u043c\\u0430\\u043c, \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c. \\u0423 \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043f\\u043e\\u0442\\u0435\\u0440\\u044c \\u043d\\u0430 \\u0441\\u0434\\u0435\\u043b\\u043a\\u0443. \\u0423\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043f\\u043b\\u0435\\u0447\\u0430 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d \\u04455, \\u043f\\u0440\\u0438 \\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445 \\u2013 \\u04452-\\u04453 (\\u043d\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u043c \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e\\u043c \\u0441\\u0447\\u0435\\u0442\\u0443 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u04452 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0443\\u043c);<br \\/> - \\u0434\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438\\u043c\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0432 \\u0434\\u0435\\u043d\\u044c\\/\\u043c\\u0435\\u0441\\u044f\\u0446 \\u0434\\u043b\\u044f \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430 \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430, \\u043d\\u043e \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e \\u0440\\u0430\\u0432\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0434\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438\\u043c\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0435;<br \\/> - \\u0432 \\u0440\\u0435\\u0434\\u043a\\u0438\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u043c\\u044b \\u0440\\u0443\\u043a\\u0430\\u043c\\u0438 \\u0432\\u043c\\u0435\\u0448\\u0438\\u0432\\u0430\\u0435\\u043c\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432, \\u0435\\u0441\\u043b\\u0438 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0442 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0433\\u043d\\u043e\\u0437\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u0430\\u0442\\u044c \\u0440\\u0435\\u0437\\u043a\\u0438\\u0435 \\u0441\\u043a\\u0430\\u0447\\u043a\\u0438 \\u043a\\u043e\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u043a (\\u0434\\u043e\\u043b\\u0433\\u0438\\u0435 \\u043f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u043a\\u0438, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0432\\u0435\\u0441\\u044c \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0438\\u0440 \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u0442, \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435, \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043e\\u0436\\u0438\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u043d\\u0435\\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0440\\u0435\\u0437\\u043a\\u0438\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f \\u043a\\u0443\\u0440\\u0441\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043a \\u0440\\u0430\\u0437\\u0432\\u043e\\u0440\\u043e\\u0442\\u0443 \\u0438 \\u0442.\\u0434.);<br \\/> - \\u0432\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0432 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434 \\u0443\\u0431\\u044b\\u0442\\u043a\\u043e\\u0432, \\u043e\\u0442\\u0441\\u043b\\u0435\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c (\\u0440\\u0438\\u0441\\u043a-\\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u043e\\u043c).<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 09:46:36","created_by":"224","created_by_alias":"","modified":"2016-04-07 13:03:30","modified_by":"224","checked_out":"224","checked_out_time":"2016-04-07 13:02:21","publish_up":"2016-03-24 09:46:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"29","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `vw7az_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(4, 1, 1, '', '2016-04-22 07:57:50', 224, 56725, 'd7c6612617242f73f14e5360c3685a41bad98348', '{"id":1,"asset_id":"54","title":"\\u0427\\u0410\\u0421\\u0422\\u042b\\u0415 \\u0412\\u041e\\u041f\\u0420\\u041e\\u0421\\u042b","alias":"chastye-voprosy","introtext":"<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0432\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442\\u0435 \\u043f\\u043e \\u0441\\u0443\\u0442\\u0438?<\\/div>\\r\\n<p>\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c \\u043a \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e\\u043c\\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432. \\u0414\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0443 \\u0432\\u0430\\u0441, \\u043c\\u044b \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u043c. \\u041f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u043e\\u0433\\u043e \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u0442\\u0435?<\\/div>\\r\\n<p>\\u041b\\u044e\\u0431\\u043e\\u0433\\u043e \\u043a\\u0440\\u0443\\u043f\\u043d\\u043e\\u0433\\u043e, \\u0443 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u0435\\u0441\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0444\\u0435\\u0439\\u0441 Plaza2, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0424\\u0438\\u043d\\u0430\\u043c, \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435, \\u0411\\u041a\\u0421, IT invest.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041d\\u0430 \\u0447\\u044c\\u0435 \\u0438\\u043c\\u044f \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442?<\\/div>\\r\\n<p>\\u0421\\u0447\\u0435\\u0442 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0432\\u0430\\u0448\\u0435 \\u0438\\u043c\\u044f \\u043f\\u043e \\u043e\\u0431\\u0449\\u0435\\u0439 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u0435.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0435\\u043c \\u0438 \\u043a\\u0430\\u043a \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u0442\\u0435?<\\/div>\\r\\n<p>\\u0424\\u044c\\u044e\\u0447\\u0435\\u0440\\u0441\\u044b \\u043d\\u0430 \\u0432\\u0430\\u043b\\u044e\\u0442\\u044b, \\u0438\\u043d\\u0434\\u0435\\u043a\\u0441 \\u0420\\u0422\\u0421 \\u0438 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0421\\u0431\\u0435\\u0440\\u0431\\u0430\\u043d\\u043a\\u0430. \\u0422\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b. \\u041c\\u044b \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u044f\\u0435\\u043c \\u043b\\u0438\\u043d\\u0435\\u0439\\u043a\\u0443 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c?<\\/div>\\r\\n<p>\\u041a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0410\\u0438\\u0441\\u0442 \\u0418\\u043d\\u0432\\u0435\\u0441\\u0442 \\u043e\\u0442 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0443\\u043f\\u043b\\u0430\\u0442\\u044b \\u0432\\u0441\\u0435\\u0445 \\u043d\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432:<br \\/> 30% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 1.000.000 \\u0434\\u043e 35.000.000<br \\/> 25% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 35.000.001 \\u0434\\u043e 200.000.000<br \\/> 20% \\u0434\\u043b\\u044f \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u043e\\u0442 200.000.001<br \\/> \\u041a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u043e\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044e, \\u043d\\u043e \\u043d\\u0435 \\u043d\\u0430 \\u0432\\u0432\\u043e\\u0434-\\u0432\\u044b\\u0432\\u043e\\u0434 \\u0434\\u0435\\u043d\\u0435\\u0433?<\\/div>\\r\\n<p>\\u0414\\u0430. \\u0423 \\u043d\\u0430\\u0441 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0435 \\u043b\\u043e\\u0433\\u0438\\u043d \\u0438 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c, \\u0430 \\u0432\\u044b\\u0432\\u043e\\u0434 \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u043a\\u0430\\u0431\\u0438\\u043d\\u0435\\u0442. \\u0423 \\u043d\\u0430\\u0441 \\u043a \\u043d\\u0435\\u043c\\u0443 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u0430 \\u043d\\u0435\\u0442. \\u041a \\u0442\\u043e\\u043c\\u0443 \\u0436\\u0435, \\u0441\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0432\\u044b\\u0432\\u0435\\u0441\\u0442\\u0438 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043d\\u0430 \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043f\\u0440\\u0438\\u043d\\u0430\\u0434\\u043b\\u0435\\u0436\\u0438\\u0442 \\u0432\\u0430\\u043c (\\u0432\\u043b\\u0430\\u0434\\u0435\\u043b\\u044c\\u0446\\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430), \\u044d\\u0442\\u043e \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0432\\u0441\\u0435\\u0445 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u044d\\u0442\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438?<\\/div>\\r\\n<p>\\u041c\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u044b\\u0432\\u0430\\u0435\\u043c \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u0438 \\u0434\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a. \\u0422\\u0430\\u043c \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u044b \\u0432\\u0441\\u0435 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u044b, \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438, \\u0440\\u0438\\u0441\\u043a\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0432\\u044b\\u0433\\u043b\\u044f\\u0434\\u0438\\u0442 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435, \\u043a\\u0430\\u043a\\u043e\\u0435-\\u0442\\u043e \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0443 \\u043f\\u043e\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0432\\u044b \\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0443 \\u0437\\u0430\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0430 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 Plaza 2. \\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0443\\u044e \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u044e \\u0434\\u0430\\u0434\\u0438\\u043c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0423 \\u0432\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0435 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0424\\u0438\\u043d\\u0430\\u043c\\u0435. \\u041e\\u043d\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0442 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445, \\u0430 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0436\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0435\\u0432\\u0440\\u043e. \\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0440\\u0443\\u0431\\u043b\\u0438 \\u043f\\u043e \\u043a\\u0443\\u0440\\u0441\\u0443 \\u0426\\u0411 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442 \\u043f\\u0435\\u0440\\u0435\\u0441\\u0447\\u0435\\u0442 \\u0432 \\u0432\\u0430\\u043b\\u044e\\u0442\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0435, \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0434\\u043e\\u043b\\u043b\\u0430\\u0440\\u0430\\u0445 \\u0438\\u043b\\u0438 \\u0440\\u0443\\u0431\\u043b\\u044f\\u0445?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u0432\\u0430\\u043c \\u0440\\u0435\\u0448\\u0430\\u0442\\u044c, \\u043c\\u044b \\u043d\\u0435 \\u043c\\u043e\\u0436\\u0435\\u043c \\u043f\\u0440\\u0435\\u0434\\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u0433\\u043b\\u043e\\u0431\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u0430\\u043b\\u044e\\u0442\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f, \\u043c\\u044b \\u043c\\u043e\\u0436\\u0435\\u043c \\u043b\\u0438\\u0448\\u044c \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043d\\u0430 \\u043d\\u0438\\u0445, \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u0430\\u043a \\u043e\\u043d\\u0438 \\u0441\\u043b\\u0443\\u0447\\u0438\\u043b\\u0438\\u0441\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043d\\u0430\\u043b\\u043e\\u0433\\u0438 \\u043f\\u043b\\u0430\\u0442\\u044f\\u0442\\u0441\\u044f \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438? \\u041a\\u0430\\u043a \\u0440\\u0430\\u0441\\u0441\\u0447\\u0438\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f?<\\/div>\\r\\n<p>\\u041e\\u0442 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 \\u043e\\u0442\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044f \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0437\\u0430 \\u0437\\u0430\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a, \\u0430 \\u0442\\u0430\\u043a \\u0436\\u0435 \\u0431\\u0438\\u0440\\u0436\\u0435\\u0432\\u043e\\u0439 \\u0441\\u0431\\u043e\\u0440. \\u0417\\u0430\\u0442\\u0435\\u043c \\u0443\\u043f\\u043b\\u0430\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u043b\\u043e\\u0433 \\u0438\\u0441\\u0445\\u043e\\u0434\\u044f \\u0438\\u0437 \\u0432\\u0430\\u0448\\u0435\\u0439 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, 13% \\u0434\\u043b\\u044f \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u043b\\u0438\\u0446), \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0430\\u044f\\u0441\\u044f \\u043f\\u043e\\u0441\\u043b\\u0435 \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0434\\u0435\\u043b\\u0438\\u0442\\u0441\\u044f \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u0438, \\u043f\\u0440\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0432 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043c\\u0435\\u0436\\u0434\\u0443 \\u043d\\u0430\\u043c\\u0438. \\u0420\\u0430\\u0441\\u0447\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0441\\u044f \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e. \\u0422\\u0430\\u043a\\u0436\\u0435 \\u0443\\u0447\\u0442\\u0438\\u0442\\u0435, \\u0447\\u0442\\u043e \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430 \\u0441\\u0442\\u043e\\u0438\\u0442 5-10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0442\\u0430\\u043a\\u043e\\u0439 \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0433 \\u0432\\u0445\\u043e\\u0434\\u0430?<\\/div>\\r\\n<p>1. \\u041c\\u044b \\u043d\\u0435 \\u0445\\u043e\\u0442\\u0438\\u043c, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0443 \\u043d\\u0430\\u0441 \\u0431\\u044b\\u043b\\u043e \\u0431\\u043e\\u043b\\u0435\\u0435 75 \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432, \\u043a \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u043c \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u044b \\u0440\\u043e\\u0431\\u043e\\u0442\\u044b.<br \\/> \\u042d\\u0442\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u0433\\u0438\\u0431\\u043a\\u043e\\u0441\\u0442\\u044c, \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c \\u0438 \\u0441\\u043a\\u043e\\u043d\\u0446\\u0435\\u043d\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u043c - \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435.<br \\/> 2. \\u0423 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u0435\\u0441\\u0442\\u044c \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u0438 \\u0437\\u0430 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u0438 \\u0443 \\u0441\\u0447\\u0435\\u0442\\u043e\\u0432 \\u0441 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043c\\u0438 \\u0441\\u0443\\u043c\\u043c\\u0430\\u043c\\u0438 \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u043e \\u0441\\u043d\\u0438\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u0438\\u0437-\\u0437\\u0430 \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u044b\\u0445 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u0435\\u0439 (\\u0437\\u0430\\u043f\\u043b\\u0430\\u0442\\u0438\\u0442\\u044c 10 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432 \\u043c\\u0435\\u0441\\u044f\\u0446 \\u043f\\u0440\\u0438 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 50 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0433\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u0435\\u0435, \\u0447\\u0435\\u043c \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438 200 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0437\\u0430\\u043a\\u043e\\u043d\\u0447\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0431\\u043d\\u044b\\u0439 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434?<\\/div>\\r\\n<p>1. \\u0412\\u044b \\u0432\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435 \\u0441\\u0443\\u043c\\u043c\\u0443, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043e\\u0431\\u0449\\u0430\\u044f \\u0441\\u0443\\u043c\\u043c\\u0430 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u0431\\u044b\\u043b\\u0430 \\u0432\\u044b\\u0448\\u0435 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043b\\u0438\\u043c\\u0438\\u0442\\u0430. \\u042d\\u0442\\u043e \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0432\\u0430\\u0448\\u0438 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0438\\u043b\\u0438 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0434\\u0440\\u0443\\u0433\\u043e\\u043c \\u0438\\u043b\\u0438 \\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044b\\u043c. 2. \\u041c\\u044b \\u0440\\u0430\\u0441\\u0442\\u043e\\u0440\\u0433\\u0430\\u0435\\u043c \\u0434\\u043e\\u0433\\u043e\\u0432\\u043e\\u0440 \\u0432 \\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u043d\\u0435\\u043c \\u043f\\u043e\\u0440\\u044f\\u0434\\u043a\\u0435 \\u0438 \\u043e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u043c \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0447\\u0430\\u0441\\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c?<\\/div>\\r\\n<p>\\u041f\\u0440\\u0438\\u0431\\u044b\\u043b\\u044c \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c \\u0432\\u044b\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u0435\\u0436\\u0435\\u043c\\u0435\\u0441\\u044f\\u0447\\u043d\\u043e \\u0438\\u043b\\u0438 \\u0435\\u0436\\u0435\\u043a\\u0432\\u0430\\u0440\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e, \\u044d\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0441 \\u0432\\u044b\\u043f\\u043b\\u0430\\u0442\\u043e\\u0439 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438 \\u0441 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438. \\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438 \\u0436\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0437\\u0430\\u0431\\u0440\\u0430\\u0442\\u044c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0441 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u0441\\u0447\\u0435\\u0442\\u0430 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0447\\u0438\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u044d\\u0442\\u043e \\u0441\\u0442\\u0430\\u043d\\u0434\\u0430\\u0440\\u0442\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0446\\u0435\\u0434\\u0443\\u0440\\u0430 \\u0443 \\u043b\\u044e\\u0431\\u043e\\u0433\\u043e \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0441\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0432\\u043d\\u0435\\u043f\\u043b\\u0430\\u043d\\u043e\\u0432\\u043e, \\u043c\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u043c \\u043d\\u0430\\u0448\\u0443 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u044e \\u043d\\u0430 \\u0442\\u0435\\u043a\\u0443\\u0449\\u0443\\u044e \\u0434\\u0430\\u0442\\u0443 \\u0438 \\u0432\\u0441\\u0435 \\u043e\\u043a.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u044c\\u043d\\u043e \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0440\\u0438\\u0441\\u043a\\u0438? \\u0421 \\u043a\\u0430\\u043a\\u0438\\u043c \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u0432\\u0430\\u0442\\u044c?<\\/div>\\r\\n<p>\\u0412\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0432\\u0441\\u0435\\u0433\\u043e \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0441 \\u0440\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 50%, \\u0432 \\u044d\\u0442\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u043c\\u044b \\u043f\\u043e\\u043b\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443. \\u041f\\u0440\\u0438 \\u043c\\u0435\\u043d\\u044c\\u0448\\u0438\\u0445 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445, \\u0447\\u0430\\u0441\\u0442\\u044c \\u0434\\u0435\\u043d\\u0435\\u0433 \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043e\\u0441\\u0442\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e \\u043d\\u0435 \\u0437\\u0430\\u0434\\u0435\\u0439\\u0441\\u0442\\u0432\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0438 \\u0441\\u043c\\u044b\\u0441\\u043b\\u0430 \\u0438\\u0445 \\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u044c \\u043d\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0435\\u0442. \\u0413\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0438\\u0445 \\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u044c \\u043d\\u0430 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442 \\u0438\\u043b\\u0438 \\u0432 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043d\\u0438\\u0437\\u043a\\u043e\\u0440\\u0438\\u0441\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u044b. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440: \\u0423 \\u0432\\u0430\\u0441 \\u0441\\u0447\\u0435\\u0442 \\u043d\\u0430 10 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0441 \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c 20%. \\u041c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e 4 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432\\u0430\\u0448\\u0438\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432, \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0430 \\u043b\\u0435\\u0436\\u0430\\u0442 \\u0431\\u0435\\u0437 \\u0434\\u0435\\u043b\\u0430. \\u0412 \\u0442\\u0430\\u043a\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043d\\u0435\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u0442\\u0430\\u043a: \\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0443 \\u043d\\u0430\\u0441 4 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0441 \\u0440\\u0438\\u0441\\u043a\\u043e\\u043c 50%, \\u0430 6 000 000 \\u0432\\u043d\\u0435\\u0441\\u0442\\u0438 \\u0432 \\u0431\\u0430\\u043d\\u043a \\u043d\\u0430 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442. \\u0422\\u0430\\u043a\\u0438\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c, \\u043d\\u0430 \\u0442\\u0443 \\u0436\\u0435 \\u0441\\u0443\\u043c\\u043c\\u0443 \\u0432 10 000 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0434\\u043e\\u0445\\u043e\\u0434\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a \\u0432\\u044b \\u0432\\u043e\\u043e\\u0431\\u0449\\u0435 \\u043f\\u0440\\u0438\\u0448\\u043b\\u0438 \\u0432 \\u0441\\u0444\\u0435\\u0440\\u0443 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0430\\u0445?<\\/div>\\r\\n<p>\\u041e\\u0441\\u043d\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u043b \\u0440\\u0443\\u043a\\u0430\\u043c\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b, \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u0438\\u043b \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043b \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u043b\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u043e \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0442\\u044c\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435\\u0439. \\u041c\\u043d\\u043e\\u0433\\u043e\\u043b\\u0435\\u0442\\u043d\\u0438\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441 \\u043a \\u0442\\u0435\\u043c\\u0435 \\u0438 \\u043d\\u0430\\u0432\\u044b\\u043a\\u0438 \\u043f\\u0435\\u0440\\u0435\\u0440\\u043e\\u0441\\u043b\\u0438 \\u0432 \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441, \\u0434\\u043e\\u0445\\u043e\\u0434 \\u0441 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u043b \\u043d\\u0430\\u043d\\u044f\\u0442\\u044c \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0442\\u0440\\u0435\\u0439\\u0434\\u0435\\u0440\\u043e\\u0432, \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043d\\u0443\\u044e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0441 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u0438 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0432\\u0441\\u044e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0443\\u044e \\u0438\\u043d\\u0444\\u0440\\u0430\\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u0443.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0440\\u043e\\u0441\\u0442 \\u0432 2015 \\u0433\\u043e\\u0434\\u0443 \\u043d\\u0438\\u0436\\u0435, \\u0447\\u0435\\u043c \\u0432 2014?<\\/div>\\r\\n<p>\\u0415\\u0441\\u043b\\u0438 \\u043a\\u0440\\u0430\\u0442\\u043a\\u043e, \\u0442\\u043e \\u0441\\u043c\\u0435\\u043d\\u0438\\u043b\\u0441\\u044f \\u0440\\u044b\\u043d\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0446\\u0438\\u043a\\u043b, \\u0430 \\u043d\\u0430\\u0448\\u0430 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u043d\\u0430\\u043f\\u0440\\u044f\\u043c\\u0443\\u044e \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u0442 \\u043e\\u0442 \\u0442\\u043e\\u0433\\u043e, \\u0447\\u0442\\u043e \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u0442 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0423 \\u043d\\u0430\\u0441 \\u0442\\u043e\\u0440\\u0433\\u0443\\u044e\\u0442 \\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u044b - \\u043c\\u044b \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043a\\u0430\\u043a\\u0438\\u0435-\\u0442\\u043e \\u0443\\u0441\\u0442\\u043e\\u0439\\u0447\\u0438\\u0432\\u044b\\u0435 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0421\\u0435\\u0439\\u0447\\u0430\\u0441 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0441\\u0442\\u0430\\u043b\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u043d\\u043e \\u043c\\u0435\\u043d\\u044c\\u0448\\u0435, \\u0438 \\u043e\\u043d\\u0438 \\u0441\\u0442\\u0430\\u043b\\u0438 \\u043a\\u043e\\u0440\\u043e\\u0447\\u0435 \\u043f\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439. \\u0412 \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445 \\u043c\\u044b \\u0442\\u0435\\u0440\\u044f\\u0435\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438. \\u0422.\\u0435. \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441 \\u0432\\u0441\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u043f\\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438, \\u043d\\u0438\\u0447\\u0435\\u0433\\u043e \\u043d\\u0435\\u043e\\u0431\\u044b\\u0447\\u043d\\u043e\\u0433\\u043e \\u043d\\u0435 \\u043f\\u0440\\u043e\\u0438\\u0437\\u043e\\u0448\\u043b\\u043e, \\u043c\\u044b \\u043d\\u0430\\u0447\\u043d\\u0435\\u043c \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0441\\u043c\\u0435\\u043d\\u0438\\u0442\\u0441\\u044f \\u0446\\u0438\\u043a\\u043b \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0422\\u0435\\u043c \\u043d\\u0435 \\u043c\\u0435\\u043d\\u0435\\u0435, \\u043c\\u044b \\u0443\\u0436\\u0435 \\u0434\\u0430\\u0432\\u043d\\u043e \\u0432\\u0435\\u0434\\u0435\\u043c \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0443 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0439 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0433\\u043e \\u0442\\u0438\\u043f\\u0430 - \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0433\\u043e \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a \\u0440\\u0430\\u0437 \\u043f\\u0440\\u0438 \\u0431\\u043e\\u043a\\u043e\\u0432\\u043e\\u043c \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0438 \\u0440\\u044b\\u043d\\u043a\\u0430 (\\u0442\\u0430\\u043a\\u0438\\u0435 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438 \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u044e\\u0442\\u0441\\u044f \\u043a\\u043e\\u043d\\u0442\\u0440-\\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0435) \\u0438 \\u043c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u0442\\u0435\\u0440\\u044f\\u0442\\u044c \\u043f\\u0440\\u0438 \\u0442\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u044f\\u0445 (\\u043c\\u0438\\u043d\\u0443\\u0441\\u043e\\u0432 \\u0432\\u043e \\u0432\\u0440\\u0435\\u043c\\u044f \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u043b\\u0438\\u0431\\u043e \\u0431\\u0443\\u0434\\u0443\\u0442, \\u043d\\u043e \\u0433\\u043e\\u0440\\u0430\\u0437\\u0434\\u043e \\u043c\\u0435\\u043d\\u044c\\u0448\\u0435 \\u0447\\u0435\\u043c \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041f\\u043e\\u0447\\u0435\\u043c\\u0443 \\u0432\\u044b \\u043d\\u0435 \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0435\\u0442\\u0435 \\u043a\\u0440\\u0435\\u0434\\u0438\\u0442\\u044b, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u0441\\u0435 \\u0442\\u0430\\u043a \\u0437\\u0430\\u043c\\u0435\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e, \\u0438 \\u0438\\u0449\\u0435\\u0442\\u0435 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435?<\\/div>\\r\\n<p>1. \\u041d\\u0430\\u0439\\u0442\\u0438 \\u0437\\u0430\\u0435\\u043c\\u043d\\u043e\\u0435 \\u0444\\u0438\\u043d\\u0430\\u043d\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0434 \\u0442\\u0430\\u043a\\u0443\\u044e \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u043b\\u043e\\u0436\\u043d\\u043e;<br \\/> 2. \\u041c\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0441 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0435\\u043f\\u0430\\u0440\\u0442\\u0430\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c\\u0438 \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0431\\u0430\\u043d\\u043a\\u043e\\u0432 \\u0438 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\\u043c\\u0438, \\u0443 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f \\u043f\\u0440\\u0435\\u0434\\u0443\\u0441\\u043c\\u0430\\u0442\\u0440\\u0438\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043e\\u0431\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u0438, \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u0438\\u0445 \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\\u0430 \\u043d\\u0430\\u043c \\u043f\\u043e\\u043a\\u0430 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e \\u0434\\u043b\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b;<br \\/> 3. \\u0423 \\u043d\\u0430\\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043e\\u0432 \\u043d\\u0430 \\u0444\\u0438\\u043d\\u0430\\u043d\\u0441\\u043e\\u0432\\u043e\\u043c \\u0440\\u044b\\u043d\\u043a\\u0435 \\u0438 \\u043c\\u044b \\u043e\\u0431\\u0449\\u0430\\u0435\\u043c\\u0441\\u044f \\u0441\\u043e \\u0432\\u0441\\u0435\\u043c\\u0438, \\u043a\\u043e\\u043c\\u0443 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e \\u043d\\u0430\\u0448\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435 (\\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438, \\u0447\\u0430\\u0441\\u0442\\u043d\\u044b\\u0435 \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b, \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u044b, \\u0444\\u043e\\u043d\\u0434\\u044b \\u0438 \\u0442.\\u0434.). \\u042d\\u0442\\u043e \\u043c\\u0435\\u043d\\u0435\\u0435 \\u0442\\u0440\\u0443\\u0434\\u043e\\u0435\\u043c\\u043a\\u043e \\u0434\\u043b\\u044f \\u043d\\u0430\\u0441, \\u0447\\u0435\\u043c \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u044c \\u043a\\u0440\\u0435\\u0434\\u0438\\u0442\\u044b.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0442\\u043e \\u0438 \\u043a\\u0430\\u043a \\u043a\\u043e\\u043c\\u043f\\u0435\\u043d\\u0441\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0443 \\u0432\\u044b\\u0448\\u0435 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043b\\u0438\\u043c\\u0438\\u0442\\u0430?<\\/div>\\r\\n<p>\\u041f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0443 \\u043c\\u044b \\u043a\\u043e\\u043c\\u043f\\u0435\\u043d\\u0441\\u0438\\u0440\\u0443\\u0435\\u043c \\u0441\\u0430\\u043c\\u0438 \\u0438\\u0437 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u042f \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u044e\\u0441\\u044c \\u0431\\u043b\\u0430\\u0433\\u043e\\u0442\\u0432\\u043e\\u0440\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c\\u044e. \\u041a\\u0430\\u043a\\u0438\\u0435 \\u0435\\u0441\\u0442\\u044c \\u0432\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\\u044b \\u0434\\u043b\\u044f \\u043c\\u0435\\u043d\\u044f?<\\/div>\\r\\n<p>\\u041c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u043f\\u0440\\u043e\\u043f\\u043e\\u0440\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0441\\u043a\\u0438\\u0434\\u043a\\u0443 \\u0441\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043a\\u043e\\u043c\\u0438\\u0441\\u0441\\u0438\\u0438, \\u0435\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0436\\u0435\\u0440\\u0442\\u0432\\u0443\\u0435\\u0442\\u0435 \\u0447\\u0430\\u0441\\u0442\\u044c \\u0441\\u0432\\u043e\\u0439 \\u043f\\u0440\\u0438\\u0431\\u044b\\u043b\\u0438.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0412 \\u0447\\u0435\\u043c \\u043f\\u043e\\u0434\\u0432\\u043e\\u0445? \\u042d\\u0442\\u043e \\u0447\\u0442\\u043e, \\u043f\\u0440\\u0430\\u0432\\u0434\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442?<\\/div>\\r\\n<p>\\u0414\\u0430, \\u044d\\u0442\\u043e \\u043f\\u0440\\u0430\\u0432\\u0434\\u0430 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442. \\u041f\\u043e\\u0434\\u0432\\u043e\\u0445 \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u043e\\u0442\\u0435\\u0440\\u044f\\u0442\\u044c \\u0447\\u0430\\u0441\\u0442\\u044c \\u043a\\u0430\\u043f\\u0438\\u0442\\u0430\\u043b\\u0430 \\u0432 \\u0440\\u0430\\u043c\\u043a\\u0430\\u0445 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0440\\u0438\\u0441\\u043a\\u043e\\u0432 \\u0438, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0438 \\u043e\\u0442 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442\\u0430, \\u0433\\u0434\\u0435 \\u0432\\u0441\\u0435 \\u0441\\u0442\\u0430\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e \\u0440\\u0430\\u0441\\u0442\\u0435\\u0442 \\u043a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0434\\u0435\\u043d\\u044c, \\u0443 \\u043d\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0441\\u043a\\u0430\\u0447\\u043a\\u0438 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430. \\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u044d\\u0442\\u043e \\u044d\\u043c\\u043e\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e \\u0442\\u044f\\u0436\\u0435\\u043b\\u043e.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u044f \\u043c\\u043e\\u0433\\u0443 \\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u0442\\u044c \\u0435\\u0449\\u0435, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043f\\u0440\\u0438\\u043d\\u044f\\u0442\\u044c \\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u0435?<\\/div>\\r\\n<p>\\u041f\\u043e \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u043f\\u0440\\u0438\\u0448\\u043b\\u0435\\u043c \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b \\u043e\\u0431 \\u0430\\u0443\\u0434\\u0438\\u0442\\u0435 \\u043e\\u0442 \\u0411\\u0414\\u041e \\u00ab\\u042e\\u043d\\u0438\\u043a\\u043e\\u043d\\u00bb, \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435. \\u042d\\u0442\\u043e\\u0433\\u043e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0442\\u043e\\u0447\\u043d\\u043e, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0443\\u0431\\u0435\\u0434\\u0438\\u0442\\u044c\\u0441\\u044f \\u0432 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430\\u0445 \\u0438 \\u043f\\u043e\\u043d\\u044f\\u0442\\u044c \\u0432\\u0441\\u0435 \\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438. \\u0418, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e, \\u043c\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043c\\u043e\\u0436\\u0435\\u043c \\u0432\\u0441\\u0442\\u0440\\u0435\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0438 \\u0432\\u0441\\u0435 \\u043e\\u0431\\u0441\\u0443\\u0434\\u0438\\u0442\\u044c.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0435\\u043c \\u0432\\u0430\\u0448\\u0438 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b \\u043b\\u0443\\u0447\\u0448\\u0435, \\u0447\\u0435\\u043c \\u0443 \\u043a\\u043e\\u043d\\u043a\\u0443\\u0440\\u0435\\u043d\\u0442\\u043e\\u0432?<\\/div>\\r\\n<p>\\u041e\\u043d\\u0438 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b \\u0432 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435 \\u043d\\u0430 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0443\\u043c\\u043c\\u0430\\u0445 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0434\\u0435\\u043d\\u0435\\u0433 \\u0438 \\u043d\\u0430 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445, \\u0447\\u0435\\u0433\\u043e \\u043d\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0442\\u044c 90% \\u0442\\u0440\\u0435\\u0439\\u0434\\u0435\\u0440\\u043e\\u0432 \\u043d\\u0430 \\u0440\\u044b\\u043d\\u043a\\u0435. \\u0421 \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438 10% \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u0442\\u0430\\u043a \\u0436\\u0435, \\u043a\\u0430\\u043a \\u0438 \\u0441 \\u043d\\u0430\\u043c\\u0438, \\u0441 \\u0442\\u043e\\u0447\\u043a\\u0438 \\u0437\\u0440\\u0435\\u043d\\u0438\\u044f \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0430 \\u0432\\u0441\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u043e - \\u0443 \\u0432\\u0430\\u0441 \\u0441\\u0442\\u0430\\u043d\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u0434\\u0435\\u043d\\u0435\\u0433, \\u0447\\u0435\\u043c \\u0431\\u044b\\u043b\\u043e, \\u0441 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u043c \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435\\u043c \\u0440\\u0438\\u0441\\u043a\\u0430.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u0435\\u0449\\u0435 \\u0432\\u0430\\u0436\\u043d\\u043e\\u0433\\u043e \\u044f \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0437\\u043d\\u0430\\u0442\\u044c?<\\/div>\\r\\n<p>\\u042d\\u0442\\u043e \\u043d\\u0435 \\u0434\\u0435\\u043f\\u043e\\u0437\\u0438\\u0442. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u043d\\u0435 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u044f\\u044e\\u0442 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c. \\u0414\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c \\u0432 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u043d\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u043c. \\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043a\\u0430\\u043a \\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u0442\\u0430\\u043a \\u0438 \\u043e\\u0442\\u0440\\u0438\\u0446\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c\\u0438, \\u043c\\u044b \\u043d\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u044c. \\u0423\\u043a\\u0430\\u0437\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0440\\u0438\\u0435\\u043d\\u0442\\u0438\\u0440\\u0430 \\u043f\\u043e \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0434\\u043f\\u043e\\u043b\\u043e\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438 \\u043d\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043e\\u0431\\u0435\\u0449\\u0430\\u043d\\u0438\\u0435\\u043c \\u0438\\u043b\\u0438 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0435\\u0439 \\u0434\\u043e\\u0445\\u043e\\u0434\\u043d\\u043e\\u0441\\u0442\\u0438. \\u0412\\u043d\\u0438\\u043c\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u044c\\u0442\\u0435\\u0441\\u044c \\u0441 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435\\u043c \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0434 \\u0435\\u0433\\u043e \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\\u043c!<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u0427\\u0442\\u043e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443?<\\/div>\\r\\n<p>1. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0442\\u0438\\u0442\\u044c\\u0441\\u044f \\u0441 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u044e\\u0449\\u0438\\u043c \\u043f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u043e\\u043c, \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u044c\\u0441\\u044f, \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb.<br \\/> 2. \\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044c \\u0432\\u0430\\u0448 \\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0439 \\u0441\\u0447\\u0435\\u0442 \\u0443 \\u0431\\u0440\\u043e\\u043a\\u0435\\u0440\\u0430, \\u043f\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u044c \\u0435\\u0433\\u043e \\u043d\\u0430 \\u0441\\u0443\\u043c\\u043c\\u0443 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u043d\\u043e \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044e \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb (\\u0438\\u043b\\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435, \\u043f\\u0440\\u0438 \\u0436\\u0435\\u043b\\u0430\\u043d\\u0438\\u0438).<br \\/> 3. \\u0421\\u043e\\u043e\\u0431\\u0449\\u0438\\u0442\\u044c \\u043d\\u0430\\u043c \\u043b\\u043e\\u0433\\u0438\\u043d, \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c \\u0438 \\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043b\\u044e\\u0447 \\u0434\\u043b\\u044f \\u043e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043e\\u043f\\u0435\\u0440\\u0430\\u0446\\u0438\\u0439, \\u0447\\u0442\\u043e\\u0431\\u044b \\u043c\\u044b \\u043c\\u043e\\u0433\\u043b\\u0438 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c \\u043a \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0441\\u0447\\u0435\\u0442\\u0443 \\u043d\\u0430\\u0448\\u0438\\u0445 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0438 \\u043d\\u0430\\u0447\\u0430\\u0442\\u044c \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u0430\\u0442\\u044c.<br \\/> \\u041c\\u044b \\u0434\\u0430\\u0434\\u0438\\u043c \\u043b\\u0438\\u0441\\u0442 \\u0441 \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u0434\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043a\\u0446\\u0438\\u0435\\u0439 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u044f \\u00ab\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f \\u043e \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u00bb.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\"faq-item\\">\\r\\n<div class=\\"faq-item-title\\">\\u041a\\u0430\\u043a\\u0438\\u0435 \\u043a\\u043b\\u044e\\u0447\\u0435\\u0432\\u044b\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u0438 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0438 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0440\\u0430\\u0441\\u043a\\u0440\\u044b\\u0442\\u044c?<\\/div>\\r\\n<p>- \\u0443 \\u043d\\u0430\\u0441 \\u043e\\u0434\\u043d\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u044e\\u0442 3 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043b\\u043e\\u0433\\u0438\\u043a\\u0438 \\u043d\\u0430 3 \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0445 \\u043d\\u0430 3 \\u0442\\u0430\\u0439\\u043c-\\u0444\\u0440\\u0435\\u0439\\u043c\\u0430\\u0445 (\\u0432\\u0441\\u0435\\u0433\\u043e 81 \\u0443\\u043d\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f). \\u0423 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0440\\u0430\\u0437\\u043d\\u043e\\u0435 \\u0447\\u0438\\u0441\\u043b\\u043e \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a \\u0437\\u0430 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434. \\u0412 \\u0446\\u0435\\u043b\\u043e\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c, \\u0447\\u0442\\u043e \\u043c\\u044b \\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0434\\u0435\\u0441\\u044f\\u0442\\u043a\\u0438 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a \\u0432 \\u0434\\u0435\\u043d\\u044c \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0438\\u043c \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044e \\u043e\\u0442 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u0434\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c. \\u041c\\u044b \\u043d\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0443\\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043d\\u0438\\u0435\\/\\u043c\\u0430\\u0440\\u0442\\u0438\\u043d\\u0433\\u0435\\u0439\\u043b;<br \\/> - \\u043c\\u044b \\u0447\\u0430\\u0441\\u0442\\u043e \\u0438 \\u043f\\u043e\\u043d\\u0435\\u043c\\u043d\\u043e\\u0433\\u0443 \\u00ab\\u0441\\u043b\\u0438\\u0432\\u0430\\u0435\\u043c\\u00bb, \\u0440\\u0435\\u0434\\u043a\\u043e \\u0438 \\u043f\\u043e\\u043c\\u043d\\u043e\\u0433\\u0443 \\u0437\\u0430\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c. \\u0410\\u0431\\u0441\\u043e\\u043b\\u044e\\u0442\\u043d\\u043e \\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430 \\u0438 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u0430 \\u0441\\u0438\\u0442\\u0443\\u0430\\u0446\\u0438\\u044f, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0438\\u0434\\u0435\\u0442 \\u043f\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0443\\u043c\\u0435\\u043d\\u044c\\u0448\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043b\\u0430\\u043d\\u0441\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0430 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0442\\u044f\\u0436\\u0435\\u043d\\u0438\\u0438 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c, \\u0430 \\u0437\\u0430\\u0442\\u0435\\u043c \\u043c\\u044b \\u0437\\u0430 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0434\\u043d\\u0435\\u0439 \\u0438\\u043b\\u0438 \\u0434\\u0430\\u0436\\u0435 \\u0447\\u0430\\u0441\\u043e\\u0432 \\u0432\\u044b\\u0445\\u043e\\u0434\\u0438\\u043c \\u0432 \\u043f\\u043b\\u044e\\u0441;<br \\/> - \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0434\\u0440\\u043e\\u043f\\u0434\\u0430\\u0443\\u043d \\u043d\\u0430 \\u0440\\u0435\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u0435 \\u2013 12,7%, \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0437\\u0430 \\u0434\\u0435\\u043d\\u044c \\u2013 3,5% (\\u0432 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u044d\\u0442\\u043e 1% \\u043f\\u0440\\u0438 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445 20%);<br \\/> - \\u043c\\u044b \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0443\\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u0432\\u0430\\u0435\\u043c \\u0447\\u0438\\u0441\\u043b\\u043e \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u044b\\u0445 \\u043b\\u043e\\u0433\\u0438\\u043a, \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u0435\\u043c \\u043d\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u044b;<br \\/> - \\u0432\\u0441\\u0435 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u044b-\\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b \\u043d\\u0430\\u0445\\u043e\\u0434\\u044f\\u0442\\u0441\\u044f \\u0432 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\\u0445, \\u0438\\u0437\\u043c\\u0435\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0447\\u0438\\u0441\\u043b\\u043e \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0435\\u043c\\u044b\\u0445 \\u043b\\u043e\\u0442\\u043e\\u0432 \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u0431\\u044a\\u0435\\u043c\\u0430 \\u0441\\u0447\\u0435\\u0442\\u0430, \\u0438 \\u043f\\u043b\\u0435\\u0447\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u043e\\u0433\\u043e\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f \\u0440\\u0438\\u0441\\u043a\\u0430. \\u0414\\u043b\\u044f \\u0432\\u0441\\u0435\\u0445 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u043e\\u0432 \\u043f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0440\\u043e\\u0431\\u043e\\u0442\\u044b, \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u0443\\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043d\\u043d\\u044b\\u0435 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u0443 \\u0432\\u0441\\u0435\\u0445 \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u043e\\u0432 \\u0441 \\u0441\\u043e\\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c\\u044b\\u043c\\u0438 \\u0441\\u0443\\u043c\\u043c\\u0430\\u043c\\u0438 \\u0438 \\u0440\\u0438\\u0441\\u043a\\u0430\\u043c\\u0438 \\u2013 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b. \\u0412\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f \\u0438\\u043c\\u0435\\u0435\\u0442 \\u043e\\u0434\\u0438\\u043d\\u0430\\u043a\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u0438\\u043e\\u0440\\u0438\\u0442\\u0435\\u0442 \\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u0440\\u0430\\u0432\\u043d\\u043e\\u043c\\u0435\\u0440\\u043d\\u043e;<br \\/> - \\u043c\\u044b \\u043d\\u0435 \\u0440\\u0430\\u0441\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u043c \\u0438\\u0441\\u0445\\u043e\\u0434\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432 \\u0438 \\u0440\\u0435\\u0435\\u0441\\u0442\\u0440 \\u0441\\u0434\\u0435\\u043b\\u043e\\u043a;<br \\/> - \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430 \\u043f\\u043e \\u043c\\u0438\\u043d\\u0438\\u043c\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043e\\u043a: \\u0434\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f \\u043f\\u043e \\u0441\\u0442\\u0440\\u0430\\u0442\\u0435\\u0433\\u0438\\u044f\\u043c, \\u0442\\u0430\\u0439\\u043c-\\u0444\\u0440\\u0435\\u0439\\u043c\\u0430\\u043c, \\u0438\\u043d\\u0441\\u0442\\u0440\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u043c. \\u0423 \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0430\\u043b\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043f\\u043e\\u0442\\u0435\\u0440\\u044c \\u043d\\u0430 \\u0441\\u0434\\u0435\\u043b\\u043a\\u0443. \\u0423\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043f\\u043b\\u0435\\u0447\\u0430 \\u043e\\u0433\\u0440\\u0430\\u043d\\u0438\\u0447\\u0435\\u043d \\u04455, \\u043f\\u0440\\u0438 \\u043d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0440\\u0438\\u0441\\u043a\\u0430\\u0445 \\u2013 \\u04452-\\u04453 (\\u043d\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u043c \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u043e\\u043c \\u0441\\u0447\\u0435\\u0442\\u0443 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u04452 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0443\\u043c);<br \\/> - \\u0434\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438\\u043c\\u0430\\u044f \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0430 \\u0432 \\u0434\\u0435\\u043d\\u044c\\/\\u043c\\u0435\\u0441\\u044f\\u0446 \\u0434\\u043b\\u044f \\u043a\\u0430\\u0436\\u0434\\u043e\\u0433\\u043e \\u0438\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430 \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u0430, \\u043d\\u043e \\u043e\\u0431\\u044b\\u0447\\u043d\\u043e \\u0440\\u0430\\u0432\\u043d\\u044f\\u0435\\u0442\\u0441\\u044f \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0434\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438\\u043c\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0441\\u0430\\u0434\\u043a\\u0435;<br \\/> - \\u0432 \\u0440\\u0435\\u0434\\u043a\\u0438\\u0445 \\u0441\\u043b\\u0443\\u0447\\u0430\\u044f\\u0445 \\u043c\\u044b \\u0440\\u0443\\u043a\\u0430\\u043c\\u0438 \\u0432\\u043c\\u0435\\u0448\\u0438\\u0432\\u0430\\u0435\\u043c\\u0441\\u044f \\u0432 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0440\\u043e\\u0431\\u043e\\u0442\\u043e\\u0432, \\u0435\\u0441\\u043b\\u0438 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u043e\\u044f\\u0442 \\u043d\\u0435\\u043f\\u0440\\u043e\\u0433\\u043d\\u043e\\u0437\\u0438\\u0440\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u0430\\u0442\\u044c \\u0440\\u0435\\u0437\\u043a\\u0438\\u0435 \\u0441\\u043a\\u0430\\u0447\\u043a\\u0438 \\u043a\\u043e\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u043a (\\u0434\\u043e\\u043b\\u0433\\u0438\\u0435 \\u043f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u043a\\u0438, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0432\\u0435\\u0441\\u044c \\u043e\\u0441\\u0442\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043c\\u0438\\u0440 \\u0442\\u043e\\u0440\\u0433\\u0443\\u0435\\u0442, \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435, \\u043d\\u0430 \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0445 \\u043e\\u0436\\u0438\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u043f\\u043e\\u043b\\u0438\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u043d\\u0435\\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0440\\u0435\\u0437\\u043a\\u0438\\u0435 \\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f \\u043a\\u0443\\u0440\\u0441\\u0430, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u0435\\u0441\\u0442\\u044c \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043a \\u0440\\u0430\\u0437\\u0432\\u043e\\u0440\\u043e\\u0442\\u0443 \\u0438 \\u0442.\\u0434.);<br \\/> - \\u0432\\u0441\\u044f \\u0442\\u043e\\u0440\\u0433\\u043e\\u0432\\u043b\\u044f, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0432 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434 \\u0443\\u0431\\u044b\\u0442\\u043a\\u043e\\u0432, \\u043e\\u0442\\u0441\\u043b\\u0435\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u043e\\u0440\\u043e\\u043c (\\u0440\\u0438\\u0441\\u043a-\\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440\\u043e\\u043c).<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2016-03-24 09:46:36","created_by":"224","created_by_alias":"","modified":"2016-04-22 07:57:50","modified_by":"224","checked_out":"224","checked_out_time":"2016-04-22 07:57:36","publish_up":"2016-03-24 09:46:36","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"32","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_updates`
--

DROP TABLE IF EXISTS `vw7az_updates`;
CREATE TABLE `vw7az_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_update_sites`
--

DROP TABLE IF EXISTS `vw7az_update_sites`;
CREATE TABLE `vw7az_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `vw7az_update_sites`
--

INSERT INTO `vw7az_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1461336329, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1461336329, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_update_sites_extensions`
--

DROP TABLE IF EXISTS `vw7az_update_sites_extensions`;
CREATE TABLE `vw7az_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `vw7az_update_sites_extensions`
--

INSERT INTO `vw7az_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10003),
(4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_usergroups`
--

DROP TABLE IF EXISTS `vw7az_usergroups`;
CREATE TABLE `vw7az_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_usergroups`
--

INSERT INTO `vw7az_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_users`
--

DROP TABLE IF EXISTS `vw7az_users`;
CREATE TABLE `vw7az_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_users`
--

INSERT INTO `vw7az_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(224, 'Super User', 'admin', 'a.kiselev@seoteam.pro', '$2y$10$tDLxo/NOrvoQdNFfjvLdJu0NCHbmCx0oyA7bTR0cv/jSc5NEibtOC', 0, 1, '2016-03-08 14:38:06', '2016-04-22 14:45:26', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(225, 'Arhet', 'arhet', 'arhetstudio@gmail.com', '$2y$10$qDrhMZawFos221gLG4jJUeZonCHrHEyEmC3Nj21LRt6wdV0XExbsG', 0, 1, '2016-03-08 14:38:06', '2016-04-21 13:05:20', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_user_keys`
--

DROP TABLE IF EXISTS `vw7az_user_keys`;
CREATE TABLE `vw7az_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_user_notes`
--

DROP TABLE IF EXISTS `vw7az_user_notes`;
CREATE TABLE `vw7az_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_user_profiles`
--

DROP TABLE IF EXISTS `vw7az_user_profiles`;
CREATE TABLE `vw7az_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_user_usergroup_map`
--

DROP TABLE IF EXISTS `vw7az_user_usergroup_map`;
CREATE TABLE `vw7az_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_user_usergroup_map`
--

INSERT INTO `vw7az_user_usergroup_map` (`user_id`, `group_id`) VALUES
(224, 8),
(225, 8);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_utf8_conversion`
--

DROP TABLE IF EXISTS `vw7az_utf8_conversion`;
CREATE TABLE `vw7az_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_utf8_conversion`
--

INSERT INTO `vw7az_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vw7az_viewlevels`
--

DROP TABLE IF EXISTS `vw7az_viewlevels`;
CREATE TABLE `vw7az_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vw7az_viewlevels`
--

INSERT INTO `vw7az_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vw7az_aist_graph`
--
ALTER TABLE `vw7az_aist_graph`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `vw7az_assets`
--
ALTER TABLE `vw7az_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `vw7az_associations`
--
ALTER TABLE `vw7az_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `vw7az_banners`
--
ALTER TABLE `vw7az_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `vw7az_banner_clients`
--
ALTER TABLE `vw7az_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `vw7az_banner_tracks`
--
ALTER TABLE `vw7az_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `vw7az_categories`
--
ALTER TABLE `vw7az_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Indexes for table `vw7az_contact_details`
--
ALTER TABLE `vw7az_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `vw7az_content`
--
ALTER TABLE `vw7az_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `vw7az_contentitem_tag_map`
--
ALTER TABLE `vw7az_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `vw7az_content_frontpage`
--
ALTER TABLE `vw7az_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `vw7az_content_rating`
--
ALTER TABLE `vw7az_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `vw7az_content_types`
--
ALTER TABLE `vw7az_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `vw7az_extensions`
--
ALTER TABLE `vw7az_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `vw7az_finder_filters`
--
ALTER TABLE `vw7az_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `vw7az_finder_links`
--
ALTER TABLE `vw7az_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  ADD KEY `idx_title` (`title`(100));

--
-- Indexes for table `vw7az_finder_links_terms0`
--
ALTER TABLE `vw7az_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms1`
--
ALTER TABLE `vw7az_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms2`
--
ALTER TABLE `vw7az_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms3`
--
ALTER TABLE `vw7az_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms4`
--
ALTER TABLE `vw7az_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms5`
--
ALTER TABLE `vw7az_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms6`
--
ALTER TABLE `vw7az_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms7`
--
ALTER TABLE `vw7az_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms8`
--
ALTER TABLE `vw7az_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_terms9`
--
ALTER TABLE `vw7az_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_termsa`
--
ALTER TABLE `vw7az_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_termsb`
--
ALTER TABLE `vw7az_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_termsc`
--
ALTER TABLE `vw7az_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_termsd`
--
ALTER TABLE `vw7az_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_termse`
--
ALTER TABLE `vw7az_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_links_termsf`
--
ALTER TABLE `vw7az_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `vw7az_finder_taxonomy`
--
ALTER TABLE `vw7az_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `vw7az_finder_taxonomy_map`
--
ALTER TABLE `vw7az_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `vw7az_finder_terms`
--
ALTER TABLE `vw7az_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `vw7az_finder_terms_common`
--
ALTER TABLE `vw7az_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `vw7az_finder_tokens`
--
ALTER TABLE `vw7az_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `vw7az_finder_tokens_aggregate`
--
ALTER TABLE `vw7az_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `vw7az_finder_types`
--
ALTER TABLE `vw7az_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `vw7az_languages`
--
ALTER TABLE `vw7az_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `vw7az_menu`
--
ALTER TABLE `vw7az_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100));

--
-- Indexes for table `vw7az_menu_types`
--
ALTER TABLE `vw7az_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `vw7az_messages`
--
ALTER TABLE `vw7az_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `vw7az_messages_cfg`
--
ALTER TABLE `vw7az_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `vw7az_modules`
--
ALTER TABLE `vw7az_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `vw7az_modules_menu`
--
ALTER TABLE `vw7az_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `vw7az_newsfeeds`
--
ALTER TABLE `vw7az_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `vw7az_overrider`
--
ALTER TABLE `vw7az_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vw7az_postinstall_messages`
--
ALTER TABLE `vw7az_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `vw7az_redirect_links`
--
ALTER TABLE `vw7az_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_link_modifed` (`modified_date`),
  ADD KEY `idx_old_url` (`old_url`(100));

--
-- Indexes for table `vw7az_schemas`
--
ALTER TABLE `vw7az_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `vw7az_session`
--
ALTER TABLE `vw7az_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `vw7az_tags`
--
ALTER TABLE `vw7az_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Indexes for table `vw7az_template_styles`
--
ALTER TABLE `vw7az_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `vw7az_ucm_base`
--
ALTER TABLE `vw7az_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `vw7az_ucm_content`
--
ALTER TABLE `vw7az_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_content_type` (`core_type_alias`(100));

--
-- Indexes for table `vw7az_ucm_history`
--
ALTER TABLE `vw7az_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `vw7az_updates`
--
ALTER TABLE `vw7az_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `vw7az_update_sites`
--
ALTER TABLE `vw7az_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `vw7az_update_sites_extensions`
--
ALTER TABLE `vw7az_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `vw7az_usergroups`
--
ALTER TABLE `vw7az_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `vw7az_users`
--
ALTER TABLE `vw7az_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `idx_name` (`name`(100));

--
-- Indexes for table `vw7az_user_keys`
--
ALTER TABLE `vw7az_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vw7az_user_notes`
--
ALTER TABLE `vw7az_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `vw7az_user_profiles`
--
ALTER TABLE `vw7az_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `vw7az_user_usergroup_map`
--
ALTER TABLE `vw7az_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `vw7az_viewlevels`
--
ALTER TABLE `vw7az_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vw7az_aist_graph`
--
ALTER TABLE `vw7az_aist_graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `vw7az_assets`
--
ALTER TABLE `vw7az_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `vw7az_banners`
--
ALTER TABLE `vw7az_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_banner_clients`
--
ALTER TABLE `vw7az_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_categories`
--
ALTER TABLE `vw7az_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vw7az_contact_details`
--
ALTER TABLE `vw7az_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_content`
--
ALTER TABLE `vw7az_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vw7az_content_types`
--
ALTER TABLE `vw7az_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `vw7az_extensions`
--
ALTER TABLE `vw7az_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `vw7az_finder_filters`
--
ALTER TABLE `vw7az_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_finder_links`
--
ALTER TABLE `vw7az_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_finder_taxonomy`
--
ALTER TABLE `vw7az_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vw7az_finder_terms`
--
ALTER TABLE `vw7az_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_finder_types`
--
ALTER TABLE `vw7az_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_languages`
--
ALTER TABLE `vw7az_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vw7az_menu`
--
ALTER TABLE `vw7az_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `vw7az_menu_types`
--
ALTER TABLE `vw7az_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vw7az_messages`
--
ALTER TABLE `vw7az_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_modules`
--
ALTER TABLE `vw7az_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `vw7az_newsfeeds`
--
ALTER TABLE `vw7az_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_overrider`
--
ALTER TABLE `vw7az_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `vw7az_postinstall_messages`
--
ALTER TABLE `vw7az_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vw7az_redirect_links`
--
ALTER TABLE `vw7az_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_tags`
--
ALTER TABLE `vw7az_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vw7az_template_styles`
--
ALTER TABLE `vw7az_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vw7az_ucm_content`
--
ALTER TABLE `vw7az_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_ucm_history`
--
ALTER TABLE `vw7az_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vw7az_updates`
--
ALTER TABLE `vw7az_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_update_sites`
--
ALTER TABLE `vw7az_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vw7az_usergroups`
--
ALTER TABLE `vw7az_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vw7az_users`
--
ALTER TABLE `vw7az_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `vw7az_user_keys`
--
ALTER TABLE `vw7az_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_user_notes`
--
ALTER TABLE `vw7az_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vw7az_viewlevels`
--
ALTER TABLE `vw7az_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
