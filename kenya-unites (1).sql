-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2017 at 08:47 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kenya-unites`
--

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_assets`
--

CREATE TABLE `pfnbo_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_assets`
--

INSERT INTO `pfnbo_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 163, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 28, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 29, 30, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 31, 32, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 33, 34, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 35, 36, 1, 'com_login', 'com_login', '{}'),
(13, 1, 37, 38, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 39, 40, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 41, 42, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 43, 54, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 55, 56, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 57, 124, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 125, 128, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 129, 130, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 131, 132, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 133, 134, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 135, 136, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 137, 140, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 141, 142, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Kenya Unites', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 126, 127, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 138, 139, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 143, 144, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 145, 146, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 147, 148, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 149, 150, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 151, 152, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 153, 154, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 58, 59, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 60, 61, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 62, 63, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 64, 65, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 66, 67, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 68, 69, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 70, 71, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 72, 73, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 74, 75, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 76, 77, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 78, 79, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 80, 81, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 82, 83, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 84, 85, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 86, 87, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 44, 45, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 1, 155, 156, 1, 'com_sppagebuilder', 'SP Page Builder', '{}'),
(56, 18, 88, 89, 2, 'com_modules.module.87', 'SP Page Builder', '{}'),
(57, 18, 90, 91, 2, 'com_modules.module.88', 'SP Page Builder Admin Menu', '{}'),
(58, 18, 92, 93, 2, 'com_modules.module.89', 'Social Media', '{}'),
(59, 18, 94, 95, 2, 'com_modules.module.90', 'Search', '{}'),
(60, 18, 96, 97, 2, 'com_modules.module.91', 'OffCanvas Menu', '{}'),
(61, 18, 98, 99, 2, 'com_modules.module.92', 'Partners', '{}'),
(62, 18, 100, 101, 2, 'com_modules.module.93', 'Footer Social Media', '{}'),
(63, 18, 102, 103, 2, 'com_modules.module.94', 'Built By', '{}'),
(64, 18, 104, 105, 2, 'com_modules.module.95', 'Home Links', '{}'),
(65, 1, 157, 158, 1, 'com_tlptestimonial', 'com_tlptestimonial', '{}'),
(66, 18, 106, 107, 2, 'com_modules.module.96', 'TLP Testimonial', '{}'),
(67, 16, 46, 47, 2, 'com_menus.menu.2', 'Footer A', '{}'),
(68, 16, 48, 49, 2, 'com_menus.menu.3', 'Footer B', '{}'),
(69, 16, 50, 51, 2, 'com_menus.menu.4', 'Footer C', '{}'),
(70, 18, 108, 109, 2, 'com_modules.module.97', 'Footer A', '{}'),
(71, 18, 110, 111, 2, 'com_modules.module.98', 'Footer B', '{}'),
(72, 18, 112, 113, 2, 'com_modules.module.99', 'Footer C', '{}'),
(73, 18, 114, 115, 2, 'com_modules.module.100', 'Footer Logo', '{}'),
(74, 8, 20, 27, 2, 'com_content.category.8', 'Blog', '{}'),
(75, 74, 21, 22, 3, 'com_content.article.1', 'Lorem ipsum', '{}'),
(76, 74, 23, 24, 3, 'com_content.article.2', 'Lorem ipsum (2)', '{}'),
(77, 74, 25, 26, 3, 'com_content.article.3', 'Lorem ipsum (3)', '{}'),
(78, 18, 116, 117, 2, 'com_modules.module.101', 'Donate', '{}'),
(79, 18, 118, 119, 2, 'com_modules.module.102', 'Jane Doe', '{}'),
(80, 18, 120, 121, 2, 'com_modules.module.103', 'Bottom Footer - Social Media', '{}'),
(81, 18, 122, 123, 2, 'com_modules.module.104', 'Jane Doe', '{}'),
(82, 1, 159, 160, 1, 'com_phocagallery', 'com_phocagallery', '{}'),
(83, 16, 52, 53, 2, 'com_menus.menu.5', 'Other Links', '{}'),
(88, 1, 161, 162, 1, 'com_chronoforms6', 'ChronoForms6', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_associations`
--

CREATE TABLE `pfnbo_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_banners`
--

