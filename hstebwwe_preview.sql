-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2021 at 03:38 PM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hstebwwe_preview`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` enum('728','468','300','resp','splash','frame') DEFAULT NULL,
  `code` text DEFAULT NULL,
  `impression` int(12) DEFAULT 0,
  `enabled` enum('0','1') DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bundle`
--

CREATE TABLE `bundle` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `userid` mediumint(9) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `access` varchar(10) NOT NULL DEFAULT 'private',
  `view` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `discount` int(3) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `used` int(9) NOT NULL DEFAULT 0,
  `validuntil` timestamp NULL DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `domain` varchar(191) DEFAULT NULL,
  `redirect` varchar(191) DEFAULT NULL,
  `redirect404` varchar(191) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `overlay`
--

CREATE TABLE `overlay` (
  `id` int(11) NOT NULL,
  `userid` int(9) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'message',
  `data` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `seo` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `menu` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `name`, `seo`, `content`, `menu`) VALUES
(1, 'Terms and Conditions', 'terms', 'Please edit me when you can. I am very important.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `tid` varchar(191) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry` datetime DEFAULT NULL,
  `trial_days` int(5) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `tid`, `userid`, `status`, `amount`, `date`, `expiry`, `trial_days`, `data`, `cid`) VALUES
(1, 'nA6kWHoOD8Iga16v', 2, 'Completed', 0.00, '2021-03-09 14:53:25', '2021-04-08 09:53:25', 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `trial_days` int(11) DEFAULT NULL,
  `price_monthly` float NOT NULL DEFAULT 0,
  `price_yearly` float NOT NULL DEFAULT 0,
  `free` int(1) NOT NULL DEFAULT 0,
  `numclicks` int(9) DEFAULT NULL,
  `credits_per_click` int(6) NOT NULL,
  `cookie_expires_in_days` int(6) NOT NULL,
  `numurls` int(9) DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `stripeid` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `slug`, `description`, `icon`, `trial_days`, `price_monthly`, `price_yearly`, `free`, `numclicks`, `credits_per_click`, `cookie_expires_in_days`, `numurls`, `permission`, `status`, `stripeid`) VALUES
(1, 'Basic', 'basic', '', '', 30, 5.99, 50.99, 1, 50, 0, 0, 3, '{\"team\":{\"enabled\":\"0\",\"count\":\"400\"},\"splash\":{\"enabled\":\"1\",\"count\":\"1\"},\"overlay\":{\"enabled\":\"0\",\"count\":\"\"},\"pixels\":{\"enabled\":\"0\",\"count\":\"\"},\"domain\":{\"enabled\":\"0\",\"count\":\"\"},\"multiple\":{\"enabled\":\"0\"},\"alias\":{\"enabled\":\"0\"},\"device\":{\"enabled\":\"0\"},\"geo\":{\"enabled\":\"0\"},\"bundle\":{\"enabled\":\"0\"},\"parameters\":{\"enabled\":\"0\"},\"api\":{\"enabled\":\"0\"},\"export\":{\"enabled\":\"0\"},\"custom\":\"\"}', 1, NULL),
(2, 'Gold', 'gold', 'Standard Service package', '', 30, 50.99, 500, 0, 0, 10, 30, 48, '{\"team\":{\"enabled\":\"0\",\"count\":\"\"},\"splash\":{\"enabled\":\"1\",\"count\":\"0\"},\"overlay\":{\"enabled\":\"1\",\"count\":\"2\"},\"pixels\":{\"enabled\":\"1\",\"count\":\"0\"},\"domain\":{\"enabled\":\"0\",\"count\":\"\"},\"multiple\":{\"enabled\":\"0\"},\"alias\":{\"enabled\":\"1\"},\"device\":{\"enabled\":\"1\"},\"geo\":{\"enabled\":\"1\"},\"bundle\":{\"enabled\":\"1\"},\"parameters\":{\"enabled\":\"1\"},\"api\":{\"enabled\":\"1\"},\"export\":{\"enabled\":\"1\"},\"custom\":\"\"}', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `views` int(9) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `bannedlink` text DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `config` varchar(20) NOT NULL,
  `var` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`config`, `var`) VALUES
