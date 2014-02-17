-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2012 at 01:51 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `theme956`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

DROP TABLE IF EXISTS `#__assets`;
CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 418, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 40, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 41, 44, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 45, 46, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 47, 48, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 49, 50, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 51, 52, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 53, 54, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 55, 58, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 59, 60, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 42, 43, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 56, 57, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 1, 414, 415, 1, 'com_gantry', 'gantry', '{}'),
(33, 1, 416, 417, 1, 'com_k2', 'k2', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

DROP TABLE IF EXISTS `#__associations`;
CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__associations`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

DROP TABLE IF EXISTS `#__banners`;
CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

DROP TABLE IF EXISTS `#__banner_clients`;
CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

DROP TABLE IF EXISTS `#__banner_tracks`;
CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

DROP TABLE IF EXISTS `#__categories`;
CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

DROP TABLE IF EXISTS `#__contact_details`;
CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contacts', 'contacts', '', '', '', '', '', '', '', '', '<p>8901 Marmora Road,<br /> \r\nGlasgow, D04 89GR.<br /> \r\nFreephone: +1 800 559 6580<br /> \r\nTelephone: +1 959 603 6035<br /> \r\nFAX: +1 504 889 9898<br /> \r\nE-mail: <a href="mailto:mail@demolink.org">mail@demolink.org</a>\r\n</p>\r\n\r\n<p>9863 - 9867 Mill Road, <br /> \r\nCambridge, MG09 99HT<br /> \r\nFreephone: +1 800 559 6580<br /> \r\nTelephone: +1 959 603 6035<br /> \r\nFAX: +1 504 889 9898<br /> \r\nE-mail: <a href="mailto:mail@demolink.org">mail@demolink.org</a>\r\n</p>', '', NULL, 'mailto@demolink.org', 0, 1, 42, '2011-12-20 12:02:26', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2011-12-17 11:44:54', 42, '', '2011-12-17 12:53:56', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

DROP TABLE IF EXISTS `#__content`;
CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__content`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

DROP TABLE IF EXISTS `#__content_frontpage`;
CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_frontpage`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

DROP TABLE IF EXISTS `#__content_rating`;
CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

DROP TABLE IF EXISTS `#__core_log_searches`;
CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

DROP TABLE IF EXISTS `#__extensions`;
CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10075 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2008","author":"PHPMailer","copyright":"Copyright (C) PHPMailer.","authorEmail":"","authorUrl":"http:\\/\\/phpmailer.codeworxtech.com\\/","version":"2.5.0","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2008","author":"SimplePie","copyright":"Copyright (C) 2008 SimplePie","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.0.1","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2008","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"2.5.0","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.9","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 0, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 0, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 0, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 0, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"April 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"legacy":true,"name":"K2 Comments","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_COMMENTS","group":""}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10074, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"library","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"${project.description}","group":""}', '{}', '{"last_update":1334137853}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"${project.description}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - Gantry","type":"plugin","creationDate":"April 2, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.19","description":"Gantry System Plugin for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10013, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"legacy":true,"name":"K2 Content","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'K2 Login', 'module', 'mod_k2_login', '', 0, 1, 0, 0, '{"legacy":true,"name":"K2 Login","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_LOGIN_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"legacy":true,"name":"K2 Tools","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_TOOLS","group":""}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"legacy":true,"name":"K2 Users","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"legacy":true,"name":"K2 User","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_MOD_K2_USER_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"legacy":true,"name":"K2 Quick Icons (admin)","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":""}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"legacy":true,"name":"K2 Stats (admin)","type":"module","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":""}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"legacy":true,"name":"Search - K2","type":"plugin","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":""}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"legacy":true,"name":"System - K2","type":"plugin","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"legacy":true,"name":"User - K2","type":"plugin","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'k2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"legacy":true,"name":"K2","type":"component","creationDate":"December 9th, 2011","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.gr","authorUrl":"www.joomlaworks.gr","version":"2.5.4","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":""}', '{"enable_css":"1","jQueryHandling":"1.7remote","backendJQueryHandling":"remote","userName":"0","userImage":"0","userDescription":"0","userURL":"0","userEmail":"0","userFeedLink":"0","userFeedIcon":"0","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"0","userItemTags":"0","userItemCommentsAnchor":"0","userItemReadMore":"1","userItemK2Plugins":"1","defaultUsersItemid":"","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"0","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"0","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","defaultTagsItemid":"","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"0","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"0","genericFeedIcon":"0","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"220","itemImageS":"300","itemImageM":"460","itemImageL":"620","itemImageXL":"940","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"90","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"<!-- AddThis Button BEGIN -->\\r\\n<div class=\\"addthis_toolbox addthis_default_style addthis_16x16_style \\">\\r\\n<a class=\\"addthis_button_preferred_1\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_2\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_3\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_4\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_5\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_7\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_8\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_9\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_10\\"><\\/a>\\r\\n<a class=\\"addthis_button_preferred_11\\"><\\/a>\\r\\n<a class=\\"addthis_button_compact\\"><\\/a>\\r\\n<\\/div>\\r\\n<script type=\\"text\\/javascript\\" src=\\"http:\\/\\/s7.addthis.com\\/js\\/300\\/addthis_widget.js#pubid=xa-4efc06d355052c2c\\"><\\/script>\\r\\n<!-- AddThis Button END -->","twitterUsername":"","facebookImage":"XSmall","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"0","commentsReporting":"0","commentsReportRecipient":"","inlineCommentsModeration":"1","gravatar":"1","recaptcha":"0","commentsFormNotes":"1","commentsFormNotesText":"Make sure you enter the (*) required information where indicated. Basic HTML code is allowed.","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","taggingSystem":"1","lockTags":"0","showTagFilter":"0","googleSearch":"0","googleSearchContainer":"k2Container","K2UserProfile":"1","redirect":"101","adminSearch":"simple","cookieDomain":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","SEFReplacements":"\\u00c5\\u00a0|S, \\u00c5\\u2019|O, \\u00c5\\u00bd|Z, \\u00c5\\u00a1|s, \\u00c5\\u201c|oe, \\u00c5\\u00be|z, \\u00c5\\u00b8|Y, \\u00c2\\u00a5|Y, \\u00c2\\u00b5|u, \\u00c3\\u20ac|A, \\u00c3\\ufffd|A, \\u00c3\\u201a|A, \\u00c3\\u0192|A, \\u00c3\\u201e|A, \\u00c3\\u2026|A, \\u00c3\\u2020|A, \\u00c3\\u2021|C, \\u00c3\\u02c6|E, \\u00c3\\u2030|E, \\u00c3\\u0160|E, \\u00c3\\u2039|E, \\u00c3\\u0152|I, \\u00c3\\ufffd|I, \\u00c3\\u017d|I, \\u00c3\\ufffd|I, \\u00c3\\ufffd|D, \\u00c3\\u2018|N, \\u00c3\\u2019|O, \\u00c3\\u201c|O, \\u00c3\\u201d|O, \\u00c3\\u2022|O, \\u00c3\\u2013|O, \\u00c3\\u02dc|O, \\u00c3\\u2122|U, \\u00c3\\u0161|U, \\u00c3\\u203a|U, \\u00c3\\u0153|U, \\u00c3\\ufffd|Y, \\u00c3\\u0178|s, \\u00c3\\u00a0|a, \\u00c3\\u00a1|a, \\u00c3\\u00a2|a, \\u00c3\\u00a3|a, \\u00c3\\u00a4|a, \\u00c3\\u00a5|a, \\u00c3\\u00a6|a, \\u00c3\\u00a7|c, \\u00c3\\u00a8|e, \\u00c3\\u00a9|e, \\u00c3\\u00aa|e, \\u00c3\\u00ab|e, \\u00c3\\u00ac|i, \\u00c3\\u00ad|i, \\u00c3\\u00ae|i, \\u00c3\\u00af|i, \\u00c3\\u00b0|o, \\u00c3\\u00b1|n, \\u00c3\\u00b2|o, \\u00c3\\u00b3|o, \\u00c3\\u00b4|o, \\u00c3\\u00b5|o, \\u00c3\\u00b6|o, \\u00c3\\u00b8|o, \\u00c3\\u00b9|u, \\u00c3\\u00ba|u, \\u00c3\\u00bb|u, \\u00c3\\u00bc|u, \\u00c3\\u00bd|y, \\u00c3\\u00bf|y, \\u00c3\\u0178|ss","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"February 24, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10032, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"October 12, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.7","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","window_open":"","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'Gantry', 'component', 'com_gantry', '', 1, 1, 1, 0, '{"legacy":false,"name":"Gantry","type":"component","creationDate":"December 1, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.2.13","description":"${project.description}","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'JGMap - Google Map ', 'module', 'mod_JGMap', '', 0, 1, 0, 0, '{"legacy":false,"name":"JGMap - Google Map ","type":"module","creationDate":"June 13, 2010","author":"Kermode Bear Software - James Hansen","copyright":"Copyright 2011 Notice","authorEmail":"kermode@kermodesoftware.com","authorUrl":"www.kermodesoftware.com","version":"0.15.5","description":"Displays a Google map in a module position.","group":""}', '{"width":"200","height":"150","mapName":"map","smallmap":"1","static":"0","lat":"48.5747","lng":"-123","zoom":"3","marker_title":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'com_finder', 'component', 'com_finder', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10057, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10058, 'mod_socialmedialinks', 'module', 'mod_socialmedialinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"Social Media Icon Links","type":"module","creationDate":"January 2011","author":"Viper Web Solutions","copyright":"Copyright (C) 2008 - 2011 Viper Web Solutions. All rights reserved. Defualt icons provided by http:\\/\\/jwloh.deviantart.com\\/ - jwloh01@gmail.com","authorEmail":"Dallas@viperwebsites.com","authorUrl":"www.viperwebsites.com","version":"1.6.0","description":"MOD_SOCIALMEDIALINKS_V1.6","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10059, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10060, 'recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10061, 'finder', 'plugin', 'finder', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10062, 'categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10063, 'contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10064, 'content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10065, 'k2', 'plugin', 'k2', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_k2","type":"plugin","creationDate":"March 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2012 JoomlaWorks Ltd. All rights reserved.","authorEmail":"contact@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.5.5","description":"PLG_FINDER_K2_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10066, 'newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10067, 'weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10068, 'extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10069, 'joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10070, 'highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10071, 'languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10072, 'theme956', 'template', 'theme956', '', 0, 1, 1, 0, '{"legacy":false,"name":"theme956","type":"template","creationDate":"March, 2012","author":"Delta","copyright":"Copyright  2003-2011 template-help.com. All Rights Reserved.","authorEmail":"info@template-help.com","authorUrl":"http:\\/\\/www.template-help.com","version":"1.0","description":"${project.description}","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"porter_en"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

DROP TABLE IF EXISTS `#__finder_filters`;
CREATE TABLE IF NOT EXISTS `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__finder_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links`
--

DROP TABLE IF EXISTS `#__finder_links`;
CREATE TABLE IF NOT EXISTS `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
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
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__finder_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms0`
--

DROP TABLE IF EXISTS `#__finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms0`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

DROP TABLE IF EXISTS `#__finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms1`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

DROP TABLE IF EXISTS `#__finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms2`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

DROP TABLE IF EXISTS `#__finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms3`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

DROP TABLE IF EXISTS `#__finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms4`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

DROP TABLE IF EXISTS `#__finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

DROP TABLE IF EXISTS `#__finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms6`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

DROP TABLE IF EXISTS `#__finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms7`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

DROP TABLE IF EXISTS `#__finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms8`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

DROP TABLE IF EXISTS `#__finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_terms9`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

DROP TABLE IF EXISTS `#__finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_termsa`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

DROP TABLE IF EXISTS `#__finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_termsb`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

DROP TABLE IF EXISTS `#__finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_termsc`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

DROP TABLE IF EXISTS `#__finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_termsd`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

DROP TABLE IF EXISTS `#__finder_links_termse`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_termse`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

DROP TABLE IF EXISTS `#__finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

DROP TABLE IF EXISTS `#__finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

DROP TABLE IF EXISTS `#__finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

DROP TABLE IF EXISTS `#__finder_terms`;
CREATE TABLE IF NOT EXISTS `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__finder_terms`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms_common`
--

DROP TABLE IF EXISTS `#__finder_terms_common`;
CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('a', 'en'),
('about', 'en'),
('about', 'en'),
('after', 'en'),
('after', 'en'),
('ago', 'en'),
('ago', 'en'),
('all', 'en'),
('all', 'en'),
('am', 'en'),
('am', 'en'),
('an', 'en'),
('an', 'en'),
('and', 'en'),
('and', 'en'),
('ani', 'en'),
('ani', 'en'),
('any', 'en'),
('any', 'en'),
('are', 'en'),
('are', 'en'),
('aren''t', 'en'),
('aren''t', 'en'),
('as', 'en'),
('as', 'en'),
('at', 'en'),
('at', 'en'),
('be', 'en'),
('be', 'en'),
('but', 'en'),
('but', 'en'),
('by', 'en'),
('by', 'en'),
('for', 'en'),
('for', 'en'),
('from', 'en'),
('from', 'en'),
('get', 'en'),
('get', 'en'),
('go', 'en'),
('go', 'en'),
('how', 'en'),
('how', 'en'),
('if', 'en'),
('if', 'en'),
('in', 'en'),
('in', 'en'),
('into', 'en'),
('into', 'en'),
('is', 'en'),
('is', 'en'),
('isn''t', 'en'),
('isn''t', 'en'),
('it', 'en'),
('it', 'en'),
('its', 'en'),
('its', 'en'),
('me', 'en'),
('me', 'en'),
('more', 'en'),
('more', 'en'),
('most', 'en'),
('most', 'en'),
('must', 'en'),
('must', 'en'),
('my', 'en'),
('my', 'en'),
('new', 'en'),
('new', 'en'),
('no', 'en'),
('no', 'en'),
('none', 'en'),
('none', 'en'),
('not', 'en'),
('not', 'en'),
('noth', 'en'),
('noth', 'en'),
('nothing', 'en'),
('nothing', 'en'),
('of', 'en'),
('of', 'en'),
('off', 'en'),
('off', 'en'),
('often', 'en'),
('often', 'en'),
('old', 'en'),
('old', 'en'),
('on', 'en'),
('on', 'en'),
('onc', 'en'),
('onc', 'en'),
('once', 'en'),
('once', 'en'),
('onli', 'en'),
('onli', 'en'),
('only', 'en'),
('only', 'en'),
('or', 'en'),
('or', 'en'),
('other', 'en'),
('other', 'en'),
('our', 'en'),
('our', 'en'),
('ours', 'en'),
('ours', 'en'),
('out', 'en'),
('out', 'en'),
('over', 'en'),
('over', 'en'),
('page', 'en'),
('page', 'en'),
('she', 'en'),
('she', 'en'),
('should', 'en'),
('should', 'en'),
('small', 'en'),
('small', 'en'),
('so', 'en'),
('so', 'en'),
('some', 'en'),
('some', 'en'),
('than', 'en'),
('than', 'en'),
('thank', 'en'),
('thank', 'en'),
('that', 'en'),
('that', 'en'),
('the', 'en'),
('the', 'en'),
('their', 'en'),
('their', 'en'),
('theirs', 'en'),
('theirs', 'en'),
('them', 'en'),
('them', 'en'),
('then', 'en'),
('then', 'en'),
('there', 'en'),
('there', 'en'),
('these', 'en'),
('these', 'en'),
('they', 'en'),
('they', 'en'),
('this', 'en'),
('this', 'en'),
('those', 'en'),
('those', 'en'),
('thus', 'en'),
('thus', 'en'),
('time', 'en'),
('time', 'en'),
('times', 'en'),
('times', 'en'),
('to', 'en'),
('to', 'en'),
('too', 'en'),
('too', 'en'),
('true', 'en'),
('true', 'en'),
('under', 'en'),
('under', 'en'),
('until', 'en'),
('until', 'en'),
('up', 'en'),
('up', 'en'),
('upon', 'en'),
('upon', 'en'),
('use', 'en'),
('use', 'en'),
('user', 'en'),
('user', 'en'),
('users', 'en'),
('users', 'en'),
('veri', 'en'),
('veri', 'en'),
('version', 'en'),
('version', 'en'),
('very', 'en'),
('very', 'en'),
('via', 'en'),
('via', 'en'),
('want', 'en'),
('want', 'en'),
('was', 'en'),
('was', 'en'),
('way', 'en'),
('way', 'en'),
('were', 'en'),
('were', 'en'),
('what', 'en'),
('what', 'en'),
('when', 'en'),
('when', 'en'),
('where', 'en'),
('where', 'en'),
('whi', 'en'),
('whi', 'en'),
('which', 'en'),
('which', 'en'),
('who', 'en'),
('who', 'en'),
('whom', 'en'),
('whom', 'en'),
('whose', 'en'),
('whose', 'en'),
('why', 'en'),
('why', 'en'),
('wide', 'en'),
('wide', 'en'),
('will', 'en'),
('will', 'en'),
('with', 'en'),
('with', 'en'),
('within', 'en'),
('within', 'en'),
('without', 'en'),
('without', 'en'),
('would', 'en'),
('would', 'en'),
('yes', 'en'),
('yes', 'en'),
('yet', 'en'),
('yet', 'en'),
('you', 'en'),
('you', 'en'),
('your', 'en'),
('your', 'en'),
('yours', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens`
--

DROP TABLE IF EXISTS `#__finder_tokens`;
CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `#__finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
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
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__finder_types`
--

DROP TABLE IF EXISTS `#__finder_types`;
CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__finder_types`
--

INSERT INTO `#__finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_attachments`
--

DROP TABLE IF EXISTS `#__k2_attachments`;
CREATE TABLE IF NOT EXISTS `#__k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_attachments`
--

INSERT INTO `#__k2_attachments` (`id`, `itemID`, `filename`, `title`, `titleAttribute`, `hits`) VALUES
(2, 86, 'Timetable.pdf', 'Timetable', 'Timetable.pdf', 5);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_categories`
--

DROP TABLE IF EXISTS `#__k2_categories`;
CREATE TABLE IF NOT EXISTS `#__k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `#__k2_categories`
--

INSERT INTO `#__k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(2, 'Home', 'home', '', 0, 0, 1, 1, 3, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Medium","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"order","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"443","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Medium","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(3, 'About us', 'about', '', 0, 0, 1, 1, 4, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Small","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"order","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"250","itemImageM":"430","itemImageL":"590","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"0","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(4, 'Blog', 'blog', '', 0, 0, 1, 1, 6, '', '{"inheritFrom":"0","theme":"blog","num_leading_items":"3","num_leading_columns":"1","leadingImgSize":"Medium","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"order","catPagination":"2","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"290","itemImageL":"590","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"1","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"1","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"1","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(5, 'Gallery', 'gallery', '', 0, 0, 1, 1, 5, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"210","itemImageS":"290","itemImageM":"450","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"0","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(6, 'Blank', 'blank', '', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(7, 'Testimonials', 'testimonials', '', 0, 0, 1, 1, 7, '', '{"inheritFrom":"0","theme":"","num_leading_items":"6","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"0","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"0","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"0","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(8, 'FAQs', 'faqs', '', 0, 0, 1, 1, 8, '', '{"inheritFrom":"0","theme":"faq","num_leading_items":"6","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"0","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"0","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"0","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(9, 'Policies', 'policies', '', 0, 0, 1, 1, 2, '', '{"inheritFrom":"0","theme":"","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(10, 'Classes', 'classes', '', 4, 0, 1, 1, 2, '', '{"inheritFrom":"4","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(11, 'Trainers', 'trainers', '', 4, 0, 1, 1, 1, '', '{"inheritFrom":"4","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(12, 'Diet programs', 'diet-programs', '', 4, 0, 1, 1, 3, '', '{"inheritFrom":"4","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(13, 'Fitness', 'fitness', '', 4, 0, 1, 1, 4, '', '{"inheritFrom":"4","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(18, 'Our History', 'our-history', '', 0, 0, 1, 1, 9, '', '{"inheritFrom":"0","theme":"","num_leading_items":"0","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"6","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"order","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"0","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"0","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(19, 'Splash Page', 'splash-page', '', 0, 0, 1, 1, 10, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(20, 'latest news', 'latest-news', '', 0, 0, 1, 1, 11, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"0","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(22, 'diet programs', 'diet-programs', '', 0, 0, 1, 1, 12, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"100","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"0","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Medium","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(23, 'Slider', 'slider', '', 0, 0, 1, 1, 13, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');
INSERT INTO `#__k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(24, 'our trainers', 'our-trainers', '', 0, 0, 1, 1, 14, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"120","itemImageS":"","itemImageM":"430","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Medium","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(26, 'Classes', 'classes', '', 0, 0, 1, 1, 15, '', '{"inheritFrom":"0","theme":"timetable","num_leading_items":"1","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"0","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"order","catPagination":"0","catPaginationResults":"0","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"0","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"0","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"1","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"0","catItemCommentsAnchor":"0","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"0","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"0","itemRating":"0","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"0","itemDateModified":"0","itemHits":"0","itemCategory":"0","itemTags":"0","itemAttachments":"1","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemImageGallery":"0","itemNavigation":"0","itemComments":"0","itemTwitterButton":"0","itemFacebookButton":"0","itemGooglePlusOneButton":"0","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"0","itemRelatedLimit":"5","itemRelatedTitle":"0","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_comments`
--

DROP TABLE IF EXISTS `#__k2_comments`;
CREATE TABLE IF NOT EXISTS `#__k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__k2_comments`
--

INSERT INTO `#__k2_comments` (`id`, `itemID`, `userID`, `userName`, `commentDate`, `commentText`, `commentEmail`, `commentURL`, `published`) VALUES
(1, 38, 0, 'Patricia Green', '2012-01-26 17:49:56', 'Fusce volutpat quam ac dui ultrices a mattis eros sodales. Nulla rutrum rutrum felis rutrum bibendum. Pellentesque eu rutrum diam. Nullam luctus malesuada elit, ac vulputate justo molestie in. Proin porttitor lacus vitae nulla blandit dignissim. Aliquam erat volutpat. Integer eget accumsan nibh.', 'patricia@demolink.org', '', 1),
(2, 38, 0, 'Jason Robinson', '2012-01-26 17:50:26', 'Nam accumsan mauris ut turpis tincidunt sagittis. Sed ultrices massa accumsan nisl adipiscing varius. Vestibulum tempus lacinia porta. Maecenas lacinia vehicula magna eu vestibulum. Phasellus consectetur venenatis arcu ac pellentesque.', 'jason@demolink.org', '', 1),
(3, 38, 0, 'Nancy Parker', '2012-01-26 17:53:18', 'Sed pharetra leo elementum nunc congue vitae placerat turpis egestas. Morbi egestas urna euismod felis congue commodo. Aliquam erat volutpat. Suspendisse non nunc volutpat tellus vestibulum luctus. Donec dictum, diam porttitor ullamcorper sagittis, elit purus pulvinar nisi, in iaculis metus elit in justo.', 'nancy@demolink.org', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields`
--

DROP TABLE IF EXISTS `#__k2_extra_fields`;
CREATE TABLE IF NOT EXISTS `#__k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__k2_extra_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields_groups`
--

DROP TABLE IF EXISTS `#__k2_extra_fields_groups`;
CREATE TABLE IF NOT EXISTS `#__k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__k2_extra_fields_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__k2_items`
--

DROP TABLE IF EXISTS `#__k2_items`;
CREATE TABLE IF NOT EXISTS `#__k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `#__k2_items`
--

INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(7, 'welcome to body sculptor', 'welcome-to-body-sculptor', 2, 1, '<img src="images/page1_img1.jpg" alt="" />\r\n<img src="images/page1_img2.jpg" alt="" />\r\n\r\n<div class="clr"></div>\r\n\r\n<h5>Our fitness center offers a choice of accessories for your trainings and personal care products & nutritions</h5>\r\n\r\n<p>Praesent vestibulum molestie lacus. Aeneanu nonummy hendrerit mauris. Phaselluse portame. Fusce suscipit varius mi. Cum soc. Montes nascetur ridiculus mus. Nulla dui fusce feugiat malesuada odio.</p>\r\n\r\n<p>Morb nunc odio gravidam at, cursus nec, luctus a, lorem. Maecenas trist ique orci ac sem. Duis ultriciesem pharetra magna donec accumsan males uada orci. Donec sit amet eros. Lorem ipsum dolor.</p>\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2011-12-25 13:23:31', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 12:06:08', 42, '2011-12-25 13:23:31', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 19, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(11, 'about us', 'about-us', 3, 1, '<h5>Lorem ipsum dolor sit amet, consectetu. Praesent vestibulum moles lacus.</h5>\r\n\r\n<p>Praesent vestibulum molestie lacus aeneanu nonummy hendrerit mauriseme phaselluse portame. Fusce suscipit varius mi. Cum soc. Montesum nascetur ridiculus mus. Nulla dui fusce feugiat malesuada odio.</p>\r\n\r\n<p>Morb nunc odio gravidam atume cursus nec luctus a, lorem. Maecenas trist ique orci ac sem. Duis ultriciesem pharetra magna donec accumsan males uada orci.</p>\r\n\r\n', '\r\n\r\n<p> <strong>Integer ullamcorper viverra nibh ac pulvinar</strong>. Integer dictum lorem at   diam tempus luctus. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> <strong>Fusce in dolor eget dui bibendum eleifend id</strong> eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet dapibus   pretium, dui metus dapibus turpis, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>\r\n\r\n<p> <strong>Nam ultricies nisi id libero ultricies condimentum</strong>. Nunc nibh libero,   rhoncus ac consequat et, dictum vel ipsum. In faucibus auctor eros quis   varius. Vestibulum semper dolor sed mauris tempus eget dignissim felis   tristique. Ut quis tempor lectus. Ut vestibulum lobortis arcu sit amet   tempor. Donec mollis ultricies aliquam. Quisque purus libero, rutrum   vitae dapibus ac, venenatis quis purus. In tincidunt porta dui vel   fringilla. </p>', NULL, NULL, '[]', '', '2011-12-25 13:26:12', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 12:29:09', 42, '2011-12-25 13:26:12', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 33, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(15, 'Vestibulum sed', 'vestibulum-sed', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:13:35', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:21:18', 42, '2011-12-25 14:13:35', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(16, 'Donec sagittis', 'donec-sagittis', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:16:15', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:21:08', 42, '2011-12-25 14:16:15', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(17, 'Quisque diam', 'quisque-diam', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:16:36', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:59', 42, '2011-12-25 14:16:36', '0000-00-00 00:00:00', 0, 1, 7, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(18, 'Scelerisque vitae', 'scelerisque-vitae', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:16:57', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:49', 42, '2011-12-25 14:16:57', '0000-00-00 00:00:00', 0, 1, 9, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(19, 'Vestibulum sed', 'vestibulum-sed', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:17:32', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:41', 42, '2011-12-25 14:16:57', '0000-00-00 00:00:00', 0, 1, 10, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(20, 'Donec sagittis', 'donec-sagittis', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:17:32', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:32', 42, '2011-12-25 14:16:36', '0000-00-00 00:00:00', 0, 1, 8, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(21, 'Quisque diam', 'quisque-diam', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:17:32', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:23', 42, '2011-12-25 14:16:15', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(22, 'Scelerisque vitae', 'scelerisque-vitae', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:17:33', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:14', 42, '2011-12-25 14:13:35', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(23, 'Vestibulum sed', 'vestibulum-sed', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n', '\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci, elementum vel fringilla eget, consectetur vel risus. In libero ipsum, malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis metus eget lacinia. Nullam varius lorem vel massa viverra volutpat.</p>\r\n<p>Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet ante aliquet eu. In varius molestie erat, sit amet elementum nibh laoreet in.</p>\r\n<p>Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi, in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris. Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras eleifend consectetur sapien, nec dignissim nulla condimentum eu.</p>', NULL, NULL, '[]', '', '2011-12-25 14:19:59', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:20:04', 42, '2011-12-25 14:13:35', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');
INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(24, 'Donec sagittis', 'donec-sagittis', 5, 1, '<p>Praesent vestibulum molesti lacus aeneanu nonummy hendreri mauris phaselluse portame fusce suscipit varius mi. Cum socontem.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2011-12-25 14:19:59', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 15:19:56', 42, '2011-12-25 14:16:15', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(25, 'Robert Smith', 'robert-smith', 7, 1, '<p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, turpis vitae ornare dignissim, velit diam dictum magna, vitae consequat nunc justo id arcu. Vivamus hendrerit tempor magna, ac fermentum justo ultricies sit amet. Etiam mauris neque, bibendum vitae facilisis et, luctus non arcu. Vestibulum fringilla vehicula scelerisque. Praesent ultricies, sem quis auctor tempus, justo ipsum elementum enim, congue aliquam odio sapien sit amet nunc. Pellentesque porta, mi ac egestas adipiscing, tellus leo mollis nibh, ut ultricies velit leo nec purus. Nullam massa erat, ultrices in interdum id, elementum sit amet magna. Suspendisse potenti. Quisque convallis quam non ante fermentum eget facilisis sapien tincidunt. Fusce tincidunt laoreet viverra.</p>\r\n\r\n<div class="test-author">\r\n	<span class="author">Robert Smith</span>\r\n	<span class="link"><a href="#">demolink.org</a></span>\r\n </div>', '', NULL, NULL, '[]', '', '2012-01-12 16:17:31', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:17:31', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(26, 'Elizabeth Green', 'elizabeth-green', 7, 1, '<p>Nulla sollicitudin ornare dolor, id auctor magna suscipit tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus et turpis sed urna feugiat bibendum. Quisque magna libero, facilisis quis congue faucibus, elementum nec turpis. Nullam tortor eros, fringilla quis aliquam eget, porta non mi. Curabitur ac lacus ac lorem lobortis blandit. Nullam vel mauris nulla, in tristique risus. Nunc sed rutrum orci. Duis faucibus dolor nec est rutrum a varius nisl adipiscing. Nulla pretium nulla ac augue venenatis eu rhoncus erat dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec condimentum pellentesque ipsum nec ornare. Donec in nisi est. In pulvinar consectetur nisi in condimentum. Etiam ipsum est, vulputate eget facilisis non, scelerisque id arcu.</p>\r\n\r\n<div class="test-author">\r\n	<span class="author">Elizabeth Green</span>\r\n	<span class="link"><a href="#">demolink.org</a></span>\r\n </div>', '', NULL, NULL, '[]', '', '2012-01-12 16:18:13', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:18:13', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(27, 'Jeff Campbell', 'jeff-campbell', 7, 1, '<p>Sed sollicitudin feugiat odio, cursus vulputate mauris elementum quis. Phasellus suscipit condimentum ligula id consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sollicitudin mi nec mi hendrerit non semper orci convallis. Suspendisse potenti. Ut pharetra nunc id augue mollis semper. Sed luctus nulla vitae odio venenatis eget tincidunt urna dignissim. Vestibulum at ipsum nibh. Pellentesque condimentum faucibus ligula sed consectetur. Duis vel magna nisi, at rhoncus nulla.\r\nNulla est ligula, aliquam in blandit in, vehicula at libero. Suspendisse velit tellus, lacinia quis dictum non, pellentesque eu mi. Maecenas velit eros, molestie id facilisis malesuada, tincidunt at lacus. Integer eu nibh lacus. Vestibulum tincidunt pellentesque porttitor. Curabitur rutrum velit id risus accumsan a rutrum magna laoreet. Suspendisse potenti.</p>\r\n\r\n<div class="test-author">\r\n	<span class="author">Jeff Campbell</span>\r\n	<span class="link"><a href="#">demolink.org</a></span>\r\n </div>', '', NULL, NULL, '[]', '', '2012-01-12 16:18:22', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:18:22', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(28, 'Margaret Walker', 'margaret-walker', 7, 1, '<p>Curabitur tempus condimentum est vel gravida. Fusce quis tellus elit. In ut nisl sed libero suscipit auctor venenatis elementum dolor. Aliquam non vestibulum arcu. Cras congue dignissim est, placerat sollicitudin odio tincidunt vel. Sed pretium vulputate erat cursus ultricies. Proin tortor neque, lacinia nec tempus ac, rhoncus ac justo. Vivamus vel ante in lorem scelerisque malesuada. Quisque quis nisl velit. Integer semper mauris non est accumsan tristique. Pellentesque pharetra metus vitae risus scelerisque pretium. Duis dolor nibh, consequat vehicula porttitor nec, blandit in urna. Nulla scelerisque dui at erat pretium ac laoreet enim lobortis.</p>\r\n\r\n<div class="test-author">\r\n	<span class="author">Margaret Walker</span>\r\n	<span class="link"><a href="#">demolink.org</a></span>\r\n </div>', '', NULL, NULL, '[]', '', '2012-01-12 16:18:32', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:18:32', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(29, 'Kenneth Edwards', 'kenneth-edwards', 7, 1, '<p>Donec ac felis massa. Aenean sit amet risus mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis fermentum vehicula consequat. Nullam ut neque justo. Duis malesuada tellus et tellus feugiat consequat. Sed id fringilla felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquam magna dignissim elit sollicitudin accumsan. Maecenas tempus luctus pretium. Duis augue velit, pharetra quis ullamcorper eget, porta id massa. Nam convallis hendrerit aliquam.</p>\r\n\r\n<div class="test-author">\r\n	<span class="author">Kenneth Edwards</span>\r\n	<span class="link"><a href="#">demolink.org</a></span>\r\n </div>', '', NULL, NULL, '[]', '', '2012-01-12 16:18:43', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:18:43', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(30, 'Donna Phillips', 'donna-phillips', 7, 1, '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras sollicitudin, risus sit amet consequat ornare, nibh erat fermentum mauris, faucibus congue arcu velit sit amet erat. Suspendisse ornare pulvinar ante. Curabitur ut lorem lorem, eget volutpat magna. Pellentesque eros arcu, sodales quis iaculis at, suscipit et odio. Pellentesque fermentum diam eu odio cursus mattis pulvinar sem volutpat. Integer ac tortor vitae nisl tempus blandit. Duis tincidunt quam at nulla tristique porttitor eu sed tellus. Mauris euismod, metus sed feugiat vestibulum, justo lectus feugiat nulla, tempor congue purus leo faucibus odio. Sed sagittis, mi ut imperdiet ultricies, lectus nulla tincidunt velit, eu vestibulum diam est vel lorem. Nulla egestas sem nec nisi scelerisque et tincidunt elit accumsan. Nam sapien enim, dapibus quis pharetra sed, cursus vel elit. Suspendisse potenti.</p>\r\n\r\n<div class="test-author">\r\n	<span class="author">Donna Phillips</span>\r\n	<span class="link"><a href="#">demolink.org</a></span>\r\n </div>', '', NULL, NULL, '[]', '', '2012-01-12 16:18:54', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:18:54', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(32, 'Nullam egestas ddretium odio', 'nullam-egestas-ddretium-odio', 8, 1, 'Nullam   egestas ddretium odio, eget tristique justo facilisis et. Curabitur   venenatis tincidunt sem ac viverra. Sed eget metus tortor. Etiam laoreet   ddorttitor neque aliquet auctor. Susddendisse molestie ddosuere enim ut   tristique. Nulla non enim sed quam dignissim blandit eget et turddis. In   sit amet tincidunt ante. In hac habitasse ddlatea dictumst. Donec vel   ante nunc.', '', NULL, NULL, '[]', '', '2012-01-12 16:19:44', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:19:44', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(33, 'Susddendisse in nunc turddis', 'susddendisse-in-nunc-turddis', 8, 1, 'Susddendisse in nunc turddis. ddhasellus tincidunt, erat sed viverra luctus, magna velit condimentum orci, sed susciddit velit arcu vitae nunc. ddroin sed dui turddis, sit amet fringilla lacus. Mauris ac imdderdiet arcu. ddhasellus dolor risus, fermentum eu vehicula et, hendrerit in justo. Susddendisse lobortis fringilla erat, sed feugiat arcu lobortis et. Donec id est non ante condimentum interdum eu blandit justo.', '', NULL, NULL, '[]', '', '2012-01-12 16:19:55', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:19:55', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(34, 'Donec interdum consectetur temddus', 'donec-interdum-consectetur-temddus', 8, 1, 'Donec interdum consectetur temddus. Etiam risus risus, ddulvinar in dignissim quis, ddorta in dui. ddellentesque quam arcu, facilisis id temddus eu, interdum nec tellus. Nullam venenatis ddorttitor ddurus, vitae ddharetra tortor molestie eu. Ut blandit ddellentesque nibh et ddorttitor. Nullam iaculis ultricies dui, non iaculis eros feugiat non. Vestibulum eleifend temddus gravida. Vestibulum luctus, metus quis commodo cursus, tellus sem auctor augue, at varius lorem enim quis nisl. Sed cursus nisl nec erat scelerisque et tristique mi ddlacerat.', '', NULL, NULL, '[]', '', '2012-01-12 16:20:05', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:20:05', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(35, 'Aenean aliquam viverra mi eget imdderdiet', 'aenean-aliquam-viverra-mi-eget-imdderdiet', 8, 1, 'Aenean aliquam viverra mi eget imdderdiet. ddroin viverra augue id mi ddlacerat consequat consequat leo commodo. Donec diam odio, rhoncus ut egestas ut, varius a mauris. Morbi molestie, metus id venenatis ultricies, ligula urna molestie est, eget feugiat quam mi vitae odio. Vivamus id facilisis nibh. Vivamus enim elit, mollis aliquet temddus facilisis, fringilla at justo. Morbi ac libero sem, a bibendum magna. In at mattis est. ddellentesque ac lectus eget lectus ddorttitor sagittis quis vel arcu. Curabitur sed mauris elit, non accumsan massa. Cras ut urna saddien, eu ddorta saddien. Nunc arcu nisl, feugiat nec dictum a, viverra vel ante. Ut aliquam gravida accumsan. ddhasellus lacinia ligula neque.', '', NULL, NULL, '[]', '', '2012-01-12 16:20:15', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:20:15', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(36, 'Donec sollicitudin mi quis neque sollicitudin vitae', 'donec-sollicitudin-mi-quis-neque-sollicitudin-vitae', 8, 1, 'Donec sollicitudin mi quis neque sollicitudin vitae temddus ligula hendrerit. Morbi venenatis fermentum daddibus. In luctus facilisis orci et ornare. Aliquam malesuada nisl ut tellus vestibulum scelerisque. ddraesent imdderdiet faucibus tristique. Nam laoreet lacus vel quam sodales tincidunt. Fusce non est id nunc tristique accumsan et non massa. Fusce iddsum diam, volutddat non rutrum vitae, ddorta sit amet risus. Vivamus lectus diam, adiddiscing sed temddor at, ddellentesque nec mi. Nam vitae dolor in turddis consequat ddretium.', '', NULL, NULL, '[]', '', '2012-01-12 16:20:24', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-12 16:20:24', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(37, 'Praesent vestibulum molestie lacusem.', 'praesent-vestibulum-molestie-lacusem', 10, 1, 'Praesent vestibulum molestie lacus aeneanu nonummy hendrerit mauriseme phasellusemem portame. Fusce suscipit varius mi. Cum soc. Montesum nascetur ridiculus mus. Nulla duimen fusce feugiat malesuada odio.\r\n', '\r\n<p><strong>Maecenas adipiscing, tortor </strong>ac iaculis blandit, eros est porta nulla, sit amet lobortis sem quam sed ipsum. <a href="#">Curabitur bibendum urna ligula</a>, a ornare lectus. In et urna arcu, id tincidunt arcu. Pellentesque faucibus augue a nibh fringilla eget gravida augue iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vehicula malesuada facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tellus augue, cursus et tincidunt et, lacinia ut eros. Aliquam hendrerit varius felis a condimentum.</p>\r\n<p><strong>In hac habitasse platea dictumst.</strong> Donec eu elit orci. Duis diam mauris, dignissim a consequat eget, tincidunt eget mauris. Integer vehicula, odio sit amet elementum mattis, felis sem tincidunt tellus, quis vehicula est urna ac odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel augue <a href="#">ultrices arcu dictum ultrices</a>. Sed cursus laoreet odio auctor volutpat. Suspendisse pulvinar eros ut massa facilisis fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam auctor nulla id erat euismod luctus. Nunc ligula orci, feugiat sit amet sagittis vel, faucibus et urna.</p>\r\n<p><strong>Cras aliquam felis quis ipsum pellentesque ultrices.</strong> Vivamus sed urna sed lorem blandit interdum sit amet sed nibh. Pellentesque dictum rhoncus velit, sit amet condimentum mauris varius vitae. Integer volutpat velit vel urna gravida nec malesuada sapien convallis. Proin euismod laoreet sem. Phasellus ullamcorper blandit leo, id pharetra leo tempus et. Curabitur interdum velit non diam malesuada ultrices nec at ligula. Praesent pellentesque lacus sed arcu cursus eu consectetur magna adipiscing. Duis id turpis quam. Quisque ullamcorper condimentum urna quis cursus. <a href="#">Aliquam scelerisque</a> odio ac purus euismod auctor. Maecenas nisi mi, elementum ut dapibus at, egestas eget ipsum. Integer quis arcu vitae elit cursus posuere vitae quis purus. Quisque nibh justo, egestas eget feugiat sit amet, mollis in elit.</p>', NULL, NULL, '[]', '', '2012-01-18 08:36:00', 42, '', 0, '0000-00-00 00:00:00', '2012-04-11 08:06:33', 42, '2012-01-18 08:36:00', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 5, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(38, 'Lorem ipsum dolor sit amet, consectetu.', 'lorem-ipsum-dolor-sit-amet-consectetu', 11, 1, 'Praesent vestibulum molestie lacus aeneanu nonummy hendrerit mauriseme phasellusemem portame. Fusce suscipit varius mi. Cum soc. Montesum nascetur ridiculus mus. Nulla duimen fusce feugiat malesuada odio.\r\n', '\r\n<p><strong>Maecenas adipiscing, tortor </strong>ac iaculis blandit, eros est porta nulla, sit amet lobortis sem quam sed ipsum. <a href="#">Curabitur bibendum urna ligula</a>, a ornare lectus. In et urna arcu, id tincidunt arcu. Pellentesque faucibus augue a nibh fringilla eget gravida augue iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vehicula malesuada facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tellus augue, cursus et tincidunt et, lacinia ut eros. Aliquam hendrerit varius felis a condimentum.</p>\r\n<p><strong>In hac habitasse platea dictumst.</strong> Donec eu elit orci. Duis diam mauris, dignissim a consequat eget, tincidunt eget mauris. Integer vehicula, odio sit amet elementum mattis, felis sem tincidunt tellus, quis vehicula est urna ac odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel augue <a href="#">ultrices arcu dictum ultrices</a>. Sed cursus laoreet odio auctor volutpat. Suspendisse pulvinar eros ut massa facilisis fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam auctor nulla id erat euismod luctus. Nunc ligula orci, feugiat sit amet sagittis vel, faucibus et urna.</p>\r\n<p><strong>Cras aliquam felis quis ipsum pellentesque ultrices.</strong> Vivamus sed urna sed lorem blandit interdum sit amet sed nibh. Pellentesque dictum rhoncus velit, sit amet condimentum mauris varius vitae. Integer volutpat velit vel urna gravida nec malesuada sapien convallis. Proin euismod laoreet sem. Phasellus ullamcorper blandit leo, id pharetra leo tempus et. Curabitur interdum velit non diam malesuada ultrices nec at ligula. Praesent pellentesque lacus sed arcu cursus eu consectetur magna adipiscing. Duis id turpis quam. Quisque ullamcorper condimentum urna quis cursus. <a href="#">Aliquam scelerisque</a> odio ac purus euismod auctor. Maecenas nisi mi, elementum ut dapibus at, egestas eget ipsum. Integer quis arcu vitae elit cursus posuere vitae quis purus. Quisque nibh justo, egestas eget feugiat sit amet, mollis in elit.</p>', NULL, NULL, '[]', '', '2012-01-18 08:36:20', 42, '', 0, '0000-00-00 00:00:00', '2012-04-11 08:06:17', 42, '2012-01-18 08:36:20', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 248, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');
INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(39, 'Privacy Policy', 'privacy-policy', 9, 1, '<p>Praesent vestibulum molestie lacus aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gravida at cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus.</p>\r\n\r\n<h4>Mauris fermentum dictum magna.</h4>\r\n<p>Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus.<br />\r\n  \r\n<h4>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada.</h4>\r\n<p>Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue. Nam elit magna, hendrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae, dapibus ac, scelerisque vitae, pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctor pulvinar. Proin ullamcorper urna et felis. Vestibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nulla vel diam. </p>\r\n\r\n<p>In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod purus. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius.</p>\r\n\r\n<h4> Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis</h4>\r\n<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. </p>\r\n\r\n<h4>Nemo enim ipsam voluptatem quia voluptas sit aspernatur</h4>\r\n<p>Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue. Nam elit magna, hendrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae, dapibus ac, scelerisque vitae, pede. </p>\r\n\r\n<p>E-mail: <a href="mailto:info@demolink.org">info@demolink.org</a></p>', '', NULL, NULL, '[]', '', '2012-01-18 08:54:23', 42, '', 0, '0000-00-00 00:00:00', '2012-02-16 07:46:33', 42, '2012-01-18 08:54:23', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 13, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(50, 'Sed ut perspiciatis unde omnis iste natus.', 'sed-ut-perspiciatis-unde-omnis-iste-natus', 12, 1, 'Praesent vestibulum molestie lacus aeneanu nonummy hendrerit mauriseme phasellusemem portame. Fusce suscipit varius mi. Cum soc. Montesum nascetur ridiculus mus. Nulla duimen fusce feugiat malesuada odio.\r\n', '\r\n<p><strong>Maecenas adipiscing, tortor </strong>ac iaculis blandit, eros est porta nulla, sit amet lobortis sem quam sed ipsum. <a href="#">Curabitur bibendum urna ligula</a>, a ornare lectus. In et urna arcu, id tincidunt arcu. Pellentesque faucibus augue a nibh fringilla eget gravida augue iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vehicula malesuada facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tellus augue, cursus et tincidunt et, lacinia ut eros. Aliquam hendrerit varius felis a condimentum.</p>\r\n<p><strong>In hac habitasse platea dictumst.</strong> Donec eu elit orci. Duis diam mauris, dignissim a consequat eget, tincidunt eget mauris. Integer vehicula, odio sit amet elementum mattis, felis sem tincidunt tellus, quis vehicula est urna ac odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel augue <a href="#">ultrices arcu dictum ultrices</a>. Sed cursus laoreet odio auctor volutpat. Suspendisse pulvinar eros ut massa facilisis fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam auctor nulla id erat euismod luctus. Nunc ligula orci, feugiat sit amet sagittis vel, faucibus et urna.</p>\r\n<p><strong>Cras aliquam felis quis ipsum pellentesque ultrices.</strong> Vivamus sed urna sed lorem blandit interdum sit amet sed nibh. Pellentesque dictum rhoncus velit, sit amet condimentum mauris varius vitae. Integer volutpat velit vel urna gravida nec malesuada sapien convallis. Proin euismod laoreet sem. Phasellus ullamcorper blandit leo, id pharetra leo tempus et. Curabitur interdum velit non diam malesuada ultrices nec at ligula. Praesent pellentesque lacus sed arcu cursus eu consectetur magna adipiscing. Duis id turpis quam. Quisque ullamcorper condimentum urna quis cursus. <a href="#">Aliquam scelerisque</a> odio ac purus euismod auctor. Maecenas nisi mi, elementum ut dapibus at, egestas eget ipsum. Integer quis arcu vitae elit cursus posuere vitae quis purus. Quisque nibh justo, egestas eget feugiat sit amet, mollis in elit.</p>', NULL, NULL, '[]', '', '2012-01-26 17:22:57', 42, '', 0, '0000-00-00 00:00:00', '2012-04-11 08:06:52', 42, '2012-01-18 08:36:20', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(51, 'Praesent vestibulum molestie lacusem.', 'praesent-vestibulum-molestie-lacusem', 13, 1, 'Praesent vestibulum molestie lacus aeneanu nonummy hendrerit mauriseme phasellusemem portame. Fusce suscipit varius mi. Cum soc. Montesum nascetur ridiculus mus. Nulla duimen fusce feugiat malesuada odio.\r\n', '\r\n<p><strong>Maecenas adipiscing, tortor </strong>ac iaculis blandit, eros est porta nulla, sit amet lobortis sem quam sed ipsum. <a href="#">Curabitur bibendum urna ligula</a>, a ornare lectus. In et urna arcu, id tincidunt arcu. Pellentesque faucibus augue a nibh fringilla eget gravida augue iaculis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vehicula malesuada facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tellus augue, cursus et tincidunt et, lacinia ut eros. Aliquam hendrerit varius felis a condimentum.</p>\r\n<p><strong>In hac habitasse platea dictumst.</strong> Donec eu elit orci. Duis diam mauris, dignissim a consequat eget, tincidunt eget mauris. Integer vehicula, odio sit amet elementum mattis, felis sem tincidunt tellus, quis vehicula est urna ac odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vel augue <a href="#">ultrices arcu dictum ultrices</a>. Sed cursus laoreet odio auctor volutpat. Suspendisse pulvinar eros ut massa facilisis fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam auctor nulla id erat euismod luctus. Nunc ligula orci, feugiat sit amet sagittis vel, faucibus et urna.</p>\r\n<p><strong>Cras aliquam felis quis ipsum pellentesque ultrices.</strong> Vivamus sed urna sed lorem blandit interdum sit amet sed nibh. Pellentesque dictum rhoncus velit, sit amet condimentum mauris varius vitae. Integer volutpat velit vel urna gravida nec malesuada sapien convallis. Proin euismod laoreet sem. Phasellus ullamcorper blandit leo, id pharetra leo tempus et. Curabitur interdum velit non diam malesuada ultrices nec at ligula. Praesent pellentesque lacus sed arcu cursus eu consectetur magna adipiscing. Duis id turpis quam. Quisque ullamcorper condimentum urna quis cursus. <a href="#">Aliquam scelerisque</a> odio ac purus euismod auctor. Maecenas nisi mi, elementum ut dapibus at, egestas eget ipsum. Integer quis arcu vitae elit cursus posuere vitae quis purus. Quisque nibh justo, egestas eget feugiat sit amet, mollis in elit.</p>', NULL, NULL, '[]', '', '2012-01-26 17:22:57', 42, '', 0, '0000-00-00 00:00:00', '2012-04-11 08:07:15', 42, '2012-01-18 08:36:00', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(60, '1998', '1998', 18, 1, '<p>Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2012-01-27 11:37:10', 42, '', 42, '2012-01-27 11:37:31', '2012-01-27 11:37:31', 42, '2012-01-26 12:17:34', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(61, '2000', '2000', 18, 1, '<p>Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2012-01-27 11:37:10', 42, '', 42, '2012-01-27 11:37:43', '2012-01-27 11:37:43', 42, '2012-01-26 11:15:58', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(62, '2002', '2002', 18, 1, '<p>Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2012-01-27 11:37:10', 42, '', 42, '2012-01-27 11:37:56', '2012-01-27 11:37:55', 42, '2012-01-26 11:16:07', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(63, '2005', '2005', 18, 1, '<p>Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2012-01-27 11:37:10', 42, '', 0, '0000-00-00 00:00:00', '2012-01-27 11:38:53', 42, '2012-01-26 11:16:19', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(64, '2010', '2010', 18, 1, '<p>Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2012-01-27 11:37:10', 42, '', 42, '2012-01-27 11:38:17', '2012-01-27 11:38:17', 42, '2012-01-26 11:16:19', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(65, '2012', '2012', 18, 1, '<p>Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium.</p>\r\n\r\n', '\r\n\r\n<p> Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Maecenas venenatis sollicitudin neque, vel rhoncus   sem suscipit id. Sed eleifend dignissim velit, accumsan posuere quam   pharetra et. Curabitur interdum euismod faucibus. Sed commodo sapien   eget justo aliquet iaculis. <a href="#">Nulla condimentum interdum </a>diam quis   imperdiet. Etiam sed magna nunc. Etiam tortor massa, convallis semper   cursus sed, elementum sit amet neque. Cras condimentum ullamcorper nisi   euismod consectetur. Morbi vitae porta purus. Pellentesque erat orci,   elementum vel fringilla eget, consectetur vel risus. In libero ipsum,   malesuada eu auctor non, cursus ut mauris. Donec eros odio, sagittis sit   amet hendrerit sit amet, dictum viverra metus. Ut lobortis sagittis   metus eget lacinia. Nullam varius lorem vel massa viverra volutpat. </p>\r\n\r\n<p> Integer ullamcorper viverra nibh ac pulvinar. Integer dictum lorem at <a href="#">diam tempus luctus</a>. Phasellus non eros ut ante iaculis fermentum gravida   eu nisi. Sed ut posuere lectus. Proin vestibulum sollicitudin erat, at   vestibulum metus sagittis et. In venenatis malesuada odio, ut imperdiet   ante aliquet eu. In varius molestie erat, sit amet elementum nibh   laoreet in. </p>\r\n\r\n<p> Fusce in dolor eget dui bibendum eleifend id eu sem. Donec tempus diam   eu quam pulvinar non facilisis erat tempus. Morbi fringilla sagittis mi,   in semper diam malesuada sit amet. Nulla id vestibulum felis. Nunc in   arcu eros, at imperdiet lacus. Vivamus lectus nisl, rhoncus ac lacinia   at, pellentesque ac nulla. Donec imperdiet, nisl sit amet <a href="#">dapibus   pretium, dui metus dapibus turpis</a>, semper luctus nisl libero et mauris.   Quisque egestas consequat mi. Aenean orci mauris, viverra sit amet   tincidunt eget, facilisis id ligula. Curabitur sollicitudin ornare justo   vel pretium. Pellentesque adipiscing suscipit neque at pretium. Morbi   viverra placerat eros id venenatis. Quisque at massa arcu. Phasellus   magna dolor, tempus ac condimentum non, imperdiet eget ligula. Cras   eleifend consectetur sapien, nec dignissim nulla condimentum eu. </p>', NULL, NULL, '[]', '', '2012-01-27 11:37:10', 42, '', 0, '0000-00-00 00:00:00', '2012-01-27 11:38:32', 42, '2012-01-26 11:16:07', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(66, 'Lorem ipsum dol amet consectetue', 'lorem-ipsum-dol-amet-consectetue', 20, 1, 'Vestibulum molestie lacus aeneanum nonumm hendrerit mauris phaselus portameus.\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-03-29 15:42:55', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 13:03:59', 42, '2012-03-29 15:42:55', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 8, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');
INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(67, 'Praesent vestibulum molestie', 'praesent-vestibulum-molestie', 20, 1, 'Hendrerit mauris phasellus portameusce suscip varius mi. Cum sociis natoque penat.\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-03-29 15:43:42', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 13:04:42', 42, '2012-03-29 15:43:42', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 5, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(68, 'Vestibulum iaculis lacinia estum', 'vestibulum-iaculis-lacinia-estum', 20, 1, 'Vestibulum molestie lacus aeneanum nonumm hendrerit mauris phasellus portameusc.\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-03-29 15:44:26', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 13:05:14', 42, '2012-03-29 15:44:26', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(72, 'Program 1', 'program-1', 22, 1, 'Vestibulum molestie toret lacus aeneanum lorenu nonumm hendreritum vinu maurisem phaselusumen portameus montes.\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-03-29 20:53:39', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 12:42:44', 42, '2012-03-29 20:53:39', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 11, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(73, 'Program 2', 'program-2', 22, 1, 'Ut enim ad molestie toret lacus aeneanum lorenu nonumm hendreritum vinu maurisem phaselusumen portameus montes.\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-03-29 20:54:45', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 12:43:33', 42, '2012-03-29 20:54:45', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(86, 'Book A Class - Bodybuilding & Fitness Timetable', 'book-a-class-bodybuilding-fitness-timetable', 26, 1, '<table class="timetable">\r\n<thead>\r\n<tr>\r\n<th></th>\r\n<th>7:00am</th>\r\n<th>10:00am</th>\r\n<th>12:00pm</th>\r\n<th>12:15pm</th>\r\n<th>12:30pm</th>\r\n<th>1:00pm</th>\r\n<th>1:15pm</th>\r\n<th>2:00pm</th>\r\n<th>5:15pm</th>\r\n<th>5:30pm</th>\r\n<th>6:00pm</th>\r\n<th>6:15pm</th>\r\n<th>6:45pm</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Monday</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="black">Praesent vestib</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="red">Loremet ipsum</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Tuesday</td>\r\n<td></td>\r\n<td></td>\r\n<td class="white">Vivamus</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="red">Loremet ipsum</td>\r\n<td></td>\r\n<td class="white">Vivamus</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Wednesday</td>\r\n<td></td>\r\n<td class="red">Loremet ipsum</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="white">Vivamus</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Thursday</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="black">Praesent vestib</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="black">Praesent vestib</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Friday</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td class="white">Vivamus</td>\r\n<td></td>\r\n<td></td>\r\n<td class="red">Loremet ipsum</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Saturday</td>\r\n<td></td>\r\n<td class="white">Vivamus</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', NULL, NULL, '[]', '', '2012-04-10 13:19:05', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 13:58:57', 42, '2012-04-10 13:19:05', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 6, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(74, 'Program  3', 'program-3', 22, 1, 'Proin dictum molest toret lacus aeneanum lorenu nonumm hendreritum vinu maurisem phaselusumen portameus montes.\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-03-29 20:55:23', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 12:44:11', 42, '2012-03-29 20:55:23', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 3, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(76, 'Slide 1', 'slide-1', 23, 1, '<div>Get to know how to </div><div class="text1">build muscle</div>\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-07 14:44:27', 42, '', 0, '0000-00-00 00:00:00', '2012-04-09 15:37:26', 42, '2012-04-07 14:44:27', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(77, 'Slide 2', 'slide-2', 23, 1, '<div>Learn the secrets of</div> <div class="text1">bodybuilding</div>\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-07 14:47:12', 42, '', 0, '0000-00-00 00:00:00', '2012-04-09 15:06:37', 42, '2012-04-07 14:44:27', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(78, 'Slide 3', 'slide-3', 23, 1, '<div class="text2">Get Lean, Build Muscle & Lose Fat</div>\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-07 14:48:13', 42, '', 0, '0000-00-00 00:00:00', '2012-04-09 15:06:57', 42, '2012-04-07 14:44:27', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(79, 'Slide 4', 'slide-4', 23, 1, '<div class="text2">Get the REAL RESULTS you want</div>\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-07 14:49:12', 42, '', 0, '0000-00-00 00:00:00', '2012-04-09 15:07:11', 42, '2012-04-07 14:44:27', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(80, 'Slide 5', 'slide-5', 23, 1, '<div>Are You Ready to </div>\r\n<div class="text1">Muscle UP?</div>\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-07 14:58:18', 42, '', 0, '0000-00-00 00:00:00', '2012-04-09 15:07:36', 42, '2012-04-07 14:44:27', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 5, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');
INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(81, 'Mark Johnson', 'mark-johnson', 24, 1, 'Gym Manager\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-10 10:47:26', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 11:23:11', 42, '2012-04-10 10:47:26', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(82, 'Bradley Grosh', 'bradley-grosh', 24, 1, 'Personal Trainer\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-10 11:09:35', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 11:36:10', 42, '2012-04-10 10:47:26', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(83, 'Jessica Priston', 'jessica-priston', 24, 1, 'Assistant Organizer\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-10 11:10:00', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 11:36:45', 42, '2012-04-10 10:47:26', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(84, 'Patrick Pool', 'patrick-pool', 24, 1, 'Assistant Organizer\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-10 11:12:46', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 11:37:21', 42, '2012-04-10 10:47:26', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(85, 'Sam Kromstain', 'sam-kromstain', 24, 1, 'Gym Manager\r\n\r\n', '\r\n\r\n<p> <strong>Integer vel nulla ut erat faucibus</strong> auctor in in felis. Proin a justo   arcu. Sed commodo dolor vel velit elementum eget volutpat nisi placerat.   In tellus nulla, lacinia a vestibulum at, dapibus sed lorem. Nunc porta   pharetra sollicitudin. Quisque a risus eu lectus fringilla sodales eu   ac felis. Suspendisse potenti. Etiam at semper enim. <a href="#">Nunc varius mauris   leo</a>, ut facilisis orci. Praesent vehicula, lectus id condimentum   suscipit, ipsum mauris vulputate elit, quis auctor turpis magna   fringilla justo. Nunc felis risus, scelerisque vitae pulvinar id,   bibendum sed sem. Fusce vitae imperdiet enim. </p>\r\n\r\n<p> <strong>Cras faucibus, tortor</strong> pellentesque volutpat egestas, justo quam   facilisis nibh, sit amet fermentum nibh velit auctor quam. Donec nisi   nisi, venenatis eu laoreet quis, aliquam vitae sapien. Proin pretium   rutrum aliquet. Morbi nisi libero, luctus quis luctus eu, sodales ac   turpis. Aliquam erat volutpat. Phasellus ligula ipsum, condimentum sit   amet ultrices ut, euismod ut urna.<a href="#"> Aliquam justo magna, laoreet sed   cursus lobortis</a>, fermentum non augue. Suspendisse viverra tincidunt   tincidunt. Ut dignissim nibh tempor purus bibendum nec elementum est   placerat. Nulla rhoncus lectus ut turpis imperdiet dapibus aliquet mi   feugiat. Proin a augue purus. Morbi placerat accumsan tincidunt.   Pellentesque habitant morbi tristique senectus et netus et malesuada   fames ac turpis egestas. Duis a varius urna. Pellentesque molestie nibh   vestibulum ligula hendrerit tempor adipiscing purus pretium. </p>\r\n\r\n<p> <strong>Morbi ac orci mi. Fusce interdum</strong> dui ornare mauris tincidunt laoreet.   Cras ligula ipsum, tincidunt nec egestas at, suscipit id nunc. Class   aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Integer id odio nunc, rutrum tincidunt enim. Cum   sociis natoque penatibus et magnis dis<a href="#"> parturient montes, nascetur</a> ridiculus mus. Nunc condimentum tincidunt dapibus. Phasellus sit amet   nunc ipsum. Nulla placerat rutrum nisl ac porttitor. </p>', NULL, NULL, '[]', '', '2012-04-10 11:13:21', 42, '', 0, '0000-00-00 00:00:00', '2012-04-10 11:37:58', 42, '2012-04-10 10:47:26', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 3, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_rating`
--

DROP TABLE IF EXISTS `#__k2_rating`;
CREATE TABLE IF NOT EXISTS `#__k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__k2_rating`
--

INSERT INTO `#__k2_rating` (`itemID`, `rating_sum`, `rating_count`, `lastip`) VALUES
(38, 3, 1, '192.168.9.37');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags`
--

DROP TABLE IF EXISTS `#__k2_tags`;
CREATE TABLE IF NOT EXISTS `#__k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__k2_tags`
--

INSERT INTO `#__k2_tags` (`id`, `name`, `published`) VALUES
(1, 'Classes', 1),
(2, 'Diet programs', 1),
(3, 'Trainers', 1),
(4, 'Fitness', 1),
(5, 'admin manage', 1),
(6, 'one two', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags_xref`
--

DROP TABLE IF EXISTS `#__k2_tags_xref`;
CREATE TABLE IF NOT EXISTS `#__k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=251 ;

--
-- Dumping data for table `#__k2_tags_xref`
--

INSERT INTO `#__k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(250, 3, 15),
(249, 2, 15),
(247, 4, 16),
(246, 2, 16),
(245, 1, 16),
(244, 4, 17),
(243, 3, 17),
(242, 2, 17),
(241, 2, 18),
(240, 1, 18),
(239, 4, 19),
(238, 3, 19),
(237, 2, 20),
(236, 1, 20),
(235, 4, 21),
(234, 2, 21),
(233, 4, 22),
(232, 3, 22),
(231, 3, 23),
(230, 2, 23),
(229, 1, 23),
(228, 4, 24),
(227, 1, 24),
(248, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_users`
--

DROP TABLE IF EXISTS `#__k2_users`;
CREATE TABLE IF NOT EXISTS `#__k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__k2_users`
--

INSERT INTO `#__k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 42, 'Super User', 'm', '', NULL, '', 1, '', '127.0.0.1', 'demolink.org', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_user_groups`
--

DROP TABLE IF EXISTS `#__k2_user_groups`;
CREATE TABLE IF NOT EXISTS `#__k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__k2_user_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

DROP TABLE IF EXISTS `#__languages`;
CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

DROP TABLE IF EXISTS `#__menu`;
CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 109, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 37, 42, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 38, 39, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 40, 41, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 47, 52, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 48, 49, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 50, 51, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 53, 58, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 54, 55, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 56, 57, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 67, 68, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 59, 60, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 61, 66, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 62, 63, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 64, 65, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=2', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["2"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"home","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 11, 12, 0, '*', 0),
(103, 'main', 'COM_K2', 'comk2', '', 'comk2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 69, 90, 0, '', 1),
(104, 'main', 'K2_ITEMS', 'k2items', '', 'comk2/k2items', 'index.php?option=com_k2&view=items', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 70, 71, 0, '', 1),
(105, 'main', 'K2_CATEGORIES', 'k2categories', '', 'comk2/k2categories', 'index.php?option=com_k2&view=categories', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 72, 73, 0, '', 1),
(106, 'main', 'K2_TAGS', 'k2tags', '', 'comk2/k2tags', 'index.php?option=com_k2&view=tags', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 74, 75, 0, '', 1),
(107, 'main', 'K2_COMMENTS', 'k2comments', '', 'comk2/k2comments', 'index.php?option=com_k2&view=comments', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 76, 77, 0, '', 1),
(108, 'main', 'K2_USERS', 'k2users', '', 'comk2/k2users', 'index.php?option=com_k2&view=users', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 78, 79, 0, '', 1),
(109, 'main', 'K2_USER_GROUPS', 'k2usergroups', '', 'comk2/k2usergroups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 80, 81, 0, '', 1),
(110, 'main', 'K2_EXTRA_FIELDS', 'k2extrafields', '', 'comk2/k2extrafields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 82, 83, 0, '', 1),
(111, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2extrafieldgroups', '', 'comk2/k2extrafieldgroups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 84, 85, 0, '', 1),
(112, 'main', 'K2_MEDIA_MANAGER', 'k2mediamanager', '', 'comk2/k2mediamanager', 'index.php?option=com_k2&view=media', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 86, 87, 0, '', 1),
(113, 'main', 'K2_INFORMATION', 'k2information', '', 'comk2/k2information', 'index.php?option=com_k2&view=info', 'component', 0, 103, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 88, 89, 0, '', 1),
(114, 'mainmenu', 'Contacts', 'contacts', '', 'contacts', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"plain","show_contact_category":"","show_contact_list":"","show_name":"0","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Contact Us","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 35, 36, 0, '*', 0),
(116, 'mainmenu', 'About', 'about', '', 'about', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=3', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 22, '{"categories":["3"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"about","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"104","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 13, 22, 0, '*', 0),
(117, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=4', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"categories":["4"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Blog","pageclass_sfx":"blog","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 33, 34, 0, '*', 0),
(118, 'mainmenu', 'Gallery', 'gallery', '', 'gallery', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"104","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 25, 32, 0, '*', 0),
(119, 'mainmenu', 'gallery (2)', 'gallery-2', '', 'gallery/gallery-2', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', 1, 118, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["6","5"],"catCatalogMode":"0","theme":"portfolio","num_leading_items":"0","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"8","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"","catPagination":"0","catPaginationResults":"0","catFeedLink":"0","catFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"our gallery (2)","pageclass_sfx":"port","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 26, 27, 0, '*', 0),
(120, 'mainmenu', 'gallery (3)', 'gallery-3', '', 'gallery/gallery-3', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', 1, 118, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["6","5"],"catCatalogMode":"0","theme":"portfolio","num_leading_items":"0","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"10","num_primary_columns":"3","primaryImgSize":"Small","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"","catPagination":"0","catPaginationResults":"0","catFeedLink":"0","catFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"our gallery (3)","pageclass_sfx":"port","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 28, 29, 0, '*', 0),
(121, 'mainmenu', 'gallery (4)', 'gallery-4', '', 'gallery/gallery-4', 'index.php?option=com_k2&view=itemlist&layout=category&task=&id=', 'component', 1, 118, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["6","5"],"catCatalogMode":"0","theme":"portfolio","num_leading_items":"0","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"10","num_primary_columns":"4","primaryImgSize":"XSmall","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"0","num_links_columns":"1","linksImgSize":"XSmall","catFeaturedItems":"1","catOrdering":"","catPagination":"0","catPaginationResults":"0","catFeedLink":"0","catFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"our gallery (4)","pageclass_sfx":"port","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 30, 31, 0, '*', 0),
(122, 'mainmenu', 'Testimonials', 'testimonials', '', 'about/faqs/testimonials', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=7', 'component', 1, 123, 3, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["7"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Testimonials","pageclass_sfx":"testimonials","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 19, 20, 0, '*', 0),
(123, 'mainmenu', 'FAQs', 'faqs', '', 'about/faqs', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=8', 'component', 1, 116, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"categories":["8"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"Frequently Asked Questions","pageclass_sfx":"faqs","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"104","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 18, 21, 0, '*', 0),
(124, 'system-menu', 'Privacy Policy', 'privacy-policy', '', 'privacy-policy', 'index.php?option=com_k2&view=item&layout=item&id=39', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"82","fusion_module_positions":"","splitmenu_item_subtext":""}', 91, 92, 0, '*', 0),
(127, 'mainmenu', 'Our history', 'our-history', '', 'about/our-history', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=18', 'component', 1, 116, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["18"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"history","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 14, 15, 0, '*', 0),
(128, 'mainmenu', 'Company Overview', 'company-overview', '', 'about/company-overview', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=3', 'component', -2, 116, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["3"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"80","fusion_module_positions":"","splitmenu_item_subtext":""}', 16, 17, 0, '*', 0),
(130, 'system-menu', 'Splash Page', 'splash-page', '', 'splash-page', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=19', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["19"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"splash","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"82","fusion_module_positions":"","splitmenu_item_subtext":""}', 93, 94, 1, '*', 0),
(131, 'system-menu', 'About us', 'about-us', '', 'about-us', 'index.php?option=com_k2&view=item&layout=item&id=11', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 95, 96, 0, '*', 0),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 43, 44, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 45, 46, 0, '*', 1),
(133, 'mainmenu', 'Classes', 'classes', '', 'classes', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=26', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["26"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"classes","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"106","fusion_module_positions":"","splitmenu_item_subtext":""}', 23, 24, 0, '*', 0),
(134, 'system-menu', 'Program 1', 'program-1', '', 'program-1', 'index.php?option=com_k2&view=item&layout=item&id=72', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 97, 98, 0, '*', 0),
(135, 'system-menu', 'Program 2', 'program-2', '', 'program-2', 'index.php?option=com_k2&view=item&layout=item&id=73', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 99, 100, 0, '*', 0),
(136, 'system-menu', 'Program 3', 'program-3', '', 'program-3', 'index.php?option=com_k2&view=item&layout=item&id=74', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 101, 102, 0, '*', 0),
(137, 'system-menu', 'Lorem ipsum dol amet consectetue', 'lorem-ipsum-dol-amet-consectetue', '', 'lorem-ipsum-dol-amet-consectetue', 'index.php?option=com_k2&view=item&layout=item&id=66', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 103, 104, 0, '*', 0),
(138, 'system-menu', 'Praesent vestibulum molestie', 'praesent-vestibulum-molestie', '', 'praesent-vestibulum-molestie', 'index.php?option=com_k2&view=item&layout=item&id=67', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 105, 106, 0, '*', 0),
(139, 'system-menu', 'Vestibulum iaculis lacinia estum', 'vestibulum-iaculis-lacinia-estum', '', 'vestibulum-iaculis-lacinia-estum', 'index.php?option=com_k2&view=item&layout=item&id=68', 'component', 1, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 24, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"fusion_item_subtext":"","fusion_customimage":"","fusion_customclass":"","fusion_columns":"1","fusion_distribution":"even","fusion_dropdown_width":"","fusion_column_widths":"","fusion_children_group":"0","fusion_children_type":"menuitems","fusion_modules":"98","fusion_module_positions":"","splitmenu_item_subtext":""}', 107, 108, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

DROP TABLE IF EXISTS `#__menu_types`;
CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'system-menu', 'System Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

DROP TABLE IF EXISTS `#__messages`;
CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

DROP TABLE IF EXISTS `#__messages_cfg`;
CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

DROP TABLE IF EXISTS `#__modules`;
CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(105, 'our trainers', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 1, '{"moduleclass_sfx":"trainers","getTemplate":"trainers","source":"filter","catfilter":"1","category_id":["24"],"getChildren":"0","itemCount":"5","itemsOrdering":"order","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"0","itemTitle":"1","itemAuthor":"0","itemAuthorAvatar":"0","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"0","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"XSmall","itemVideo":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemAttachments":"0","itemTags":"0","itemCategory":"0","itemDateCreated":"0","itemHits":"0","itemReadMore":"0","itemExtraFields":"0","itemCommentsCounter":"0","feed":"0","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', 0, '*'),
(83, 'Categories', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":"list1 categories","module_usage":"4","archiveItemsCounter":"0","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"0","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"4","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"0","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', 0, '*'),
(86, 'K2 Quick Icons (admin)', '', '', 99, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 3, 1, '', 1, '*'),
(87, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 3, 1, '', 1, '*'),
(108, 'recent posts', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 1, '{"moduleclass_sfx":"news","getTemplate":"news","source":"filter","catfilter":"1","category_id":["4","11","10","12","13"],"getChildren":"0","itemCount":"3","itemsOrdering":"order","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"0","itemTitle":"1","itemAuthor":"0","itemAuthorAvatar":"0","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"0","itemIntroText":"1","itemIntroTextWordLimit":"8","itemImage":"0","itemImgSize":"Small","itemVideo":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemAttachments":"0","itemTags":"0","itemCategory":"0","itemDateCreated":"1","itemHits":"0","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"0","feed":"0","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', 0, '*'),
(91, 'JGMap - Google Map ', '', '', 1, 'map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_JGMap', 1, 0, '{"width":"400","height":"260","mapName":"map","mapType":"HYBRID","smallmap":"1","static":"0","lat":"40.6794935205511","lng":"-73.97831726074219","zoom":"13","marker":"1","marker_lat":"40.681576407044474","marker_lng":"-73.99634170532227","marker_title":""}', 0, '*'),
(96, 'User Login', '', '', 0, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_user', 1, 1, '{"moduleclass_sfx":"","pretext":"","posttext":"","userGreetingText":"","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', 0, '*'),
(97, 'Search', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":" ","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(98, 'Follow us', '', '', 1, 'footer-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_socialmedialinks', 1, 0, '{"theme":"custom","size":"size3","align":"right","margin":"3px","text":"Follow us on","rsstext":"RSS Feed","target":"_self","robots":"1","credits":"1","ic1":"facebook.png","url1":"#","ic2":"twitter.png","url2":"#","ic3":"google.png","url3":"#","ic4":"","url4":"","ic5":"","url5":"","ic6":"","url6":"","ic7":"","url7":"","ic8":"","url8":"","ic9":"","url9":"","ic10":"","url10":"","ic11":"","url11":"","ic12":"","url12":"","ic13":"","url13":"","ic14":"","url14":"","ic15":"","url15":"","ic16":"","url16":"","ic17":"","url17":"","ic18":"","url18":"","ic19":"","url19":"","ic20":"","url20":"","ic21":"","url21":"","ic22":"","url22":"","ic23":"","url23":"","ic24":"","url24":"","ic25":"","url25":"","ic26":"","url26":"","ic27":"","url27":"","ic28":"","url28":"","ic29":"","url29":"","ic30":"","url30":"","moduleclass_sfx":""}', 0, '*'),
(107, 'Join our club', '', '<a class="k2ReadMore" href="#">Join our club</a>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'latest news', '', '', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 1, '{"moduleclass_sfx":"news","getTemplate":"news","source":"filter","catfilter":"1","category_id":["20"],"getChildren":"0","itemCount":"3","itemsOrdering":"order","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"0","itemTitle":"1","itemAuthor":"0","itemAuthorAvatar":"0","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"0","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"0","itemImgSize":"Small","itemVideo":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemAttachments":"0","itemTags":"0","itemCategory":"0","itemDateCreated":"1","itemHits":"0","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"0","feed":"0","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', 0, '*'),
(102, 'diet programs', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 1, '{"moduleclass_sfx":"diet_programs","getTemplate":"diet programs","source":"filter","catfilter":"1","category_id":["22"],"getChildren":"0","itemCount":"3","itemsOrdering":"order","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"0","itemTitle":"0","itemAuthor":"0","itemAuthorAvatar":"0","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"0","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"XSmall","itemVideo":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemAttachments":"0","itemTags":"0","itemCategory":"0","itemDateCreated":"0","itemHits":"0","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"0","feed":"0","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', 0, '*'),
(103, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(104, 'Slider', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 0, '{"moduleclass_sfx":"","getTemplate":"bgStretch","source":"filter","catfilter":"1","category_id":["23"],"getChildren":"0","itemCount":"5","itemsOrdering":"order","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"0","itemTitle":"0","itemAuthor":"0","itemAuthorAvatar":"0","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"0","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"XLarge","itemVideo":"0","itemVideoCaption":"0","itemVideoCredits":"0","itemAttachments":"0","itemTags":"0","itemCategory":"0","itemDateCreated":"0","itemHits":"0","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"0","feed":"0","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

DROP TABLE IF EXISTS `#__modules_menu`;
CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
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
(79, 0),
(83, 117),
(86, 0),
(87, 0),
(91, 114),
(96, 122),
(96, 123),
(97, 122),
(97, 123),
(98, 0),
(100, 116),
(100, 131),
(100, 134),
(100, 135),
(100, 136),
(102, 116),
(102, 137),
(102, 138),
(102, 139),
(103, 0),
(104, 130),
(105, 101),
(107, 101),
(108, 117);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

DROP TABLE IF EXISTS `#__newsfeeds`;
CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

DROP TABLE IF EXISTS `#__overrider`;
CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__overrider`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

DROP TABLE IF EXISTS `#__redirect_links`;
CREATE TABLE IF NOT EXISTS `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `#__redirect_links`
--

INSERT INTO `#__redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/tm/framework/index.php/portfolio/columns-1', '', 'http://localhost/tm/framework/index.php/portfolio/columns-1', '', 0, '2011-12-25 14:33:38', '0000-00-00 00:00:00'),
(2, 'http://localhost/tm/framework/', '', 'http://localhost/tm/framework/index.php/portfolio/columns-2', '', 0, '2012-01-12 16:20:41', '0000-00-00 00:00:00'),
(3, 'http://192.168.7.8/chris/tm/framework/index.php/privacy-policy', '', 'http://192.168.7.8/chris/tm/framework/index.php/portfolio/columns-2', '', 0, '2012-01-18 06:33:14', '0000-00-00 00:00:00'),
(4, 'http://localhost/chris/tm/framework/index.php/privacy-policy', '', 'http://localhost/chris/tm/framework/index.php/blog', '', 0, '2012-01-18 08:52:47', '0000-00-00 00:00:00'),
(5, 'http://localhost/chris/tm/theme867/installation/index.php', '', 'http://localhost/chris/tm/theme867/installation/index.php', '', 0, '2012-01-18 10:03:39', '0000-00-00 00:00:00'),
(6, 'http://localhost/chris/tm/framework/index.php/about/our-team', '', 'http://localhost/chris/tm/framework/index.php/blog', '', 0, '2012-01-27 11:03:57', '0000-00-00 00:00:00'),
(7, 'http://localhost/chris/tm/framework/index.php/about/our-history', '', 'http://localhost/chris/tm/framework/index.php/blog', '', 0, '2012-01-27 11:04:01', '0000-00-00 00:00:00'),
(8, 'http://localhost/chris/tm/framework/index.php/about/company-overview', '', 'http://localhost/chris/tm/framework/index.php/blog', '', 0, '2012-01-27 11:04:03', '0000-00-00 00:00:00'),
(9, 'http://localhost/joomla/946/index.php/undefined', '', 'http://localhost/joomla/946/index.php/home', '', 0, '2012-03-26 18:53:31', '0000-00-00 00:00:00'),
(10, 'http://192.168.9.37/joomla/946/index.php/undefined', '', 'http://192.168.9.37/joomla/946/index.php/home', '', 0, '2012-03-29 13:03:12', '0000-00-00 00:00:00'),
(11, 'http://192.168.9.37/joomla/956/index.php/undefined', '', 'http://192.168.9.37/joomla/956/index.php/home', '', 0, '2012-04-10 09:29:37', '0000-00-00 00:00:00'),
(12, 'http://192.168.9.37/joomla/956/index.php/diet-programs', '', '', '', 0, '2012-04-10 12:34:23', '0000-00-00 00:00:00'),
(13, 'http://192.168.9.37/joomla/956/index.php/about/diet-programs', '', '', '', 0, '2012-04-10 12:34:29', '0000-00-00 00:00:00'),
(14, 'http://192.168.9.37/joomla/956/index.php/about/faqs/testimonials/item/31-quote', '', 'http://192.168.9.37/joomla/956/index.php/about/faqs/itemlist/user/42-superuser?start=30', '', 0, '2012-04-11 11:23:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

DROP TABLE IF EXISTS `#__schemas`;
CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__schemas`
--

INSERT INTO `#__schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.4-2012-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

DROP TABLE IF EXISTS `#__template_styles`;
CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(21, 'theme956', 0, '1', 'theme956 - Default', '{"master":"true","current_id":"21","template_full_name":"Gantry Template","template_prefix":"gantry-","cookie_time":"31536000","copy_lang_files_if_diff":"1","grid_system":"12","cssstyle":"style1","bgcolor":"#000000","headercolor":"transparent","bottomcolor":"transparent","footercolor":"transparent","linkcolor":"#da4828","webfonts":{"enabled":"0","source":"google"},"font":{"family":"helvetica","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","iphonegradients-priority":"6","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","inactive-priority":"10","iphoneimages-priority":"11","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","belatedpng-priority":"17","fusionmenu-priority":"18","ie6menu-priority":"19","ie6warn-priority":"20","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","suckerfishmenu-priority":"25","touchmenu-priority":"26","webfonts-priority":"27","styledeclaration-enabled":"1","login":{"enabled":"0","position":"top-b","text":"Member Login"},"logo":{"enabled":"1","position":"header-a","autosize":"0","perstyle":"0","css":"body #rt-logo"},"date":{"enabled":"0","position":"top-d","clientside":"0","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"feature-b"},"copyright":{"enabled":"1","position":"footer-a","text":""},"smartload":{"enabled":"0","text":"50","ignores":"com_contact","exclusion":""},"totop":{"enabled":"1","position":"copyright","text":"Scroll to Top"},"systemmessages":{"enabled":"1","position":"feature-a"},"resetsettings":{"enabled":"0","position":"copyright","text":"Reset Settings"},"ie6warn2":{"enabled":"1","position":"iewarn"},"ie7warn2":{"enabled":"1","position":"iewarn"},"analytics":{"enabled":"0","code":""},"menu":{"enabled":"1","type":"fusionmenu","fusionmenu":{"menutype":"mainmenu","position":"header-b","enable_js":"1","opacity":"1","effect":"slidefade","hidedelay":"500","menu-animation":"Circ.easeOut","menu-duration":"300","centered-offset":"0","tweak-initial-x":"-1","tweak-initial-y":"-1","tweak-subsequent-x":"1","tweak-subsequent-y":"-2","tweak-width":"4","tweak-height":"4","enable-current-id":"0","theme":"gantry-fusion","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","module_cache":"1"},"splitmenu":{"menutype":"mainmenu","theme":"gantry-splitmenu","cache":"0","module_cache":"1","mainmenu-position":"header-b","mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-position":"sidebar-a","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","submenu-class_sfx":""}},"top":{"layout":"5,7","showall":"0","showmax":"6"},"header":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:3;i:1;i:9;}}}","showall":"0","showmax":"2"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"a:1:{i:12;a:2:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:2;a:2:{s:2:\\"mb\\";i:6;s:2:\\"sa\\";i:6;}}}","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"a:1:{i:16;a:1:{i:2;a:2:{i:0;i:10;i:1;i:6;}}}","showall":"0","showmax":"6"},"cache":{"enabled":"1","time":"900"},"gzipper":{"enabled":"0","time":"600","expirestime":"1440","stripwhitespace":"1"},"inputstyling":{"enabled":"0","exclusions":"''.content_vote''"},"component-enabled":"1","buildspans-enabled":"0","pagesuffix-enabled":"0","inactive":{"enabled":"1","menuitem":"101"}}'),
(22, 'theme956', 0, '0', 'theme956 - About', '{"master":"21","current_id":"22","mainbodyPosition":"a:1:{i:12;a:2:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:3;a:3:{s:2:\\"sa\\";i:4;s:2:\\"mb\\";i:4;s:2:\\"sb\\";i:4;}}}"}'),
(24, 'theme956', 0, '0', 'theme956 - Blog', '{"master":"21","current_id":"24","mainbodyPosition":"a:1:{i:12;a:2:{i:1;a:1:{s:2:\\"mb\\";i:12;}i:2;a:2:{s:2:\\"mb\\";i:8;s:2:\\"sa\\";i:4;}}}"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

DROP TABLE IF EXISTS `#__updates`;
CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__updates`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__update_categories`
--

DROP TABLE IF EXISTS `#__update_categories`;
CREATE TABLE IF NOT EXISTS `#__update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

DROP TABLE IF EXISTS `#__update_sites`;
CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1334147241),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1334147241),
(6, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1334147241);

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

DROP TABLE IF EXISTS `#__update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(6, 10074);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

DROP TABLE IF EXISTS `#__viewlevels`;
CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

DROP TABLE IF EXISTS `#__weblinks`;
CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__weblinks`
--