CREATE TABLE `pfnbo_banners` (
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
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_banner_clients`
--

CREATE TABLE `pfnbo_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_banner_tracks`
--

CREATE TABLE `pfnbo_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_categories`
--

CREATE TABLE `pfnbo_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_categories`
--

INSERT INTO `pfnbo_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 369, '2017-07-27 09:08:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'kenya-unites', 'com_content', 'Kenya Unites', 'kenya-unites', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 369, '2017-07-27 09:08:02', 369, '2017-07-30 13:04:09', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 369, '2017-07-27 09:08:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 369, '2017-07-27 09:08:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 369, '2017-07-27 09:08:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 369, '2017-07-27 09:08:02', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 74, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 369, '2017-07-30 13:04:15', 0, '2017-07-30 13:04:15', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_chronoengine_acls`
--

CREATE TABLE `pfnbo_chronoengine_acls` (
  `id` int(11) NOT NULL,
  `aco` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `rules` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_chronoengine_chronoforms_data_intern-application`
--

CREATE TABLE `pfnbo_chronoengine_chronoforms_data_intern-application` (
  `aid` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `issues` varchar(255) NOT NULL,
  `help` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_chronoengine_chronoforms_data_intern-application`
--

INSERT INTO `pfnbo_chronoengine_chronoforms_data_intern-application` (`aid`, `user_id`, `created`, `modified`, `title`, `first_name`, `last_name`, `email`, `phone_number`, `location`, `issues`, `help`, `message`) VALUES
(1, 0, '2017-08-01 15:34:06', NULL, 'mrs', 'michael', 'buluma', 'michael@buluma.me.ke', '0729209954', 'Africa, Earth', '[\"Job\"]', '[\"internship\"]', '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_chronoengine_chronoforms_data_Mentor-application`
--

CREATE TABLE `pfnbo_chronoengine_chronoforms_data_Mentor-application` (
  `aid` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `issues` varchar(255) NOT NULL,
  `help` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_chronoengine_chronoforms_data_Mentor-application`
--

INSERT INTO `pfnbo_chronoengine_chronoforms_data_Mentor-application` (`aid`, `user_id`, `created`, `modified`, `title`, `first_name`, `last_name`, `email`, `phone_number`, `location`, `issues`, `help`, `message`) VALUES
(1, 0, '2017-08-01 15:33:31', NULL, 'mr', 'michael', 'buluma', 'michael@buluma.me.ke', '0729209954', 'Africa, Earth', '[\"Job\"]', '[\"volunteer\"]', '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_chronoengine_chronoforms_data_volunteer-application`
--

CREATE TABLE `pfnbo_chronoengine_chronoforms_data_volunteer-application` (
  `aid` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `issues` varchar(255) NOT NULL,
  `help` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_chronoengine_chronoforms_data_volunteer-application`
--

INSERT INTO `pfnbo_chronoengine_chronoforms_data_volunteer-application` (`aid`, `user_id`, `created`, `modified`, `title`, `first_name`, `last_name`, `email`, `phone_number`, `location`, `issues`, `help`, `message`) VALUES
(1, 0, '2017-08-01 14:45:28', NULL, 'mr', 'michael', 'buluma', 'michael@buluma.me.ke', '0729209954', 'Africa, Earth', '[\"1\"]', '[\"1\"]', ''),
(2, 0, '2017-08-01 14:47:59', NULL, 'miss', 'michael', 'buluma', 'michael@buluma.me.ke', '0729209954', 'Africa, Earth', '[\"Job\",\"Debt\",\"Health\"]', '[\"1\",\"2\"]', ''),
(3, 0, '2017-08-01 14:49:20', NULL, 'miss', 'michael', 'buluma', 'michael@buluma.me.ke', '0729209954', 'Africa, Earth', '[\"Job\",\"Debt\"]', '[\"volunteer\"]', '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_chronoengine_extensions`
--

CREATE TABLE `pfnbo_chronoengine_extensions` (
  `id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_chronoengine_extensions`
--

INSERT INTO `pfnbo_chronoengine_extensions` (`id`, `addon_id`, `name`, `title`, `enabled`, `ordering`, `settings`) VALUES
(1, 0, 'chronoforms', '', 1, 0, '{\"mail\":{\"mail_from_name\":\"Kenya Unites\",\"mail_from_email\":\"info@kenyaunites.org\",\"mail_reply_name\":\"Kenya Unites\",\"mail_reply_email\":\"info@kenyaunites.org\",\"mail_method\":\"smtp\",\"smtp_secure\":\"tls\",\"smtp_host\":\"smtp.sendgrid.net\",\"smtp_port\":\"587\",\"smtp_username\":\"apikey\",\"smtp_password\":\"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\",\"smtp_debug\":\"0\"},\"wizard\":{\"safe_save\":\"1\",\"safe_save_chunk_size\":\"0\",\"safe_loading_fields_count\":\"20\",\"display_diagnostics\":\"1\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_chronoengine_forms6`
--

CREATE TABLE `pfnbo_chronoengine_forms6` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `params` text NOT NULL,
  `events` text NOT NULL,
  `sections` text NOT NULL,
  `views` longtext NOT NULL,
  `functions` longtext NOT NULL,
  `locales` longtext NOT NULL,
  `rules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_chronoengine_forms6`
--

INSERT INTO `pfnbo_chronoengine_forms6` (`id`, `title`, `alias`, `published`, `public`, `description`, `params`, `events`, `sections`, `views`, `functions`, `locales`, `rules`) VALUES
(1, 'Volunteer Application', 'volunteer-application', 1, 1, 'Just a very basic contact form..', '{\"mode\":\"advanced\",\"permissions_deactivated\":\"\",\"default_event\":\"load\",\"event_not_found\":\"\",\"limited_edition\":\"1\"}', '{\"load\":{\"name\":\"load\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"submit\":{\"name\":\"submit\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"test\":{\"name\":\"test\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"one\":{\"name\":\"one\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}},\"auto\":\"1\",\"template\":\"<table width=\\\"100%\\\" cellpadding=\\\"3\\\" cellspacing=\\\"3\\\" border=\\\"0\\\" class=\\\"ui table\\\">\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Title<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:title}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>First name<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:first_name}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Last Name<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:last_name}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Email Address<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:email}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Phone Number<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:phone_number}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Location<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:location}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>WHAT ISSUES DO YOU CARE ABOUT?<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:issues}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>HOW CAN YOU HELP?<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:help}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Message<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:message}<\\/td><\\/tr>\\n<\\/table>\"}}', '{\"16\":{\"_section\":\"one\",\"type\":\"header\",\"name\":\"header16\",\"category\":\"\",\"label\":\"Become a Volunteer\",\"tag\":\"h2\",\"text\":\"Become a Volunteer\",\"subtext\":\"vLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"class\":\"ui header dividing\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"1\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields1\",\"category\":\"\",\"id\":\"area_fields_1\",\"number\":\"three\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"2\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_select\",\"name\":\"field_select2\",\"category\":\"\",\"label\":\"Title\",\"multiple\":\"0\",\"params\":{\"name\":\"title\",\"id\":\"title_id\",\"data-mincharacters\":\"0\"},\"options\":\"=\\r\\nmr=Mr.\\r\\nmiss=Miss.\\r\\nmrs=Mrs.\",\"selected\":\"\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"rules\":\"empty:Please select a title\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"autocomplete\":{\"event\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field four wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"3\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_text\",\"name\":\"field_text3\",\"category\":\"\",\"label\":\"First name\",\"params\":{\"placeholder\":\"\",\"name\":\"first_name\",\"id\":\"first_name_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your first name\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"4\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_text\",\"name\":\"field_text4\",\"category\":\"\",\"label\":\"Last Name\",\"params\":{\"placeholder\":\"\",\"name\":\"last_name\",\"id\":\"last_name_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your last name\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"11\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields11\",\"category\":\"\",\"id\":\"area_fields_2\",\"number\":\"three\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"5\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text5\",\"category\":\"\",\"label\":\"Email Address\",\"params\":{\"placeholder\":\"\",\"name\":\"email\",\"id\":\"email_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"true\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your email address\\r\\nemail:A valid email address is required\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field four wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"10\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text10\",\"category\":\"\",\"label\":\"Phone Number\",\"params\":{\"placeholder\":\"\",\"name\":\"phone_number\",\"id\":\"phone_number\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"true\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"9\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text9\",\"category\":\"\",\"label\":\"Location\",\"params\":{\"placeholder\":\"\",\"name\":\"location\",\"id\":\"location\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"12\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields12\",\"category\":\"\",\"id\":\"area_fields_3\",\"number\":\"two\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"13\":{\"_section\":\"area_fields12\\/body\",\"type\":\"field_checkboxes\",\"name\":\"field_checkboxes13\",\"category\":\"\",\"label\":\"WHAT ISSUES DO YOU CARE ABOUT?\",\"layout\":\"grouped\",\"params\":{\"name\":\"issues[]\",\"id\":\"issues\"},\"options\":\"Job=Job Creation and Growth\\r\\nDebt=Capping The Debt Ceiling\\r\\nHealth=A Healthier America\\r\\nSecurity=A More Secure Nation\",\"selected\":\"Job\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"minChecked\":\"1\",\"maxChecked\":\"\",\"rules\":\"\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field\"},\"style\":\"\",\"events\":[{\"group\":\"1\",\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"14\":{\"_section\":\"area_fields12\\/body\",\"type\":\"field_checkboxes\",\"name\":\"field_checkboxes14\",\"category\":\"\",\"label\":\"HOW CAN YOU HELP?\",\"layout\":\"grouped\",\"params\":{\"name\":\"help[]\",\"id\":\"help\"},\"options\":\"volunteer=I would like to volunteer my time\\r\\ncontact=Please contact me soon\",\"selected\":\"volunteer\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"minChecked\":\"1\",\"maxChecked\":\"\",\"rules\":\"\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field\"},\"style\":\"\",\"events\":[{\"group\":\"1\",\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"6\":{\"_section\":\"one\",\"type\":\"field_textarea\",\"name\":\"field_textarea6\",\"category\":\"\",\"label\":\"Message\",\"params\":{\"rows\":\"5\",\"name\":\"message\",\"id\":\"message_id\",\"value\":\"\",\"placeholder\":\"Your message should not be less than 10 characters and no more than 50 characters, thank you for understanding!\"},\"editor\":{\"enabled\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"\",\"optional\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please write your message\\r\\nminLength[10]:You did not write 10 characters yet\\r\\nmaxLength[50]:Only 50 characters or less will pass the validation check\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field\",\"width\":\"\"},\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"8\":{\"_section\":\"one\",\"type\":\"field_secicon\",\"name\":\"field_secicon8\",\"category\":\"\",\"label\":\"Select %s\",\"layout\":\"inline\",\"params\":{\"name\":\"secicon8\",\"id\":\"secicon8\"},\"options\":\"moon:the moon\\r\\nflag:the flag\\r\\nsoccer:the football\\r\\ntravel:the bag\\r\\nplane:the plane\\r\\nbook:the book\\r\\ndiamond:the diamond\\r\\numbrella:the umbrella\\r\\nstar:the star\\r\\nheart:the heart\\r\\ncloud:the cloud\\r\\nwrite:the pencil\\r\\ncall:the phone\",\"number\":\"5\",\"validation\":{\"required\":\"true\",\"rules\":\"\"},\"verror\":\"\",\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"attrs\":\"\",\"description\":{\"text\":\"\"},\"container\":{\"class\":\"field\"},\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"7\":{\"_section\":\"one\",\"type\":\"field_button\",\"name\":\"field_button7\",\"category\":\"\",\"params\":{\"type\":\"submit\",\"name\":\"button7\",\"id\":\"button7\",\"value\":\"\"},\"content\":\"Send\",\"color\":\"green\",\"class\":\"\",\"attrs\":\"\",\"container\":{\"class\":\"\"},\"events\":[{\"sign\":\"click\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"0\":{\"_event\":\"load\",\"type\":\"display_section\",\"name\":\"display_section1\",\"sections\":\"one\",\"display_type\":\"form\",\"data_provider\":\"\",\"validation\":{\"type\":\"inline\"},\"event\":\"submit\",\"parameters\":\"\",\"dynamic\":\"\",\"invisible\":\"\",\"keepalive\":\"\",\"submit_animation\":\"1\",\"class\":\"ui form\",\"formid\":\"\",\"attrs\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"6\":{\"_event\":\"submit\",\"type\":\"check_secicon\",\"name\":\"check_secicon6\",\"field_name\":\"secicon8\",\"failed_error\":\"You didn\'t select the correct image.\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"8\":{\"_event\":\"check_secicon6\\/success\",\"type\":\"email\",\"name\":\"email8\",\"label\":\"email on success\",\"enabled\":\"1\",\"recipients\":\"michael@buluma.me.ke\",\"subject\":\"Kenya Unites - New Volunteer Application \",\"autoemail\":\"1\",\"body\":\"\",\"mode\":\"html\",\"advanced_template\":\"\",\"autofields\":\"1\",\"attachments\":\"\",\"reply_email\":\"\",\"reply_name\":\"\",\"from_email\":\"michael@buluma.me.ke\",\"from_name\":\"Kenya Unites\",\"cc\":\"\",\"bcc\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"9\":{\"_event\":\"check_secicon6\\/success\",\"type\":\"save_data\",\"name\":\"save_data9\",\"label\":\"\",\"enabled\":\"1\",\"autotable\":\"1\",\"model_name\":\"Data9\",\"db_table\":\"pfnbo_chronoengine_chronoforms_data_volunteer-application\",\"data_provider\":\"\",\"action\":\"save\",\"insert_data_override\":\"created:{date:Y-m-d H:i:s}\\r\\nuser_id:{user:id}\",\"update_data_override\":\"modified:{date:Y-m-d H:i:s}\",\"autofields\":\"1\",\"where\":\"\",\"fields\":{\"special\":\"\"},\"_save\":\"1\",\"viewfields\":\"{\\\"field_select2\\\":\\\"title\\\",\\\"field_text3\\\":\\\"first_name\\\",\\\"field_text4\\\":\\\"last_name\\\",\\\"field_text5\\\":\\\"email\\\",\\\"field_text10\\\":\\\"phone_number\\\",\\\"field_text9\\\":\\\"location\\\",\\\"field_checkboxes13\\\":\\\"issues\\\",\\\"field_checkboxes14\\\":\\\"help\\\",\\\"field_textarea6\\\":\\\"message\\\",\\\"field_secicon8\\\":\\\"secicon8\\\",\\\"field_button7\\\":\\\"button7\\\",\\\"field_hidden15\\\":\\\"hidden15\\\"}\",\"db\":{\"enabled\":\"\",\"user\":\"\",\"pass\":\"\",\"name\":\"\",\"type\":\"\",\"host\":\"\",\"prefix\":\"\"},\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"7\":{\"_event\":\"check_secicon6\\/fail\",\"type\":\"event_load\",\"name\":\"event_load7\",\"event_name\":\"load\",\"stop\":\"1\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"2\":{\"_event\":\"submit\",\"type\":\"email\",\"name\":\"email2\",\"label\":\"\",\"enabled\":\"1\",\"recipients\":\"{data:email}\",\"subject\":\"Email subject\",\"autoemail\":\"\",\"body\":\"<wrapper><h2>New contact form received!<\\/h2><\\/wrapper>\\r\\n<container>\\r\\n<row>\\r\\n<column first last>\\r\\n{section\\/template:one}\\r\\n<\\/column>\\r\\n<\\/row>\\r\\n<\\/container>\",\"mode\":\"html\",\"advanced_template\":\"1\",\"autofields\":\"\",\"attachments\":\"\",\"reply_email\":\"info@kenyaunites.org\",\"reply_name\":\"Kenya Unites - Volunteer Application\",\"from_email\":\"info@kenyaunites.org\",\"from_name\":\"Kenya Unites - Volunteer Application\",\"cc\":\"\",\"bcc\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"4\":{\"_event\":\"submit\",\"type\":\"custom_code\",\"name\":\"custom_code4\",\"label\":\"\",\"return\":\"\",\"content\":\"<h3 class=\\\"ui header green\\\">\\r\\nThank you, we have received your message and we will try to get back to you as soon as possible, have a good day!\\r\\n<\\/h3>\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"5\":{\"_event\":\"submit\",\"type\":\"debugger\",\"name\":\"debugger5\",\"enabled\":\"\",\"var_name\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"en_GB\":{\"name\":\"en_GB\",\"content\":\"\"}}', '{\"access\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}'),
(2, 'Mentor Application', 'Mentor-application', 1, 1, 'Just a very basic contact form..', '{\"mode\":\"advanced\",\"permissions_deactivated\":\"\",\"default_event\":\"load\",\"event_not_found\":\"\",\"limited_edition\":\"1\"}', '{\"load\":{\"name\":\"load\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"submit\":{\"name\":\"submit\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"test\":{\"name\":\"test\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"one\":{\"name\":\"one\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}},\"auto\":\"1\",\"template\":\"<table width=\\\"100%\\\" cellpadding=\\\"3\\\" cellspacing=\\\"3\\\" border=\\\"0\\\" class=\\\"ui table\\\">\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Title<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:title}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>First name<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:first_name}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Last Name<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:last_name}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Email Address<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:email}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Phone Number<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:phone_number}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Location<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:location}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>WHAT ISSUES DO YOU CARE ABOUT?<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:issues}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>HOW CAN YOU HELP?<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:help}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Message<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:message}<\\/td><\\/tr>\\n<\\/table>\"}}', '{\"16\":{\"_section\":\"one\",\"type\":\"header\",\"name\":\"header16\",\"category\":\"\",\"label\":\"Become a Mentor\",\"tag\":\"h2\",\"text\":\"Become a Mentor\",\"subtext\":\"vLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"class\":\"ui header dividing\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"1\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields1\",\"category\":\"\",\"id\":\"area_fields_1\",\"number\":\"three\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"2\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_select\",\"name\":\"field_select2\",\"category\":\"\",\"label\":\"Title\",\"multiple\":\"0\",\"params\":{\"name\":\"title\",\"id\":\"title_id\",\"data-mincharacters\":\"0\"},\"options\":\"=\\r\\nmr=Mr.\\r\\nmiss=Miss.\\r\\nmrs=Mrs.\",\"selected\":\"\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"rules\":\"empty:Please select a title\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"autocomplete\":{\"event\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field four wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"3\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_text\",\"name\":\"field_text3\",\"category\":\"\",\"label\":\"First name\",\"params\":{\"placeholder\":\"\",\"name\":\"first_name\",\"id\":\"first_name_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your first name\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"4\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_text\",\"name\":\"field_text4\",\"category\":\"\",\"label\":\"Last Name\",\"params\":{\"placeholder\":\"\",\"name\":\"last_name\",\"id\":\"last_name_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your last name\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"11\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields11\",\"category\":\"\",\"id\":\"area_fields_2\",\"number\":\"three\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"5\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text5\",\"category\":\"\",\"label\":\"Email Address\",\"params\":{\"placeholder\":\"\",\"name\":\"email\",\"id\":\"email_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"true\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your email address\\r\\nemail:A valid email address is required\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field four wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"10\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text10\",\"category\":\"\",\"label\":\"Phone Number\",\"params\":{\"placeholder\":\"\",\"name\":\"phone_number\",\"id\":\"phone_number\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"true\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"9\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text9\",\"category\":\"\",\"label\":\"Location\",\"params\":{\"placeholder\":\"\",\"name\":\"location\",\"id\":\"location\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"12\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields12\",\"category\":\"\",\"id\":\"area_fields_3\",\"number\":\"two\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"13\":{\"_section\":\"area_fields12\\/body\",\"type\":\"field_checkboxes\",\"name\":\"field_checkboxes13\",\"category\":\"\",\"label\":\"WHAT ISSUES DO YOU CARE ABOUT?\",\"layout\":\"grouped\",\"params\":{\"name\":\"issues[]\",\"id\":\"issues\"},\"options\":\"Job=Job Creation and Growth\\r\\nDebt=Capping The Debt Ceiling\\r\\nHealth=A Healthier America\\r\\nSecurity=A More Secure Nation\",\"selected\":\"Job\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"minChecked\":\"1\",\"maxChecked\":\"\",\"rules\":\"\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field\"},\"style\":\"\",\"events\":[{\"group\":\"1\",\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"14\":{\"_section\":\"area_fields12\\/body\",\"type\":\"field_checkboxes\",\"name\":\"field_checkboxes14\",\"category\":\"\",\"label\":\"HOW CAN YOU HELP?\",\"layout\":\"grouped\",\"params\":{\"name\":\"help[]\",\"id\":\"help\"},\"options\":\"volunteer=I would like to volunteer my time as a mentor\\r\\ncontact=Please contact me soon\",\"selected\":\"volunteer\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"minChecked\":\"1\",\"maxChecked\":\"\",\"rules\":\"\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field\"},\"style\":\"\",\"events\":[{\"group\":\"1\",\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"6\":{\"_section\":\"one\",\"type\":\"field_textarea\",\"name\":\"field_textarea6\",\"category\":\"\",\"label\":\"Message\",\"params\":{\"rows\":\"5\",\"name\":\"message\",\"id\":\"message_id\",\"value\":\"\",\"placeholder\":\"Your message should not be less than 10 characters and no more than 50 characters, thank you for understanding!\"},\"editor\":{\"enabled\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"\",\"optional\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please write your message\\r\\nminLength[10]:You did not write 10 characters yet\\r\\nmaxLength[50]:Only 50 characters or less will pass the validation check\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field\",\"width\":\"\"},\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"8\":{\"_section\":\"one\",\"type\":\"field_secicon\",\"name\":\"field_secicon8\",\"category\":\"\",\"label\":\"Select %s\",\"layout\":\"inline\",\"params\":{\"name\":\"secicon8\",\"id\":\"secicon8\"},\"options\":\"moon:the moon\\r\\nflag:the flag\\r\\nsoccer:the football\\r\\ntravel:the bag\\r\\nplane:the plane\\r\\nbook:the book\\r\\ndiamond:the diamond\\r\\numbrella:the umbrella\\r\\nstar:the star\\r\\nheart:the heart\\r\\ncloud:the cloud\\r\\nwrite:the pencil\\r\\ncall:the phone\",\"number\":\"5\",\"validation\":{\"required\":\"true\",\"rules\":\"\"},\"verror\":\"\",\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"attrs\":\"\",\"description\":{\"text\":\"\"},\"container\":{\"class\":\"field\"},\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"7\":{\"_section\":\"one\",\"type\":\"field_button\",\"name\":\"field_button7\",\"category\":\"\",\"params\":{\"type\":\"submit\",\"name\":\"button7\",\"id\":\"button7\",\"value\":\"\"},\"content\":\"Send\",\"color\":\"green\",\"class\":\"\",\"attrs\":\"\",\"container\":{\"class\":\"\"},\"events\":[{\"sign\":\"click\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"0\":{\"_event\":\"load\",\"type\":\"display_section\",\"name\":\"display_section1\",\"sections\":\"one\",\"display_type\":\"form\",\"data_provider\":\"\",\"validation\":{\"type\":\"inline\"},\"event\":\"submit\",\"parameters\":\"\",\"dynamic\":\"\",\"invisible\":\"\",\"keepalive\":\"\",\"submit_animation\":\"1\",\"class\":\"ui form\",\"formid\":\"\",\"attrs\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"6\":{\"_event\":\"submit\",\"type\":\"check_secicon\",\"name\":\"check_secicon6\",\"field_name\":\"secicon8\",\"failed_error\":\"You didn\'t select the correct image.\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"8\":{\"_event\":\"check_secicon6\\/success\",\"type\":\"email\",\"name\":\"email8\",\"label\":\"email on success\",\"enabled\":\"1\",\"recipients\":\"michael@buluma.me.ke\",\"subject\":\"Kenya Unites - New Mentor Application \",\"autoemail\":\"1\",\"body\":\"\",\"mode\":\"html\",\"advanced_template\":\"1\",\"autofields\":\"1\",\"attachments\":\"\",\"reply_email\":\"info@kenyaunites.org\",\"reply_name\":\"Kenya Unites Mentor Application\",\"from_email\":\"michael@buluma.me.ke\",\"from_name\":\"Kenya Unites Mentor Application\",\"cc\":\"\",\"bcc\":\"michael@buluma.me.ke\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"9\":{\"_event\":\"check_secicon6\\/success\",\"type\":\"save_data\",\"name\":\"save_data9\",\"label\":\"\",\"enabled\":\"1\",\"autotable\":\"1\",\"model_name\":\"Data9\",\"db_table\":\"pfnbo_chronoengine_chronoforms_data_Mentor-application\",\"data_provider\":\"\",\"action\":\"save\",\"insert_data_override\":\"created:{date:Y-m-d H:i:s}\\r\\nuser_id:{user:id}\",\"update_data_override\":\"modified:{date:Y-m-d H:i:s}\",\"autofields\":\"1\",\"where\":\"\",\"fields\":{\"special\":\"\"},\"_save\":\"1\",\"viewfields\":\"{\\\"field_select2\\\":\\\"title\\\",\\\"field_text3\\\":\\\"first_name\\\",\\\"field_text4\\\":\\\"last_name\\\",\\\"field_text5\\\":\\\"email\\\",\\\"field_text10\\\":\\\"phone_number\\\",\\\"field_text9\\\":\\\"location\\\",\\\"field_checkboxes13\\\":\\\"issues\\\",\\\"field_checkboxes14\\\":\\\"help\\\",\\\"field_textarea6\\\":\\\"message\\\",\\\"field_secicon8\\\":\\\"secicon8\\\",\\\"field_button7\\\":\\\"button7\\\"}\",\"db\":{\"enabled\":\"\",\"user\":\"\",\"pass\":\"\",\"name\":\"\",\"type\":\"\",\"host\":\"\",\"prefix\":\"\"},\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"7\":{\"_event\":\"check_secicon6\\/fail\",\"type\":\"event_load\",\"name\":\"event_load7\",\"event_name\":\"load\",\"stop\":\"1\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"2\":{\"_event\":\"submit\",\"type\":\"email\",\"name\":\"email2\",\"label\":\"\",\"enabled\":\"1\",\"recipients\":\"{data:email}\",\"subject\":\"Email subject\",\"autoemail\":\"\",\"body\":\"<wrapper><h2>New contact form received!<\\/h2><\\/wrapper>\\r\\n<container>\\r\\n<row>\\r\\n<column first last>\\r\\n{section\\/template:one}\\r\\n<\\/column>\\r\\n<\\/row>\\r\\n<\\/container>\",\"mode\":\"html\",\"advanced_template\":\"1\",\"autofields\":\"\",\"attachments\":\"\",\"reply_email\":\"info@kenyaunites.org\",\"reply_name\":\"Kenya Unites - Volunteer Application\",\"from_email\":\"info@kenyaunites.org\",\"from_name\":\"Kenya Unites - Volunteer Application\",\"cc\":\"\",\"bcc\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"4\":{\"_event\":\"submit\",\"type\":\"custom_code\",\"name\":\"custom_code4\",\"label\":\"\",\"return\":\"\",\"content\":\"<h3 class=\\\"ui header green\\\">\\r\\nThank you, we have received your message and we will try to get back to you as soon as possible, have a good day!\\r\\n<\\/h3>\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"5\":{\"_event\":\"submit\",\"type\":\"debugger\",\"name\":\"debugger5\",\"enabled\":\"\",\"var_name\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"en_GB\":{\"name\":\"en_GB\",\"content\":\"\"}}', '{\"access\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}');
INSERT INTO `pfnbo_chronoengine_forms6` (`id`, `title`, `alias`, `published`, `public`, `description`, `params`, `events`, `sections`, `views`, `functions`, `locales`, `rules`) VALUES
(3, 'Intern Application', 'intern-application', 1, 1, 'Internship Application Form', '{\"mode\":\"advanced\",\"permissions_deactivated\":\"\",\"default_event\":\"load\",\"event_not_found\":\"\",\"limited_edition\":\"1\"}', '{\"load\":{\"name\":\"load\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"submit\":{\"name\":\"submit\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"test\":{\"name\":\"test\",\"access_denied\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"one\":{\"name\":\"one\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}},\"auto\":\"1\",\"template\":\"<table width=\\\"100%\\\" cellpadding=\\\"3\\\" cellspacing=\\\"3\\\" border=\\\"0\\\" class=\\\"ui table\\\">\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Title<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:title}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>First name<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:first_name}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Last Name<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:last_name}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Email Address<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:email}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Phone Number<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:phone_number}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Location<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:location}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>WHAT ISSUES DO YOU CARE ABOUT?<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:issues}<\\/td><\\/tr>\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>HOW CAN YOU HELP?<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:help}<\\/td><\\/tr>\\n\\n<tr><td width=\\\"30%\\\" valign=\\\"top\\\" align=\\\"right\\\"><strong>Message<\\/strong><\\/td><td width=\\\"70%\\\" valign=\\\"top\\\" align=\\\"left\\\">{data:message}<\\/td><\\/tr>\\n<\\/table>\"}}', '{\"16\":{\"_section\":\"one\",\"type\":\"header\",\"name\":\"header16\",\"category\":\"\",\"label\":\"Become an Intern\",\"tag\":\"h2\",\"text\":\"Become an Intern\",\"subtext\":\"vLorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\",\"class\":\"ui header dividing\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"1\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields1\",\"category\":\"\",\"id\":\"area_fields_1\",\"number\":\"three\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"2\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_select\",\"name\":\"field_select2\",\"category\":\"\",\"label\":\"Title\",\"multiple\":\"0\",\"params\":{\"name\":\"title\",\"id\":\"title_id\",\"data-mincharacters\":\"0\"},\"options\":\"=\\r\\nmr=Mr.\\r\\nmiss=Miss.\\r\\nmrs=Mrs.\",\"selected\":\"\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"rules\":\"empty:Please select a title\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"autocomplete\":{\"event\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field four wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"3\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_text\",\"name\":\"field_text3\",\"category\":\"\",\"label\":\"First name\",\"params\":{\"placeholder\":\"\",\"name\":\"first_name\",\"id\":\"first_name_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your first name\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"4\":{\"_section\":\"area_fields1\\/body\",\"type\":\"field_text\",\"name\":\"field_text4\",\"category\":\"\",\"label\":\"Last Name\",\"params\":{\"placeholder\":\"\",\"name\":\"last_name\",\"id\":\"last_name_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your last name\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"11\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields11\",\"category\":\"\",\"id\":\"area_fields_2\",\"number\":\"three\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"5\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text5\",\"category\":\"\",\"label\":\"Email Address\",\"params\":{\"placeholder\":\"\",\"name\":\"email\",\"id\":\"email_id\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"true\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please enter your email address\\r\\nemail:A valid email address is required\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field four wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"10\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text10\",\"category\":\"\",\"label\":\"Phone Number\",\"params\":{\"placeholder\":\"\",\"name\":\"phone_number\",\"id\":\"phone_number\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"true\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"9\":{\"_section\":\"area_fields11\\/body\",\"type\":\"field_text\",\"name\":\"field_text9\",\"category\":\"\",\"label\":\"Location\",\"params\":{\"placeholder\":\"\",\"name\":\"location\",\"id\":\"location\",\"value\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"\",\"optional\":\"\",\"email\":\"\",\"url\":\"\",\"integer\":\"\",\"decimal\":\"\",\"number\":\"\",\"regExp\":\"\",\"match\":\"\",\"different\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"\"},\"verror\":\"\",\"inputmask\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field six wide\",\"width\":\"\"},\"events\":[{\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"12\":{\"_section\":\"one\",\"type\":\"area_fields\",\"name\":\"area_fields12\",\"category\":\"\",\"id\":\"area_fields_3\",\"number\":\"two\",\"inline\":\"0\",\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"13\":{\"_section\":\"area_fields12\\/body\",\"type\":\"field_checkboxes\",\"name\":\"field_checkboxes13\",\"category\":\"\",\"label\":\"WHAT ISSUES DO YOU CARE ABOUT?\",\"layout\":\"grouped\",\"params\":{\"name\":\"issues[]\",\"id\":\"issues\"},\"options\":\"Job=Job Creation and Growth\\r\\nDebt=Capping The Debt Ceiling\\r\\nHealth=A Healthier America\\r\\nSecurity=A More Secure Nation\",\"selected\":\"Job\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"minChecked\":\"1\",\"maxChecked\":\"\",\"rules\":\"\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field\"},\"style\":\"\",\"events\":[{\"group\":\"1\",\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"14\":{\"_section\":\"area_fields12\\/body\",\"type\":\"field_checkboxes\",\"name\":\"field_checkboxes14\",\"category\":\"\",\"label\":\"HOW CAN YOU HELP?\",\"layout\":\"grouped\",\"params\":{\"name\":\"help[]\",\"id\":\"help\"},\"options\":\"internship=I would like to apply for internship\\r\\ncontact=Please contact me soon\",\"selected\":\"internship\",\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"true\",\"minChecked\":\"1\",\"maxChecked\":\"\",\"rules\":\"\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"data-values\":\"\",\"container\":{\"class\":\"field\"},\"style\":\"\",\"events\":[{\"group\":\"1\",\"sign\":\"=\",\"value\":\"\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"6\":{\"_section\":\"one\",\"type\":\"field_textarea\",\"name\":\"field_textarea6\",\"category\":\"\",\"label\":\"Message\",\"params\":{\"rows\":\"5\",\"name\":\"message\",\"id\":\"message_id\",\"value\":\"\",\"placeholder\":\"Your message should not be less than 10 characters and no more than 50 characters, thank you for understanding!\"},\"editor\":{\"enabled\":\"\"},\"dynamics\":{\"email\":{\"enabled\":\"1\"},\"save\":{\"enabled\":\"1\"}},\"validation\":{\"required\":\"\",\"optional\":\"\",\"minLength\":\"\",\"maxLength\":\"\",\"contains\":\"\",\"rules\":\"empty:Please write your message\\r\\nminLength[10]:You did not write 10 characters yet\\r\\nmaxLength[50]:Only 50 characters or less will pass the validation check\"},\"verror\":\"\",\"description\":{\"text\":\"\"},\"tooltip\":{\"text\":\"\",\"class\":\"icon info circular blue inverted small\"},\"states\":{\"hidden\":\"\",\"disabled\":\"\"},\"reload\":{\"event\":\"\"},\"attrs\":\"\",\"container\":{\"class\":\"field\",\"width\":\"\"},\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"8\":{\"_section\":\"one\",\"type\":\"field_secicon\",\"name\":\"field_secicon8\",\"category\":\"\",\"label\":\"Select %s\",\"layout\":\"inline\",\"params\":{\"name\":\"secicon8\",\"id\":\"secicon8\"},\"options\":\"moon:the moon\\r\\nflag:the flag\\r\\nsoccer:the football\\r\\ntravel:the bag\\r\\nplane:the plane\\r\\nbook:the book\\r\\ndiamond:the diamond\\r\\numbrella:the umbrella\\r\\nstar:the star\\r\\nheart:the heart\\r\\ncloud:the cloud\\r\\nwrite:the pencil\\r\\ncall:the phone\",\"number\":\"5\",\"validation\":{\"required\":\"true\",\"rules\":\"\"},\"verror\":\"\",\"ghost\":{\"enabled\":\"1\",\"value\":\"\"},\"attrs\":\"\",\"description\":{\"text\":\"\"},\"container\":{\"class\":\"field\"},\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"7\":{\"_section\":\"one\",\"type\":\"field_button\",\"name\":\"field_button7\",\"category\":\"\",\"params\":{\"type\":\"submit\",\"name\":\"button7\",\"id\":\"button7\",\"value\":\"\"},\"content\":\"Send\",\"color\":\"green\",\"class\":\"\",\"attrs\":\"\",\"container\":{\"class\":\"\"},\"events\":[{\"sign\":\"click\",\"identifier\":\"\"}],\"owner_id\":\"\",\"toggler\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"0\":{\"_event\":\"load\",\"type\":\"display_section\",\"name\":\"display_section1\",\"sections\":\"one\",\"display_type\":\"form\",\"data_provider\":\"\",\"validation\":{\"type\":\"inline\"},\"event\":\"submit\",\"parameters\":\"\",\"dynamic\":\"\",\"invisible\":\"\",\"keepalive\":\"\",\"submit_animation\":\"1\",\"class\":\"ui form\",\"formid\":\"\",\"attrs\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"6\":{\"_event\":\"submit\",\"type\":\"check_secicon\",\"name\":\"check_secicon6\",\"field_name\":\"secicon8\",\"failed_error\":\"You didn\'t select the correct image.\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"8\":{\"_event\":\"check_secicon6\\/success\",\"type\":\"email\",\"name\":\"email8\",\"label\":\"email on success\",\"enabled\":\"1\",\"recipients\":\"michael@buluma.me.ke\",\"subject\":\"Kenya Unites - New Volunteer Application \",\"autoemail\":\"1\",\"body\":\"\",\"mode\":\"html\",\"advanced_template\":\"\",\"autofields\":\"1\",\"attachments\":\"\",\"reply_email\":\"\",\"reply_name\":\"\",\"from_email\":\"michael@buluma.me.ke\",\"from_name\":\"Kenya Unites\",\"cc\":\"\",\"bcc\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"9\":{\"_event\":\"check_secicon6\\/success\",\"type\":\"save_data\",\"name\":\"save_data9\",\"label\":\"\",\"enabled\":\"1\",\"autotable\":\"1\",\"model_name\":\"Data9\",\"db_table\":\"pfnbo_chronoengine_chronoforms_data_intern-application\",\"data_provider\":\"\",\"action\":\"save\",\"insert_data_override\":\"created:{date:Y-m-d H:i:s}\\r\\nuser_id:{user:id}\",\"update_data_override\":\"modified:{date:Y-m-d H:i:s}\",\"autofields\":\"1\",\"where\":\"\",\"fields\":{\"special\":\"\"},\"_save\":\"1\",\"viewfields\":\"{\\\"field_select2\\\":\\\"title\\\",\\\"field_text3\\\":\\\"first_name\\\",\\\"field_text4\\\":\\\"last_name\\\",\\\"field_text5\\\":\\\"email\\\",\\\"field_text10\\\":\\\"phone_number\\\",\\\"field_text9\\\":\\\"location\\\",\\\"field_checkboxes13\\\":\\\"issues\\\",\\\"field_checkboxes14\\\":\\\"help\\\",\\\"field_textarea6\\\":\\\"message\\\",\\\"field_secicon8\\\":\\\"secicon8\\\",\\\"field_button7\\\":\\\"button7\\\"}\",\"db\":{\"enabled\":\"\",\"user\":\"\",\"pass\":\"\",\"name\":\"\",\"type\":\"\",\"host\":\"\",\"prefix\":\"\"},\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"7\":{\"_event\":\"check_secicon6\\/fail\",\"type\":\"event_load\",\"name\":\"event_load7\",\"event_name\":\"load\",\"stop\":\"1\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"2\":{\"_event\":\"submit\",\"type\":\"email\",\"name\":\"email2\",\"label\":\"\",\"enabled\":\"1\",\"recipients\":\"{data:email}\",\"subject\":\"Email subject\",\"autoemail\":\"\",\"body\":\"<wrapper><h2>New contact form received!<\\/h2><\\/wrapper>\\r\\n<container>\\r\\n<row>\\r\\n<column first last>\\r\\n{section\\/template:one}\\r\\n<\\/column>\\r\\n<\\/row>\\r\\n<\\/container>\",\"mode\":\"html\",\"advanced_template\":\"1\",\"autofields\":\"\",\"attachments\":\"\",\"reply_email\":\"info@kenyaunites.org\",\"reply_name\":\"Kenya Unites - Volunteer Application\",\"from_email\":\"info@kenyaunites.org\",\"from_name\":\"Kenya Unites - Volunteer Application\",\"cc\":\"\",\"bcc\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"4\":{\"_event\":\"submit\",\"type\":\"custom_code\",\"name\":\"custom_code4\",\"label\":\"\",\"return\":\"\",\"content\":\"<h3 class=\\\"ui header green\\\">\\r\\nThank you, we have received your message and we will try to get back to you as soon as possible, have a good day!\\r\\n<\\/h3>\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}},\"5\":{\"_event\":\"submit\",\"type\":\"debugger\",\"name\":\"debugger5\",\"enabled\":\"\",\"var_name\":\"\",\"owner_id\":\"\",\"rules\":{\"access\":{\"owner\":\"\",\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}}}', '{\"en_GB\":{\"name\":\"en_GB\",\"content\":\"\"}}', '{\"access\":{\"1\":\"\",\"2\":\"\",\"3\":\"\",\"4\":\"\",\"5\":\"\",\"6\":\"\",\"7\":\"\",\"8\":\"\",\"9\":\"\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_contact_details`
--

CREATE TABLE `pfnbo_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_contact_details`
--

INSERT INTO `pfnbo_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact Us', 'contact-us', '', 'Kenya Unites,\r\nNairobi', '', '', 'Kenya', '8822 - 00200 ', '', '', '<p>high</p>', '', 'info@kenyaunites.org', 0, 1, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"tabs\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"1\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 4, 1, '(+254) 733274641 / (+254) 723547923', 'http://www.kenyaunites.org', '', '', '', '*', '2017-07-27 19:49:40', 369, '', '2017-07-31 03:59:11', 369, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 106);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_contact_enquiries`
--

CREATE TABLE `pfnbo_contact_enquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(100) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pfnbo_contact_enquiries`
--

INSERT INTO `pfnbo_contact_enquiries` (`id`, `name`, `telephone`, `email`, `subject`, `message`, `date`, `ip`) VALUES
(1, 'michael', '08765', 'mbuluma@gbc.co.ke', 'test', 'test', '2017-07-30 15:20:10', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_content`
--

CREATE TABLE `pfnbo_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_content`
--

INSERT INTO `pfnbo_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 75, 'Lorem ipsum', 'lorem-ipsum', '<p>This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities’ champions of change projects and is conducted by Kenya Unites mentors.</p>', '', 1, 8, '2017-07-30 13:18:53', 369, '', '2017-07-30 13:18:53', 0, 0, '0000-00-00 00:00:00', '2017-07-30 13:18:53', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}', 1, 2, '', '', 1, 5, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(2, 76, 'Lorem ipsum (2)', 'lorem-ipsum-2', '<p>This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities’ champions of change projects and is conducted by Kenya Unites mentors.</p>', '', 1, 8, '2017-07-30 13:18:53', 369, '', '2017-07-30 13:19:08', 0, 0, '0000-00-00 00:00:00', '2017-07-30 13:18:53', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}', 1, 1, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(3, 77, 'Lorem ipsum (3)', 'lorem-ipsum-3', '<p>This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities’ champions of change projects and is conducted by Kenya Unites mentors.</p>', '', 1, 8, '2017-07-30 13:18:53', 369, '', '2017-07-30 13:19:10', 0, 0, '0000-00-00 00:00:00', '2017-07-30 13:18:53', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}', 1, 0, '', '', 1, 7, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_contentitem_tag_map`
--

CREATE TABLE `pfnbo_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_content_frontpage`
--

CREATE TABLE `pfnbo_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_content_rating`
--

CREATE TABLE `pfnbo_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_content_types`
--

CREATE TABLE `pfnbo_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_content_types`
--

INSERT INTO `pfnbo_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_core_log_searches`
--

CREATE TABLE `pfnbo_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_extensions`
--

CREATE TABLE `pfnbo_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_extensions`
--

INSERT INTO `pfnbo_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"tabs\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"add_mailto_link\":\"1\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"show_misc\":\"1\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"list_show_votes\":\"0\",\"list_show_ratings\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"73c31aa92af77297befd47b9d689ed06\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `pfnbo_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.25.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 13, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 14, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 16, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1501869918}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1501189893,\"unique_id\":\"d49d649a88cd54f347ca60e6d20e56bf7f4e531f\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'Helix3 - Ajax', 'plugin', 'helix3', 'ajax', 0, 1, 1, 0, '{\"name\":\"Helix3 - Ajax\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.1\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'System - Helix3 Framework', 'plugin', 'helix3', 'system', 0, 1, 1, 0, '{\"name\":\"System - Helix3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.1\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `pfnbo_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10003, 0, 'shaper_helix3', 'template', 'shaper_helix3', '', 0, 1, 1, 0, '{\"name\":\"shaper_helix3\",\"type\":\"template\",\"creationDate\":\"Jan 2016\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2017 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"2.1\",\"description\":\"Shaper Helix3 - Starter Template of Helix3 framework\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"preloader\":\"0\",\"preloader_animation\":\"circle\",\"preloader_bg\":\"#f5f5f5\",\"preloader_tx\":\"#333333\",\"goto_top\":\"0\",\"sticky_header\":\"1\",\"boxed_layout\":\"0\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_load_pos\":\"default\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"\\u00a9 2015 Your Company. All Rights Reserved. Designed By JoomShaper\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"default\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"comingsoon_mode\":\"0\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"5-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"preset\":\"preset1\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#26aae1\",\"preset1_megabg\":\"#ffffff\",\"preset1_megatx\":\"#333333\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset2_megabg\":\"#ffffff\",\"preset2_megatx\":\"#333333\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset3_megabg\":\"#ffffff\",\"preset3_megatx\":\"#333333\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#000000\",\"preset4_major\":\"#eb4947\",\"preset4_megabg\":\"#ffffff\",\"preset4_megatx\":\"#333333\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"menu_animation\":\"menu-fade\",\"offcanvas_animation\":\"default\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"300\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"0\",\"enable_custom_font\":\"0\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"lessoption\":\"0\",\"show_post_format\":\"1\",\"commenting_engine\":\"disabled\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"1\",\"image_small\":\"0\",\"image_small_size\":\"100X100\",\"image_thumbnail\":\"1\",\"image_thumbnail_size\":\"200X200\",\"image_medium\":\"0\",\"image_medium_size\":\"300X300\",\"image_large\":\"0\",\"image_large_size\":\"600X600\",\"blog_list_image\":\"default\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'SP Page Builder', 'component', 'com_sppagebuilder', '', 1, 1, 0, 0, '{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright @ 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"2.4.9\",\"description\":\"\",\"group\":\"\",\"filename\":\"sppagebuilder\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'mod_sppagebuilder_icons', 'module', 'mod_sppagebuilder_icons', '', 1, 1, 2, 0, '{\"name\":\"mod_sppagebuilder_icons\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.2\",\"description\":\"MOD_SPPAGEBUILDER_ICONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_icons\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'mod_sppagebuilder_admin_menu', 'module', 'mod_sppagebuilder_admin_menu', '', 1, 1, 2, 0, '{\"name\":\"mod_sppagebuilder_admin_menu\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.1\",\"description\":\"MOD_SPPAGEBUILDER_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_admin_menu\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'Home Links', 'module', 'mod_home_links', '', 0, 1, 1, 0, '{\"name\":\"Home Links\",\"type\":\"module\",\"creationDate\":\"April 2017\",\"author\":\"Michael Buluma\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"Home Links and images\",\"group\":\"\",\"filename\":\"mod_home_links\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'com_tlptestimonial', 'component', 'com_tlptestimonial', '', 1, 1, 0, 0, '{\"name\":\"com_tlptestimonial\",\"type\":\"component\",\"creationDate\":\"2015-02-22\",\"author\":\"Techlabpro\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"techlabpro@gmail.com\",\"authorUrl\":\"http:\\/\\/www.techlabpro.com\",\"version\":\"1.0.1\",\"description\":\"A testimonial Management component to manage testimonials\",\"group\":\"\",\"filename\":\"tlptestimonial\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'TLP Testimonial', 'module', 'mod_tlptestimonial', '', 0, 1, 0, 0, '{\"name\":\"TLP Testimonial\",\"type\":\"module\",\"creationDate\":\"2015\",\"author\":\"Mamunur Rashid\",\"copyright\":\"All rights reserved by www.techlabpro.com\",\"authorEmail\":\"info@techlabpro.com\",\"authorUrl\":\"www.techlabpro.com\",\"version\":\"1.0.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"mod_tlptestimonial\"}', '{\"moduleclass_sfx\":\"\",\"@spacer\":\"\",\"testimonialcount\":\"5\",\"showno\":\"1\",\"ordering\":\"id\",\"readmore\":\"0\",\"readmore_text\":\"more\",\"character_limit\":\"100\",\"testimonialmenuid\":\"45\",\"imgborder\":\"5\",\"imgbordercolor\":\"#e81717\",\"namefontsize\":\"16\",\"namecolor\":\"#e81717\",\"designfontsize\":\"16\",\"designcolor\":\"#0a0aa8\",\"mainfontsize\":\"16\",\"maincolor\":\"#ffffff\",\"speed\":\"200\",\"autoplay\":\"true\",\"navigation\":\"false\",\"pagination\":\"true\",\"responsive\":\"true\",\"lazyload\":\"true\",\"enablejq\":\"false\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'MOD_OSDONATE', 'module', 'mod_osdonate', '', 0, 1, 0, 0, '{\"name\":\"MOD_OSDONATE\",\"type\":\"module\",\"creationDate\":\"November 03 2016\",\"author\":\"Joomlashack\",\"copyright\":\"Copyright (C) 2016 Open Source Training, LLC, All rights reserved\",\"authorEmail\":\"help@joomlashack.com\",\"authorUrl\":\"http:\\/\\/www.joomlashack.com\",\"version\":\"1.4.1\",\"description\":\"MOD_OSDONATE_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_osdonate\"}', '{\"open_new_window\":\"1\",\"business\":\"email@example.com\",\"pp_image\":\"https:\\/\\/www.paypal.com\\/en_US\\/i\\/btn\\/btn_donateCC_LG.gif\",\"locale\":\"en_US\",\"item_name\":\"Donate to example.com\",\"currencies\":\"USD,EUR,GBP,CHF,AUD,HKD,CAD,JPY,NZD,SGD,SEK,DKK,PLN,NONONOK,HUF,CZK,ILS,MXN\",\"show_text\":\"1\",\"show_amount\":\"1\",\"layout\":\"default\",\"intro_text\":\"Please consider supporting our efforts.\",\"amount_label\":\"Amount\",\"amount\":\"\",\"use_sticky_hover\":\"0\",\"horizontal_reference_side\":\"right\",\"horizontal_distance\":\"0\",\"vertical_reference_side\":\"bottom\",\"vertical_distance\":\"0\",\"width_of_sticky_hover\":\"200\",\"moduleclass_sfx\":\"\"}', '{\"author\":\"Joomlashack\"}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'Alledia Framework (Don\'t uninstall this if you\'re using an Alledia/Joomlashack extension)', 'library', 'allediaframework', '', 0, 1, 1, 0, '{\"name\":\"Alledia Framework (Don\'t uninstall this if you\'re using an Alledia\\/Joomlashack extension)\",\"type\":\"library\",\"creationDate\":\"November 03 2016\",\"author\":\"Alledia\",\"copyright\":\"Copyright (C) 2016 Open Source Training, LLC. All rights reserved.\",\"authorEmail\":\"support@alledia.com\",\"authorUrl\":\"https:\\/\\/www.alledia.com\",\"version\":\"1.5.5\",\"description\":\"Shared library for Alledia extensions\",\"group\":\"\",\"filename\":\"allediaframework\"}', '{}', '{\"author\":\"Joomlashack\"}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'plg_system_ossystem', 'plugin', 'ossystem', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_ossystem\",\"type\":\"plugin\",\"creationDate\":\"November 03 2016\",\"author\":\"Joomlashack\",\"copyright\":\"Copyright (C) 2016 Open Source Training, LLC. All rights reserved.\",\"authorEmail\":\"help@joomlashack.com\",\"authorUrl\":\"http:\\/\\/www.joomlashack.com\",\"version\":\"1.2.3\",\"description\":\"PLG_SYSTEM_OSSYSTEM_DESCRIPTION\",\"group\":\"\",\"filename\":\"ossystem\"}', '[]', '{\"author\":\"Joomlashack\"}', '', 0, '0000-00-00 00:00:00', 1, 0),
(10013, 0, 'Team Profiles', 'module', 'mod_team', '', 0, 1, 1, 0, '{\"name\":\"Team Profiles\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Michael Buluma\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"Team Profiles\",\"group\":\"\",\"filename\":\"mod_team\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'Bottom Footer', 'module', 'mod_bottom_footer', '', 0, 1, 1, 0, '{\"name\":\"Bottom Footer\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Michael Buluma\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"Bottom Footer - Social Media Links\",\"group\":\"\",\"filename\":\"mod_bottom_footer\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{\"name\":\"com_phocagallery\",\"type\":\"component\",\"creationDate\":\"26\\/07\\/2016\",\"author\":\"Jan Pavelka (www.phoca.cz)\",\"copyright\":\"Jan Pavelka\",\"authorEmail\":\"\",\"authorUrl\":\"www.phoca.cz\",\"version\":\"4.3.1\",\"description\":\"Phoca Gallery\",\"group\":\"\",\"filename\":\"phocagallery\"}', '{\"category_ordering\":\"1\",\"categories_description\":\"\",\"image_categories_size\":\"1\",\"categories_image_ordering\":\"10\",\"categories_display_avatar\":\"0\",\"display_subcategories\":\"1\",\"display_empty_categories\":\"0\",\"display_access_category\":\"0\",\"hide_categories\":\"\",\"show_categories\":\"\",\"default_pagination_categories\":\"0\",\"pagination_categories\":\"5,10,15,20,50\",\"categories_box_space\":\"0\",\"display_cat_desc_box\":\"0\",\"char_cat_length_name\":\"9\",\"categories_mosaic_images\":\"0\",\"display_image_categories\":\"1\",\"equal_percentage_width\":\"1\",\"categories_box_width\":\"33%\",\"categories_columns\":\"1\",\"image_ordering\":\"1\",\"display_new\":\"0\",\"display_hot\":\"0\",\"display_name\":\"1\",\"display_icon_detail\":\"1\",\"display_icon_download\":\"2\",\"char_length_name\":\"15\",\"category_box_space\":\"0\",\"display_categories_sub\":\"0\",\"display_subcat_page\":\"0\",\"display_category_icon_image\":\"0\",\"category_image_ordering\":\"10\",\"display_back_button\":\"1\",\"display_categories_back_button\":\"1\",\"default_pagination_category\":\"20\",\"pagination_category\":\"5,10,15,20,50\",\"display_img_desc_box\":\"0\",\"diff_thumb_height\":\"0\",\"display_categories_cv\":\"0\",\"display_subcat_page_cv\":\"0\",\"display_back_button_cv\":\"1\",\"display_categories_back_button_cv\":\"1\",\"switch_image\":\"0\",\"switch_width\":\"640\",\"switch_height\":\"480\",\"switch_fixed_size\":\"0\",\"enable_overlib\":\"0\",\"overlib_image_rate\":\"\",\"overlib_attributes\":\"BELOW, RIGHT, CSSCLASS, TEXTFONTCLASS, \'fontPhocaClass\', FGCLASS, \'fgPhocaClass\', BGCLASS, \'bgPhocaClass\', CAPTIONFONTCLASS,\'capfontPhocaClass\', CLOSEFONTCLASS, \'capfontclosePhocaClass\'\",\"display_category_statistics\":\"0\",\"display_main_cat_stat\":\"0\",\"display_lastadded_cat_stat\":\"1\",\"count_lastadded_cat_stat\":\"3\",\"display_mostviewed_cat_stat\":\"1\",\"count_mostviewed_cat_stat\":\"3\",\"display_camera_info\":\"0\",\"exif_information\":\"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED_Height,COMPUTED_Width,COMPUTED_IsColor,COMPUTED_ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp\",\"detail_window\":\"0\",\"modal_box_overlay_opacity\":\"0.3\",\"sb_slideshow_delay\":\"5\",\"sb_settings\":\"overlayColor: \'#000\',overlayOpacity:0.5,resizeDuration:0.35,displayCounter:true,displayNav:true\",\"highslide_class\":\"rounded-white\",\"highslide_opacity\":\"0\",\"highslide_outline_type\":\"rounded-white\",\"highslide_fullimg\":\"0\",\"highslide_close_button\":\"0\",\"highslide_slideshow\":\"1\",\"jak_slideshow_delay\":\"5\",\"jak_orientation\":\"none\",\"jak_description\":\"1\",\"jak_description_height\":\"10\",\"boxplus_theme\":\"lightsquare\",\"boxplus_bautocenter\":\"1\",\"boxplus_autofit\":\"1\",\"boxplus_slideshow\":\"0\",\"boxplus_loop\":\"0\",\"boxplus_captions\":\"bottom\",\"boxplus_thumbs\":\"inside\",\"boxplus_duration\":\"250\",\"boxplus_transition\":\"linear\",\"boxplus_contextmenu\":\"1\",\"enable_multibox\":\"0\",\"display_multibox\":[\"1\"],\"multibox_width\":\"980\",\"multibox_height\":\"560\",\"multibox_map_width\":\"280\",\"multibox_map_height\":\"300\",\"multibox_thubms_box_width\":\"300\",\"multibox_thubms_count\":\"4\",\"multibox_comments_width\":\"300\",\"multibox_comments_height\":\"600\",\"multibox_fixed_cols\":\"1\",\"ytb_display\":\"0\",\"display_description_detail\":\"0\",\"display_title_description\":\"0\",\"slideshow_delay\":\"3000\",\"slideshow_pause\":\"2000\",\"slideshow_random\":\"0\",\"slideshow_description\":\"peekaboo\",\"detail_buttons\":\"1\",\"youtube_api_key\":\"\",\"youtube_api_ssl\":\"1\",\"phocagallery_width\":\"\",\"phocagallery_center\":\"0\",\"responsive\":\"1\",\"bootstrap_icons\":\"0\",\"equal_heights\":\"0\",\"gallery_metadesc\":\"\",\"gallery_metakey\":\"\",\"alt_value\":\"1\",\"display_tags_links\":\"0\",\"tags_links\":\"0\",\"display_feed\":\"0\",\"feed_cat_ids\":\"\",\"feed_img_ordering\":\"6\",\"feed_img_count\":\"5\",\"feed_title\":\"\",\"enable_picasa_loading\":\"1\",\"picasa_load_pagination\":\"20\",\"enable_facebook_loading\":\"1\",\"fb_load_pagination\":\"25\",\"enable_cache\":\"0\",\"maps_api_key\":\"\",\"maps_api_ssl\":\"1\",\"display_categories_geotagging\":\"0\",\"categories_lng\":\"\",\"categories_lat\":\"\",\"categories_zoom\":\"2\",\"categories_map_width\":\"\",\"categories_map_height\":\"500\",\"display_icon_geotagging\":\"0\",\"display_category_geotagging\":\"0\",\"category_map_width\":\"\",\"category_map_height\":\"400\",\"display_icon_vm\":\"0\",\"enable_user_cp\":\"0\",\"enable_upload_avatar\":\"0\",\"enable_avatar_approve\":\"0\",\"enable_usercat_approve\":\"0\",\"enable_usersubcat_approve\":\"0\",\"enable_direct_subcat\":\"0\",\"user_subcat_count\":\"5\",\"max_create_cat_char\":\"1000\",\"user_ucp_lang\":\"1\",\"enable_userimage_approve\":\"0\",\"max_upload_char\":\"1000\",\"upload_maxsize\":\"3145728\",\"upload_maxres_width\":\"3072\",\"upload_maxres_height\":\"2304\",\"user_images_max_size\":\"20971520\",\"enable_multiple\":\"0\",\"multiple_upload_method\":\"4\",\"multiple_upload_chunk\":\"0\",\"multiple_resize_width\":\"-1\",\"multiple_resize_height\":\"-1\",\"enable_java\":\"-1\",\"java_box_width\":\"480\",\"java_box_height\":\"480\",\"youtube_upload\":\"0\",\"default_access\":\"1\",\"display_rating\":\"0\",\"display_rating_img\":\"0\",\"display_comment\":\"0\",\"display_comment_img\":\"0\",\"comment_width\":\"500\",\"max_comment_char\":\"1000\",\"display_comment_nopup\":\"0\",\"external_comment_system\":\"0\",\"fb_comment_user_id\":\"\",\"pagination_thumbnail_creation\":\"0\",\"clean_thumbnails\":\"0\",\"enable_thumb_creation\":\"1\",\"crop_thumbnail\":\"5\",\"additional_thumbnails\":\"0\",\"jpeg_quality\":\"85\",\"exif_rotate\":\"0\",\"large_image_width\":\"640\",\"large_image_height\":\"480\",\"medium_image_width\":\"200\",\"medium_image_height\":\"200\",\"small_image_width\":\"50\",\"small_image_height\":\"50\",\"front_modal_box_width\":\"680\",\"front_modal_box_height\":\"560\",\"create_watermark\":\"0\",\"watermark_position_x\":\"center\",\"watermark_position_y\":\"middle\",\"folder_permissions\":\"0755\",\"jfile_thumbs\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'plg_pages', 'plugin', 'pages', 'search', 0, 1, 1, 0, '{\"name\":\"plg_pages\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 10028, 'CEGCore2', 'library', 'cegcore2', '', 0, 1, 1, 0, '{\"name\":\"CEGCore2\",\"type\":\"library\",\"creationDate\":\"03.2017\",\"author\":\"ChronoEngine.com\",\"copyright\":\"Copyright (C) 2017\",\"authorEmail\":\"webmaster@chronoengine.com\",\"authorUrl\":\"www.chronoengine.com\",\"version\":\"2.0.1\",\"description\":\"The G2 framework classes!\",\"group\":\"\",\"filename\":\"cegcore2\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 10028, 'ChronoForms6', 'component', 'com_chronoforms6', '', 1, 1, 0, 0, '{\"name\":\"ChronoForms6\",\"type\":\"component\",\"creationDate\":\"July 2017\",\"author\":\"Chronoman\",\"copyright\":\"ChronoEngine.com 2006 - 2017\",\"authorEmail\":\"webmaster@chronoengine.com\",\"authorUrl\":\"www.chronoengine.com\",\"version\":\"6.0.6\",\"description\":\"Build all kinds of forms using Chronoforms.\",\"group\":\"\",\"filename\":\"chronoforms6\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 0, 'ChronoForms6 Package', 'package', 'pkg_chronoforms6', '', 0, 1, 1, 0, '{\"name\":\"ChronoForms6 Package\",\"type\":\"package\",\"creationDate\":\"2017\",\"author\":\"ChronoEngine.com Team\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"V6.0\",\"description\":\"ChronoForms6 extension package (Component + CEGCore2 library)\",\"group\":\"\",\"filename\":\"pkg_chronoforms6\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_fields`
--

CREATE TABLE `pfnbo_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_fields_categories`
--

CREATE TABLE `pfnbo_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_fields_groups`
--

CREATE TABLE `pfnbo_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_fields_values`
--

CREATE TABLE `pfnbo_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_filters`
--

CREATE TABLE `pfnbo_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links`
--

CREATE TABLE `pfnbo_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
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
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms0`
--

CREATE TABLE `pfnbo_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms1`
--

CREATE TABLE `pfnbo_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms2`
--

CREATE TABLE `pfnbo_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms3`
--

CREATE TABLE `pfnbo_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms4`
--

CREATE TABLE `pfnbo_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms5`
--

CREATE TABLE `pfnbo_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms6`
--

CREATE TABLE `pfnbo_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms7`
--

CREATE TABLE `pfnbo_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms8`
--

CREATE TABLE `pfnbo_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_terms9`
--

CREATE TABLE `pfnbo_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_termsa`
--

CREATE TABLE `pfnbo_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_termsb`
--

CREATE TABLE `pfnbo_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_termsc`
--

CREATE TABLE `pfnbo_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_termsd`
--

CREATE TABLE `pfnbo_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_termse`
--

CREATE TABLE `pfnbo_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_links_termsf`
--

CREATE TABLE `pfnbo_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_taxonomy`
--

CREATE TABLE `pfnbo_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pfnbo_finder_taxonomy`
--

INSERT INTO `pfnbo_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_taxonomy_map`
--

CREATE TABLE `pfnbo_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_terms`
--

CREATE TABLE `pfnbo_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_terms_common`
--

CREATE TABLE `pfnbo_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pfnbo_finder_terms_common`
--

INSERT INTO `pfnbo_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
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
('isn\'t', 'en'),
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
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
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
-- Table structure for table `pfnbo_finder_tokens`
--

CREATE TABLE `pfnbo_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_tokens_aggregate`
--

CREATE TABLE `pfnbo_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_finder_types`
--

CREATE TABLE `pfnbo_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_languages`
--

CREATE TABLE `pfnbo_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_languages`
--

INSERT INTO `pfnbo_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_menu`
--

CREATE TABLE `pfnbo_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_menu`
--

INSERT INTO `pfnbo_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 141, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 39, 44, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 40, 41, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 42, 43, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 45, 48, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 46, 47, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 49, 54, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 50, 51, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 52, 53, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 55, 56, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 57, 58, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 59, 60, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 61, 62, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 63, 64, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 65, 66, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 67, 68, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_sppagebuilder&view=page&id=1', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"Connecting High School Students, Equipping them and Inspiring them to be agents of Change\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"101\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 21, 22, 1, '*', 0),
(102, 'main', 'COM_SPPAGEBUILDER', 'com-sppagebuilder', '', 'com-sppagebuilder', 'index.php?option=com_sppagebuilder', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 69, 70, 0, '', 1),
(103, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_sppagebuilder&view=page&id=2', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 23, 26, 0, '*', 0),
(104, 'mainmenu', 'Our Approaches', 'our-approaches', '', 'our-approaches', 'index.php?option=com_sppagebuilder&view=page&id=3', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"Our Approaches\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 27, 28, 0, '*', 0),
(105, 'mainmenu', 'The Team', 'the-team', '', 'the-team', 'index.php?option=com_sppagebuilder&view=page&id=4', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 29, 30, 0, '*', 0),
(106, 'mainmenu', 'Get Involved', 'get-involved', '', 'get-involved', 'index.php?option=com_sppagebuilder&view=page&id=6', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 33, 34, 0, '*', 0),
(107, 'mainmenu', 'Donate', 'donate', '', 'donate', 'index.php?option=com_sppagebuilder&view=page&id=7', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"Donate\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 35, 36, 0, '*', 0),
(108, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"add_mailto_link\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"103\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 37, 38, 0, '*', 0),
(109, 'mainmenu', 'Media', 'ke-media', '', 'ke-media', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 369, '2017-07-30 13:52:42', 0, 1, ' ', 9, '{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"Media\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"109\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 31, 32, 0, '*', 0),
(110, 'mainmenu', 'test', 'test', '', 'about-us/test', '#', 'url', 0, 103, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 24, 25, 0, '*', 0),
(111, 'main', 'COM_TLPTESTIMONIAL', 'com-tlptestimonial', '', 'com-tlptestimonial', 'index.php?option=com_tlptestimonial', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlptestimonial/assets/images/s_com_tlptestimonial.png', 0, '{}', 71, 78, 0, '', 1),
(112, 'main', 'COM_TLPTESTIMONIAL_TITLE_TESTIMONIALS', 'com-tlptestimonial-title-testimonials', '', 'com-tlptestimonial/com-tlptestimonial-title-testimonials', 'index.php?option=com_tlptestimonial&view=testimonials', 'component', 1, 111, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlptestimonial/assets/images/s_testimonials.png', 0, '{}', 72, 73, 0, '', 1),
(113, 'main', 'COM_TLPTESTIMONIAL_TITLE_CATEGORIES', 'com-tlptestimonial-title-categories', '', 'com-tlptestimonial/com-tlptestimonial-title-categories', 'index.php?option=com_tlptestimonial&view=categories', 'component', 1, 111, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlptestimonial/assets/images/s_categories.png', 0, '{}', 74, 75, 0, '', 1),
(114, 'main', 'COM_TLPTESTIMONIAL_TITLE_SETTINGS', 'com-tlptestimonial-title-settings', '', 'com-tlptestimonial/com-tlptestimonial-title-settings', 'index.php?option=com_tlptestimonial&view=settings', 'component', 1, 111, 2, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlptestimonial/assets/images/s_settings.png', 0, '{}', 76, 77, 0, '', 1),
(115, 'footer-a', 'Home', 'ke-home', '', 'ke-home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"101\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"115\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 79, 80, 0, '*', 0),
(116, 'footer-a', 'About', 'about', '', 'about', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"103\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"116\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 81, 82, 0, '*', 0),
(117, 'footer-a', 'Our Approaches', 'approaches', '', 'approaches', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"104\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"116\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 83, 84, 0, '*', 0),
(118, 'footer-a', 'The Team', 'team', '', 'team', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"105\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"116\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 85, 86, 0, '*', 0),
(119, 'footer-a', 'Resources', 'resources', '', 'resources', 'index.php?option=com_sppagebuilder&view=page&id=8', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"116\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 87, 88, 0, '*', 0),
(120, 'footer-b', 'Get Involved', 'get-involved-with-us', '', 'get-involved-with-us', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"106\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"120\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 11, 12, 0, '*', 0),
(121, 'footer-b', 'Donate', 'donate-2', '', 'donate-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"107\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"120\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 13, 14, 0, '*', 0),
(122, 'footer-b', 'Help', 'help', '', 'help', 'index.php?option=com_sppagebuilder&view=page&id=9', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"120\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 17, 18, 0, '*', 0),
(123, 'footer-b', 'Contact Us', 'contact', '', 'contact', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"108\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"120\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 19, 20, 0, '*', 0),
(124, 'footer-b', 'Media', 'media-2', '', 'media-2', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"aliasoptions\":\"109\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"124\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 15, 16, 0, '*', 0),
(125, 'footer-c', 'FAQs', 'faqs', '', 'faqs', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 89, 90, 0, '*', 0),
(126, 'footer-c', 'Terms and Conditions', 'terms-and-conditions', '', 'terms-and-conditions', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"125\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 91, 92, 0, '*', 0),
(127, 'footer-c', 'Privacy Policy', 'privacy-policy', '', 'privacy-policy', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"125\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 93, 94, 0, '*', 0),
(128, 'footer-c', 'Disclaimer Notice', 'disclaimer-notice', '', 'disclaimer-notice', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"125\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 95, 96, 0, '*', 0),
(129, 'footer-c', 'Sitemap', 'sitemap', '', 'sitemap', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"125\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 97, 98, 0, '*', 0),
(130, 'main', 'COM_PHOCAGALLERY', 'com-phocagallery', '', 'com-phocagallery', 'index.php?option=com_phocagallery', 'component', 1, 1, 1, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu.png', 0, '{}', 99, 126, 0, '', 1),
(131, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com-phocagallery-controlpanel', '', 'com-phocagallery/com-phocagallery-controlpanel', 'index.php?option=com_phocagallery', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-control-panel.png', 0, '{}', 100, 101, 0, '', 1),
(132, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com-phocagallery-images', '', 'com-phocagallery/com-phocagallery-images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-gal.png', 0, '{}', 102, 103, 0, '', 1),
(133, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com-phocagallery-categories', '', 'com-phocagallery/com-phocagallery-categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-cat.png', 0, '{}', 104, 105, 0, '', 1),
(134, 'main', 'COM_PHOCAGALLERY_THEMES', 'com-phocagallery-themes', '', 'com-phocagallery/com-phocagallery-themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-theme.png', 0, '{}', 106, 107, 0, '', 1),
(135, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com-phocagallery-categoryrating', '', 'com-phocagallery/com-phocagallery-categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote.png', 0, '{}', 108, 109, 0, '', 1),
(136, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com-phocagallery-imagerating', '', 'com-phocagallery/com-phocagallery-imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote-img.png', 0, '{}', 110, 111, 0, '', 1),
(137, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com-phocagallery-categorycomments', '', 'com-phocagallery/com-phocagallery-categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment.png', 0, '{}', 112, 113, 0, '', 1),
(138, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com-phocagallery-imagecomments', '', 'com-phocagallery/com-phocagallery-imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment-img.png', 0, '{}', 114, 115, 0, '', 1),
(139, 'main', 'COM_PHOCAGALLERY_USERS', 'com-phocagallery-users', '', 'com-phocagallery/com-phocagallery-users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-users.png', 0, '{}', 116, 117, 0, '', 1),
(140, 'main', 'COM_PHOCAGALLERY_FB', 'com-phocagallery-fb', '', 'com-phocagallery/com-phocagallery-fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-fb.png', 0, '{}', 118, 119, 0, '', 1),
(141, 'main', 'COM_PHOCAGALLERY_TAGS', 'com-phocagallery-tags', '', 'com-phocagallery/com-phocagallery-tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-tags.png', 0, '{}', 120, 121, 0, '', 1),
(142, 'main', 'COM_PHOCAGALLERY_STYLES', 'com-phocagallery-styles', '', 'com-phocagallery/com-phocagallery-styles', 'index.php?option=com_phocagallery&view=phocagalleryefs', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-styles.png', 0, '{}', 122, 123, 0, '', 1),
(143, 'main', 'COM_PHOCAGALLERY_INFO', 'com-phocagallery-info', '', 'com-phocagallery/com-phocagallery-info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 1, 130, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-info.png', 0, '{}', 124, 125, 0, '', 1),
(144, 'other-links', 'Photos and Videos', 'photos-and-videos', '', 'photos-and-videos', 'index.php?option=com_phocagallery&view=category&id=1', 'component', 1, 1, 1, 10015, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_pagination_categories\":\"0\",\"show_pagination_category\":\"1\",\"show_pagination_limit_categories\":\"0\",\"show_pagination_limit_category\":\"1\",\"show_ordering_categories\":\"0\",\"show_ordering_images\":\"1\",\"display_menu_link_title\":\"1\",\"display_cat_name_title\":\"1\",\"display_cat_name_breadcrumbs\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"144\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 127, 128, 0, '*', 0),
(148, 'other-links', 'Volunteer Application', 'volunteer-application', '', 'volunteer-application', 'index.php?option=com_chronoforms6&view=form', 'component', 1, 1, 1, 10027, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"form_name\":\"volunteer-application\",\"form_params\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"148\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 129, 130, 0, '*', 0),
(157, 'main', 'COM_CHRONOFORMS6', 'com-chronoforms6', '', 'com-chronoforms6', 'index.php?option=com_chronoforms6', 'component', 1, 1, 1, 10027, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_chronoforms6/CF.png', 0, '{}', 135, 140, 0, '', 1),
(158, 'main', 'COM_CHRONOFORMS6', 'com-chronoforms6', '', 'com-chronoforms6/com-chronoforms6', 'index.php?option=com_chronoforms6', 'component', 1, 157, 2, 10027, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 136, 137, 0, '', 1),
(159, 'main', 'COM_CHRONOFORMS6_VALIDATE', 'com-chronoforms6-validate', '', 'com-chronoforms6/com-chronoforms6-validate', 'index.php?option=com_chronoforms6&act=validateinstall', 'component', 1, 157, 2, 10027, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 138, 139, 0, '', 1),
(160, 'other-links', 'Mentor Application', 'mentor-application', '', 'mentor-application', 'index.php?option=com_chronoforms6&view=form', 'component', 1, 1, 1, 10027, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"form_name\":\"mentor-application\",\"form_params\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"148\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 131, 132, 0, '*', 0),
(161, 'other-links', 'Intern Application', 'intern-application', '', 'intern-application', 'index.php?option=com_chronoforms6&view=form', 'component', 1, 1, 1, 10027, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"form_name\":\"intern-application\",\"form_params\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"148\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}', 133, 134, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_menu_types`
--

CREATE TABLE `pfnbo_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_menu_types`
--

INSERT INTO `pfnbo_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 67, 'footer-a', 'Footer A', 'Footer A', 0),
(3, 68, 'footer-b', 'Footer B', 'Footer B', 0),
(4, 69, 'footer-c', 'Footer C', 'Footer C', 0),
(5, 83, 'other-links', 'Other Links', 'Other Links in the website', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_messages`
--

CREATE TABLE `pfnbo_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_messages_cfg`
--

CREATE TABLE `pfnbo_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_modules`
--

CREATE TABLE `pfnbo_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_modules`
--

INSERT INTO `pfnbo_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 56, 'SP Page Builder', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder_icons', 1, 1, '', 1, '*'),
(88, 57, 'SP Page Builder Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder_admin_menu', 1, 1, '', 1, '*'),
(89, 58, 'Social Media', '', '<p><img src=\"images/Screen-Shot-2017-07-27-at-21.21.34.png\" alt=\"\" /></p>', 1, 'social-media', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(90, 59, 'Search', '', '', 1, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{\"label\":\"\",\"width\":\"\",\"text\":\"Search this site\",\"button\":\"1\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_search pull-right\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 60, 'OffCanvas Menu', '', '', 1, 'offcanvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 61, 'Partners', '', '<div class=\"col-md-3\"><img src=\"images/srilanka.jpg\" alt=\"\" /></div>\r\n<div class=\"col-md-3\"><img src=\"images/srilanka.jpg\" alt=\"\" /></div>\r\n<div class=\"col-md-3\"><img src=\"images/srilanka.jpg\" alt=\"\" /></div>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 62, 'Footer Social Media', '', '<p><img src=\"images/Screen-Shot-2017-07-27-at-23.29.15.png\" alt=\"\" /></p>', 1, 'Footer-social-media', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(94, 63, 'Built By', '', '<p>Built by Red Brumbies</p>', 1, 'built-by', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(95, 64, 'Home Links', '', '', 1, 'home_links', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_home_links', 1, 1, '{\"firsttabtitle\":\"Kenya Moja Conference 2017\",\"firsttabimg\":\"images\\/Screen-Shot-2017-07-31-at-01.11.20.png\",\"firsttablink\":\"ke-media\",\"secondtabtitle\":\"Photos & Videos\",\"secondtabimg\":\"images\\/image-2.jpg\",\"secondtablink\":\"photos-and-videos\",\"thirdtabtitle\":\"Our Approaches\",\"thirdtabimg\":\"images\\/Screen-Shot-2017-07-31-at-01.13.36.png\",\"thirdtablink\":\"our-approaches\",\"fourthtabtitle\":\"Get Involved\",\"fourthtabimg\":\"images\\/Screen-Shot-2017-07-31-at-01.15.00.png\",\"fourthtablink\":\"get-involved\",\"fifthtabtitle\":\"Volunteeer Experience\",\"fifthtabimg\":\"images\\/Screen-Shot-2017-07-31-at-01.18.13.png\",\"fifthtablink\":\"get-involved\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(96, 66, 'TLP Testimonial', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-07-30 04:35:38', '0000-00-00 00:00:00', 1, 'mod_tlptestimonial', 1, 1, '{\"moduleclass_sfx\":\"\",\"category\":\"0\",\"testimonialcount\":\"4\",\"showno\":\"1\",\"ordering\":\"id\",\"readmore\":\"0\",\"readmore_text\":\"more\",\"character_limit\":\"100\",\"testimonialmenuid\":\"101\",\"backgroundimage\":\"\",\"imgborder\":\"5\",\"imgbordercolor\":\"#e81717\",\"namefontsize\":\"20\",\"namecolor\":\"#ffffff\",\"designfontsize\":\"20\",\"designcolor\":\"#0a0aa8\",\"mainfontsize\":\"20\",\"maincolor\":\"#ffffff\",\"speed\":\"200\",\"autoplay\":\"false\",\"navigation\":\"false\",\"pagination\":\"true\",\"responsive\":\"true\",\"lazyload\":\"true\",\"enablejq\":\"false\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(97, 70, 'Footer A', '', '', 1, 'footer_menu_a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"footer-a\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(98, 71, 'Footer B', '', '', 1, 'footer_menu_b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"footer-b\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(99, 72, 'Footer C', '', '', 1, 'footer_menu_c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"footer-c\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"1\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(100, 73, 'Footer Logo', '', '<p><img src=\"images/Logos_For_Movements-02.png\" alt=\"\" /></p>', 1, 'footer_logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(101, 78, 'Donate', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_osdonate', 1, 0, '{\"open_new_window\":\"1\",\"return\":\"107\",\"cancel_return\":\"115\",\"business\":\"paypal@buluma.me.ke\",\"image_url\":\"\",\"pp_image\":\"https:\\/\\/www.paypal.com\\/en_US\\/i\\/btn\\/btn_donateCC_LG.gif\",\"locale\":\"en_US\",\"item_name\":\"Donate to Kenya Unites\",\"currencies\":\"USD,EUR,GBP,CHF,AUD,HKD,CAD,JPY,NZD,SGD,SEK,DKK,PLN,NONONOK,HUF,CZK,ILS,MXN\",\"show_text\":\"1\",\"show_amount\":\"1\",\"layout\":\"_:default\",\"intro_text\":\"Please consider supporting our efforts.\",\"amount_label\":\"Amount\",\"amount\":\"\",\"use_sticky_hover\":\"0\",\"horizontal_reference_side\":\"right\",\"horizontal_distance\":\"0\",\"vertical_reference_side\":\"bottom\",\"vertical_distance\":\"0\",\"width_of_sticky_hover\":\"200\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(102, 79, 'Jane Doe', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_team', 1, 0, '{\"staff_name\":\"John Doe\",\"staff_image\":\"images\\/team2.jpg\",\"staff_title\":\"Director\",\"staff_desc\":\"Some text that describes me lorem ipsum ipsum lorem.\",\"staff_email\":\"johndoe@example.com\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(103, 80, 'Bottom Footer - Social Media', '', '', 1, 'bottom_footer_social', 0, '0000-00-00 00:00:00', '2017-07-30 21:05:26', '0000-00-00 00:00:00', 1, 'mod_bottom_footer', 1, 0, '{\"facebook_link\":\"KenyaUnites\",\"facebook_icon\":\"\",\"twitter_link\":\"KenyaUnites\",\"twitter_icon\":\"\",\"linkedin_link\":\"KeUnites \",\"linkedin_icon\":\"\",\"gplus_link\":\"KenyaUnites\",\"gplus_icon\":\"\",\"youtube_link\":\"KenyaUnites\",\"youtube_icon\":\"\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(104, 81, 'Jane Doe', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-07-31 09:48:13', '0000-00-00 00:00:00', 1, 'mod_team', 1, 0, '{\"staff_name\":\"Jane Doe\",\"staff_image\":\"images\\/team1.jpg\",\"staff_title\":\"CEO & Founder\",\"staff_desc\":\"Some text that describes me lorem ipsum ipsum lorem.xx\",\"staff_email\":\"janedoe@example.com\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_modules_menu`
--

CREATE TABLE `pfnbo_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_modules_menu`
--

INSERT INTO `pfnbo_modules_menu` (`moduleid`, `menuid`) VALUES
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
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 101),
(96, 101),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(102, 105),
(103, 0),
(104, 105);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_newsfeeds`
--

CREATE TABLE `pfnbo_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_overrider`
--

CREATE TABLE `pfnbo_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery`
--

CREATE TABLE `pfnbo_phocagallery` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_phocagallery`
--

INSERT INTO `pfnbo_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `format`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(1, 1, 0, 'Photos', 'photos', 'image-2.jpg', 1, '', '2017-08-01 10:32:29', 8, '', '', 0, '', 0, '', 0, 254045, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', NULL, '||_self|1', '||_self|1', '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_categories`
--

CREATE TABLE `pfnbo_phocagallery_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `image_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_phocagallery_categories`
--

INSERT INTO `pfnbo_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `image_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 0, 0, 0, 'Photos', '', 'photos', '', '', '', '', '2017-08-01 10:27:34', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 20, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(2, 0, 0, 0, 'Videos', '', 'videos', '', '', '', '', '2017-08-01 10:27:42', 0, 1, 0, '0000-00-00 00:00:00', NULL, 2, 1, 0, 0, '0', '0', '0', '', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_comments`
--

CREATE TABLE `pfnbo_phocagallery_comments` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_fb_users`
--

CREATE TABLE `pfnbo_phocagallery_fb_users` (
  `id` int(11) NOT NULL,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_img_comments`
--

CREATE TABLE `pfnbo_phocagallery_img_comments` (
  `id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_img_votes`
--

CREATE TABLE `pfnbo_phocagallery_img_votes` (
  `id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_img_votes_statistics`
--

CREATE TABLE `pfnbo_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_styles`
--

CREATE TABLE `pfnbo_phocagallery_styles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_phocagallery_styles`
--

INSERT INTO `pfnbo_phocagallery_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 'Phocagallery', 'phocagallery', 'phocagallery.css', '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(2, 'Rating', '', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
(3, 'Default', '', 'default.css', NULL, 2, 1, 0, '0000-00-00 00:00:00', 3, NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_tags`
--

CREATE TABLE `pfnbo_phocagallery_tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_tags_ref`
--

CREATE TABLE `pfnbo_phocagallery_tags_ref` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_user`
--

CREATE TABLE `pfnbo_phocagallery_user` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_votes`
--

CREATE TABLE `pfnbo_phocagallery_votes` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_phocagallery_votes_statistics`
--

CREATE TABLE `pfnbo_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_postinstall_messages`
--

CREATE TABLE `pfnbo_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_postinstall_messages`
--

INSERT INTO `pfnbo_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_redirect_links`
--

CREATE TABLE `pfnbo_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_schemas`
--

CREATE TABLE `pfnbo_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_schemas`
--

INSERT INTO `pfnbo_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.7.4-2017-07-05'),
(10004, '2.0-2016-11-04'),
(10015, '4.3.0');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_session`
--

CREATE TABLE `pfnbo_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_session`
--

INSERT INTO `pfnbo_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('e65cb86a829b8a3436cee1fd76a433d0', 0, 1, '1501870835', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo5O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwMTg2OTkxMDtzOjQ6Imxhc3QiO2k6MTUwMTg3MDgzMztzOjM6Im5vdyI7aToxNTAxODcwODM0O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_spmedia`
--

CREATE TABLE `pfnbo_spmedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `caption` varchar(2048) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `extension` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_spmedia`
--

INSERT INTO `pfnbo_spmedia` (`id`, `title`, `path`, `thumb`, `alt`, `caption`, `description`, `type`, `extension`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(2, 'screen-shot-2017-07-27-at-22.39.22', 'images/2017/07/27/screen-shot-2017-07-27-at-22.39.22.png', 'images/2017/07/27/_spmedia_thumbs/screen-shot-2017-07-27-at-22.39.22.png', 'screen-shot-2017-07-27-at-22.39.22', '', '', 'image', 'com_sppagebuilder', '2017-07-27 19:39:54', 369, '0000-00-00 00:00:00', 0),
(5, 'image-one', 'images/2017/07/27/image-one.jpg', 'images/2017/07/27/_spmedia_thumbs/image-one.jpg', 'image-one', '', '', 'image', 'com_sppagebuilder', '2017-07-27 20:14:52', 369, '0000-00-00 00:00:00', 0),
(6, 'image-2', 'images/2017/07/27/image-2.jpg', 'images/2017/07/27/_spmedia_thumbs/image-2.jpg', 'image-2', '', '', 'image', 'com_sppagebuilder', '2017-07-27 20:17:53', 369, '0000-00-00 00:00:00', 0),
(7, 'gu-logo', 'images/2017/07/27/gu-logo.jpg', 'images/2017/07/27/_spmedia_thumbs/gu-logo.jpg', 'gu-logo', '', '', 'image', 'com_sppagebuilder', '2017-07-27 20:22:19', 369, '0000-00-00 00:00:00', 0),
(8, 'banner01', 'images/2017/07/27/banner01.png', 'images/2017/07/27/_spmedia_thumbs/banner01.png', 'banner01', '', '', 'image', 'com_sppagebuilder', '2017-07-27 22:02:57', 369, '0000-00-00 00:00:00', 0),
(9, 'uganda-unites', 'images/2017/07/30/uganda-unites.png', '', 'uganda-unites', '', '', 'image', 'com_sppagebuilder', '2017-07-30 05:31:44', 369, '0000-00-00 00:00:00', 0),
(10, 'congo-unites', 'images/2017/07/30/congo-unites.png', '', 'congo-unites', '', '', 'image', 'com_sppagebuilder', '2017-07-30 05:31:47', 369, '0000-00-00 00:00:00', 0),
(11, 'srilanka', 'images/2017/07/30/srilanka.jpg', '', 'srilanka', '', '', 'image', 'com_sppagebuilder', '2017-07-30 05:32:28', 369, '0000-00-00 00:00:00', 0),
(12, 'global-unites', 'images/2017/07/30/global-unites.png', 'images/2017/07/30/_spmedia_thumbs/global-unites.png', 'global-unites', '', '', 'image', 'com_sppagebuilder', '2017-07-30 05:34:44', 369, '0000-00-00 00:00:00', 0),
(13, 'logos_for_movements-02', 'images/2017/07/30/logos_for_movements-02.png', 'images/2017/07/30/_spmedia_thumbs/logos_for_movements-02.png', 'logos_for_movements-02', '', '', 'image', 'com_sppagebuilder', '2017-07-30 12:39:06', 369, '0000-00-00 00:00:00', 0),
(14, 'logos_for_movements-04', 'images/2017/07/30/logos_for_movements-04.png', 'images/2017/07/30/_spmedia_thumbs/logos_for_movements-04.png', 'logos_for_movements-04', '', '', 'image', 'com_sppagebuilder', '2017-07-30 12:40:27', 369, '0000-00-00 00:00:00', 0),
(15, 'kenya-unites-logo', 'images/2017/07/30/kenya-unites-logo.png', 'images/2017/07/30/_spmedia_thumbs/kenya-unites-logo.png', 'kenya-unites-logo', '', '', 'image', 'com_sppagebuilder', '2017-07-30 12:41:21', 369, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_sppagebuilder`
--

CREATE TABLE `pfnbo_sppagebuilder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `catid` int(10) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `og_title` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `css` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_sppagebuilder`
--

INSERT INTO `pfnbo_sppagebuilder` (`id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(1, 'Home', '[{\"id\":1501178150260,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"1\",\"no_gutter\":\"0\",\"id\":\"banner_section\",\"class\":\"\",\"padding\":\"0px 0px 0px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1501178150261,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"color\":\"\",\"background\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"padding\":\"\",\"class\":\"row-fluid\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1501189891429,\"name\":\"carousel\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"autoplay\":\"0\",\"interval\":\"5\",\"controllers\":\"1\",\"arrows\":\"0\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"sp_carousel_item\":[{\"title\":\"Equip.Connect.Inspire\",\"content\":\"\",\"bg\":\"images/2017/07/27/banner01.png\",\"button_text\":\"Find out more\",\"button_fontstyle\":null,\"button_letterspace\":\"0\",\"button_url\":\"#\",\"button_target\":\"\",\"button_type\":\"custom\",\"button_appearance\":\"\",\"button_background_color\":\"rgba(0, 0, 0, 1)\",\"button_color\":\"#ffffff\",\"button_background_color_hover\":\"#222222\",\"button_color_hover\":\"#ffffff\",\"button_size\":\"\",\"button_shape\":\"square\",\"button_block\":\"\",\"button_icon\":\"fa-angle-right\",\"button_icon_position\":\"right\"},{\"title\":\"Equip.Connect.Inspire\",\"content\":\"\",\"bg\":\"images/2017/07/27/banner01.png\",\"button_text\":\"Find out more\",\"button_fontstyle\":null,\"button_letterspace\":\"0\",\"button_url\":\"#\",\"button_target\":\"\",\"button_type\":\"custom\",\"button_appearance\":\"\",\"button_background_color\":\"rgba(0, 0, 0, 1)\",\"button_color\":\"#ffffff\",\"button_background_color_hover\":\"#222222\",\"button_color_hover\":\"#ffffff\",\"button_size\":\"\",\"button_shape\":\"square\",\"button_block\":\"\",\"button_icon\":\"fa-angle-right\",\"button_icon_position\":\"right\"},{\"title\":\"Equip.Connect.Inspire\",\"content\":\"\",\"bg\":\"images/2017/07/27/banner01.png\",\"button_text\":\"Find out more\",\"button_fontstyle\":null,\"button_letterspace\":\"0\",\"button_url\":\"#\",\"button_target\":\"\",\"button_type\":\"custom\",\"button_appearance\":\"\",\"button_background_color\":\"rgba(0, 0, 0, 1)\",\"button_color\":\"#ffffff\",\"button_background_color_hover\":\"#222222\",\"button_color_hover\":\"#ffffff\",\"button_size\":\"\",\"button_shape\":\"square\",\"button_block\":\"\",\"button_icon\":\"fa-angle-right\",\"button_icon_position\":\"right\"}],\"global_text_color\":\"rgba(255, 255, 255, 1)\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"0px 0px 0px 0px\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501184935902,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"kenya-unites text\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"28px 0px 10px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1501184935903,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501184935906,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<p class=\\\"p1\\\"><span class=\\\"s1\\\">Kenya Unites</span> is a youth led volunteer movement. We <strong>connect</strong> high school students across the country, <strong>equip</strong> them and <strong>inspire</strong> them to participate in the community as agents of change.</p>\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501184935907,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0px 0px 0px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"3,6,3\",\"columns\":[{\"id\":1501184935908,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[]},{\"id\":1501184935909,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501184935913,\"name\":\"divider\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"divider_type\":\"border\",\"divider_image\":\"\",\"background_repeat\":\"no-repeat\",\"divider_height\":\"10\",\"border_style\":\"solid\",\"border_width\":\"1\",\"border_color\":\"#eeeeee\",\"margin_top\":\"30\",\"margin_bottom\":\"30\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501184935916,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Kenya Unites at a Glance\",\"heading_selector\":\"h2\",\"title_fontsize\":\"28\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"bold\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<p class=\\\"p2\\\">See what <strong>Kenya Unites</strong> has to offer you</p>\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501184935910,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[]}]},{\"id\":1501184935923,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"_1040\",\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1501184935924,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501386384004,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"95\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501184935938,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"See what people say\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"0\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"testimonial\",\"class\":\"\",\"padding\":\"25px 0px 25px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"rgba(255, 255, 255, 1)\",\"background_color\":\"rgba(43, 155, 43, 1)\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1501184935939,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501389346509,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"96\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501184935943,\"visibility\":true,\"collapse\":false,\"settings\":{\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\"},\"layout\":\"3,3,3,3\",\"columns\":[{\"id\":1501184935944,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501184935948,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images/2017/07/30/global-unites.png\",\"alt_text\":\"\",\"position\":\"sppb-text-center\",\"open_lightbox\":\"0\",\"overlay_color\":\"rgba(119, 219, 31, 0.5)\",\"link\":\"\",\"target\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501184935945,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501391867811,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images/2017/07/30/srilanka.jpg\",\"alt_text\":\"\",\"position\":\"sppb-text-center\",\"open_lightbox\":\"0\",\"overlay_color\":\"rgba(119, 219, 31, 0.5)\",\"link\":\"\",\"target\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501391867799,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501391867806,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images/2017/07/30/congo-unites.png\",\"alt_text\":\"\",\"position\":\"sppb-text-center\",\"open_lightbox\":\"0\",\"overlay_color\":\"rgba(119, 219, 31, 0.5)\",\"link\":\"\",\"target\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501391867800,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501391867803,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images/2017/07/30/uganda-unites.png\",\"alt_text\":\"\",\"position\":\"sppb-text-center\",\"open_lightbox\":\"0\",\"overlay_color\":\"rgba(119, 219, 31, 0.5)\",\"link\":\"\",\"target\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-27 18:01:56', 369, '2017-07-30 14:54:33', 369, 0, '0000-00-00 00:00:00', '', '', '', '*', 463, ''),
(2, 'About Us', '[{\"id\":1501418310720,\"visibility\":true,\"collapse\":false,\"settings\":{\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\"},\"layout\":\"6,6\",\"columns\":[{\"id\":1501418310721,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501418310737,\"name\":\"image\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"image\":\"images/2017/07/30/logos_for_movements-02.png\",\"alt_text\":\"\",\"position\":\"sppb-text-center\",\"open_lightbox\":\"0\",\"overlay_color\":\"rgba(119, 219, 31, 0.5)\",\"link\":\"\",\"target\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501418310722,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501418310732,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<p><strong>About Us</strong></p>\\n<p>Kenya Unites is a youth led volunteer movement. We connect high school students across the country, equip them for peace building and conflict transformation and inspire them to participate in the community as agents of change.<br /><br /></p>\\n<p><strong>Our Vision</strong></p>\\n<p>Interdependent, stable communities coexisting peacefully in Kenya<br /><br /></p>\\n<p><strong>Our Mission</strong></p>\\n<p>To connect high school youth from all ethnic and religious backgrounds in Kenya in a movement that inspires hope and promotes reconciliation, equipping them in relational peace building, conflict transformation and inspiring them towards social engagement and community participation.</p>\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:36:49', 369, '2017-07-30 12:43:48', 369, 0, '0000-00-00 00:00:00', '', '', '', '*', 59, ''),
(3, 'Our Approaches', '[{\"id\":1501419163976,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"Approaches (Why, What, How, When, Where)\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-left\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0px 0px 0px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1501419163977,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501419163980,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"<p><strong>We value and promote:</strong></p>\\n<p>Social Inclusion, Empowerment, Influence, Volunteerism and Enthusiasm</p>\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501419163981,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"20px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"3,3,3,3\",\"columns\":[{\"id\":1501419163982,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501603206166,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"Kenya Moja Conference\",\"title\":\"Kenya Moja Conference\",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"image\",\"feature_image\":\"images/2017/07/27/image-2.jpg\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501603206181,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"text\":\"View More\",\"alignment\":\"sppb-text-left\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"target\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"\",\"shape\":\"square\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501419163983,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501419163997,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Peace Club Handbook \",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"image\",\"feature_image\":\"images/2017/07/27/image-2.jpg\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"This is a personal development toolkit and a comprehensive syllabus designed to empower the youth in high schools to become agents of change, equipped in conflict resolution, positive national building and will help them become responsible leaders of Kenya today\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501603206199,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"text\":\"View More\",\"alignment\":\"sppb-text-left\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"target\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"\",\"shape\":\"square\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501419163984,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501419163994,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"School Relations Tour \",\"title\":\"School Relations Tour \",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"image\",\"feature_image\":\"images/2017/07/27/image-2.jpg\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities’ champions of change projects and is conducted by Kenya Unites mentors.\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501603206196,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"text\":\"View More\",\"alignment\":\"sppb-text-left\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"target\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"\",\"shape\":\"square\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501419163985,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501419163991,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Innovative Peace Centers\",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"image\",\"feature_image\":\"images/2017/07/27/image-2.jpg\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"These are community based centers accessible to local communities where they can gain vocational training\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501603206207,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"text\":\"View More\",\"alignment\":\"sppb-text-left\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"\",\"target\":\"\",\"type\":\"default\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"\",\"shape\":\"square\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:37:02', 369, '2017-08-01 16:17:33', 369, 0, '0000-00-00 00:00:00', '', '', '', '*', 60, '');
INSERT INTO `pfnbo_sppagebuilder` (`id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(4, 'The Team', '[{\"id\":1501421016794,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"Board Members\",\"title\":\"Board Members\",\"heading_selector\":\"h5\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"25\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-left\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0px 0px 0px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"4,4,4\",\"columns\":[{\"id\":1501421016795,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501428238439,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"102\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501429847197,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501429847206,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"104\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501429847198,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501429847203,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"102\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501421016807,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"National Secretariat\",\"title\":\"National Secretariat\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-left\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"20px 0px 0px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"6,6\",\"columns\":[{\"id\":1501421016808,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501429243218,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"102\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501429847207,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501429847210,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"102\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501421016820,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"Affiliate Nations \",\"title\":\"Affiliate Nations \",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-left\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"20px 0px 0px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"3,3,3,3\",\"columns\":[{\"id\":1501421016821,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501421016827,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"Sri Lanka\",\"title\":\"Sri Lanka\",\"heading_selector\":\"h3\",\"title_position\":\"before\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501421016822,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501421016830,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"DRCongo\",\"title\":\"DRCongo\",\"heading_selector\":\"h3\",\"title_position\":\"before\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501421016823,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501421016833,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"Liberia\",\"title\":\"Liberia\",\"heading_selector\":\"h3\",\"title_position\":\"before\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501421016824,\"class_name\":\"col-md-3\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501421016836,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"Uganda\",\"title\":\"Uganda\",\"heading_selector\":\"h3\",\"title_position\":\"before\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"\",\"icon_size\":\"36\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]},{\"id\":1501428238435,\"visibility\":true,\"collapse\":false,\"settings\":{\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\"},\"layout\":\"12\",\"columns\":[{\"id\":1501428238436,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{},\"addons\":[]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:37:14', 369, '2017-07-31 09:48:28', 369, 0, '0000-00-00 00:00:00', '', '', '', '*', 109, ''),
(5, 'Media', '[]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '0000-00-00 00:00:00', 0, '2017-07-30 11:37:29', 369, 0, '0000-00-00 00:00:00', '', '', '', '*', 0, ''),
(6, 'Get Involved', '[{\"id\":1501421463919,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"Get Involved\",\"title\":\"Get Involved\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-center\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"4,4,4\",\"columns\":[{\"id\":1501421463920,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501600121640,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Mentor Application \",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-check-square-o\",\"icon_size\":\"80\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501421463928,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"Apply\",\"text\":\"Apply\",\"alignment\":\"sppb-text-center\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"mentor-application\",\"target\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"lg\",\"shape\":\"rounded\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"20px 10px 10px 10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501421463921,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501421463937,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Volunteer Application \",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-check-square-o\",\"icon_size\":\"80\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501600121682,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"Apply\",\"text\":\"Apply\",\"alignment\":\"sppb-text-center\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"volunteer-application\",\"target\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"lg\",\"shape\":\"rounded\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"20px 10px 10px 10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501421463922,\"class_name\":\"col-md-4\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501600121633,\"name\":\"feature\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Intern Application \",\"heading_selector\":\"h3\",\"title_position\":\"after\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"title_url\":\"\",\"url_appear\":\"title\",\"feature_type\":\"icon\",\"feature_image\":\"\",\"icon_name\":\"fa-check-square-o\",\"icon_size\":\"80\",\"icon_color\":\"\",\"icon_background\":\"\",\"icon_border_color\":\"\",\"icon_border_width\":\"\",\"icon_border_radius\":\"\",\"icon_margin_top\":\"\",\"icon_margin_bottom\":\"\",\"icon_padding\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum.\",\"alignment\":\"sppb-text-center\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501600121679,\"name\":\"button\",\"visibility\":true,\"settings\":{\"admin_label\":\"Apply\",\"text\":\"Apply\",\"alignment\":\"sppb-text-center\",\"fontstyle\":null,\"letterspace\":\"0\",\"url\":\"intern-application\",\"target\":\"\",\"type\":\"link\",\"appearance\":\"\",\"background_color\":\"#444444\",\"color\":\"#ffffff\",\"background_color_hover\":\"#222222\",\"color_hover\":\"#ffffff\",\"button_padding\":\"\",\"size\":\"lg\",\"shape\":\"rounded\",\"block\":\"sppb-btn-block\",\"icon\":\"fa-angle-right\",\"icon_position\":\"right\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"20px 10px 10px 10px\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:37:41', 369, '2017-08-01 15:23:48', 369, 369, '2017-08-01 15:27:38', '', '', '', '*', 70, ''),
(7, 'Donate', '[{\"id\":1501422390867,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"subtitle\":\"\",\"subtitle_fontsize\":\"\",\"title_position\":\"sppb-text-left\",\"columns_equal_height\":\"0\",\"fullscreen\":\"0\",\"no_gutter\":\"0\",\"id\":\"\",\"class\":\"\",\"padding\":\"0px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"overlay\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"background_video_mp4\":\"\",\"background_video_ogv\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animation\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"6,6\",\"columns\":[{\"id\":1501422390868,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501422521070,\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"Make a donation\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer adipiscing erat eget risus sollicitudin pellentesque et non erat. Maecenas nibh dolor, malesuada et bibendum a, sagittis accumsan ipsum. Pellentesque ultrices ultrices sapien, nec tincidunt nunc posuere ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque tristique dolor vitae tincidunt. Aenean quis massa uada mi elementum elementum. Nec sapien convallis vulputate rhoncus vel dui.\",\"alignment\":\"sppb-text-left\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]},{\"id\":1501422390869,\"class_name\":\"col-md-6\",\"visibility\":true,\"settings\":{},\"addons\":[{\"id\":1501423008667,\"name\":\"empty_space\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"gap\":\"20\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}},{\"id\":1501422521067,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_fontstyle\":null,\"title_letterspace\":\"0\",\"title_fontweight\":\"\",\"title_text_color\":\"\",\"title_margin_top\":\"\",\"title_margin_bottom\":\"\",\"module_type\":\"module\",\"id\":\"101\",\"position\":\"\",\"class\":\"\",\"global_text_color\":\"\",\"global_link_color\":\"\",\"global_link_hover_color\":\"\",\"global_use_background\":\"0\",\"global_background_color\":\"\",\"global_background_image\":\"\",\"global_background_repeat\":\"no-repeat\",\"global_background_size\":\"cover\",\"global_background_attachment\":\"inherit\",\"global_user_border\":\"0\",\"global_border_width\":\"\",\"global_border_color\":\"\",\"global_boder_style\":\"none\",\"global_border_radius\":\"\",\"global_margin\":\"\",\"global_padding\":\"\",\"global_use_animation\":\"0\",\"global_animation\":\"\",\"global_animationduration\":\"300\",\"global_animationdelay\":\"0\",\"hidden_md\":\"0\",\"hidden_sm\":\"0\",\"hidden_xs\":\"0\"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:38:00', 369, '2017-07-30 16:00:22', 369, 369, '2017-08-01 13:10:58', '', '', '', '*', 60, ''),
(8, 'Resources', '[]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:38:26', 369, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', '', '', '*', 5, ''),
(9, 'Help', '[]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2017-07-30 11:38:35', 369, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', '', '', '*', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_sppagebuilder_integrations`
--

CREATE TABLE `pfnbo_sppagebuilder_integrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL,
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_tags`
--

CREATE TABLE `pfnbo_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_tags`
--

INSERT INTO `pfnbo_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 369, '2017-07-27 09:08:02', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_template_styles`
--

CREATE TABLE `pfnbo_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_template_styles`
--

INSERT INTO `pfnbo_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'shaper_helix3', 0, '1', 'shaper_helix3 - Default', '{\"preloader\":\"0\",\"preloader_animation\":\"logo\",\"preloader_bg\":\"#f5f5f5\",\"preloader_tx\":\"#333333\",\"goto_top\":\"0\",\"sticky_header\":\"0\",\"favicon\":\"images\\/favicon.png\",\"boxed_layout\":\"1\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_load_pos\":\"default\",\"logo_image\":\"images\\/kenya-unites-logo.png\",\"logo_image_2x\":\"\",\"mobile_logo\":\"images\\/Logos_For_Movements-04.png\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"body_bg_position\":\"0 0\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"Kenya Unites \\u00a9 2017\",\"show_social_icons\":\"0\",\"social_position\":\"top1\",\"social_load_pos\":\"default\",\"facebook\":\"\",\"twitter\":\"\",\"googleplus\":\"\",\"pinterest\":\"\",\"linkedin\":\"\",\"dribbble\":\"\",\"behance\":\"\",\"youtube\":\"\",\"flickr\":\"\",\"skype\":\"\",\"whatsapp\":\"\",\"vk\":\"\",\"custom\":\"\",\"enable_contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_phone\":\"\",\"contact_mobile\":\"\",\"contact_email\":\"\",\"contact_time\":\"\",\"comingsoon_mode\":\"0\",\"comingsoon_bg\":\"\",\"comingsoon_logo\":\"\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_date\":\"05-10-2018\",\"comingsoon_content\":\"Coming soon content\",\"error_bg\":\"\",\"error_logo\":\"images\\/Logos_For_Movements-04.png\",\"preset\":\"preset3\",\"preset1_bg\":\"#ffffff\",\"preset1_text\":\"#000000\",\"preset1_major\":\"#26aae1\",\"preset1_megabg\":\"#ffffff\",\"preset1_megatx\":\"#333333\",\"preset2_bg\":\"#ffffff\",\"preset2_text\":\"#000000\",\"preset2_major\":\"#3d449a\",\"preset2_megabg\":\"#ffffff\",\"preset2_megatx\":\"#333333\",\"preset3_bg\":\"#ffffff\",\"preset3_text\":\"#000000\",\"preset3_major\":\"#2bb673\",\"preset3_megabg\":\"#ffffff\",\"preset3_megatx\":\"#333333\",\"preset4_bg\":\"#ffffff\",\"preset4_text\":\"#000000\",\"preset4_major\":\"#eb4947\",\"preset4_megabg\":\"#ffffff\",\"preset4_megatx\":\"#333333\",\"layoutlist\":\"default.json\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"75\\\",\\\"settings\\\":{\\\"name\\\":\\\"Top Bar\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"#999999\\\",\\\"background_image\\\":\\\"\\\",\\\"background_repeat\\\":\\\"no-repeat\\\",\\\"background_size\\\":\\\"cover\\\",\\\"background_attachment\\\":\\\"fixed\\\",\\\"background_position\\\":\\\"0 0\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"col-xs-10 col-md-12\\\",\\\"bg_position\\\":\\\"contain\\\",\\\"bg_img_size\\\":\\\"cover\\\",\\\"bg_repeat\\\":\\\"no-repeat\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"text_color\\\":\\\"#ffffff\\\",\\\"bg_image\\\":\\\"images\\/powered_by.png\\\",\\\"bg_color\\\":\\\"#f02222\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-7\\\",\\\"settings\\\":{\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"logo\\\",\\\"column_type\\\":0,\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-10\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-5\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"search\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"hidden_xs\\\":1,\\\"hidden_sm\\\":1,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Header\\\",\\\"background_color\\\":\\\"#939393\\\",\\\"color\\\":\\\"#ffffff\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"col-xs-2 pull-right\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"menu\\\",\\\"column_type\\\":0,\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"col-xs-2\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Page Title\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":1,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"title\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"363\\\",\\\"settings\\\":{\\\"fluidrow\\\":1,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"bg_color\\\":\\\"\\\",\\\"name\\\":\\\"Main Body\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"left\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"custom-class\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-6\\\",\\\"settings\\\":{\\\"column_type\\\":1,\\\"name\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"class2\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"name\\\":\\\"right\\\",\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3333\\\",\\\"settings\\\":{\\\"name\\\":\\\"Bottom\\\",\\\"background_color\\\":\\\"#f5f5f5\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"100px 0px\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom1\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom2\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom3\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom4\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3333\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"footer-nav\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"footer_logo\\\",\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"footer_menu_a\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"footer_menu_b\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-3\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"footer_menu_c\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"md_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"xs_hidden\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"text_color\\\":\\\"\\\",\\\"bg_image\\\":\\\"\\\",\\\"bg_color\\\":\\\"\\\",\\\"name\\\":\\\"Footer\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"className\\\":\\\"layout-column col-sm-12 column-active\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"column_type\\\":0,\\\"name\\\":\\\"bottom_footer_social\\\",\\\"xs_hidden\\\":0,\\\"ms_hidden\\\":0,\\\"md_hidden\\\":0,\\\"custom_class\\\":\\\"\\\"}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega\",\"dropdown_width\":\"\",\"menu_animation\":\"menu-fade\",\"offcanvas_animation\":\"slidetop\",\"enable_body_font\":\"1\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Arvo\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h1_font\":\"1\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Arvo\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h2_font\":\"1\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Arvo\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Arvo\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h4_font\":\"1\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h5_font\":\"1\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_h6_font\":\"1\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontWeight\\\":\\\"600\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_navigation_font\":\"1\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"Arvo\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"enable_custom_font\":\"1\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"Arvo\\\",\\\"fontWeight\\\":\\\"regular\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontSize\\\":\\\"\\\"}\",\"custom_font_selectors\":\"arvo-custom\",\"before_head\":\"\",\"before_body\":\"\",\"custom_css\":\"\",\"custom_js\":\"\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"exclude_js\":\"\",\"lessoption\":\"0\",\"show_post_format\":\"1\",\"commenting_engine\":\"disabled\",\"disqus_subdomain\":\"\",\"disqus_devmode\":\"0\",\"intensedebate_acc\":\"\",\"fb_appID\":\"\",\"fb_width\":\"500\",\"fb_cpp\":\"10\",\"comments_count\":\"0\",\"social_share\":\"1\",\"image_small\":\"0\",\"image_small_size\":\"100X100\",\"image_thumbnail\":\"1\",\"image_thumbnail_size\":\"200X200\",\"image_medium\":\"0\",\"image_medium_size\":\"300X300\",\"image_large\":\"0\",\"image_large_size\":\"600X600\",\"blog_list_image\":\"default\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_tlptestimonial_category`
--

CREATE TABLE `pfnbo_tlptestimonial_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_tlptestimonial_category`
--

INSERT INTO `pfnbo_tlptestimonial_category` (`id`, `category_name`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`) VALUES
(1, 'General', 1, 1, 0, '0000-00-00 00:00:00', 369);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_tlptestimonial_settings`
--

CREATE TABLE `pfnbo_tlptestimonial_settings` (
  `id` int(11) NOT NULL,
  `imagepath` varchar(255) NOT NULL DEFAULT 'images/testimonial',
  `smallwidth` varchar(255) NOT NULL DEFAULT '160',
  `smallheight` varchar(255) NOT NULL DEFAULT '160',
  `mediumwidth` varchar(255) NOT NULL DEFAULT '340',
  `mediumheight` varchar(255) NOT NULL DEFAULT '340',
  `largewidth` varchar(255) NOT NULL DEFAULT '1080',
  `largeheight` varchar(255) NOT NULL DEFAULT '1080',
  `display_no` int(11) NOT NULL,
  `enable_bootstrap_css` tinyint(4) NOT NULL,
  `detailpage_image_grid` int(11) NOT NULL,
  `detailpage_content_grid` int(11) NOT NULL,
  `enable_read_more` tinyint(4) NOT NULL DEFAULT '0',
  `character_limit` int(11) NOT NULL DEFAULT '150',
  `email` varchar(100) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_tlptestimonial_settings`
--

INSERT INTO `pfnbo_tlptestimonial_settings` (`id`, `imagepath`, `smallwidth`, `smallheight`, `mediumwidth`, `mediumheight`, `largewidth`, `largeheight`, `display_no`, `enable_bootstrap_css`, `detailpage_image_grid`, `detailpage_content_grid`, `enable_read_more`, `character_limit`, `email`, `state`, `checked_out`, `checked_out_time`, `created_by`) VALUES
(1, 'images/tlptestimonial', '80', '80', '340', '340', '1080', '1080', 1, 1, 2, 0, 0, 100, 'info@yourwebsite.com', 1, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_tlptestimonial_testimonial`
--

CREATE TABLE `pfnbo_tlptestimonial_testimonial` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` int(11) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `testimonial` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pfnbo_tlptestimonial_testimonial`
--

INSERT INTO `pfnbo_tlptestimonial_testimonial` (`id`, `category`, `profile_image`, `name`, `designation`, `company`, `location`, `testimonial`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`) VALUES
(1, 1, '', 'Martin Mbogoni', '', '', '', 'The Experience that i got volunteering at Kenya Unites was priceless. I learnt alot from the team and interaction with the high school students', 1, 1, 0, '0000-00-00 00:00:00', 369),
(2, 1, '', 'Martin Mbogoni', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 2, 1, 0, '0000-00-00 00:00:00', 369),
(3, 1, '', 'Martin Mbogoni', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 3, 1, 0, '0000-00-00 00:00:00', 369),
(4, 1, '', 'Martin Mbogoni', '', '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 4, 1, 0, '0000-00-00 00:00:00', 369);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_ucm_base`
--

CREATE TABLE `pfnbo_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_ucm_content`
--

CREATE TABLE `pfnbo_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_ucm_history`
--

CREATE TABLE `pfnbo_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_ucm_history`
--

INSERT INTO `pfnbo_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2017-07-27 19:49:40', 369, 1756, '96918e36bfe00c5a5f5b851eccacb2bb0e794a91', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"Nairobi\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"\",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"info@demo.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/demo.com\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-27 19:49:40\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}', 0),
(2, 1, 2, '', '2017-07-30 11:40:47', 369, 1781, '3ec39b3895a1215757cc5994c51df2a484172027', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"Nairobi\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"\",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"info@demo.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 11:40:40\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/demo.com\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 11:40:47\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"15\"}', 0),
(3, 1, 2, '', '2017-07-30 11:51:16', 369, 1782, '1291d40feeafa7b4f67b43171acb2e2caa1d665d', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"Nairobi\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"\",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"info@demo.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 11:51:09\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/demo.com\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 11:51:16\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"20\"}', 0),
(4, 1, 2, '', '2017-07-30 11:57:59', 369, 1783, 'c6a4c872b50b278780eecd334c06d32ec46c2d95', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"Nairobi\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"\",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"info@demo.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 11:51:16\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/demo.com\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 11:57:59\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":5,\"hits\":\"26\"}', 0),
(5, 1, 2, '', '2017-07-30 12:05:59', 369, 1795, 'a29afeb0cc6ea1a23f4e0c7a452b08dc7a4915bd', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"Nairobi\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"\",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"<p>high<\\/p>\",\"image\":\"\",\"email_to\":\"info@demo.com\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 11:58:29\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/demo.com\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 12:05:59\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":7,\"hits\":\"41\"}', 0),
(6, 1, 2, '', '2017-07-30 12:33:36', 369, 1813, '336ed3da452433aa658cd5625aef78ebf29b9240', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"Nairobi\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"\",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"<p>high<\\/p>\",\"image\":\"\",\"email_to\":\"info@kenyaunites.org\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 12:33:17\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/www.kenyaunites.org\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 12:33:36\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":9,\"hits\":\"62\"}', 0),
(7, 1, 2, '', '2017-07-30 12:35:19', 369, 1820, '5d89b021e39802870d0cc9e17d9da56a9248b347', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"\",\"state\":\"Nairobi\",\"country\":\"Kenya\",\"postcode\":\"8822 - 00200 \",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"<p>high<\\/p>\",\"image\":\"\",\"email_to\":\"info@kenyaunites.org\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 12:33:36\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/www.kenyaunites.org\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 12:35:19\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":10,\"hits\":\"63\"}', 0),
(8, 1, 2, '', '2017-07-30 12:35:34', 369, 1813, 'abd61b84469643cbb35440f2b4a1c8f986617bf7', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Add\",\"suburb\":\"\",\"state\":\"\",\"country\":\"Kenya\",\"postcode\":\"8822 - 00200 \",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"<p>high<\\/p>\",\"image\":\"\",\"email_to\":\"info@kenyaunites.org\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 12:35:19\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/www.kenyaunites.org\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 12:35:34\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":11,\"hits\":\"64\"}', 0),
(9, 1, 2, '', '2017-07-30 12:36:00', 369, 1834, 'f82d63099d841c0df11898bfc37e4148100ce62b', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Kenya Unites,\\r\\nNairobi\",\"suburb\":\"\",\"state\":\"\",\"country\":\"Kenya\",\"postcode\":\"8822 - 00200 \",\"telephone\":\"009988\",\"fax\":\"\",\"misc\":\"<p>high<\\/p>\",\"image\":\"\",\"email_to\":\"info@kenyaunites.org\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 12:35:34\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"5645453\",\"webpage\":\"http:\\/\\/www.kenyaunites.org\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 12:36:00\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":12,\"hits\":\"65\"}', 0),
(10, 2, 5, '', '2017-07-30 13:04:09', 369, 594, 'cd6fef899a9ac50806268050c30db21456f110ae', '{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Kenya Unites\",\"alias\":\"kenya-unites\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-30 13:03:58\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"369\",\"created_time\":\"2017-07-27 09:08:02\",\"modified_user_id\":\"369\",\"modified_time\":\"2017-07-30 13:04:09\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(11, 8, 5, '', '2017-07-30 13:04:15', 369, 545, '64875fbe480aaba5e320d96b6aaba8c99bf5bbd9', '{\"id\":8,\"asset_id\":74,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Blog\",\"alias\":\"blog\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"369\",\"created_time\":\"2017-07-30 13:04:15\",\"modified_user_id\":null,\"modified_time\":\"2017-07-30 13:04:15\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(12, 1, 1, '', '2017-07-30 13:18:53', 369, 2223, '085666a8d6ea8f7ef3fe7fa76f25ceff0aa73947', '{\"id\":1,\"asset_id\":75,\"title\":\"Lorem ipsum\",\"alias\":\"lorem-ipsum\",\"introtext\":\"<p>This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities\\u2019 champions of change projects and is conducted by Kenya Unites mentors.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-07-30 13:18:53\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 13:18:53\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-07-30 13:18:53\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(13, 2, 1, '', '2017-07-30 13:19:08', 369, 2210, '972427417108874111b607700503290632d1adef', '{\"id\":2,\"asset_id\":76,\"title\":\"Lorem ipsum (2)\",\"alias\":\"lorem-ipsum-2\",\"introtext\":\"<p>This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities\\u2019 champions of change projects and is conducted by Kenya Unites mentors.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"8\",\"created\":\"2017-07-30 13:18:53\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 13:19:08\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-07-30 13:18:53\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(14, 3, 1, '', '2017-07-30 13:19:10', 369, 2210, '8bff3e923c82120cd5c674e4e762a2d252e69906', '{\"id\":3,\"asset_id\":77,\"title\":\"Lorem ipsum (3)\",\"alias\":\"lorem-ipsum-3\",\"introtext\":\"<p>This is an annual round the country follow up trip to engage with preceding conference participants, equip them with skills in conflict transformation, connect them to work on communities\\u2019 champions of change projects and is conducted by Kenya Unites mentors.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"8\",\"created\":\"2017-07-30 13:18:53\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-30 13:19:10\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-07-30 13:18:53\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(15, 1, 2, '', '2017-07-31 03:59:11', 369, 1857, 'ac1a9b58092810819041d0425f292859b2193153', '{\"id\":1,\"name\":\"Contact Us\",\"alias\":\"contact-us\",\"con_position\":\"\",\"address\":\"Kenya Unites,\\r\\nNairobi\",\"suburb\":\"\",\"state\":\"\",\"country\":\"Kenya\",\"postcode\":\"8822 - 00200 \",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"<p>high<\\/p>\",\"image\":\"\",\"email_to\":\"info@kenyaunites.org\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"369\",\"checked_out_time\":\"2017-07-31 03:58:07\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"tabs\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_info\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"add_mailto_link\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"show_misc\\\":\\\"1\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"(+254) 733274641 \\/ (+254) 723547923\",\"webpage\":\"http:\\/\\/www.kenyaunites.org\",\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-07-27 19:49:40\",\"created_by\":\"369\",\"created_by_alias\":\"\",\"modified\":\"2017-07-31 03:59:11\",\"modified_by\":\"369\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":13,\"hits\":\"85\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_updates`
--

CREATE TABLE `pfnbo_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_update_sites`
--

CREATE TABLE `pfnbo_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `pfnbo_update_sites`
--

INSERT INTO `pfnbo_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1501869921, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(4, 'Helix3 - Ajax', 'extension', 'http://www.joomshaper.com/updates/plg-ajax-helix3.xml', 1, 0, ''),
(5, 'System - Helix3 Framework', 'extension', 'http://www.joomshaper.com/updates/plg-system-helix3.xml', 1, 0, ''),
(6, 'shaper_helix3', 'extension', 'https://www.joomshaper.com/updates/shaper-helix3.xml', 1, 0, ''),
(7, 'SP Page Builder', 'extension', 'http://www.joomshaper.com/updates/com-sp-page-builder-free.xml', 1, 0, ''),
(8, 'Alledia Framework', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/lib_allediaframework', 1, 0, ''),
(9, 'OSSystem', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/plg_system_ossystem', 1, 0, ''),
(10, 'OSDonate Free', 'extension', 'https://deploy.ostraining.com/client/update/free/stable/mod_osdonate', 1, 0, ''),
(14, 'CEGCore v2 update server', 'library', 'http://www.chronoengine.com/chrono_joomla_updates/cegcore2.xml', 1, 0, ''),
(15, 'ChronoForms v6 update server', 'extension', 'http://www.chronoengine.com/chrono_joomla_updates/chronoforms6.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_update_sites_extensions`
--

CREATE TABLE `pfnbo_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `pfnbo_update_sites_extensions`
--

INSERT INTO `pfnbo_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10001),
(5, 10002),
(6, 10003),
(7, 10004),
(8, 10011),
(9, 10012),
(10, 10010),
(14, 10026),
(15, 10027);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_usergroups`
--

CREATE TABLE `pfnbo_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_usergroups`
--

INSERT INTO `pfnbo_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
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
-- Table structure for table `pfnbo_users`
--

CREATE TABLE `pfnbo_users` (
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
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_users`
--

INSERT INTO `pfnbo_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(369, 'Super User', 'admin', 'michael@buluma.me.ke', '$2y$10$X7AByGBWhaCO3H6a7ClONOwlxU2nm5Gsy4lvETsR5vWW8LSBAG8YG', 0, 1, '2017-07-27 09:08:03', '2017-08-01 15:59:53', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_user_keys`
--

CREATE TABLE `pfnbo_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_user_notes`
--

CREATE TABLE `pfnbo_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_user_profiles`
--

CREATE TABLE `pfnbo_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_user_usergroup_map`
--

CREATE TABLE `pfnbo_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_user_usergroup_map`
--

INSERT INTO `pfnbo_user_usergroup_map` (`user_id`, `group_id`) VALUES
(369, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_utf8_conversion`
--

CREATE TABLE `pfnbo_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_utf8_conversion`
--

INSERT INTO `pfnbo_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `pfnbo_viewlevels`
--

CREATE TABLE `pfnbo_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pfnbo_viewlevels`
--

INSERT INTO `pfnbo_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pfnbo_assets`
--
ALTER TABLE `pfnbo_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `pfnbo_associations`
--
ALTER TABLE `pfnbo_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `pfnbo_banners`
--
ALTER TABLE `pfnbo_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_banner_clients`
--
ALTER TABLE `pfnbo_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `pfnbo_banner_tracks`
--
ALTER TABLE `pfnbo_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `pfnbo_categories`
--
ALTER TABLE `pfnbo_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_chronoengine_acls`
--
ALTER TABLE `pfnbo_chronoengine_acls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aco` (`aco`);

--
-- Indexes for table `pfnbo_chronoengine_chronoforms_data_intern-application`
--
ALTER TABLE `pfnbo_chronoengine_chronoforms_data_intern-application`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `pfnbo_chronoengine_chronoforms_data_Mentor-application`
--
ALTER TABLE `pfnbo_chronoengine_chronoforms_data_Mentor-application`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `pfnbo_chronoengine_chronoforms_data_volunteer-application`
--
ALTER TABLE `pfnbo_chronoengine_chronoforms_data_volunteer-application`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `pfnbo_chronoengine_extensions`
--
ALTER TABLE `pfnbo_chronoengine_extensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `pfnbo_chronoengine_forms6`
--
ALTER TABLE `pfnbo_chronoengine_forms6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `pfnbo_contact_details`
--
ALTER TABLE `pfnbo_contact_details`
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
-- Indexes for table `pfnbo_contact_enquiries`
--
ALTER TABLE `pfnbo_contact_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_content`
--
ALTER TABLE `pfnbo_content`
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
-- Indexes for table `pfnbo_contentitem_tag_map`
--
ALTER TABLE `pfnbo_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `pfnbo_content_frontpage`
--
ALTER TABLE `pfnbo_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `pfnbo_content_rating`
--
ALTER TABLE `pfnbo_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `pfnbo_content_types`
--
ALTER TABLE `pfnbo_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `pfnbo_extensions`
--
ALTER TABLE `pfnbo_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `pfnbo_fields`
--
ALTER TABLE `pfnbo_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_fields_categories`
--
ALTER TABLE `pfnbo_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `pfnbo_fields_groups`
--
ALTER TABLE `pfnbo_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_fields_values`
--
ALTER TABLE `pfnbo_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `pfnbo_finder_filters`
--
ALTER TABLE `pfnbo_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `pfnbo_finder_links`
--
ALTER TABLE `pfnbo_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `pfnbo_finder_links_terms0`
--
ALTER TABLE `pfnbo_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms1`
--
ALTER TABLE `pfnbo_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms2`
--
ALTER TABLE `pfnbo_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms3`
--
ALTER TABLE `pfnbo_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms4`
--
ALTER TABLE `pfnbo_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms5`
--
ALTER TABLE `pfnbo_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms6`
--
ALTER TABLE `pfnbo_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms7`
--
ALTER TABLE `pfnbo_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms8`
--
ALTER TABLE `pfnbo_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_terms9`
--
ALTER TABLE `pfnbo_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_termsa`
--
ALTER TABLE `pfnbo_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_termsb`
--
ALTER TABLE `pfnbo_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_termsc`
--
ALTER TABLE `pfnbo_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_termsd`
--
ALTER TABLE `pfnbo_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_termse`
--
ALTER TABLE `pfnbo_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_links_termsf`
--
ALTER TABLE `pfnbo_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `pfnbo_finder_taxonomy`
--
ALTER TABLE `pfnbo_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `pfnbo_finder_taxonomy_map`
--
ALTER TABLE `pfnbo_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `pfnbo_finder_terms`
--
ALTER TABLE `pfnbo_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `pfnbo_finder_terms_common`
--
ALTER TABLE `pfnbo_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `pfnbo_finder_tokens`
--
ALTER TABLE `pfnbo_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `pfnbo_finder_tokens_aggregate`
--
ALTER TABLE `pfnbo_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `pfnbo_finder_types`
--
ALTER TABLE `pfnbo_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `pfnbo_languages`
--
ALTER TABLE `pfnbo_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `pfnbo_menu`
--
ALTER TABLE `pfnbo_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_menu_types`
--
ALTER TABLE `pfnbo_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `pfnbo_messages`
--
ALTER TABLE `pfnbo_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `pfnbo_messages_cfg`
--
ALTER TABLE `pfnbo_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `pfnbo_modules`
--
ALTER TABLE `pfnbo_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_modules_menu`
--
ALTER TABLE `pfnbo_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `pfnbo_newsfeeds`
--
ALTER TABLE `pfnbo_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `pfnbo_overrider`
--
ALTER TABLE `pfnbo_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery`
--
ALTER TABLE `pfnbo_phocagallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`);

--
-- Indexes for table `pfnbo_phocagallery_categories`
--
ALTER TABLE `pfnbo_phocagallery_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`section`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`);

--
-- Indexes for table `pfnbo_phocagallery_comments`
--
ALTER TABLE `pfnbo_phocagallery_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_fb_users`
--
ALTER TABLE `pfnbo_phocagallery_fb_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_img_comments`
--
ALTER TABLE `pfnbo_phocagallery_img_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_img_votes`
--
ALTER TABLE `pfnbo_phocagallery_img_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_img_votes_statistics`
--
ALTER TABLE `pfnbo_phocagallery_img_votes_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_styles`
--
ALTER TABLE `pfnbo_phocagallery_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_tags`
--
ALTER TABLE `pfnbo_phocagallery_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_tags_ref`
--
ALTER TABLE `pfnbo_phocagallery_tags_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `i_imgid` (`imgid`,`tagid`);

--
-- Indexes for table `pfnbo_phocagallery_user`
--
ALTER TABLE `pfnbo_phocagallery_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `pfnbo_phocagallery_votes`
--
ALTER TABLE `pfnbo_phocagallery_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_phocagallery_votes_statistics`
--
ALTER TABLE `pfnbo_phocagallery_votes_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_postinstall_messages`
--
ALTER TABLE `pfnbo_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `pfnbo_redirect_links`
--
ALTER TABLE `pfnbo_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `pfnbo_schemas`
--
ALTER TABLE `pfnbo_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `pfnbo_session`
--
ALTER TABLE `pfnbo_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `pfnbo_spmedia`
--
ALTER TABLE `pfnbo_spmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_sppagebuilder`
--
ALTER TABLE `pfnbo_sppagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_sppagebuilder_integrations`
--
ALTER TABLE `pfnbo_sppagebuilder_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_tags`
--
ALTER TABLE `pfnbo_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `pfnbo_template_styles`
--
ALTER TABLE `pfnbo_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `pfnbo_tlptestimonial_category`
--
ALTER TABLE `pfnbo_tlptestimonial_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_tlptestimonial_settings`
--
ALTER TABLE `pfnbo_tlptestimonial_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_tlptestimonial_testimonial`
--
ALTER TABLE `pfnbo_tlptestimonial_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pfnbo_ucm_base`
--
ALTER TABLE `pfnbo_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `pfnbo_ucm_content`
--
ALTER TABLE `pfnbo_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `pfnbo_ucm_history`
--
ALTER TABLE `pfnbo_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `pfnbo_updates`
--
ALTER TABLE `pfnbo_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `pfnbo_update_sites`
--
ALTER TABLE `pfnbo_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `pfnbo_update_sites_extensions`
--
ALTER TABLE `pfnbo_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `pfnbo_usergroups`
--
ALTER TABLE `pfnbo_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `pfnbo_users`
--
ALTER TABLE `pfnbo_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pfnbo_user_keys`
--
ALTER TABLE `pfnbo_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pfnbo_user_notes`
--
ALTER TABLE `pfnbo_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `pfnbo_user_profiles`
--
ALTER TABLE `pfnbo_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `pfnbo_user_usergroup_map`
--
ALTER TABLE `pfnbo_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `pfnbo_viewlevels`
--
ALTER TABLE `pfnbo_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pfnbo_assets`
--
ALTER TABLE `pfnbo_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `pfnbo_banners`
--
ALTER TABLE `pfnbo_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_banner_clients`
--
ALTER TABLE `pfnbo_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_categories`
--
ALTER TABLE `pfnbo_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pfnbo_chronoengine_acls`
--
ALTER TABLE `pfnbo_chronoengine_acls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_chronoengine_chronoforms_data_intern-application`
--
ALTER TABLE `pfnbo_chronoengine_chronoforms_data_intern-application`
  MODIFY `aid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_chronoengine_chronoforms_data_Mentor-application`
--
ALTER TABLE `pfnbo_chronoengine_chronoforms_data_Mentor-application`
  MODIFY `aid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_chronoengine_chronoforms_data_volunteer-application`
--
ALTER TABLE `pfnbo_chronoengine_chronoforms_data_volunteer-application`
  MODIFY `aid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pfnbo_chronoengine_extensions`
--
ALTER TABLE `pfnbo_chronoengine_extensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_chronoengine_forms6`
--
ALTER TABLE `pfnbo_chronoengine_forms6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pfnbo_contact_details`
--
ALTER TABLE `pfnbo_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_contact_enquiries`
--
ALTER TABLE `pfnbo_contact_enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_content`
--
ALTER TABLE `pfnbo_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pfnbo_content_types`
--
ALTER TABLE `pfnbo_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pfnbo_extensions`
--
ALTER TABLE `pfnbo_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10029;
--
-- AUTO_INCREMENT for table `pfnbo_fields`
--
ALTER TABLE `pfnbo_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_fields_groups`
--
ALTER TABLE `pfnbo_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_finder_filters`
--
ALTER TABLE `pfnbo_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_finder_links`
--
ALTER TABLE `pfnbo_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_finder_taxonomy`
--
ALTER TABLE `pfnbo_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_finder_terms`
--
ALTER TABLE `pfnbo_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_finder_types`
--
ALTER TABLE `pfnbo_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_languages`
--
ALTER TABLE `pfnbo_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_menu`
--
ALTER TABLE `pfnbo_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `pfnbo_menu_types`
--
ALTER TABLE `pfnbo_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pfnbo_messages`
--
ALTER TABLE `pfnbo_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_modules`
--
ALTER TABLE `pfnbo_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `pfnbo_newsfeeds`
--
ALTER TABLE `pfnbo_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_overrider`
--
ALTER TABLE `pfnbo_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery`
--
ALTER TABLE `pfnbo_phocagallery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_categories`
--
ALTER TABLE `pfnbo_phocagallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_comments`
--
ALTER TABLE `pfnbo_phocagallery_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_fb_users`
--
ALTER TABLE `pfnbo_phocagallery_fb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_img_comments`
--
ALTER TABLE `pfnbo_phocagallery_img_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_img_votes`
--
ALTER TABLE `pfnbo_phocagallery_img_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_img_votes_statistics`
--
ALTER TABLE `pfnbo_phocagallery_img_votes_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_styles`
--
ALTER TABLE `pfnbo_phocagallery_styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_tags`
--
ALTER TABLE `pfnbo_phocagallery_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_tags_ref`
--
ALTER TABLE `pfnbo_phocagallery_tags_ref`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_user`
--
ALTER TABLE `pfnbo_phocagallery_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_votes`
--
ALTER TABLE `pfnbo_phocagallery_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_phocagallery_votes_statistics`
--
ALTER TABLE `pfnbo_phocagallery_votes_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_postinstall_messages`
--
ALTER TABLE `pfnbo_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pfnbo_redirect_links`
--
ALTER TABLE `pfnbo_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_spmedia`
--
ALTER TABLE `pfnbo_spmedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pfnbo_sppagebuilder`
--
ALTER TABLE `pfnbo_sppagebuilder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pfnbo_sppagebuilder_integrations`
--
ALTER TABLE `pfnbo_sppagebuilder_integrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_tags`
--
ALTER TABLE `pfnbo_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_template_styles`
--
ALTER TABLE `pfnbo_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pfnbo_tlptestimonial_category`
--
ALTER TABLE `pfnbo_tlptestimonial_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_tlptestimonial_settings`
--
ALTER TABLE `pfnbo_tlptestimonial_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pfnbo_tlptestimonial_testimonial`
--
ALTER TABLE `pfnbo_tlptestimonial_testimonial`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pfnbo_ucm_content`
--
ALTER TABLE `pfnbo_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_ucm_history`
--
ALTER TABLE `pfnbo_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pfnbo_updates`
--
ALTER TABLE `pfnbo_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_update_sites`
--
ALTER TABLE `pfnbo_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pfnbo_usergroups`
--
ALTER TABLE `pfnbo_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pfnbo_users`
--
ALTER TABLE `pfnbo_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;
--
-- AUTO_INCREMENT for table `pfnbo_user_keys`
--
ALTER TABLE `pfnbo_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_user_notes`
--
ALTER TABLE `pfnbo_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pfnbo_viewlevels`
--
ALTER TABLE `pfnbo_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