('url', 'https://preview.hackrivals.com'),
('title', ''),
('description', ''),
('api', '1'),
('user', '1'),
('sharing', '1'),
('geotarget', '1'),
('adult', '1'),
('maintenance', '0'),
('keywords', ''),
('theme', 'saas'),
('apikey', ''),
('ads', '1'),
('captcha', '0'),
('ad728', ''),
('ad468', ''),
('ad300', ''),
('frame', '0'),
('facebook', ''),
('twitter', ''),
('email', 'hamma.farooq@gmail.com'),
('fb_connect', '0'),
('analytic', ''),
('private', '0'),
('facebook_app_id', ''),
('facebook_secret', ''),
('twitter_key', ''),
('twitter_secret', ''),
('safe_browsing', ''),
('captcha_public', ''),
('captcha_private', ''),
('tw_connect', '0'),
('multiple_domains', '0'),
('domain_names', ''),
('tracking', '1'),
('update_notification', '1'),
('default_lang', ''),
('user_activate', '0'),
('domain_blacklist', ''),
('keyword_blacklist', ''),
('user_history', '0'),
('pro_yearly', ''),
('show_media', '0'),
('pro_monthly', ''),
('paypal_email', ''),
('logo', ''),
('timer', ''),
('smtp', ''),
('style', ''),
('font', ''),
('currency', 'USD'),
('news', '<strong>Installation successful</strong> Please go to the admin panel to configure important settings including this message!'),
('gl_connect', '0'),
('require_registration', '0'),
('phish_api', ''),
('phish_username', ''),
('aliases', ''),
('pro', '1'),
('google_cid', ''),
('google_cs', ''),
('public_dir', '0'),
('devicetarget', '1'),
('homepage_stats', '1'),
('home_redir', ''),
('detectadblock', '0'),
('timezone', ''),
('freeurls', '10'),
('allowdelete', '1'),
('serverip', ''),
('favicon', ''),
('advanced', '0'),
('purchasecode', '84a35935-aba0-4fa9-a4a5-e73d08966176'),
('alias_length', '5'),
('theme_config', '{\"scheme\":\"default\",\"address\":{\"enabled\":\"1\",\"street\":\"\",\"city\":\"\",\"state\":\"\",\"country\":\"\",\"phone\":\"\"},\"testimonial\":{\"enabled\":\"1\",\"items\":[{\"text\":\"Lorem ipsum ullamco elit consequat sed mollit ut proident qui consectetur veniam sit id tempor cupidatat sint pariatur.\",\"author\":\"Tim Cook\",\"logo\":\"https://image.freepik.com/free-icon/apple-logo_318-40184.jpg\",\"title\":\"CEO at Apple Inc.\"},{\"text\":\"Lorem ipsum ullamco elit consequat sed mollit ut proident qui consectetur veniam sit id tempor cupidatat sint pariatur.\",\"author\":\"Satya Nadella\",\"logo\":\"https://en.groupeaccess.ca/wp-content/uploads/2016/11/Microsoft-logo-313x313.png\",\"title\":\"CEO at Microsoft Inc.\"},{\"text\":\"Lorem ipsum ullamco elit consequat sed mollit ut proident qui consectetur veniam sit id tempor cupidatat sint pariatur.\",\"author\":\"Jeff Bezos\",\"logo\":\"https://wwwen.uni.lu/var/storage/images/media/images/lcl_images/amazon_square_logo/1285786-1-fre-FR/amazon_square_logo.png\",\"title\":\"CEO & Founder at Amazon Inc.\"}]}}'),
('schemes', 'https,ftp,http'),
('email.activated', '<p><b>Hello</b></p><p>Your account has been successfully activated at {site.title}.</p>'),
('email.activation', '<p><b>Hello!</b></p><p>You have been successfully registered at {site.title}. To login you will have to activate your account by clicking the URL below.</p><p><a href=\"http://{user.activation}\" target=\"_blank\">{user.activation}</a></p>'),
('email.registration', '<p><b>Hello!</b></p><p>You have been successfully registered at {site.title}. You can now login to our site at <a href=\"http://{site.link}\" target=\"_blank\">{site.link}</a>.</p>'),
('email.reset', '<p><b>A request to reset your password was made.</b> If you <b>didn\'t</b> make this request, please ignore and delete this email otherwise click the link below to reset your password.</p>\r\n		      <b><div style=\"text-align: center;\"><b><a href=\"http://{user.activation}\" class=\"link\">Click here to reset your password.</a></b></div></b></p><p>\r\n		      <p>If you cannot click on the link above, simply copy &amp; paste the following link into your browser.</p>\r\n		      <p><a href=\"http://{user.activation}\" target=\"_blank\">{user.activation}</a></p>\r\n		      <p><b>Note: This link is only valid for one day. If it expires, you can request another one.</b></p>'),
('email.invitation', '<p><b>Hello!</b></p><p>You have been invited to join our team at {site.title}. To accept the invitation, please click the link below.</p><p><a href=\"http://{user.invite}\" target=\"_blank\">{user.invite}</a></p>'),
('blog', '1'),
('root_domain', '1'),
('slackclientid', ''),
('slacksecretid', ''),
('slackcommand', ''),
('slacksigningsecret', ''),
('contact', '1'),
('report', '1'),
('customheader', ''),
('customfooter', ''),
('saleszapier', ''),
('pppublic', ''),
('ppprivate', ''),
('manualapproval', '0'),
('pt', 'stripe'),
('stsk', ''),
('stpk', ''),
('stripesig', '');

