-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2024 at 07:25 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hardware`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add pmodel', 7, 'add_pmodel'),
(20, 'Can change pmodel', 7, 'change_pmodel'),
(21, 'Can delete pmodel', 7, 'delete_pmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `django_admin_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'tileapp', 'pmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-04 16:26:37'),
(2, 'auth', '0001_initial', '2021-04-04 16:26:39'),
(3, 'admin', '0001_initial', '2021-04-04 16:26:40'),
(4, 'contenttypes', '0002_remove_content_type_name', '2021-04-04 16:26:40'),
(5, 'auth', '0002_alter_permission_name_max_length', '2021-04-04 16:26:40'),
(6, 'auth', '0003_alter_user_email_max_length', '2021-04-04 16:26:40'),
(7, 'auth', '0004_alter_user_username_opts', '2021-04-04 16:26:40'),
(8, 'auth', '0005_alter_user_last_login_null', '2021-04-04 16:26:40'),
(9, 'auth', '0006_require_contenttypes_0002', '2021-04-04 16:26:40'),
(10, 'sessions', '0001_initial', '2021-04-04 16:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2z6az0krmzajpwpoahr75ocgjf2fqgb0', 'ZmQ3MDU2YzkxYWJiOWFlZDdlN2I4NjEyNzRlMzgzMzQxZTY3NjgyOTp7InVuYW1lIjoiYWRtaW4ifQ==', '2021-04-18 17:03:13'),
('5qzqxypxnfxd94hi4v6qv84suphfhbuf', 'ZDc5NWM3NGI0ZDRmY2VkMzU5ZDU0YzVmNDYxMzJkOGIxYzM4ZTJhZjp7InV0eXBlIjoiYWRtaW4iLCJ1bmFtZSI6ImFkbWluIiwidWlkIjoiMCJ9', '2021-04-21 03:50:26'),
('a2lxab4mo4f27z29ze0b8k7c3h08xqdr', 'N2Y1MjdmMzQ4ZGRkYjMzMDY5MzJjM2JmYmJkNzk4ODZkNWFhZDczMTp7InVuYW1lIjoiYWNodTFAZ21haWwuY29tIn0=', '2021-04-22 15:59:03'),
('ubkd0tzp2dcbid3gmo9b5u5cb5myqwyf', 'ZDc5NWM3NGI0ZDRmY2VkMzU5ZDU0YzVmNDYxMzJkOGIxYzM4ZTJhZjp7InV0eXBlIjoiYWRtaW4iLCJ1bmFtZSI6ImFkbWluIiwidWlkIjoiMCJ9', '2021-04-28 17:26:47'),
('vazgqmpyowb74r90rj7qw3kzkhknst96', 'ZmQ3MDU2YzkxYWJiOWFlZDdlN2I4NjEyNzRlMzgzMzQxZTY3NjgyOTp7InVuYW1lIjoiYWRtaW4ifQ==', '2021-06-06 10:05:02'),
('04w4wdd9cbaxvoz15rtnzwxxwi8a3xm5', 'eyJ1bmFtZSI6InJlc2htYUBnbWFpbC5jb20iLCJ1aWQiOiIyIiwidXR5cGUiOiJzdGFmZiJ9:1r8dqb:xq3dZsM9yIL6_9lN_bY17nMnqTpG_AqJIYgoMr7cRpw', '2023-12-14 10:00:41'),
('1qbo7zzp1g5wk054wwustxr2b7ryyiit', '.eJyrVirNS8xNVbJSSkzJzcxT0lEqzUwB8gxArJLKAoRMLQAntw1o:1rLhyg:SPNYICDGj1TFMgwDRG9MqHgu-bWJeSF97DDQXcQVuF4', '2024-01-19 11:03:02'),
('odydspcmubirxiau93ch7fbssdrr1eq9', '.eJyrVirNTFGyUjJQ0lEqzUvMTQWyE1NyM_NA_JLKAgS_FgAbNQ1o:1rLkhj:dIv-tb8RM6yAJnJGASNCy16QHV6vjDVCAwxhs7Jb_6k', '2024-01-19 13:57:43'),
('m6mb9o0y7p5o6br3e11hknztwdz41umh', 'eyJ1aWQiOiIxIiwidW5hbWUiOiJhbGZpQGdtYWlsLmNvbSIsInV0eXBlIjoiY3VzdCJ9:1rOAeD:tAG9xybBWAhEkn0ptJxAVGOPMy3h5lim7VQVDXFzV0Y', '2024-01-26 06:04:05'),
('138olptjs0xp06lbpyg7z6e4251kc1ej', 'eyJ1aWQiOiIxIiwidW5hbWUiOiJhbGZpQGdtYWlsLmNvbSIsInV0eXBlIjoiY3VzdCJ9:1rOVoD:t7DHMrKF1ZVIpcj7JCVQo-huZHBaNHI7aJFzYUpKJm8', '2024-01-27 04:39:49'),
('oql0li5afb5rskl9tdvsfuvhg8i0lfs1', 'eyJ1aWQiOiIyIiwidW5hbWUiOiJyZXNoQGdtYWlsLmNvbSIsInV0eXBlIjoic3RhZmYifQ:1rPFVs:m9SWDtnDxezA_xk6t8vSJxZdgEfG4xNldoG3AK08_1k', '2024-01-29 05:27:56'),
('5wkctsmjqn03px0qgv3530ljaeuay40e', '.eJyrVirNTFGyUjJQ0lEqzUvMTQWyE1NyM_NA_JLKAgS_FgAbNQ1o:1rPauu:g-UUYw6MmWZYVrTQhuL5Qto7D2Z6_aobdV_KLSyY4k8', '2024-01-30 04:19:12'),
('9faorijrec5if8a6lqr8kfunrf1kp1ps', 'eyJ1aWQiOiIyIiwidW5hbWUiOiJyZXNoQGdtYWlsLmNvbSIsInV0eXBlIjoic3RhZmYifQ:1rXDC8:uru6mAiatT1H8DIrvY6PSbXq7a5YBheNzofYgcnHnYk', '2024-02-20 04:36:28'),
('n30a3t8hp5xzhd16z861mt84939tjokw', '.eJyrVirNTFGyUjJQ0lEqzUvMTQWyE1NyM_NA_JLKAgS_FgAbNQ1o:1rbxSv:t9nL-ko0h96g3aPD7SBqIMvo4RuMp0KbVKHHFPBUvDU', '2024-03-04 06:49:25'),
('7dn8oxpyix31jojncr9tqvd42zai1v1w', '.eJyrVirNS8xNVbJSSkzJzcxT0lEqzUwB8gxArJLKAoRMLQAntw1o:1rg0Di:5PsmXka44srnzQk_7tvmMULUeOVEGsLX6sWzxnHH7kw', '2024-03-15 10:34:26'),
('3iylctc8mtkexx9686eti77ohrroe80v', '.eJyrVirNS8xNVbJSSkzJzcxT0lEqzUwB8gxArJLKAoRMLQAntw1o:1rgL6K:V4JueuRHL6BOnhyZsFP7TrAYbuWrIZxk0nVFbAx5mjw', '2024-03-16 08:52:12'),
('607vakn7mm4g3ij427pvd3arh4hv6tps', '.eJyrVirNTFGyUjJQ0lEqzUvMTQWyE1NyM_NA_JLKAgS_FgAbNQ1o:1rhlZW:FnnU4rsc3s1FGyB7JgSZzyS-UCKdefAq_CQwzgnpUFw', '2024-03-20 07:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign`
--

CREATE TABLE IF NOT EXISTS `tbl_assign` (
  `asid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `stid` int(11) NOT NULL,
  PRIMARY KEY (`asid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_assign`
--

INSERT INTO `tbl_assign` (`asid`, `oid`, `stid`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE IF NOT EXISTS `tbl_brand` (
  `bcode` int(20) NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) DEFAULT NULL,
  `descp` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`bcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`bcode`, `bname`, `descp`) VALUES
(1, 'dell', 'kkkk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `icode` varchar(20) NOT NULL,
  `uid` int(10) NOT NULL,
  `cqty` int(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `ccod` int(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `cdesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ccod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`ccod`, `cname`, `cdesc`) VALUES
(1, 'battery', '3500mah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `chname` varchar(50) DEFAULT NULL,
  `cstreet` varchar(20) DEFAULT NULL,
  `ccity` varchar(20) DEFAULT NULL,
  `cdist` varchar(20) DEFAULT NULL,
  `cpin` varchar(20) DEFAULT NULL,
  `cstate` varchar(20) DEFAULT NULL,
  `cphn` varchar(20) DEFAULT NULL,
  `cem` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cid`, `cname`, `chname`, `cstreet`, `ccity`, `cdist`, `cpin`, `cstate`, `cphn`, `cem`) VALUES
(1, 'Alfiya', 'charuvila', 'pazhakulam', 'Adoor', 'pathanamthitta', '697678', 'Kerala', '9098878766', 'alfi@gmail.com'),
(2, 'amal', 'amal villa', 'adoor', 'adoor', 'pta', '888888', 'kerala', '9072805225', 'amal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
  `icode` int(20) NOT NULL AUTO_INCREMENT,
  `iname` varchar(20) DEFAULT NULL,
  `bcode` varchar(20) DEFAULT NULL,
  `ccode` varchar(20) DEFAULT NULL,
  `scode` varchar(20) DEFAULT NULL,
  `desp` varchar(1000) DEFAULT NULL,
  `mrp` varchar(11) DEFAULT NULL,
  `qty` varchar(11) DEFAULT NULL,
  `p_image` varchar(500) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`icode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`icode`, `iname`, `bcode`, `ccode`, `scode`, `desp`, `mrp`, `qty`, `p_image`, `size`) VALUES
(1, 'motherboard', '1', '1', '1', 'mhbhbd', '3000', '7', 'pictures/Screenshot_197_6i03ugd.png', 'none'),
(2, 'kkkk', '1', '1', '1', 'kklkk', '4555', '0', 'pictures/Screenshot_196.png', 'none'),
(3, 'cardamom', '1', '1', '2', 'kkkkkkkkkkkk', '888', '0', 'pictures/Screenshot_198_nFDcYHN.png', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `uid` varchar(11) NOT NULL DEFAULT '0',
  `uname` varchar(20) DEFAULT NULL,
  `upass` varchar(20) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`uid`, `uname`, `upass`, `utype`) VALUES
('0', 'admin', 'admin', 'admin'),
('2', 'resh@gmail.com', 'reshma1234', 'staff'),
('1', 'alfi@gmail.com', 'alfi1234567', 'cust'),
('2', 'amal@gmail.com', '12345', 'cust'),
('4', 'asif@gmail.com', '12345678', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `odate` date NOT NULL,
  `uid` varchar(11) NOT NULL,
  `tqty` varchar(11) NOT NULL,
  `tamt` varchar(11) NOT NULL,
  `ostatus` varchar(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`oid`, `odate`, `uid`, `tqty`, `tamt`, `ostatus`) VALUES
(1, '2024-03-02', '2', '2', '6000', 'Delivered'),
(2, '2024-03-02', '1', '1', '3000', 'Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderc`
--

CREATE TABLE IF NOT EXISTS `tbl_orderc` (
  `ocid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `icode` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`ocid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_orderc`
--

INSERT INTO `tbl_orderc` (`ocid`, `oid`, `icode`, `qty`) VALUES
(1, 1, '1', 2),
(2, 2, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderchild`
--

CREATE TABLE IF NOT EXISTS `tbl_orderchild` (
  `ocid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `icode` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  PRIMARY KEY (`ocid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_orderchild`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderm`
--

CREATE TABLE IF NOT EXISTS `tbl_orderm` (
  `oid` int(11) NOT NULL DEFAULT '0',
  `odate` date DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `tqty` int(11) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL,
  `pstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orderm`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay`
--

CREATE TABLE IF NOT EXISTS `tbl_pay` (
  `payid` int(10) NOT NULL AUTO_INCREMENT,
  `oid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `cardno` varchar(12) NOT NULL,
  `cvv` int(3) NOT NULL,
  `edate` date DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_pay`
--

INSERT INTO `tbl_pay` (`payid`, `oid`, `uid`, `cardno`, `cvv`, `edate`) VALUES
(1, 1, 1, '898766554443', 666, '2023-12-30'),
(2, 1, 2, '555555555555', 123, '2024-03-30'),
(3, 2, 1, '666666667777', 0, '2024-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pchild`
--

CREATE TABLE IF NOT EXISTS `tbl_pchild` (
  `pchild_id` int(11) NOT NULL AUTO_INCREMENT,
  `pmid` int(10) NOT NULL,
  `icode` varchar(20) NOT NULL,
  `tqty` int(10) NOT NULL,
  `uprice` int(10) NOT NULL,
  `tamt` int(10) NOT NULL,
  PRIMARY KEY (`pchild_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_pchild`
--

INSERT INTO `tbl_pchild` (`pchild_id`, `pmid`, `icode`, `tqty`, `uprice`, `tamt`) VALUES
(1, 1, '1', 30, 50, 1500),
(2, 2, '1', 30, 100, 3000),
(4, 4, '1', 10, 2500, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pmaster`
--

CREATE TABLE IF NOT EXISTS `tbl_pmaster` (
  `pmid` int(10) NOT NULL AUTO_INCREMENT,
  `staff_id` int(10) NOT NULL,
  `dist_id` int(11) NOT NULL,
  `pdate` varchar(10) NOT NULL,
  `tamt` int(10) NOT NULL,
  PRIMARY KEY (`pmid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_pmaster`
--

INSERT INTO `tbl_pmaster` (`pmid`, `staff_id`, `dist_id`, `pdate`, `tamt`) VALUES
(1, 0, 1, '2023-11-20', 1500),
(2, 1, 2, '2023-11-29', 3000),
(3, 2, 1, '2023-11-21', 0),
(4, 0, 3, '2024-03-03', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE IF NOT EXISTS `tbl_staff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `shname` varchar(50) DEFAULT NULL,
  `sstreet` varchar(20) DEFAULT NULL,
  `scity` varchar(20) DEFAULT NULL,
  `sdist` varchar(20) DEFAULT NULL,
  `spin` varchar(20) DEFAULT NULL,
  `sstate` varchar(20) DEFAULT NULL,
  `sphn` varchar(20) DEFAULT NULL,
  `jdate` varchar(50) NOT NULL,
  `sem` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staffid`, `sname`, `shname`, `sstreet`, `scity`, `sdist`, `spin`, `sstate`, `sphn`, `jdate`, `sem`) VALUES
(1, 'Anju', 'Thiruvalla', 'Adoor', 'Adoor', 'pathanamthitta', '666666', 'Kerala', '8087668768', '2023-01-08', 'anju@gmail.com'),
(2, 'Reshma', 'Reshhhhh', 'Pandalam', 'pandalam', 'pathanamthitta', '676555', 'Kerala', '9088878696', '2023-01-04', 'resh@gmail.com'),
(3, 'aa', 'ds', 'rtt', 'fff', 'hh', '567777', 'ff', '7561035282', '2024-01-11', 'alfiyaddnizampklm@gm'),
(4, 'asif', 'pt', 'pv', 'ptA', 'PTA', '689643', 'kerala', '7777777777', '2024-03-28', 'asif@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcat`
--

CREATE TABLE IF NOT EXISTS `tbl_subcat` (
  `scode` int(20) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `ccode` varchar(20) DEFAULT NULL,
  `sdesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`scode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_subcat`
--

INSERT INTO `tbl_subcat` (`scode`, `sname`, `ccode`, `sdesc`) VALUES
(1, 'Ceramic', '1', 'Ceramic tile is one of the most common types of tile found in the home '),
(2, 'lithium iron', '1', 'gggggggg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendor`
--

CREATE TABLE IF NOT EXISTS `tbl_vendor` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `oname` varchar(20) DEFAULT NULL,
  `adr` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `dist` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pin` varchar(11) DEFAULT NULL,
  `em` varchar(50) DEFAULT NULL,
  `phn` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_vendor`
--

INSERT INTO `tbl_vendor` (`vid`, `cname`, `oname`, `adr`, `city`, `dist`, `state`, `pin`, `em`, `phn`) VALUES
(1, 'Surabhi', 'Sai', 'surabisai villa', 'Ezhmkulam', 'pathanamthitta', 'Kerala', '756754', 'surabhi@gmail.com', '8908786787'),
(2, 'Granite', 'Akhila', 'Akhila village', 'payyanalloor', 'Alappuzha', 'Kerala', '687678', 'akhila@gmail.com', '9876898868'),
(3, 'aswin', 'doom', 'sdfbbbbbbbbu', 'pta', 'pta', 'kerala', '689643', 'aswin@gamil.com', '9073895323');