-- --------------------------------------------------------

--
-- Table structure for table `splash`
--

CREATE TABLE `splash` (
  `id` int(11) NOT NULL,
  `userid` bigint(12) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `short` varchar(191) DEFAULT NULL,
  `urlid` bigint(20) DEFAULT NULL,
  `urluserid` bigint(20) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `cookie_day` tinyint(1) NOT NULL DEFAULT 1,
  `ip` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `domain` varchar(191) DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `os` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `short`, `urlid`, `urluserid`, `date`, `cookie_day`, `ip`, `country`, `domain`, `referer`, `browser`, `os`) VALUES
(65, 'IGBAs', 6, 1, '2021-03-19 08:47:01', 1, '119.152.129.217', 'pakistan', '', 'direct', 'Chrome', 'Windows 10'),
(64, 'Ju87N', 5, 2, '2021-03-15 09:02:30', 1, '119.155.16.227', 'pakistan', '', 'direct', 'Chrome', 'Windows 10');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `uniqueid` varchar(255) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `plan` enum('monthly','yearly') NOT NULL DEFAULT 'monthly',
  `planid` int(9) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry` datetime DEFAULT NULL,
  `lastpayment` datetime DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `coupon` int(1) NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `url`
--

CREATE TABLE `url` (
  `id` int(20) NOT NULL,
  `userid` int(16) NOT NULL DEFAULT 0,
  `alias` varchar(191) DEFAULT NULL,
  `custom` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `devices` text DEFAULT NULL,
  `domain` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `pass` varchar(191) DEFAULT NULL,
  `click` bigint(20) NOT NULL DEFAULT 0,
  `uniqueclick` bigint(20) NOT NULL DEFAULT 0,
  `credits_earned` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 DEFAULT NULL,
  `ads` int(1) NOT NULL DEFAULT 1,
  `bundle` mediumint(9) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `type` varchar(64) DEFAULT NULL,
  `pixels` varchar(191) DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `url`
--

INSERT INTO `url` (`id`, `userid`, `alias`, `custom`, `url`, `location`, `devices`, `domain`, `description`, `date`, `pass`, `click`, `uniqueclick`, `credits_earned`, `meta_title`, `meta_description`, `ads`, `bundle`, `public`, `archived`, `type`, `pixels`, `expiry`, `parameters`, `status`) VALUES
(6, 1, 'IGBAs', '', 'https://www.linkedin.com/me/profile-views/urn:li:wvmp:summary/', '', '', 'https://preview.hackrivals.com', '', '2021-03-19 08:46:51', '', 1, 1, 0, 'Sign Up | LinkedIn', '500 million+ members | Manage your professional identity. Build and engage with your professional network. Access knowledge, insights and opportunities.', 1, NULL, 0, 0, 'direct', '', NULL, '', 1),
(7, 0, '8n5Gp', '', 'https://www.pinterest.com/pin/461407924298331602/', '', '', 'https://preview.hackrivals.com', '', '2021-03-20 10:07:30', '', 0, 0, 0, 'Workbench Plans and Projects for Woodworkers | Woodworking bench plans, Woodworking bench, Wooden work bench', '', 1, NULL, 1, 0, NULL, '', NULL, '', 1),
(5, 2, 'Ju87N', '', 'https://myflixer.com/tv/wandavision-42256', '', '', 'https://preview.hackrivals.com', '', '2021-03-12 08:23:15', '', 84, 4, 40, 'WandaVision 2021 full Serie online MyFlixer', 'WandaVision 2021 full Serie online on MyFlixer, free streaming, no download, no sign up', 1, NULL, 1, 0, 'direct', '', NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `auth` text DEFAULT NULL,
  `auth_id` varchar(191) DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT 0,
  `email` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT 0,
  `address` text CHARACTER SET utf8 DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `api` varchar(20) DEFAULT NULL,
  `ads` int(1) NOT NULL DEFAULT 1,
  `active` int(1) NOT NULL DEFAULT 1,
  `banned` int(1) NOT NULL DEFAULT 0,
  `public` int(1) NOT NULL DEFAULT 0,
  `domain` varchar(191) DEFAULT NULL,
  `media` int(1) NOT NULL DEFAULT 0,
  `splash_opt` int(1) NOT NULL DEFAULT 0,
  `splash` text DEFAULT NULL,
  `auth_key` varchar(191) DEFAULT NULL,
  `last_payment` datetime DEFAULT NULL,
  `expiration` datetime DEFAULT NULL,
  `pro` int(1) NOT NULL DEFAULT 0,
  `planid` int(9) DEFAULT NULL,
  `overlay` text DEFAULT NULL,
  `fbpixel` text CHARACTER SET utf8 DEFAULT NULL,
  `linkedinpixel` text CHARACTER SET utf8 DEFAULT NULL,
  `adwordspixel` text CHARACTER SET utf8 DEFAULT NULL,
  `twitterpixel` text DEFAULT NULL,
  `adrollpixel` text DEFAULT NULL,
  `quorapixel` text DEFAULT NULL,
  `gtmpixel` text DEFAULT NULL,
  `defaulttype` varchar(191) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `teampermission` text DEFAULT NULL,
  `secret2fa` varchar(191) DEFAULT NULL,
  `slackid` varchar(191) DEFAULT NULL,
  `zapurl` varchar(191) DEFAULT NULL,
  `zapview` varchar(191) DEFAULT NULL,
  `trial` int(1) NOT NULL DEFAULT 0,
  `profiledata` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `customerid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `auth`, `auth_id`, `admin`, `email`, `name`, `username`, `password`, `credits`, `address`, `date`, `api`, `ads`, `active`, `banned`, `public`, `domain`, `media`, `splash_opt`, `splash`, `auth_key`, `last_payment`, `expiration`, `pro`, `planid`, `overlay`, `fbpixel`, `linkedinpixel`, `adwordspixel`, `twitterpixel`, `adrollpixel`, `quorapixel`, `gtmpixel`, `defaulttype`, `teamid`, `teampermission`, `secret2fa`, `slackid`, `zapurl`, `zapview`, `trial`, `profiledata`, `avatar`, `customerid`) VALUES
(1, NULL, NULL, 1, 'admin@gmail.com', NULL, 'Admin', '$2a$08$KgNmG9/SspZFqcTClZBYOuTJZylwrJmZC8vASJyR2IIscOdmXxROK', 0, NULL, '2021-03-07 13:59:07', 'J5c6c7ogjbC9', 1, 1, 0, 0, NULL, 0, 0, NULL, '$2a$08$4dkOWqcG.F17ZD1T7L9Pau/7A5K5./Rukuf4DlMNHSPCsIf.SJUVi', '2021-03-07 13:59:07', '2031-03-05 13:59:07', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(3, NULL, NULL, 0, 'frankbagnato@gmail.com', NULL, 'testuser1', '$2a$08$PhkaiDRduFETY49sGpqiVuSbf8WRrBNU68DrPPM4OjxHEDf.UgL0q', 0, NULL, '2021-03-20 10:11:24', 'i4qLWsWEml9YUld6mrrx', 1, 1, 0, 0, NULL, 0, 0, NULL, '$2a$08$Lvf3XcURVsYcREmtT7ZBWuzHt6bAtlvrXi5EYWbx1Dx4ErAhV6uEq', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundle`
--
ALTER TABLE `bundle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overlay`
--
ALTER TABLE `overlay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `splash`
--
ALTER TABLE `splash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `short` (`short`),
  ADD KEY `urlid` (`urlid`),
  ADD KEY `urluserid` (`urluserid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `country` (`country`),
  ADD KEY `domain` (`domain`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `custom` (`custom`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api` (`api`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle`
--
ALTER TABLE `bundle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overlay`
--
ALTER TABLE `overlay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `splash`
--
ALTER TABLE `splash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
