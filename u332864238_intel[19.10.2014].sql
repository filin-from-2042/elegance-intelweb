
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 19 2014 г., 17:21
-- Версия сервера: 5.1.67
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u332864238_intel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_assets`
--

CREATE TABLE IF NOT EXISTS `m7bpc_assets` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Дамп данных таблицы `m7bpc_assets`
--

INSERT INTO `m7bpc_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 221, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 68, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 69, 70, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 71, 72, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 73, 74, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 75, 76, 1, 'com_login', 'com_login', '{}'),
(13, 1, 77, 78, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 79, 80, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 81, 82, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 83, 84, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 85, 86, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 87, 166, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 167, 170, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 171, 172, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 173, 174, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 175, 176, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 177, 178, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 179, 182, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 183, 186, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 187, 188, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 33, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 168, 169, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 184, 185, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 180, 181, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 189, 190, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 191, 192, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 193, 194, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 195, 196, 1, 'com_gantry', 'gantry', '{}'),
(37, 1, 197, 198, 1, 'com_rokcandy.category.8', 'Basic', ''),
(38, 1, 199, 200, 1, 'com_rokcandy.category.9', 'Typography', ''),
(39, 1, 201, 202, 1, 'com_rokcandy.category.10', 'Uncategorised', ''),
(40, 1, 203, 204, 1, 'com_rokcandy', 'rokcandy', '{}'),
(41, 1, 205, 206, 1, 'com_roksprocket', 'roksprocket', '{}'),
(42, 43, 35, 36, 3, 'com_content.article.1', 'Услуги', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 8, 34, 49, 2, 'com_content.category.11', 'Услуги', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(44, 43, 37, 38, 3, 'com_content.article.2', 'Разработка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 43, 39, 40, 3, 'com_content.article.3', 'Портфолио', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 43, 41, 42, 3, 'com_content.article.4', 'Редизайн сайта', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 43, 43, 44, 3, 'com_content.article.5', 'SEO продвижение', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 8, 50, 63, 2, 'com_content.category.12', 'Типы сайтов', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(49, 48, 55, 56, 3, 'com_content.article.6', 'Интернет-магазин ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 48, 51, 52, 3, 'com_content.article.7', 'Корпоративный сайт  ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 48, 53, 54, 3, 'com_content.article.8', 'Малый бизнес ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 48, 57, 58, 3, 'com_content.article.9', 'Официальный сайт  ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 48, 59, 60, 3, 'com_content.article.10', 'Сайт-визитка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 1, 207, 208, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(55, 1, 209, 210, 1, 'com_ajax', 'com_ajax', '{}'),
(56, 1, 211, 212, 1, 'com_postinstall', 'com_postinstall', '{}'),
(57, 18, 88, 89, 2, 'com_modules.module.89', 'Сайты, которые мы делаем', ''),
(58, 18, 90, 91, 2, 'com_modules.module.90', 'Сайты, которые мы делаем (копия)', ''),
(59, 18, 92, 93, 2, 'com_modules.module.91', 'Услуги, которые мы оказываем', ''),
(60, 18, 94, 95, 2, 'com_modules.module.92', 'Услуги, которые мы оказываем', ''),
(61, 18, 96, 97, 2, 'com_modules.module.93', 'Левое меню', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 27, 19, 20, 3, 'com_content.article.11', 'Поддержка функциональности', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(63, 18, 98, 99, 2, 'com_modules.module.94', 'Закажите прямо сейчас', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 18, 100, 101, 2, 'com_modules.module.88', 'Поиск по сайту', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 18, 102, 103, 2, 'com_modules.module.95', 'Хостингер - отличный хостинг', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 43, 45, 46, 3, 'com_content.article.12', 'Сопровождение', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 43, 47, 48, 3, 'com_content.article.13', 'Веб-дизайн', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(68, 27, 21, 22, 3, 'com_content.article.14', 'Главная ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 18, 104, 105, 2, 'com_modules.module.96', 'Веб-дизайн, который мы предлагаем', ''),
(70, 18, 106, 107, 2, 'com_modules.module.97', 'Соц кнопки', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 27, 23, 24, 3, 'com_content.article.15', 'ИнтелВеб', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(72, 18, 108, 109, 2, 'com_modules.module.98', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(73, 18, 110, 111, 2, 'com_modules.module.99', 'Нужен сайт? Позвоните прямо сейчас!', ''),
(74, 27, 25, 26, 3, 'com_content.article.16', 'Позвоните нам', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 18, 112, 113, 2, 'com_modules.module.100', 'Нужен сайт? Позвоните прямо сейчас!', ''),
(76, 18, 114, 115, 2, 'com_modules.module.101', 'Звоните нам', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 18, 116, 117, 2, 'com_modules.module.102', 'ололол', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 1, 213, 214, 1, 'com_breezingforms', 'breezingforms', '{}'),
(79, 18, 118, 119, 2, 'com_modules.module.103', 'BreezingForms', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 18, 120, 121, 2, 'com_modules.module.104', 'Связаться с нами', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 18, 122, 123, 2, 'com_modules.module.105', 'dsfsf', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 18, 124, 125, 2, 'com_modules.module.106', 'Сайт-визитка', ''),
(83, 18, 126, 127, 2, 'com_modules.module.107', 'Визитка', ''),
(84, 1, 215, 216, 1, 'com_k2', 'com_k2', '{}'),
(85, 18, 128, 129, 2, 'com_modules.module.108', 'K2 Comments', ''),
(86, 18, 130, 131, 2, 'com_modules.module.109', 'K2 Content', ''),
(87, 18, 132, 133, 2, 'com_modules.module.110', 'K2 Tools', ''),
(88, 18, 134, 135, 2, 'com_modules.module.111', 'K2 Users', ''),
(89, 18, 136, 137, 2, 'com_modules.module.112', 'K2 User', ''),
(90, 18, 138, 139, 2, 'com_modules.module.113', 'K2 Quick Icons (admin)', ''),
(91, 18, 140, 141, 2, 'com_modules.module.114', 'K2 Stats (admin)', ''),
(92, 1, 217, 218, 1, 'com_chronoforms5', 'com_chronoforms5', '{}'),
(93, 18, 142, 143, 2, 'com_modules.module.115', 'Заказ сайта', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(94, 18, 144, 145, 2, 'com_modules.module.116', 'Заказ сайта', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 48, 61, 62, 3, 'com_content.article.17', 'офиц', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 18, 146, 147, 2, 'com_modules.module.117', 'Сайт-визитка', ''),
(97, 18, 148, 149, 2, 'com_modules.module.118', 'Сайт-визитка', ''),
(98, 18, 150, 151, 2, 'com_modules.module.119', 'Сайт-визитка 2', ''),
(99, 18, 152, 153, 2, 'com_modules.module.120', 'Сайт-визитка', ''),
(100, 8, 64, 65, 2, 'com_content.category.13', 'Сайт-визитка', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(101, 8, 66, 67, 2, 'com_content.category.14', 'Малый бизнес', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(102, 27, 27, 28, 3, 'com_content.article.18', 'Сайт-визитка модули', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(103, 27, 29, 30, 3, 'com_content.article.19', 'Пакет Визитка', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 18, 154, 155, 2, 'com_modules.module.121', 'футер', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(105, 1, 219, 220, 1, 'com_xmap', 'com_xmap', '{}'),
(106, 18, 156, 157, 2, 'com_modules.module.122', 'Онлайн консультант', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 18, 158, 159, 2, 'com_modules.module.123', 'Сообщение', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(108, 27, 31, 32, 3, 'com_content.article.20', 'Контакты', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(109, 18, 160, 161, 2, 'com_modules.module.124', 'Яндекс метрика', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(110, 18, 162, 163, 2, 'com_modules.module.125', 'Breadcrumbs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 18, 164, 165, 2, 'com_modules.module.126', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_associations`
--

CREATE TABLE IF NOT EXISTS `m7bpc_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_banners`
--

CREATE TABLE IF NOT EXISTS `m7bpc_banners` (
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
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_banner_clients`
--

CREATE TABLE IF NOT EXISTS `m7bpc_banner_clients` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `m7bpc_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_breezingforms`
--

CREATE TABLE IF NOT EXISTS `m7bpc_breezingforms` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_categories`
--

CREATE TABLE IF NOT EXISTS `m7bpc_categories` (
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
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `m7bpc_categories`
--

INSERT INTO `m7bpc_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 27, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 37, 1, 13, 14, 1, 'basic', 'com_rokcandy', 'Basic', 'basic', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 754, '2014-03-11 17:20:48', 0, '0000-00-00 00:00:00', 0, '', 1),
(9, 38, 1, 15, 16, 1, 'typography', 'com_rokcandy', 'Typography', 'typography', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 754, '2014-03-11 17:20:48', 0, '0000-00-00 00:00:00', 0, '', 1),
(10, 39, 1, 17, 18, 1, 'uncategorised', 'com_rokcandy', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 754, '2014-03-11 17:20:48', 0, '0000-00-00 00:00:00', 0, '', 1),
(11, 43, 1, 19, 20, 1, 'uslugi', 'com_content', 'Услуги', 'uslugi', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 754, '2014-03-11 17:26:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
(12, 48, 1, 21, 22, 1, 'tipy-sajtov', 'com_content', 'Типы сайтов', 'tipy-sajtov', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 754, '2014-03-11 17:29:48', 0, '0000-00-00 00:00:00', 0, '*', 1),
(13, 100, 1, 23, 24, 1, 'sajt-vizitka', 'com_content', 'Сайт-визитка', 'sajt-vizitka', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 754, '2014-03-23 08:43:40', 0, '0000-00-00 00:00:00', 0, '*', 1),
(14, 101, 1, 25, 26, 1, 'malyj-biznes', 'com_content', 'Малый бизнес', 'malyj-biznes', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 754, '2014-03-23 08:43:49', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_chronoengine_chronoforms`
--

CREATE TABLE IF NOT EXISTS `m7bpc_chronoengine_chronoforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `extras` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `app` varchar(255) NOT NULL DEFAULT '',
  `form_type` int(1) NOT NULL DEFAULT '1',
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `m7bpc_chronoengine_chronoforms`
--

INSERT INTO `m7bpc_chronoengine_chronoforms` (`id`, `title`, `params`, `extras`, `published`, `app`, `form_type`, `content`) VALUES
(1, 'Заказать', '{"description":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0430","setup":"1","theme":"bootstrap3","tight_layout":"1"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo1OntpOjE7YToxODp7czo0OiJuYW1lIjtzOjM6IkZJTyI7czoyOiJpZCI7czozOiJGSU8iO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo2OiLQpNCY0J4iO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjA6IiI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjI7YToxODp7czo0OiJuYW1lIjtzOjU6InBob25lIjtzOjI6ImlkIjtzOjU6InBob25lIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTQ6ItCi0LXQu9C10YTQvtC9IjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjA6IiI7czo1OiJwaG9uZSI7czoxOiIxIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6MzthOjE4OntzOjQ6Im5hbWUiO3M6NToiZW1haWwiO3M6MjoiaWQiO3M6NToiZW1haWwiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo2OiJFLW1haWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo2O2E6MjA6e3M6NDoibmFtZSI7czo2OiJzZWxlY3QiO3M6MjoiaWQiO3M6Njoic2VsZWN0IjtzOjc6Im9wdGlvbnMiO3M6MTYxOiIxPdCh0LDQudGCLdCy0LjQt9C40YLQutCwDQoyPdCe0YTQuNGG0LjQsNC70YzQvdGL0Lkg0YHQsNC50YINCjM90JzQsNC70YvQuSDQsdC40LfQvdC10YENCjQ90JrQvtGA0L/QvtGA0LDRgtC40LLQvdGL0Lkg0YHQsNC50YINCjU90JjQvdGC0LXRgNC90LXRgi3QvNCw0LPQsNC30LjQvSI7czo1OiJlbXB0eSI7czoyMzoi0JLRi9Cx0LXRgNC40YLQtSDRgtC40L8iO3M6NjoidmFsdWVzIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6ODoi0KHQsNC50YIiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjg6Im11bHRpcGxlIjtzOjE6IjAiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoiZHJvcGRvd24iO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjM6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9czoxMjoiZHluYW1pY19kYXRhIjthOjQ6e3M6NzoiZW5hYmxlZCI7czowOiIiO3M6OToiZGF0YV9wYXRoIjtzOjA6IiI7czo5OiJ2YWx1ZV9rZXkiO3M6MDoiIjtzOjg6InRleHRfa2V5IjtzOjA6IiI7fXM6NjoiZXZlbnRzIjthOjE6e2k6MDthOjU6e3M6ODoib3BlcmF0b3IiO3M6MToiPSI7czo1OiJzdGF0ZSI7czowOiIiO3M6NjoiYWN0aW9uIjtzOjA6IiI7czo2OiJ0YXJnZXQiO3M6MDoiIjtzOjc6Im9wdGlvbnMiO3M6MDoiIjt9fX1pOjQ7YToxMDp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uNCI7czoyOiJpZCI7czo3OiJidXR0b240IjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjE4OiLQntGC0L/RgNCw0LLQuNGC0YwiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO319czoxNDoiYWN0aW9uc19jb25maWciO2E6MTQ6e2k6ODthOjI6e3M6NzoiY29udGVudCI7czowOiIiO3M6NToiZmlsZXMiO3M6MDoiIjt9aTo3O2E6Mjp7czo3OiJjb250ZW50IjtzOjA6IiI7czo1OiJmaWxlcyI7czowOiIiO31pOjY7YToyOntzOjU6ImZvbnRzIjtzOjE6IjEiO3M6MTQ6InJlZnJlc2hfYnV0dG9uIjtzOjE6IjAiO31pOjU7YTo5OntzOjQ6InBhZ2UiO3M6MToiMSI7czoxMjoic3VibWl0X2V2ZW50IjtzOjY6InN1Ym1pdCI7czoxMToiZm9ybV9tZXRob2QiO3M6NDoiZmlsZSI7czoxMDoiYWN0aW9uX3VybCI7czowOiIiO3M6MTA6ImZvcm1fY2xhc3MiO3M6MTA6ImNocm9ub2Zvcm0iO3M6MTU6ImZvcm1fdGFnX2F0dGFjaCI7czowOiIiO3M6MjQ6InJlcXVpcmVkX2xhYmVsc19pZGVudGlmeSI7czoxOiIxIjtzOjEyOiJyZWxhdGl2ZV91cmwiO3M6MToiMSI7czoxMToiYWpheF9zdWJtaXQiO3M6MToiMCI7fWk6MjthOjI6e3M6NzoiZW5hYmxlZCI7czoxOiIwIjtzOjU6ImVycm9yIjtzOjA6IiI7fWk6MzthOjE6e3M6NToiZXZlbnQiO3M6NDoibG9hZCI7fWk6OTthOjk6e3M6NzoiZW5hYmxlZCI7czoxOiIwIjtzOjU6ImZpbGVzIjtzOjA6IiI7czoxMToidXBsb2FkX3BhdGgiO3M6MDoiIjtzOjg6Im1heF9zaXplIjtzOjA6IiI7czo4OiJtaW5fc2l6ZSI7czowOiIiO3M6OToibWF4X2Vycm9yIjtzOjA6IiI7czo5OiJtaW5fZXJyb3IiO3M6MDoiIjtzOjEwOiJ0eXBlX2Vycm9yIjtzOjA6IiI7czoyMDoiZXh0ZW5zaW9uc19zZXBhcmF0b3IiO3M6MDoiIjt9aToxMDthOjE6e3M6NToiZXZlbnQiO3M6NDoibG9hZCI7fWk6MTM7YTo0OntzOjc6ImVuYWJsZWQiO3M6MToiMSI7czoxMToiZmllbGRzX2xpc3QiO3M6MDoiIjtzOjk6ImRlbGltaXRlciI7czoxOiIsIjtzOjc6InNraXBwZWQiO3M6MDoiIjt9aToxMTthOjU6e3M6NzoiZW5hYmxlZCI7czoxOiIwIjtzOjk6InRhYmxlbmFtZSI7czowOiIiO3M6MTg6InNhdmVfdW5kZXJfbW9kZWxpZCI7czoxOiIwIjtzOjEwOiJtdWx0aV9zYXZlIjtzOjE6IjAiO3M6ODoibW9kZWxfaWQiO3M6MDoiIjt9aTowO2E6MTk6e3M6MTI6ImFjdGlvbl9sYWJlbCI7czowOiIiO3M6NzoiZW5hYmxlZCI7czoxOiIxIjtzOjI6InRvIjtzOjI3OiJzaXRlcHJvamVjdEBpbnRlbHdlYi1uc2sucnUiO3M6Nzoic3ViamVjdCI7czoyMToi0JfQsNC60LDQtyDRgdCw0LnRgtCwIjtzOjk6ImZyb21fbmFtZSI7czoxNjoi0JjQvdGC0LXQu9CS0LXQsSI7czoxMDoiZnJvbV9lbWFpbCI7czowOiIiO3M6MTA6ImVtYWlsX3R5cGUiO3M6NDoiaHRtbCI7czo4OiJ0ZW1wbGF0ZSI7czoxOTY6Ijx0YWJsZT4NCjx0cj48dGQ+0KTQmNCePC90ZD48dGQ+e0ZJT308L3RkPjwvdHI+DQo8dHI+PHRkPtCi0LXQu9C10YTQvtC9PC90ZD48dGQ+e3Bob25lfTwvdGQ+PC90cj4NCjx0cj48dGQ+RS1tYWlsPC90ZD48dGQ+e2VtYWlsfTwvdGQ+PC90cj4NCjx0cj48dGQ+0JLRi9Cx0L7RgDwvdGQ+PHRkPntzZWxlY3R9PC90ZD48L3RyPg0KPC90YWJsZT4iO3M6NjoiYXR0YWNoIjtzOjA6IiI7czozOiJkdG8iO3M6MDoiIjtzOjg6ImRzdWJqZWN0IjtzOjA6IiI7czoxMDoicmVwbHlfbmFtZSI7czowOiIiO3M6MTE6InJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMToiZHJlcGx5X25hbWUiO3M6MDoiIjtzOjEyOiJkcmVwbHlfZW1haWwiO3M6MDoiIjtzOjEwOiJkZnJvbV9uYW1lIjtzOjA6IiI7czoxMToiZGZyb21fZW1haWwiO3M6MDoiIjtzOjE3OiJhcHBlbmRfaXBfYWRkcmVzcyI7czoxOiIxIjtzOjE2OiJfX2FjdGlvbl90aXRsZV9fIjtzOjU6ImVtYWlsIjt9aToxO2E6MTk6e3M6MTI6ImFjdGlvbl9sYWJlbCI7czowOiIiO3M6NzoiZW5hYmxlZCI7czoxOiIwIjtzOjI6InRvIjtzOjA6IiI7czo3OiJzdWJqZWN0IjtzOjA6IiI7czo5OiJmcm9tX25hbWUiO3M6MDoiIjtzOjEwOiJmcm9tX2VtYWlsIjtzOjA6IiI7czoxMDoiZW1haWxfdHlwZSI7czo0OiJodG1sIjtzOjg6InRlbXBsYXRlIjtzOjE0OToiPHRhYmxlPg0KPHRyPjx0ZD7QpNCY0J48L3RkPjx0ZD57RklPfTwvdGQ+PC90cj4NCjx0cj48dGQ+0KLQtdC70LXRhNC+0L08L3RkPjx0ZD57cGhvbmV9PC90ZD48L3RyPg0KPHRyPjx0ZD5FLW1haWw8L3RkPjx0ZD57ZW1haWx9PC90ZD48L3RyPg0KPC90YWJsZT4iO3M6NjoiYXR0YWNoIjtzOjA6IiI7czozOiJkdG8iO3M6MDoiIjtzOjg6ImRzdWJqZWN0IjtzOjA6IiI7czoxMDoicmVwbHlfbmFtZSI7czowOiIiO3M6MTE6InJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMToiZHJlcGx5X25hbWUiO3M6MDoiIjtzOjEyOiJkcmVwbHlfZW1haWwiO3M6MDoiIjtzOjEwOiJkZnJvbV9uYW1lIjtzOjA6IiI7czoxMToiZGZyb21fZW1haWwiO3M6MDoiIjtzOjE3OiJhcHBlbmRfaXBfYWRkcmVzcyI7czoxOiIxIjtzOjE2OiJfX2FjdGlvbl90aXRsZV9fIjtzOjU6ImVtYWlsIjt9aTo0O2E6MTp7czo3OiJtZXNzYWdlIjtzOjEwMToi0KHQv9Cw0YHQuNCx0L4g0LfQsCDQt9Cw0Y/QstC60YMhINCSINCx0LvQuNC20LDQudGI0LXQtSDQstGA0LXQvNGPINC80Ysg0YHQstGP0LbQtdC80YHRjyDRgSDQktCw0LzQuCEiO31pOjEyO2E6MTp7czo3OiJlbmFibGVkIjtzOjE6IjAiO319czozOiJETkEiO2E6Mjp7czo0OiJsb2FkIjthOjQ6e3M6NDoianNfOCI7czowOiIiO3M6NToiY3NzXzciO3M6MDoiIjtzOjE0OiJsb2FkX2NhcHRjaGFfNiI7czowOiIiO3M6NjoiaHRtbF81IjtzOjA6IiI7fXM6Njoic3VibWl0IjthOjg6e3M6MTU6ImNoZWNrX2NhcHRjaGFfMiI7YToyOntzOjc6InN1Y2Nlc3MiO3M6MDoiIjtzOjQ6ImZhaWwiO2E6MTp7czoxMjoiZXZlbnRfbG9vcF8zIjtzOjA6IiI7fX1zOjEzOiJmaWxlX3VwbG9hZF85IjthOjI6e3M6Nzoic3VjY2VzcyI7czowOiIiO3M6NDoiZmFpbCI7YToxOntzOjEzOiJldmVudF9sb29wXzEwIjtzOjA6IiI7fX1zOjE2OiJoYW5kbGVfYXJyYXlzXzEzIjtzOjA6IiI7czoxMDoiZGJfc2F2ZV8xMSI7czowOiIiO3M6NzoiZW1haWxfMCI7czowOiIiO3M6NzoiZW1haWxfMSI7czowOiIiO3M6MTY6InRoYW5rc19tZXNzYWdlXzQiO3M6MDoiIjtzOjExOiJkZWJ1Z2dlcl8xMiI7czowOiIiO319fQ==', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-2"><label for="FIO" class="control-label gcore-label-left">ФИО</label>\n<div class="gcore-input gcore-display-table" id="fin-FIO"><input name="FIO" id="FIO" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-4"><label for="phone" class="control-label gcore-label-left">Телефон</label>\n<div class="gcore-input gcore-display-table" id="fin-phone"><input name="phone" id="phone" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;phone&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-6"><label for="email" class="control-label gcore-label-left">E-mail</label>\n<div class="gcore-input gcore-display-table" id="fin-email"><input name="email" id="email" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;email&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-7"><label for="select" class="control-label gcore-label-left">Сайт</label>\n<div class="gcore-input gcore-display-table" id="fin-select"><select name="select" id="select" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-load-state="" data-tooltip="">\n<option value="">Выберите тип</option>\n<option value="1">Сайт-визитка</option>\n<option value="2">Официальный сайт</option>\n<option value="3">Малый бизнес</option>\n<option value="4">Корпоративный сайт</option>\n<option value="5">Интернет-магазин</option>\n</select></div></div><div class="form-group gcore-form-row" id="form-row-8"><div class="gcore-input gcore-display-table" id="fin-button4"><input name="button4" id="button4" type="submit" value="Отправить" class="form-control A" style="" data-load-state="" /></div></div>'),
(3, 'Контакты', '{"description":"\\u041e\\u0431\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043f\\u043e email","setup":"1","theme":"bootstrap3","tight_layout":"0"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo1OntpOjE7YToxODp7czo0OiJuYW1lIjtzOjU6InRleHQxIjtzOjI6ImlkIjtzOjU6InRleHQxIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6Njoi0KTQmNCeIjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjk6Im1heGxlbmd0aCI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJzdHlsZSI7czowOiIiO3M6MTU6IjpkYXRhLWlucHV0bWFzayI7czowOiIiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6NDoidGV4dCI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO3M6MTA6InZhbGlkYXRpb24iO2E6MTI6e3M6ODoicmVxdWlyZWQiO3M6MToiMSI7czo1OiJhbHBoYSI7czoxOiIxIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6MjthOjE4OntzOjQ6Im5hbWUiO3M6NToiRW1haWwiO3M6MjoiaWQiO3M6NToidGV4dDIiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo1OiJFbWFpbCI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjU6ImVtYWlsIjtzOjE6IjEiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6MzthOjE4OntzOjQ6Im5hbWUiO3M6NToidGV4dDMiO3M6MjoiaWQiO3M6NToidGV4dDMiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxNDoi0KLQtdC70LXRhNC+0L0iO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjI2OiInbWFzaycgOiAnKzkoOTk5KTk5OS05OTk5JyI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czowOiIiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MToiMSI7czoxMToicGhvbmVfaW50ZXIiO3M6MDoiIjtzOjM6InVybCI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjQ7YToxODp7czo0OiJuYW1lIjtzOjk6InRleHRhcmVhNCI7czoyOiJpZCI7czo5OiJ0ZXh0YXJlYTQiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxODoi0KHQvtC+0LHRidC10L3QuNC1IjtzOjg6InBvc2l0aW9uIjtzOjQ6ImxlZnQiO31zOjg6InN1YmxhYmVsIjtzOjA6IiI7czoxMToicGxhY2Vob2xkZXIiO3M6MDoiIjtzOjQ6InJvd3MiO3M6MToiMyI7czo0OiJjb2xzIjtzOjI6IjQwIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS13eXNpd3lnIjtzOjE6IjAiO3M6NjoicGFyYW1zIjtzOjA6IiI7czoxNjoiOmRhdGEtbG9hZC1zdGF0ZSI7czowOiIiO3M6MTM6IjpkYXRhLXRvb2x0aXAiO3M6MDoiIjtzOjQ6InR5cGUiO3M6ODoidGV4dGFyZWEiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjg6e3M6ODoicmVxdWlyZWQiO3M6MDoiIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NzoiY29uZmlybSI7czowOiIiO3M6NjoiY3VzdG9tIjtzOjA6IiI7fX1pOjU7YToxMDp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NzoiYnV0dG9uNSI7czoyOiJpZCI7czo3OiJidXR0b241IjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjE4OiLQntGC0L/RgNCw0LLQuNGC0YwiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO319czoxNDoiYWN0aW9uc19jb25maWciO2E6MDp7fXM6MzoiRE5BIjthOjI6e3M6NDoibG9hZCI7czowOiIiO3M6Njoic3VibWl0IjtzOjA6IiI7fX0=', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-2"><label for="text1" class="control-label gcore-label-left">ФИО</label>\n<div class="gcore-input gcore-display-table" id="fin-text1"><input name="text1" id="text1" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;alpha&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-4"><label for="text2" class="control-label gcore-label-left">Email</label>\n<div class="gcore-input gcore-display-table" id="fin-text2"><input name="Email" id="text2" value="" placeholder="" maxlength="" size="" class="validate[&#039;email&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-6"><label for="text3" class="control-label gcore-label-left">Телефон</label>\n<div class="gcore-input gcore-display-table" id="fin-text3"><input name="text3" id="text3" value="" placeholder="" maxlength="" size="" class="validate[&#039;phone&#039;] form-control A" title="" style="" data-inputmask="&#039;mask&#039; : &#039;+9(999)999-9999&#039;" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-7"><label for="textarea4" class="control-label gcore-label-left">Сообщение</label>\n<div class="gcore-input gcore-display-table" id="fin-textarea4"><textarea name="textarea4" id="textarea4" placeholder="" rows="3" cols="40" class="form-control A" title="" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div><div class="form-group gcore-form-row" id="form-row-8"><div class="gcore-input gcore-display-table" id="fin-button5"><input name="button5" id="button5" type="submit" value="Отправить" class="form-control A" style="" data-load-state="" /></div></div>'),
(4, 'Сообщение', '{"description":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u0441\\u0432\\u044f\\u0437\\u0438","setup":"1","theme":"bootstrap3","tight_layout":"1"}', 'YTozOntzOjY6ImZpZWxkcyI7YTo2OntpOjE7YToxODp7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6MjoiaWQiO3M6NDoibmFtZSI7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToibGFiZWwiO2E6Mjp7czo0OiJ0ZXh0IjtzOjY6ItCk0JjQniI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjE1OiI6ZGF0YS1pbnB1dG1hc2siO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjQ6InRleHQiO3M6MTI6ImNvbnRhaW5lcl9pZCI7czoxOiIwIjtzOjEwOiJ2YWxpZGF0aW9uIjthOjEyOntzOjg6InJlcXVpcmVkIjtzOjE6IjEiO3M6NToiYWxwaGEiO3M6MDoiIjtzOjg6ImFscGhhbnVtIjtzOjA6IiI7czo1OiJkaWdpdCI7czowOiIiO3M6Nzoibm9kaWdpdCI7czowOiIiO3M6NjoibnVtYmVyIjtzOjA6IiI7czo1OiJlbWFpbCI7czowOiIiO3M6NToicGhvbmUiO3M6MDoiIjtzOjExOiJwaG9uZV9pbnRlciI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo3OiJjb25maXJtIjtzOjA6IiI7czo2OiJjdXN0b20iO3M6MDoiIjt9fWk6MjthOjE4OntzOjQ6Im5hbWUiO3M6MjoicGgiO3M6MjoiaWQiO3M6MjoicGgiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czoxNDoi0KLQtdC70LXRhNC+0L0iO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjI2OiInbWFzaycgOiAnKzkoOTk5KTk5OS05OTk5JyI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MDoiIjtzOjU6InBob25lIjtzOjE6IjEiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTozO2E6MTg6e3M6NDoibmFtZSI7czo0OiJtYWlsIjtzOjI6ImlkIjtzOjQ6Im1haWwiO3M6NToidmFsdWUiO3M6MDoiIjtzOjU6ImxhYmVsIjthOjI6e3M6NDoidGV4dCI7czo2OiJFLW1haWwiO3M6ODoicG9zaXRpb24iO3M6NDoibGVmdCI7fXM6ODoic3VibGFiZWwiO3M6MDoiIjtzOjExOiJwbGFjZWhvbGRlciI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxNToiOmRhdGEtaW5wdXRtYXNrIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMzoiOmRhdGEtdG9vbHRpcCI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YToxMjp7czo4OiJyZXF1aXJlZCI7czoxOiIxIjtzOjU6ImFscGhhIjtzOjA6IiI7czo4OiJhbHBoYW51bSI7czowOiIiO3M6NToiZGlnaXQiO3M6MDoiIjtzOjc6Im5vZGlnaXQiO3M6MDoiIjtzOjY6Im51bWJlciI7czowOiIiO3M6NToiZW1haWwiO3M6MToiMSI7czo1OiJwaG9uZSI7czowOiIiO3M6MTE6InBob25lX2ludGVyIjtzOjA6IiI7czozOiJ1cmwiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo3O2E6MTg6e3M6NDoibmFtZSI7czozOiJtc2ciO3M6MjoiaWQiO3M6MzoibXNnIjtzOjU6InZhbHVlIjtzOjA6IiI7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6MTg6ItCh0L7QvtCx0YnQtdC90LjQtSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo0OiJyb3dzIjtzOjE6IjMiO3M6NDoiY29scyI7czoyOiI0MCI7czo1OiJjbGFzcyI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czoxMzoiOmRhdGEtd3lzaXd5ZyI7czoxOiIwIjtzOjY6InBhcmFtcyI7czowOiIiO3M6MTY6IjpkYXRhLWxvYWQtc3RhdGUiO3M6MDoiIjtzOjEzOiI6ZGF0YS10b29sdGlwIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjg6InRleHRhcmVhIjtzOjEyOiJjb250YWluZXJfaWQiO3M6MToiMCI7czoxMDoidmFsaWRhdGlvbiI7YTo4OntzOjg6InJlcXVpcmVkIjtzOjA6IiI7czo1OiJhbHBoYSI7czowOiIiO3M6ODoiYWxwaGFudW0iO3M6MDoiIjtzOjU6ImRpZ2l0IjtzOjA6IiI7czo3OiJub2RpZ2l0IjtzOjA6IiI7czo2OiJudW1iZXIiO3M6MDoiIjtzOjc6ImNvbmZpcm0iO3M6MDoiIjtzOjY6ImN1c3RvbSI7czowOiIiO319aTo4O2E6Nzp7czo1OiJsYWJlbCI7YToyOntzOjQ6InRleHQiO3M6NzoiQ2FwdGNoYSI7czo4OiJwb3NpdGlvbiI7czo0OiJsZWZ0Ijt9czo2OiJpbnB1dHMiO2E6Mjp7czo1OiJmaWVsZCI7YToxMTp7czo4OiJzdWJsYWJlbCI7czowOiIiO3M6MTE6InBsYWNlaG9sZGVyIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImNsYXNzIjtzOjA6IiI7czo1OiJ0aXRsZSI7czowOiIiO3M6NToic3R5bGUiO3M6MDoiIjtzOjY6InBhcmFtcyI7czowOiIiO3M6NDoidHlwZSI7czo0OiJ0ZXh0IjtzOjQ6Im5hbWUiO3M6NzoiY2FwdGNoYSI7czoxMDoidmFsaWRhdGlvbiI7YToxOntzOjg6InJlcXVpcmVkIjtzOjA6IiI7fX1zOjU6ImltYWdlIjthOjM6e3M6NDoidHlwZSI7czo2OiJjdXN0b20iO3M6NDoibmFtZSI7czo3OiJjYXB0Y2hhIjtzOjQ6ImNvZGUiO3M6MTM6IntjYXB0Y2hhX2ltZ30iO319czo2OiJsYXlvdXQiO3M6NDoid2lkZSI7czo0OiJuYW1lIjtzOjc6ImNhcHRjaGEiO3M6MTE6InJlbmRlcl90eXBlIjtzOjc6ImNhcHRjaGEiO3M6NDoidHlwZSI7czo1OiJtdWx0aSI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO31pOjQ7YToxMDp7czoxMToicmVuZGVyX3R5cGUiO3M6Njoic3VibWl0IjtzOjQ6Im5hbWUiO3M6NDoic2VuZCI7czoyOiJpZCI7czo0OiJzZW5kIjtzOjQ6InR5cGUiO3M6Njoic3VibWl0IjtzOjU6InZhbHVlIjtzOjE4OiLQntGC0L/RgNCw0LLQuNGC0YwiO3M6NToiY2xhc3MiO3M6MDoiIjtzOjU6InN0eWxlIjtzOjA6IiI7czo2OiJwYXJhbXMiO3M6MDoiIjtzOjE2OiI6ZGF0YS1sb2FkLXN0YXRlIjtzOjA6IiI7czoxMjoiY29udGFpbmVyX2lkIjtzOjE6IjAiO319czoxNDoiYWN0aW9uc19jb25maWciO2E6MTQ6e2k6ODthOjI6e3M6NzoiY29udGVudCI7czowOiIiO3M6NToiZmlsZXMiO3M6MDoiIjt9aTo3O2E6Mjp7czo3OiJjb250ZW50IjtzOjA6IiI7czo1OiJmaWxlcyI7czowOiIiO31pOjY7YToyOntzOjU6ImZvbnRzIjtzOjE6IjEiO3M6MTQ6InJlZnJlc2hfYnV0dG9uIjtzOjE6IjAiO31pOjU7YTo5OntzOjQ6InBhZ2UiO3M6MToiMSI7czoxMjoic3VibWl0X2V2ZW50IjtzOjY6InN1Ym1pdCI7czoxMToiZm9ybV9tZXRob2QiO3M6NDoiZmlsZSI7czoxMDoiYWN0aW9uX3VybCI7czowOiIiO3M6MTA6ImZvcm1fY2xhc3MiO3M6MTA6ImNocm9ub2Zvcm0iO3M6MTU6ImZvcm1fdGFnX2F0dGFjaCI7czowOiIiO3M6MjQ6InJlcXVpcmVkX2xhYmVsc19pZGVudGlmeSI7czoxOiIxIjtzOjEyOiJyZWxhdGl2ZV91cmwiO3M6MToiMSI7czoxMToiYWpheF9zdWJtaXQiO3M6MToiMCI7fWk6MjthOjI6e3M6NzoiZW5hYmxlZCI7czoxOiIxIjtzOjU6ImVycm9yIjtzOjQ2OiLQndC10LLQtdGA0L3Ri9C5INC/0YDQvtCy0LXRgNC+0YfQvdGL0Lkg0LrQvtC0Ijt9aTozO2E6MTp7czo1OiJldmVudCI7czo0OiJsb2FkIjt9aTo5O2E6OTp7czo3OiJlbmFibGVkIjtzOjE6IjAiO3M6NToiZmlsZXMiO3M6MDoiIjtzOjExOiJ1cGxvYWRfcGF0aCI7czowOiIiO3M6ODoibWF4X3NpemUiO3M6MDoiIjtzOjg6Im1pbl9zaXplIjtzOjA6IiI7czo5OiJtYXhfZXJyb3IiO3M6MDoiIjtzOjk6Im1pbl9lcnJvciI7czowOiIiO3M6MTA6InR5cGVfZXJyb3IiO3M6MDoiIjtzOjIwOiJleHRlbnNpb25zX3NlcGFyYXRvciI7czowOiIiO31pOjEwO2E6MTp7czo1OiJldmVudCI7czo0OiJsb2FkIjt9aToxMzthOjQ6e3M6NzoiZW5hYmxlZCI7czoxOiIxIjtzOjExOiJmaWVsZHNfbGlzdCI7czowOiIiO3M6OToiZGVsaW1pdGVyIjtzOjE6IiwiO3M6Nzoic2tpcHBlZCI7czowOiIiO31pOjExO2E6NTp7czo3OiJlbmFibGVkIjtzOjE6IjAiO3M6OToidGFibGVuYW1lIjtzOjA6IiI7czoxODoic2F2ZV91bmRlcl9tb2RlbGlkIjtzOjE6IjAiO3M6MTA6Im11bHRpX3NhdmUiO3M6MToiMCI7czo4OiJtb2RlbF9pZCI7czowOiIiO31pOjA7YToxOTp7czoxMjoiYWN0aW9uX2xhYmVsIjtzOjA6IiI7czo3OiJlbmFibGVkIjtzOjE6IjEiO3M6MjoidG8iO3M6Mjc6InNpdGVwcm9qZWN0QGludGVsd2ViLW5zay5ydSI7czo3OiJzdWJqZWN0IjtzOjMyOiLQodC+0L7QsdGJ0LXQvdC40LUg0YEg0YHQsNC50YLQsCI7czo5OiJmcm9tX25hbWUiO3M6MTY6ItCY0L3RgtC10LvQktC10LEiO3M6MTA6ImZyb21fZW1haWwiO3M6MDoiIjtzOjEwOiJlbWFpbF90eXBlIjtzOjQ6Imh0bWwiO3M6ODoidGVtcGxhdGUiO3M6MjQxOiI8dGFibGU+DQo8dGJvZHk+DQo8dHI+DQo8dGQ+0KTQmNCePC90ZD4NCjx0ZD57bmFtZX08L3RkPg0KPC90cj4NCjx0cj4NCjx0ZD7QotC10LvQtdGE0L7QvTwvdGQ+DQo8dGQ+e3BofTwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkPkUtbWFpbDwvdGQ+DQo8dGQ+e21haWx9PC90ZD4NCjwvdHI+DQo8dHI+DQo8dGQ+0KHQvtC+0LHRidC10L3QuNC1PC90ZD4NCjx0ZD57bXNnfTwvdGQ+DQo8L3RyPg0KPC90Ym9keT4NCjwvdGFibGU+IjtzOjY6ImF0dGFjaCI7czowOiIiO3M6MzoiZHRvIjtzOjA6IiI7czo4OiJkc3ViamVjdCI7czowOiIiO3M6MTA6InJlcGx5X25hbWUiO3M6MDoiIjtzOjExOiJyZXBseV9lbWFpbCI7czowOiIiO3M6MTE6ImRyZXBseV9uYW1lIjtzOjA6IiI7czoxMjoiZHJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMDoiZGZyb21fbmFtZSI7czowOiIiO3M6MTE6ImRmcm9tX2VtYWlsIjtzOjA6IiI7czoxNzoiYXBwZW5kX2lwX2FkZHJlc3MiO3M6MToiMSI7czoxNjoiX19hY3Rpb25fdGl0bGVfXyI7czo1OiJlbWFpbCI7fWk6MTthOjE5OntzOjEyOiJhY3Rpb25fbGFiZWwiO3M6MDoiIjtzOjc6ImVuYWJsZWQiO3M6MToiMCI7czoyOiJ0byI7czowOiIiO3M6Nzoic3ViamVjdCI7czowOiIiO3M6OToiZnJvbV9uYW1lIjtzOjA6IiI7czoxMDoiZnJvbV9lbWFpbCI7czowOiIiO3M6MTA6ImVtYWlsX3R5cGUiO3M6NDoiaHRtbCI7czo4OiJ0ZW1wbGF0ZSI7czoxNDk6Ijx0YWJsZT4NCjx0cj48dGQ+0KTQmNCePC90ZD48dGQ+e0ZJT308L3RkPjwvdHI+DQo8dHI+PHRkPtCi0LXQu9C10YTQvtC9PC90ZD48dGQ+e3Bob25lfTwvdGQ+PC90cj4NCjx0cj48dGQ+RS1tYWlsPC90ZD48dGQ+e2VtYWlsfTwvdGQ+PC90cj4NCjwvdGFibGU+IjtzOjY6ImF0dGFjaCI7czowOiIiO3M6MzoiZHRvIjtzOjA6IiI7czo4OiJkc3ViamVjdCI7czowOiIiO3M6MTA6InJlcGx5X25hbWUiO3M6MDoiIjtzOjExOiJyZXBseV9lbWFpbCI7czowOiIiO3M6MTE6ImRyZXBseV9uYW1lIjtzOjA6IiI7czoxMjoiZHJlcGx5X2VtYWlsIjtzOjA6IiI7czoxMDoiZGZyb21fbmFtZSI7czowOiIiO3M6MTE6ImRmcm9tX2VtYWlsIjtzOjA6IiI7czoxNzoiYXBwZW5kX2lwX2FkZHJlc3MiO3M6MToiMSI7czoxNjoiX19hY3Rpb25fdGl0bGVfXyI7czo1OiJlbWFpbCI7fWk6NDthOjE6e3M6NzoibWVzc2FnZSI7czo0MDoi0KHQv9Cw0YHQuNCx0L4g0LfQsCDRgdC+0L7QsdGJ0LXQvdC40LUhICI7fWk6MTI7YToxOntzOjc6ImVuYWJsZWQiO3M6MToiMCI7fX1zOjM6IkROQSI7YToyOntzOjQ6ImxvYWQiO2E6NDp7czo0OiJqc184IjtzOjA6IiI7czo1OiJjc3NfNyI7czowOiIiO3M6MTQ6ImxvYWRfY2FwdGNoYV82IjtzOjA6IiI7czo2OiJodG1sXzUiO3M6MDoiIjt9czo2OiJzdWJtaXQiO2E6ODp7czoxNToiY2hlY2tfY2FwdGNoYV8yIjthOjI6e3M6Nzoic3VjY2VzcyI7czowOiIiO3M6NDoiZmFpbCI7YToxOntzOjEyOiJldmVudF9sb29wXzMiO3M6MDoiIjt9fXM6MTM6ImZpbGVfdXBsb2FkXzkiO2E6Mjp7czo3OiJzdWNjZXNzIjtzOjA6IiI7czo0OiJmYWlsIjthOjE6e3M6MTM6ImV2ZW50X2xvb3BfMTAiO3M6MDoiIjt9fXM6MTY6ImhhbmRsZV9hcnJheXNfMTMiO3M6MDoiIjtzOjEwOiJkYl9zYXZlXzExIjtzOjA6IiI7czo3OiJlbWFpbF8wIjtzOjA6IiI7czo3OiJlbWFpbF8xIjtzOjA6IiI7czoxNjoidGhhbmtzX21lc3NhZ2VfNCI7czowOiIiO3M6MTE6ImRlYnVnZ2VyXzEyIjtzOjA6IiI7fX19', 1, '', 1, '<div class="form-group gcore-form-row" id="form-row-2"><label for="name" class="control-label gcore-label-left">ФИО</label>\n<div class="gcore-input gcore-display-table" id="fin-name"><input name="name" id="name" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-4"><label for="ph" class="control-label gcore-label-left">Телефон</label>\n<div class="gcore-input gcore-display-table" id="fin-ph"><input name="ph" id="ph" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;phone&#039;] form-control A" title="" style="" data-inputmask="&#039;mask&#039; : &#039;+9(999)999-9999&#039;" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-6"><label for="mail" class="control-label gcore-label-left">E-mail</label>\n<div class="gcore-input gcore-display-table" id="fin-mail"><input name="mail" id="mail" value="" placeholder="" maxlength="" size="" class="validate[&#039;required&#039;,&#039;email&#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /></div></div><div class="form-group gcore-form-row" id="form-row-7"><label for="msg" class="control-label gcore-label-left">Сообщение</label>\n<div class="gcore-input gcore-display-table" id="fin-msg"><textarea name="msg" id="msg" placeholder="" rows="3" cols="40" class="form-control A" title="" style="" data-wysiwyg="0" data-load-state="" data-tooltip=""></textarea></div></div><div class="form-group gcore-form-row" id="form-row-13"><label for="fld8" class="control-label gcore-label-left">Captcha</label>\n<div class="gcore-subinput-container-wide" id="fitem10"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-fld9"><input placeholder="" maxlength="" size="" class="form-control A" title="" style="" type="text" name="captcha" id="fld9" /></div></div>\n<div class="gcore-subinput-container-wide" id="fitem12"><div class="gcore-input pull-left gcore-sub-input gcore-display-table" id="fin-fld11">{captcha_img}</div></div></div><div class="form-group gcore-form-row" id="form-row-14"><div class="gcore-input gcore-display-table" id="fin-send"><input name="send" id="send" type="submit" value="Отправить" class="form-control A" style="" data-load-state="" /></div></div>');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_chronoengine_extensions`
--

CREATE TABLE IF NOT EXISTS `m7bpc_chronoengine_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addon_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `ordering` int(4) NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_contact_details`
--

CREATE TABLE IF NOT EXISTS `m7bpc_contact_details` (
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
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
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
-- Дамп данных таблицы `m7bpc_contact_details`
--

INSERT INTO `m7bpc_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Позвоните нам или воспользуйтесь формой обратной связи', 'evgeniya', '', '', 'г. Новомосковск', 'Тульская область', 'Россия', '301650', '', '', '', '', 'linansk@inbox.ru', 0, 0, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"1","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 754, 4, 1, '+79105585383 Евгения', 'http://intelweb-nsk.com', '', '', '', '*', '2014-03-21 09:59:33', 754, '', '2014-03-21 10:11:44', 754, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 58);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_content`
--

CREATE TABLE IF NOT EXISTS `m7bpc_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `m7bpc_content`
--

INSERT INTO `m7bpc_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 42, 'Услуги', 'uslugi', '<p>Веб-студия «ИнтелВеб» рада предложить организациям  Новомосковска  и частным лицам свои услуги в области разработки веб-сайтов.</p>\r\n<p>В настоящее время вы ведем разработку сайтов любой сложности для любых Ваших целей. Продвигайте свой бизнес вместе с нами! </p>\r\n<div class="grid_6">\r\n<h4>Создание сайтов, их продвижение и поддержка</h4>\r\n<p>Полный комплекс услуг, которые необходимы любому сайту:</p>\r\n<ul class="list2">\r\n<li>Разработка сайтов, доработка существующих сайтов</li>\r\n<li>Продвижение веб-сайтов: поисковая оптимизация, контекстная реклама</li>\r\n<li>Поддержка веб-сайтов: техническая, информационная</li>\r\n</ul>\r\n</div>', '', 1, 11, '2014-03-11 17:25:58', 754, '', '2014-03-20 09:39:25', 754, 754, '2014-03-20 09:46:13', '2014-03-11 17:25:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 6, '', '', 1, 126, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 71, 'ИнтелВеб', 'glavnaya1', '<h2>ИнтелВеб - создание сайтов, продвижение, поддержка в Новомосковске</h2>\r\n<p>Создание сайтов любой сложности в Новомосковске! В срок и по доступным ценам! Обращайтесь в  нашу веб-студию и получите качественный веб- ресурс для продвижения Вашего бизнеса!</p>\r\n<p>Преимущества нашей веб-студии:</p>\r\n<ol class="orange">\r\n<li>Низкие цены, качественная разработка, короткие сроки</li>\r\n<li>Домен и хостинг оформляются на вас, поэтому вы, и только вы, являетесь полноправным владельцем сайта .</li>\r\n<li>Никаких дополнительных денежных сборов. Все цены прозрачны и окончательны.</li>\r\n<li>Оказание комплекса услуг в одном месте - регистрация домена, хостинга, создание сайта, фирменного логотипа, продвижение и многое другое.</li>\r\n<li>При желании вы можете сами управлять своим сайтом посредством CMS.</li>\r\n</ol>\r\n<p> Наши услуги:</p>\r\n<p> Разработка сайтов</p>\r\n<ul class="orangeMarker">\r\n<li>Оптимизация и сопровождение сайтов</li>\r\n<li>Веб-дизайн и создание фирменного стиля</li>\r\n<li>Продвижение</li>\r\n<li>Написание уникального контента</li>\r\n</ul>\r\n<p>Стоит выбрать нашу веб-студию, потому что:</p>\r\n<ul class="orangeMarker">\r\n<li>Работа осуществляется с использованием новейший технологий быстро и качественно</li>\r\n<li>Нам важен каждый заказчик, поэтому к каждому клиенту осуществляется индивидуальный подход</li>\r\n<li>Мы оказываем весь спектр услуг от создания сайта до продвижения</li>\r\n<li>Предоставляем возможности для роста и развития клиента. Неважно, с какого сайта вы начнете свой бизнес в Интернете, мы всегда сможем расширить и дополнить функционал вашего ресурса</li>\r\n</ul>\r\n<p>    "ИнтелВеб" - продвигайте свой бизнес с нами!</p>\r\n<p> </p>\r\n<p> </p>', '', 1, 2, '2014-03-18 19:52:44', 754, '', '2014-03-27 09:26:33', 754, 0, '0000-00-00 00:00:00', '2014-03-18 19:52:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 4, 'заказать сайт, где заказать сайт, закажи официальный сайт, заказать сайт магазин, изготовление сайтов, разработка сайтов, создание сайтов, сайт визитка, создание интернет сайтов, интелвеб, студия интелвеб, веб студия новомосковск, бизнес веб студия', 'ИнтелВеб - создание сайтов, продвижение, поддержка. Продвигайте свой бизнес с нами!', 1, 10060, '{"robots":"index, follow","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 44, 'Разработка', 'sozdanie-sajtov', '<p style="text-align: justify;"><strong>Что такое разработка сайтов?<br /></strong></p>\r\n<p style="text-align: justify;"> Разработка сайта – проектирование и создание веб ресурса командой специалистов для удовлетворения информационных потребностей клиента.</p>\r\n<p style="text-align: justify;"> <strong>Зачем нужна разработка сайтов?</strong></p>\r\n<p style="text-align: justify;">Любой проект должен преследовать какие то конкретные цели, чтобы в дальнейшем избежать разочарования в нем. Наиболее распространены следующие цели в разработке сайтов:</p>\r\n<ul style="text-align: justify;">\r\n<li>Сайт – представительство. Организация не ставит цели привлекать данным сайтом новых клиентов. Используется для поддержания имиджа компании. Содержит информацию о компании и предоставляемые ею услуги. </li>\r\n<li>Сайт – источник прибыли. Ресурс, ориентированный на привлечение клиентов. Подобный ресурс требует серьезной совместной работы заказчика и специалистов. Также необходимо предусмотреть расходы не только на разработку сайта, но и на последующее профессиональное сопровождение ресурса, его продвижение. </li>\r\n</ul>\r\n<p style="text-align: justify;"> <strong>Виды разработки сайтов</strong></p>\r\n<p style="text-align: justify;">Заказчику необходимо определиться с типом сайта, который должен выполнять в полной мере поставленную перед ним цель.<br /> Мы предлагаем следующую классификацию сайтов:</p>\r\n<ul style="text-align: justify;">\r\n<li><span style="text-decoration: underline;"><a href="http://intelweb-nsk.ru/index.php/sozdanie-sajtov/sajt-vizitka">Сайт-визитка</a></span>, содержащий от 1 до 3 страниц. Оптимальный вариант представительства в сети.</li>\r\n<li>Информационный сайт (представлен <a href="http://intelweb-nsk.ru/index.php/sozdanie-sajtov/ofitsialnyj-sajt"><span style="text-decoration: underline;">официальный сайт</span></a> объемом 10–15 страниц и <span style="text-decoration: underline;"><a href="http://intelweb-nsk.ru/index.php/sozdanie-sajtov/korporativnyj-sajt">корпоративный сайт</a></span> размером 30 страниц) – отличное решение для привлечения клиентов.</li>\r\n<li><span style="text-decoration: underline;"><a href="http://intelweb-nsk.ru/index.php/sozdanie-sajtov/internet-magazin">Сайт-магазин</a></span> с  неограниченным количеством страниц, осуществление торговой деятельности в Интернете.</li>\r\n</ul>\r\n<p style="text-align: justify;"> <strong>Дизайн сайта</strong></p>\r\n<p style="text-align: justify;">В нашей веб-студии "ИнтелВеб" мы используем готовые качественные шаблоны сайтов, проверенные на практике. Это позволяет уменьшить стоимость и сроки создания сайта. Сэкономленный бюджет, например, можно потратить на продвижение или поддержку сайта. Шаблонный сайт не подразумевает под собой одинаковый  дизайн всех созданных с помощью шаблона сайтов.Ваш вид сайта будет всегда уникален.</p>\r\n<p style="text-align: justify;"><strong>Этапы разработки сайта</strong></p>\r\n<p style="text-align: justify;"> После того, как вы определитесь с целями и типом ресурса, можно приступать к непосредственной разработке сайта. Этапы разработки должны выполнятся в строго определенном порядке. Мы используем следующие этапы:</p>\r\n<ul style="text-align: justify;">\r\n<li>заполнение заказчиком брифов и анкет, предоставление материала о компании;</li>\r\n<li>подготовка текстового и графического материала для размещения на сайте;</li>\r\n<li>составление ТЗ на разработку сайта;</li>\r\n<li>разработка дизайна сайта (на основе шаблона);</li>\r\n<li>согласование;</li>\r\n<li>внесение изменений на основе пожеланий заказчика;</li>\r\n<li>загрузка сайта в Интернет.</li>\r\n</ul>\r\n<p style="text-align: justify;">Не стоит думать, что после начала разработки заказчик не принимает участия в проектировании (одна из распространенных ошибок при разработке). Заказчик должен оценивать проделанную работу и вносить коррективы на любом этапе проектирования. Клиент всегда прав! </p>\r\n<p style="text-align: justify;"><strong>Ваш сайт готов. Что же дальше?</strong></p>\r\n<p style="text-align: justify;">Если вы сайт используется как представительство в Сети и вы не планируете привлекать новых клиентов, то на данном сайте необходимо техническое обслуживание и поддержка актуальности информации.</p>\r\n<p style="text-align: justify;">Если же сайт используется как инструмент привлечения клиентов, то создание сайта это только начало пути. Такой сайт необходимо продвигать, чтобы получить целевую аудиторию. Это долгий и затратный процесс, но в итоге, несомненно окупаемый.</p>\r\n<p style="text-align: justify;">"ИнтелВеб" предлагает следующие виды услуг готовым сайтам:</p>\r\n<ol style="text-align: justify;">\r\n<li>профессиональное сопровождение;</li>\r\n<li>регулярное обновление информации;</li>\r\n<li>продвижение;</li>\r\n</ol>\r\n<p style="text-align: justify;">Наши специалисты избавят Вас от хлопот по поддержке и продвижению сайта.</p>', '', 1, 11, '2014-03-11 17:28:02', 754, '', '2014-03-25 12:42:04', 754, 754, '2014-03-27 20:41:12', '2014-03-11 17:28:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 5, '', '', 1, 239, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 45, 'Портфолио', 'portfolio', '', '', 1, 11, '2014-03-11 17:28:22', 754, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-11 17:28:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 46, 'Редизайн сайта', 'dorabotka-i-optimizatsiya', '<p> С английского перевести редизайн, означает «смена дизайна» , в истинном значении редизайн означает что то новое спроектированное, другими словами полная модернизация сайта. Часто, говоря о редизайне и о смене дизайна сайта, компании приходят к тому, что просто сменить дизайн будет недостаточно. Следует переработать и всю структуру сайта, провести анализ достигнутых целей и задач, которые сайт не смог решить. Можно добавить к этому перечню — отзывы о работе Вашего сайта партнеров, постоянных клиентов и собственных сотрудников компании.</p>\r\n<p>Доработать сайт, значит усовершенствовать его на уровень из лучших и сделать его оригинальным в своем роде, способным механизму системы Интернет запустить его в оборот соприкосновений клиент плюс информация плюс спрос равно прибыль. Интернет динамично развивающаяся система, ресурсами которой постоянно необходимо подтверждать свою актуальность.</p>\r\n<p>Каждая версия сайта, какой бы качественной и продуманной она не была имеет свой срок жизни и должна сохраняться копия. Обычно редизайн сайта проводят раз в 2-3 года. Это связано, прежде всего, с развитием компании, сменой приоритетов направлений ее деятельности, а также появлением новых, качественно превосходящих предыдущие, технологий. Любой дизайн устаревает также, как и бумажная продукция, — буклеты, листовки и т.п.</p>\r\n<p>К решению о редизайне сайта необходимо подходить обдуманно — оценить текущую привлекательность и эффективность дизайна, узнать у партнеров и постоянных клиентов, чем именно дизайн Вашего сайта привлекает их, а чем отталкивает, резиновый дизайн сайта в этом выигрывает. Работа по редизайну сайта не менее ответственна, чем услуги по его первичной разработке.</p>\r\n<h2><span id="">В каком случае стоит производить смену дизайна?</span></h2>\r\n<ul>\r\n<li>со времени создания сайта прошло уже более 5-ти лет;</li>\r\n<li>сайт создан недавно, однако не выполняет поставленных перед ним задач (сайт сделан непрофессионально);</li>\r\n<li>дизайн и структура сайта морально устарели и необходимо срочно изменить дизайн сайта;</li>\r\n<li>возникла потребность в самостоятельном управлении сайтом компанией;</li>\r\n<li>возникла потребность во внедрении дополнительных сервисов на сайте.</li>\r\n</ul>', '', 1, 11, '2014-03-11 17:28:33', 754, '', '2014-03-26 07:35:52', 754, 754, '2014-03-26 07:35:52', '2014-03-11 17:28:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 286, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 47, 'SEO продвижение', 'seo-prodvizhenie', '<p style="text-align: left;"> <strong>SEO</strong> (от англ. Search Engine Optimization) — комплекс мер, позволяющий повысить популярность и посещаемость сайта за счет выведения его в ТОП поисковых систем.</p>\r\n<p style="text-align: left;">С помощью продвижения достигаются такие цели как:</p>\r\n<ul style="text-align: left;">\r\n<li> Высокие позиции в выдаче в Яндексе, Google и т.д.</li>\r\n<li>Увеличение популярности и узнаваемости ресурса</li>\r\n<li>Повышение посещаемости сайта</li>\r\n<li>Рост числа клиентов</li>\r\n</ul>\r\n<p style="text-align: left;">SEO оптимизация включает в себя несколько обязательных этапов работы:</p>\r\n<ol style="text-align: left;">\r\n<li>Формирование семантического ядра, составление коммерческого предложения.</li>\r\n<li>Заключение договора.</li>\r\n<li>Комплексный анализ сайта, выявление ошибок мешающих успешному продвижению сайта.</li>\r\n<li>Поисковая оптимизация. Улучшение текстовых, технических и визуальных данных сайта.</li>\r\n<li>Комплексное продвижение ресурса, повышение цитируемости сайта и видимости сайта в выдаче поисковиков.</li>\r\n<li>Поддержка достигнутых позиций, корректировка SEO стратегии, отслеживание результатов<span style="font-family: Georgia, serif; color: #273468; font-size: 18px;"><br /></span></li>\r\n</ol>\r\n<p style="text-align: left;"> </p>', '', 1, 11, '2014-03-11 17:29:22', 754, '', '2014-03-26 07:15:21', 754, 0, '0000-00-00 00:00:00', '2014-03-11 17:29:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 4, '', '', 1, 171, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 49, 'Интернет-магазин ', 'internet-magazin', '<p style="text-align: justify;">Кратко интернет-магазин можно определить как программное обеспечение, специально разработанное для удобства покупок и продаж с веб-сайта. Собственно, интернет-магазин и является сайтом, только с особой «начинкой» – набором программ, специально ориентированных на электронную коммерцию.</p>\r\n<table style="margin-left: auto; margin-right: auto;" border="2" cellspacing="10" cellpadding="10">\r\n<tbody>\r\n<tr>\r\n<td>Цена: 16000 руб<br />\r\n<ul class="starterShopModulesList">\r\n<li>Срок создания сайта 14 дней</li>\r\n<li>Доменное имя <span class="fancy" data-title="Адрес Вашего сайта в сети Интернет. Например, www.вашдомен.ru">*</span> .RU / .РФ (1 год)</li>\r\n<li>Неограниченное количество страниц</li>\r\n<li>Готовый дизайн сайта</li>\r\n<li>Каталог товаров или услуг</li>\r\n<li>Регистрация и кабинет покупателя</li>\r\n<li>Корзина товаров</li>\r\n<li>Удобное перемещение товаров</li>\r\n<li>Массовая загрузка товаров</li>\r\n<li>Уведомление о смене статуса заказа</li>\r\n<li>Оплата: банковские карты, терминалы</li>\r\n<li>Оплата: электронная валюта</li>\r\n<li>Расширенный поиск по каталогу</li>\r\n<li>Социальные кнопки</li>\r\n<li>Несколько фотографий товара</li>\r\n<li>Модуль Новости сайта</li>\r\n<li>Подписка на новости</li>\r\n<li>Модуль Форма обратной связи</li>\r\n<li class="last">Интеграция с сервисом Яндекс.Маркет</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="text-align: justify;">Преимущества интернет-магазина 1) Необязательно иметь в наличии товар. Но в этом случае обязательно иметь сеть поставщиков, работающих по принципу «точно вовремя». Это гарантирует доставку товара в заранее оговоренные минимальные сроки.</p>\r\n<p style="text-align: justify;">2) Не нужно помещение для продаж. Витрины, стеллажи, прилавки, квадратные метры и арендная плата – на всем этом можно существенно сэкономить. На чем сэкономить нельзя – так это на качественно выполненном дизайне сайта для интернет-магазина, поскольку именно внешний вид веб-страниц будет заменять покупателям и стеллажи, и витрины.</p>\r\n<p style="text-align: justify;">3) Свобода передвижений продавца. Поскольку ваш магазин – это точка продаж в виртуальном пространстве, вы можете управлять им из любого уголка земного шара, где есть доступ в Интернет.</p>\r\n<p style="text-align: justify;">4) С интернет-магазином вы получаете возможность расширить географию своего бизнеса вплоть до мировых рынков. Ведь если до географической торговой точки клиенту, даже находящемуся на той же улице, что и «реальный» магазин, необходимо добраться, то в виртуальном пространстве весь мир оказывается у вас на ладони, точнее, на мониторе. С оговоркой, что содержание сайта будет понятно даже иностранцам (но это вполне реально и не так уж сложно).</p>\r\n<p style="text-align: justify;">5) Можно не нанимать продавцов, администраторов, менеджеров, товароведов, кассиров, охранников и еще кого бы то ни было. Если ваш интернет-магазин достаточно небольшой, все эти роли, включая роль директора, вы будите в состоянии выполнять сами. Но виртуальные магазины, как и магазины «реальные», могут быть разными: от киоска до супермаркета. Чем больше наименований товаров там будет продаваться, тем более продуманной должна быть организация вашей работы. При поиске сотрудников, возможно, вам уже не станут так важны параметры: «молодые люди и девушки до 35 лет, приятной наружности, умеющие общаться с клиентами, с образованием в сфере торговли». Гораздо более востребованными для вас окажутся те, кто владеет хотя бы минимальными навыками работы на компьютере.</p>\r\n<p style="text-align: justify;">6) Интернет-магазин дает вам возможность самим распределять свое рабочее время. Вы можете тратить на его обслуживание столько часов в сутки, сколько захотите – один, два, а то и все двадцать четыре. И когда хотите – ночью, днем, утром, вечером. Однако из всего вышесказанного не значит, что интернет-магазин – это такая чудо-штука, которая будет приносить деньги сама, а вам при этом можно и пальцем не шевелить. С одной стороны, этот инструмент может стать существенным подспорьем к уже существующему бизнесу либо хорошей отправной точкой в новом деле. С другой стороны – потребует вашего серьезного внимания, и переложить на профессионалов можно разве что создание и продвижение интернет-магазина. </p>', '', 1, 12, '2014-03-11 17:30:31', 754, '', '2014-03-26 07:30:25', 754, 0, '0000-00-00 00:00:00', '2014-03-11 17:30:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 3, '', '', 1, 162, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 108, 'Контакты', 'kontakty', '<h5>Спасибо, что обратились к нам.</h5>\r\n<p>Оставьте, пожалуйста, свой вопрос и мы свяжемся с Вами по оставленному адресу или телефону.</p>\r\n<p>[module-123]</p>', '', 1, 2, '2014-03-25 20:06:02', 754, '', '2014-03-25 20:08:39', 754, 0, '0000-00-00 00:00:00', '2014-03-25 20:06:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 185, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 50, 'Корпоративный сайт  ', 'koprorativnyj-sajt', '<p style="text-align: justify;">Корпоративный сайт - это крупный информационный ресурс с большим количеством разделов.</p>\r\n<table style="height: 63px; width: 447px; margin-left: auto; margin-right: auto;" border="2" width="447" cellspacing="10" cellpadding="10">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class="list">\r\n<p>Базовый пакет: 18000 руб</p>\r\n<ul>\r\n<li>Срок создания сайта - <span class="b-orange">14 дней</span></li>\r\n<li>Наполнение до 30 страниц</li>\r\n<li>Модуль "Поиск по сайту"</li>\r\n<li>Многоуровневое меню</li>\r\n<li>Информеры</li>\r\n<li>Слайдшоу</li>\r\n<li>Модуль "Новости сайта"</li>\r\n<li>Модуль "Статьи"</li>\r\n<li>Модуль "Форма обратной связи"</li>\r\n<li>CMS система управления сайтом</li>\r\n<li>Счетчик посещаемости сайта</li>\r\n<li>Регистрация в поисковых системах</li>\r\n</ul>\r\n</div>\r\n</td>\r\n<td>\r\n<div class="tabButtons">\r\n<p>Дополнительные модули:</p>\r\n<ul class="tabs">\r\n<li style="background-position: 109px center;">Фотогалерея - 1800 руб</li>\r\n<li class="active" style="background-position: 160px center;">Онлайн-консультант - 2500 руб</li>\r\n<li>Каталог товаров - 1800 руб</li>\r\n<li>Подписка на новости - 1000 руб</li>\r\n<li>Защита от копирования - 1000 руб</li>\r\n</ul>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="text-align: justify;"><br /><strong>Расширенная информация</strong><strong> обо всех услугах</strong>, юридические документы,  техническая информация и описания продукции, данные о компании и о ее филиалах, различные статьи и новости, все это и многое другое будет компактно размещено на корпоративном сайте. Мы наполним до 30 страниц вашими материалами.</p>\r\n<p dir="ltr" style="text-align: justify;"><strong>Структура сайта</strong><strong> и многоуровневое меню</strong> позволят посетителям легко ориентироваться в разделах и страницах большого сайта, а <strong>система поиска по словам</strong> поможет быстро найти необходимые документы и статьи. <strong>Слайдшоу </strong>позволит эффектно презентовать посетителям сайта преимущества вашей компании.</p>\r\n<p dir="ltr" style="text-align: justify;"><strong>Удобная и простая система управления сайтом</strong> (CMS) поможет вам легко добавлять<strong> неограниченное количество страниц</strong> в любой раздел сайта. <strong>Функция текстового редактора</strong> позволит размещать и редактировать тексты, изображения, таблицы и другие элементы на любой странице.</p>\r\n<p dir="ltr" style="text-align: justify;"><strong>Домен </strong>- адрес Вашего сайта, будет оформлен на вас. Вы сможете указывать его на визитных карточках и в рекламе.</p>\r\n<p dir="ltr" style="text-align: justify;"><strong><strong>Мы даем вам свободу выбора </strong></strong> и предоставляем все доступы к управлению сайтом и хостингом</p>', '', 1, 12, '2014-03-11 17:30:58', 754, '', '2014-03-25 20:56:11', 754, 0, '0000-00-00 00:00:00', '2014-03-11 17:30:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 5, '', '', 1, 153, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 51, 'Малый бизнес ', 'malyj-biznes', '<p><span class="orange">Пакет "Малый бизнес"</span> - отличное решение для продвижения Вашего бизнеса в интернете. Страницы с описанием услуг и их преимуществ, обновляемая и актуальная информация, надежная связь с клиентами, простота и понятность интерфейса - гарантия привлечения целевой аудитории на Ваш сайт.</p>\r\n<table style="height: 36px; width: 299px; margin-left: auto; margin-right: auto;" border="2" width="299" cellspacing="10" cellpadding="10">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Цена: 8000 руб</p>\r\n<ul>\r\n<li>Срок создания сайта - 5 дней</li>\r\n<li>Готовый дизайн</li>\r\n<li><span class="b-orange">5 страниц сайта</span></li>\r\n<li>CMS система управления сайтом</li>\r\n<li>Модуль "Новости"</li>\r\n<li>Модуль "Форма обратной связи"</li>\r\n<li>На выбор "Галерея" или "Каталог"</li>\r\n<li>"Социальные кнопки"</li>\r\n<li>Календарь событий</li>\r\n<li>Счетчик посещаемости сайта</li>\r\n<li>Регистрация в поисковых системах</li>\r\n<li>Персональный менеджер</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Пакет "Малый бизнес" включает себя модуль "Социальные кнопки" в каждую новость и фотографию на сайте. Ведь люди охотно покупают то, что рекомендуют им друзья и знакомые. Чтобы посетители рассказали о Вас в социальных сетях своим друзьям, "Малый бизнес" предлагает дополнительный модуль на выбор: "Галерея" или "Каталог". Модуль "Галерея" – это удобный инструмент для демонстрации ваших сертификатов, портфолио или подборки любых фотографий. "Каталог" идеально подходит для размещения на сайте фотографий товаров и информации об их особенностях и стоимости. А посредством "Социальных кнопок" ваши фотографии и карточки товаров разойдутся по всей сети Интернет.</p>\r\n<p>Чем отличаются сайты, на которые пользователи заходят постоянно от тех, куда они больше не возвращаются? Ответ прост: наличием обновлений и удобством использования. Если с момента последнего захода пользователя, на Вашем сайте ничего не изменилось - вряд ли этот клиент на него еще вернется. А сложности при отправке заявки на услуги и неудобная навигация вынудят клиента покинуть сайт навсегда.</p>\r\n<p>Грамотно разработанный интерфейс пакета "Малый бизнес" позволяет пользователю с легкостью перемещаться по Вашему сайту, а с помощью модулей "Новости" и "Календарь событий" клиент всегда будет в курсе последних новинок и предстоящих мероприятий Вашей компании.</p>\r\n<p>Удобство в использовании сайта и часто обновляемая информация - самый оптимальный и простой способ удержания клиентов.</p>\r\n<p>Одним из самых важных аспектов для развития любой компании является обратная связь с ее клиентами. Модуль "Форма обратной связи" поможет клиентам оставить заявку даже ночью, а Вам, узнать, довольны ли клиенты Вашим обслуживанием? Могут ли они оставить отзыв о Ваших услугах? Легко ли им заказать Ваши услуги? Узнав ответы на эти и другие вопросы, Вы сможете улучшить качество сервиса, дополнить перечень Ваших услуг и увеличить лояльность клиентов.</p>\r\n<p> </p>\r\n<p> </p>', '', 1, 12, '2014-03-11 17:31:20', 754, '', '2014-03-25 14:29:09', 754, 0, '0000-00-00 00:00:00', '2014-03-11 17:31:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 4, '', '', 1, 148, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `m7bpc_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(9, 52, 'Официальный сайт  ', 'ofitsialnyj-sajt', '<p><strong>Официальный сайт </strong>- необходимый атрибут успешной компании. Важная информация  о вашем бизнесе, партнерах, услугах и ценах будет доступна на сайте круглые сутки. Посетители  сделают выбор в пользу вашей компании, после посещения ее официального сайта. </p>\r\n<table style="height: 69px; width: 474px; margin-left: auto; margin-right: auto;" border="2" width="474" cellspacing="10" cellpadding="10">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Базовый пакет: 10000 руб</p>\r\n<ul>\r\n<li>Срок создания сайта - 7<span class="b-orange"> дней</span></li>\r\n<li>Наполнение до 15 страниц сайта </li>\r\n<li>Модуль "Новости сайта"</li>\r\n<li>Модуль "Форма обратной связи"</li>\r\n<li>Готовый дизайн сайта</li>\r\n<li>CMS система управления сайтом</li>\r\n<li>Счетчик посещаемости сайта</li>\r\n<li>Регистрация в поисковых системах</li>\r\n</ul>\r\n</td>\r\n<td>\r\n<div class="tabButtons">\r\n<p style="text-align: left;">      Доп. модули:</p>\r\n<ul class="tabs">\r\n<li style="background-position: 111.92px center; text-align: left;">Вопрос-ответ - 1500 руб</li>\r\n<li class="active" style="background-position: 133px center; text-align: left;">Каталог товаров - 1800 руб</li>\r\n<li style="text-align: left;">Фотогалерея - 1800 руб</li>\r\n<li style="text-align: left;">Социальные кнопки 1500 руб</li>\r\n<li style="text-align: left;">Статьи - 1800 руб</li>\r\n</ul>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p dir="ltr"><strong>Лента новостей</strong> - позволит посетителям сайта всегда быть в курсе всех новостей, акций и интересных предложений вашей компании.<br /><strong>Форма обратной связи</strong> поможет им оперативно связываться с вами, задать интересующий вопрос или оставить заявку на обратный звонок.</p>\r\n<p dir="ltr"><strong>Страница контакты </strong>содержит карту проезда к офису и контактные данные для связи.</p>\r\n<p dir="ltr"><strong>Домен</strong> - адрес Вашего сайта, будет оформлен на вас. Вы сможете указывать его на визитных карточках и в рекламе.</p>\r\n<p dir="ltr"><strong>Простая система управления</strong> (CMS) поможет вам самостоятельно управлять своим сайтом, размещать и редактировать информацию.</p>\r\n<p dir="ltr"><strong>Мы разместим сайт на хостинге</strong>, чтобы ваш сайт бесперебойно и быстро работал.</p>\r\n<p dir="ltr"><b>Сайт будет полностью принаджежать вам, </b> мы предоставляем все доступы к управлению сайтом и хостингом.</p>', '', 1, 12, '2014-03-11 17:32:38', 754, '', '2014-03-26 07:31:25', 754, 0, '0000-00-00 00:00:00', '2014-03-11 17:32:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 1, '', '', 1, 157, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 53, 'Сайт-визитка', 'sajt-vizitka', '<div class="aTxt">\r\n<div class="list">\r\n<table style="height: 188px; width: 715px; margin-left: auto; margin-right: auto;" border="2" width="488" cellspacing="10" cellpadding="10">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: justify;">\r\n<div class="list">\r\n<p>Базовый пакет:  4000 руб</p>\r\n<ul>\r\n<li>Срок создания сайта - 3<span class="b-orange"> дня</span></li>\r\n<li>Наполнение 3 страниц сайта</li>\r\n<li>Модуль "Новости сайта"</li>\r\n<li>Модуль "Форма обратной связи"</li>\r\n<li>Готовый дизайн сайта</li>\r\n<li>CMS система управления сайтом</li>\r\n<li>Счетчик посещаемости сайта</li>\r\n<li>Регистрация в поисковых системах</li>\r\n</ul>\r\n</div>\r\n</td>\r\n<td>\r\n<div class="tabButtons">Дополнительные модули:\r\n<ul>\r\n<li>Вопрос-ответ - 1500 руб</li>\r\n<li>Каталог товаров 1800 руб</li>\r\n<li>Фотогалерея -1800 руб</li>\r\n<li>Социальные кнопки 1500 руб</li>\r\n<li>Подписка на новости 1000 руб</li>\r\n</ul>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n</div>\r\n<p>Всем хорошо известно, что такое визитка. Как приятно дарить и получать прекрасно выполненную визитку – тоже знаем. Визитку не вычурную и цветастую, с массой неинтересных вам данных, а функциональную, краткую, с хорошим дизайном. Которую приятно подержать и хранить в визитнице. Визитка - на одной бумажной карточке небольшого размера.</p>\r\n<p>Функции сайта-визитки – вполне аналогичны. Только такой сайт представляет не обязательно физическое лицо, его должность. Чаще всего он представляет лицо юридическое (компанию, организацию), его деятельность и его возможности. На этом сайте приятно находиться, его хочется добавить в «Избранные». Сайт-визитка - не обязательно на одной веб-странице небольшого размера.</p>\r\n<p align="center"><img src="http://allforjoomla.ru/images/sait-vizitka.jpg" alt="сайт-визитка" /></p>\r\n<h2>В каких случайх нужен сайт-визитка?</h2>\r\n<p>Ваш сайт-визитка вам обязательно поможет, если перед вами стоит проблема:</p>\r\n<ul class="arrow2">\r\n<li>оперативно запустить сайт, например, сайт выставки, семинара, просто важного доклада;</li>\r\n<li>ограниченного бюджета на ресурс;</li>\r\n<li>«тестирования» целевой аудитории, например, маркетингового, до разработки более сложного ресурса (портала, многофункционального сайта);</li>\r\n<li>упрощения, улучшения и усиления работы с целевой аудиторией;</li>\r\n<li>поиска «пристанища» для сайтов-визиток, например, промо-сайтов;</li>\r\n<li>поискового продвижения и сбора веб-аналитики.</li>\r\n</ul>\r\n<div class="headr hgrey">\r\n<h2>Особенности сайта-визитки</h2>\r\n</div>\r\n<p>Во-первых, такой сайт лучше всего походит для начинающих свою деятельность в интернет. Особенно для физических лиц, собирающихся вести частную практику. Для малого и даже для среднего бизнеса. Да и крупным компаниям такой ресурс не помешает. Но при условии, что они не будут увлекаться объемом представляемой информации. Особенно, давая повод клиентам сказать или подумать: «стоило так много выкладывать на сайте, чтобы рассказать о таких малых достижениях и предложениях». Достаточно крупной компании разработать сайт-визитку по конкретному виду товаров или услуг или комплекс таких сайтов.</p>\r\n<p>Во-вторых, на сайте-визитке нужно обеспечить эффективную обратную связь, возможность оперативного ответа на вопросы посетителей. Ведь на таком сайте случайных посетителей практически не бывает (они практически не задерживаются). Их всех необходимо рассматривать как потенциальных клиентов. Уметь дорожить их вниманием.</p>\r\n</div>\r\n<div class="socials"> </div>', '', 1, 12, '2014-03-11 17:32:49', 754, '', '2014-03-26 07:17:11', 754, 0, '0000-00-00 00:00:00', '2014-03-11 17:32:49', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 18, 2, '', '', 1, 208, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 62, 'Поддержка функциональности', 'podderzhka-funktsionalnosti', '', '', 1, 2, '2014-03-13 22:40:16', 754, '', '2014-03-14 08:42:23', 754, 0, '0000-00-00 00:00:00', '2014-03-13 22:40:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 66, 'Сопровождение', 'soprovozhdenie-sajta', '<h1>Техническая поддержка сайта</h1>\r\n<p>Ни в коем случае нельзя, чтобы сайт оказался недоступен, если на него хочет зайти клиент или поисковый робот. В первом случае, велики шансы, что клиент больше не придет на этот сайт. Во втором, робот не сможет проиндексировать страницы сайта и скорее всего удалит его из поисковой выдачи.За постоянной работой Вашего сайта будут следить специалисты нашей студии. Чтобы поддерживать его работу, добавлять и обновлять контент, Вам не нужно нанимать штатного программиста. "ИнтелВеб" будет обеспечивать сопровождение сайта, поддерживать его в идеальном техническом состоянии и ежемесячно проводить плановые работы.</p>\r\n<p>Сопровождение сайта включает в себя:</p>\r\n<div class="textPart" style="height: 280px;">\r\n<ul class="list">\r\n<li>Создание, редактирование данных на сайте</li>\r\n<li>Создание почтовых ящиков</li>\r\n<li>Восстановление доступа к сайту и хостингу</li>\r\n<li>Устранение вирусов</li>\r\n<li>Установка счетчиков</li>\r\n<li>Создание бэкапов сайта и базы данных</li>\r\n</ul>\r\n<p>Техническая поддержка для:</p>\r\n<ul class="list">\r\n<li><span class="priced rm2999"> </span>Сайта-визитки: 2000 руб/мес</li>\r\n<li><span class="priced rm3999"> </span>Малого бизнеса: 3000 руб/мес</li>\r\n<li><span class="priced rm4999"> </span>Официального сайта: 4000 руб/мес</li>\r\n<li><span class="priced rm5999"> </span>Интернет-магазина: 5000 руб/мес</li>\r\n<li><span class="priced rm5999"> </span>Корпоративного сайта: 5000 руб/мес</li>\r\n</ul>\r\n<p>Наша техническая поддержка - Ваш сайт онлайн 24/7!</p>\r\n<p> </p>\r\n</div>', '', 1, 11, '2014-03-18 10:27:47', 754, '', '2014-03-25 13:19:51', 754, 0, '0000-00-00 00:00:00', '2014-03-18 10:27:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 176, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 67, 'Веб-дизайн', 'jn', '<h1>Веб-дизайн.</h1>\r\n<p><b>Веб-дизайн</b> (от <a title="Английский язык" href="http://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA">англ.</a> <i><span lang="en">Web design</span></i>) — отрасль <a title="Веб-разработка" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B0">веб-разработки</a> и разновидность <a title="Дизайн" href="http://ru.wikipedia.org/wiki/%D0%94%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD">дизайна</a>, в задачи которой входит проектирование <a class="mw-redirect" title="Пользовательский интерфейс" href="http://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%B8%D0%B9_%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81">пользовательских</a> <a title="Веб-интерфейс" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81">веб-интерфейсов</a> для <a class="mw-redirect" title="Веб-сайт" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D1%81%D0%B0%D0%B9%D1%82">сайтов</a> или <a title="Веб-приложение" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5">веб-приложений</a>. Веб-дизайнеры проектируют <a title="Логическое программирование" href="http://ru.wikipedia.org/wiki/%D0%9B%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5">логическую</a> структуру веб-страниц, продумывают <a title="Юзабилити" href="http://ru.wikipedia.org/wiki/%D0%AE%D0%B7%D0%B0%D0%B1%D0%B8%D0%BB%D0%B8%D1%82%D0%B8">наиболее удобные</a> решения подачи информации, а также занимаются <a class="mw-redirect" title="Оформление" href="http://ru.wikipedia.org/wiki/%D0%9E%D1%84%D0%BE%D1%80%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5">художественным оформлением</a> веб-проекта. В результате пересечения двух отраслей человеческой деятельности грамотный веб-дизайнер должен быть знаком с последними <a class="new" title="Веб-технологии (страница отсутствует)" href="http://ru.wikipedia.org/w/index.php?title=%D0%92%D0%B5%D0%B1-%D1%82%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D0%B8&amp;action=edit&amp;redlink=1">веб-технологиями</a> и обладать соответствующими художественными качествами. Большую часть специалистов, работающих в области дизайна, обычно концентрирует в себе такое творческое образование как <a class="new" title="Дизайн студия (страница отсутствует)" href="http://ru.wikipedia.org/w/index.php?title=%D0%94%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD_%D1%81%D1%82%D1%83%D0%B4%D0%B8%D1%8F&amp;action=edit&amp;redlink=1">студия дизайна</a>.</p>\r\n<p>Веб-дизайн — вид графического дизайна, направленный на разработку и оформление объектов информационной среды <a title="Интернет" href="http://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82">интернета</a>, призванный обеспечить им высокие потребительские свойства и <a title="Эстетика" href="http://ru.wikipedia.org/wiki/%D0%AD%D1%81%D1%82%D0%B5%D1%82%D0%B8%D0%BA%D0%B0">эстетические</a> качества. Подобная трактовка отделяет веб-дизайн от <a title="Веб-программирование" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5">веб-программирования</a>, подчеркивает специфику предметной деятельности веб-дизайнера, позиционирует веб-дизайн как вид графического дизайна<sup id="cite_ref-1" class="reference"><a href="http://ru.wikipedia.org/wiki/%C2%E5%E1-%E4%E8%E7%E0%E9%ED#cite_note-1">[1]</a></sup>.</p>\r\n<p>В настоящее время услуги веб-дизайна предоставляют как специальные компании, так и частные лица (<a class="mw-redirect" title="Веб-дизайнер" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%B4%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD%D0%B5%D1%80">веб-дизайнеры</a> или <a title="Веб-мастер" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%BC%D0%B0%D1%81%D1%82%D0%B5%D1%80">веб-мастера</a>, являющиеся <a title="Фрилансер" href="http://ru.wikipedia.org/wiki/%D0%A4%D1%80%D0%B8%D0%BB%D0%B0%D0%BD%D1%81%D0%B5%D1%80">фрилансерами</a>).</p>\r\n<p>Веб-дизайнер — сравнительно молодая <a title="Профессия" href="http://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D1%8F">профессия</a>, и <a title="Профессиональное образование" href="http://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5_%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5">профессиональное образование</a> в области веб-дизайна в России пока не распространено. В связи с увеличением спроса на представительство в Сети растёт и спрос на дизайн <a title="Сайт" href="http://ru.wikipedia.org/wiki/%D0%A1%D0%B0%D0%B9%D1%82">сайтов</a>, увеличивается количество веб-дизайнеров.</p>\r\n<h2>Содержание</h2>', '', -2, 11, '2014-03-18 11:00:00', 754, '', '2014-03-18 11:01:40', 754, 0, '0000-00-00 00:00:00', '2014-03-18 11:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 68, 'Главная ', 'glavnaya', '<h1>Добро пожаловать на сайт веб-студии "ИнтелВеб"!</h1>\r\n<p>Создание сайтов любой сложности в Новомосковске! В срок и по доступным ценам! Обращайтесь  нашу веб-студию и получите качественный веб- ресурс для продвижения Вашего бизнеса! Ознакомьтесь с полным перечнем услуг на нашем сайте.</p>\r\n<p> </p>', '', -2, 2, '2014-03-18 11:06:31', 754, '', '2014-03-18 12:35:15', 754, 0, '0000-00-00 00:00:00', '2014-03-18 11:06:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"0","info_block_position":"","show_category":"","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 74, 'Позвоните нам', 'pozvonite-nam', '<p>+79105585383 - Евгения</p>\r\n<p> </p>', '', 1, 2, '2014-03-21 10:43:07', 754, '', '2014-03-21 10:47:25', 754, 0, '0000-00-00 00:00:00', '2014-03-21 10:43:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 95, 'офиц', 'ofits', '<div class="teacher-about" style="width: 780px; margin: 18px 0 0 0; height: auto;">\r\n<div class="textBlock" style="width: 758px; height: 265px;">\r\n<p dir="ltr"><strong>Официальный сайт </strong>- необходимый атрибут успешной компании. Важная информация  о вашем бизнесе, партнерах, услугах и ценах будет доступна на сайте круглые сутки. Посетители  сделают выбор в пользу вашей компании, после посещения ее официального сайта. </p>\r\n<p dir="ltr"><strong>Лента новостей</strong> - позволит посетителям сайта всегда быть в курсе всех новостей, акций и интересных предложений вашей компании.<br /><strong>Форма обратной связи</strong> поможет им оперативно связываться с вами, задать интересующий вопрос или оставить заявку на обратный звонок.</p>\r\n<p dir="ltr"><strong>Страница контакты </strong>содержит карту проезда к офису и контактные данные для связи.</p>\r\n<p dir="ltr"><strong>Домен</strong> - адрес Вашего сайта, будет оформлен на вас. Вы сможете указывать его на визитных карточках и в рекламе.</p>\r\n<p dir="ltr"><strong>Простая система управления</strong> (CMS) поможет вам самостоятельно управлять своим сайтом, размещать и редактировать информацию.</p>\r\n<p dir="ltr"><strong>Мы разместим сайт на хостинге</strong>, чтобы ваш сайт бесперебойно и быстро работал.</p>\r\n<p dir="ltr"><b>Сайт будет полностью принаджежать вам, </b> мы предоставляем все доступы к управлению сайтом и хостингом.</p>\r\n</div>\r\n</div>', '', -2, 12, '2014-03-23 07:44:27', 754, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-23 07:44:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 102, 'Сайт-визитка модули', 'sajt-vizitka-moduli', '<div class="tabButtons">\r\n<p>Дополнительные модули:</p>\r\n<ul class="tabs">\r\n<li class="active" style="background-position: 112px center;">Вопрос-ответ </li>\r\n<li style="background-position: 133px center;">Каталог товаров</li>\r\n<li style="background-position: 109px center;">Фотогалерея</li>\r\n<li style="background-position: 157px center;">Социальные кнопки</li>\r\n<li style="background-position: 163px center;">Подписка на новости</li>\r\n</ul>\r\n</div>', '', 1, 2, '2014-03-23 08:45:54', 754, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-23 08:45:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 103, 'Пакет Визитка', 'paket-vizitka', '<div class="list">\r\n<ul>\r\n<li>Срок создания сайта - <span class="b-orange">1 день*</span></li>\r\n<li>Доменное имя <span class="xml-text">.RU / .РФ</span> (1 год)</li>\r\n<li>Хостинг (3 месяца)</li>\r\n<li>Наполнение 3 страниц сайта<span class="b-orange">*</span></li>\r\n<li>Модуль "Новости сайта"<span class="b-orange">*</span></li>\r\n<li>Модуль "Форма обратной связи"<span class="b-orange">*</span></li>\r\n<li>Готовый дизайн сайта</li>\r\n<li>CMS система управления сайтом</li>\r\n<li>Счетчик посещаемости сайта</li>\r\n<li>Регистрация в поисковых системах</li>\r\n</ul>\r\n</div>', '', 1, 2, '2014-03-23 08:46:30', 754, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-23 08:46:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `m7bpc_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `m7bpc_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_content_rating`
--

CREATE TABLE IF NOT EXISTS `m7bpc_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_content_types`
--

CREATE TABLE IF NOT EXISTS `m7bpc_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10006 ;

--
-- Дамп данных таблицы `m7bpc_content_types`
--

INSERT INTO `m7bpc_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10000, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10001, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10002, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(10003, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10004, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10005, 'BreezingForms', 'com_breezingforms.form', '', '', '', 'BreezingformsHelperRoute::getFormRoute', '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `m7bpc_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_extensions`
--

CREATE TABLE IF NOT EXISTS `m7bpc_extensions` (
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
-- Дамп данных таблицы `m7bpc_extensions`
--

INSERT INTO `m7bpc_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"0","history_limit":5,"show_contact_list":"0","presentation_style":"plain","show_name":"1","show_position":"1","show_email":"1","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"1","contact_icons":"1","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"0","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'PLG_SYSTEM_SOURCERER', 'plugin', 'sourcerer', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_SOURCERER","type":"plugin","creationDate":"February 2014","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2014 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.3.2FREE","description":"PLG_SYSTEM_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"d75a0b1e20d74760a11be3ebcc862b21"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2013-12-14","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2013 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.1.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 0, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.18","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 754, '2014-03-21 11:15:22', 4, 0);
INSERT INTO `m7bpc_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 754, '2014-03-21 11:14:24', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"Se[ptember 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.3","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-01-27","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.1.5","description":"Russian language pack (site) for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2014-01-27","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.2.1.5","description":"Russian language pack (administrator) for Joomla! 3.2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.2.1.5","description":"Joomla 3.2 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"name":"Gantry","type":"component","creationDate":"February 28, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.21","description":"Gantry Starting Template for Joomla! v4.1.21","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"name":"System - Gantry","type":"plugin","creationDate":"February 28, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.21","description":"Gantry System Plugin for Joomla","group":""}', '{"debugloglevel":"63"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10007, 'rt_stratos', 'template', 'rt_stratos', '', 0, 1, 1, 0, '{"name":"rt_stratos","type":"template","creationDate":"July 1, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"Parent for all PHP based projects","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"name":"System - RokExtender","type":"plugin","creationDate":"October 31, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"System - Gantry","group":""}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 754, '2014-03-23 07:10:26', 1, 0),
(10009, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"name":"RokNavMenu","type":"module","creationDate":"November 5, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.7","description":"RocketTheme Customizable Navigation Menu","group":""}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'RokAjaxSearch', 'module', 'mod_rokajaxsearch', '', 0, 1, 1, 0, '{"name":"RokAjaxSearch","type":"module","creationDate":"February 17, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.2","description":"RokAjaxSearch is an ajaxian searcher that displays the results immediately and allows to choose the\\n        proper one.\\n    ","group":""}', '{"search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"1","theme":"blue","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'System - RokBooster', 'plugin', 'rokbooster', 'system', 0, 0, 1, 0, '{"name":"System - RokBooster","type":"plugin","creationDate":"February 24, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.1.13","description":"\\n        \\n        <div class=\\"booster-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbooster\\/assets\\/images\\/rokbooster.jpg\\" class=\\"img-padding\\" \\/><h1>RokBooster<\\/h1>\\n        <p>Increase the speed of your site by enabling the RokBooster plug-in.  This advanced extensions will <strong>compress<\\/strong> and <strong>combine<\\/strong> your <strong>CSS<\\/strong> and <strong>JavaScript<\\/strong> into as few files as possible each.  RokBooster can dramatically reduce the number of HTTP calls a browser has to make, and sending those compressed files GZipped means your pages will load faster with less load on your server.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>Combine and compress CSS and JavaScript into as few files as possible<\\/li>\\n            <li>GZip compression used to send CSS and JavaScript files<\\/li>\\n            <li>Compress Inline CSS and JavaScript<\\/li>\\n            <li>Customizable cache timeout<\\/li>\\n            <li>Background rendering, so initial file processing won''t slow your users down<\\/li>\\n            <li>Full page scan allows for non-header JavaScript and CSS to be included<\\/li>\\n            <li>Ability to ignore specific CSS and JavaScript files<\\/li>\\n        <\\/ul>\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> Clearing the Joomla cache will remove the RokBooster compressed cache files causing them to regenerate on the next page hit<\\/p>\\n        <\\/div>\\n        \\n    ","group":""}', '{"cache_time":"60","minify_css":"1","style_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_css":"1","imported_css":"1","minify_js":"1","script_sort":"RokBooster_Compressor_Sort_ExternalOnTop","inline_js":"1","max_data_uri_image_size":"21612","convert_css_images":"1","convert_page_images":"1","ignored_files":"\\/media\\/editors\\/tinymce\\/jscripts\\/tiny_mce\\/tiny_mce.js","scan_method":"header","use_background_processing":"1","disable_for_ie":"1","debugloglevel":"63"}', '', '', 754, '2014-03-23 07:10:27', 100, 0),
(10015, 'System - RokBox', 'plugin', 'rokbox', 'system', 0, 1, 1, 0, '{"name":"System - RokBox","type":"plugin","creationDate":"March 4, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.7","description":"\\n        <div class=\\"rokbox-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\" class=\\"img-padding\\" \\/><h1>RokBox2<\\/h1>\\n        <p>RokBox2 is a fully responsive modal pop-up plug-in for Joomla.  It displays <strong>images<\\/strong>, <strong>videos<\\/strong>, <strong>embedded widgets<\\/strong>, <strong>Ajax content<\\/strong> and <strong>Joomla modules<\\/strong>.<\\/p>\\n\\n        <p>RokBox2 contains a <strong>Content plug-in<\\/strong> and <strong>Button Editor plug-in<\\/strong>. The <strong>Content plug-in<\\/strong> can auto-generate thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can easily adapt to any device. The <strong>Button Editor plug-in<\\/strong> allows for easy creation of RokBox2 style snippets with just a few clicks.<\\/p>\\n        <p>RokBox2 also provides backward compatibility for RokBox1 style <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n            <li>HTML5 and CSS3<\\/li>\\n            <li>Fully Responsive<\\/li>\\n            <li>Auto thumbnails generator<\\/li>\\n            <li>Captions supporting HTML syntax<\\/li>\\n            <li>Ajax Content listener<\\/li>\\n            <li>Multiple media types supported:\\n                <ul class=\\"features\\">\\n                    <li>Images: base64 encoded, jpg, gif, png, bmp, webp<\\/li>\\n                    <li>HTML5 Video and Audio<\\/li>\\n                    <li>TwitPic<\\/li>\\n                    <li>Instagram<\\/li>\\n                    <li>YouTube<\\/li>\\n                    <li>Vimeo<\\/li>\\n                    <li>Telly (ex TwitVid)<\\/li>\\n                    <li>Metacafe<\\/li>\\n                    <li>Dailymotion<\\/li>\\n                    <li>Spotify<\\/li>\\n                    <li>Google Maps<\\/li>\\n                <\\/ul>\\n            <\\/li>\\n            <li>Fit\\/Unfit Screen: If an image is too big it gets shrunk to fit the view-port but you can always click the Fit Screen icon to expand it and scroll.<\\/li>\\n            <li>Albums to group related images<\\/li>\\n            <li>Key Bindings for easy navigation: <code>&larr;<\\/code> (Previous), <code>&rarr;<\\/code> (Next), <code>f<\\/code> Fitscreen\\/Unfitscreen, <code>esc<\\/code> Close<\\/li>\\n        <\\/ul>\\n\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> RokBox2 consists of 3 plug-ins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plug-in manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        ","group":""}', '{"theme":"light","custom-theme":"sample","custom-legacy":"0","width":"640","height":"460","transition":"Quad.easeOut","duration":"200","chase":"40","effect":"quicksilver","frame-border":"20","content-padding":"0","arrows-height":"35","captions":"1","captionsDelay":"800","scrolling":"0","keyEvents":"1","overlay_background":"#000000","overlay_opacity":"0.85","overlay_duration":"200","overlay_transition":"Quad.easeInOut","autoplay":"true","ytautoplay":"0","ythighquality":"0","controller":"false","bgcolor":"#f3f3f3","vimeoColor":"00adef","vimeoPortrait":"0","vimeoTitle":"0","vimeoFullScreen":"1","vimeoByline":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10016, 'Content - RokBox', 'plugin', 'rokbox', 'content', 0, 1, 1, 0, '{"name":"Content - RokBox","type":"plugin","creationDate":"March 4, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.7","description":"\\n        <div class=\\"rokbox-description\\">\\n        <img src=\\"..\\/plugins\\/system\\/rokbox\\/assets\\/admin\\/images\\/rokbox.jpg\\" class=\\"img-padding\\" \\/><h1>RokBox2<\\/h1>\\n        <p>Auto generates thumbnails of <strong>local images<\\/strong> that can be used as content for your RokBox2 links. All thumbnails generated are <strong>responsive<\\/strong> so that they can be easily adapted to any device. RokBox2 Content plugins also provides backward compatibility for the old discontinued RokBox1 that allowed writing snippets through the <code>{rokbox}<\\/code> syntax.<\\/p>\\n\\n        <p class=\\"note\\"><strong>NOTE:<\\/strong> RokBox2 comes with 3 plugins: <strong>Content<\\/strong>, <strong>System<\\/strong> and <strong>Editor Button<\\/strong>. Make sure to have a look at all three plugin manager pages to get an idea of what they do.<\\/p>\\n        <\\/div>\\n        ","group":""}', '{"remote_sizes":"0","thumb_ext":"_thumb","thumb_class":"album","thumb_custom":"0","thumb_dir":"cache","thumb_width":"150","thumb_height":"100","thumb_quality":"90"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10018, 'rokcandy', 'component', 'com_rokcandy', '', 1, 1, 0, 0, '{"name":"RokCandy","type":"component","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.0","description":"\\n\\t\\tRokCandy is a simple yet powerful macro system for Joomla 1.6.  It provides the ability to create and categorize macros that can be used throughout your site.\\n\\t","group":""}', '{"forcecache":"0","adminenabled":"0","editenabled":"0","contentPlugin":"0","disabled":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Button - RokCandy', 'plugin', 'rokcandy', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - RokCandy","type":"plugin","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.0","description":"This is an Editor Button to allow selection of RokCandy macros","group":""}', '{}', '', '', 754, '2014-03-23 07:10:23', 5, 0),
(10020, 'System - RokCandy', 'plugin', 'rokcandy', 'system', 0, 1, 1, 0, '{"name":"System - RokCandy","type":"plugin","creationDate":"November 1, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.5.0","description":"This is the RokCandy system plugin that performs the macro replacement","group":""}', '{}', '', '', 754, '2014-03-23 07:10:27', 50, 0),
(10022, 'Editor - RokPad', 'plugin', 'rokpad', 'editors', 0, 1, 1, 0, '{"name":"Editor - RokPad","type":"plugin","creationDate":"February 11, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.1.8","description":"\\n        <div class=\\"rokpad-description\\">\\n        <img src=\\"..\\/plugins\\/editors\\/rokpad\\/assets\\/admin\\/images\\/rokpad.jpg\\" class=\\"img-padding\\" \\/><h1>RokPad<\\/h1>\\n        <h2>The Power of Desktop Text Editor in a Joomla!<\\/h2>\\n        <p>Ever wished you could use a powerful desktop text editor such as Textmate, SublimeText, or UltraEdit directly on a Joomla! web site?  Now with RokPad we provide many features and capabilities that traditionally would only be found in a powerful desktop editor.  RokPad provides advanced functions such as an Ajax saving action, syntax highlighting, configurable themes, multiple cursors and selections, shortcut keys, multiple language support, and many other incredible features.<\\/p>\\n\\n        <h2>Key Features:<\\/h2>\\n        <ul class=\\"features\\">\\n\\t\\t\\t<li>Code Highlighter built on the great ACE Editor<\\/li>\\n\\t        <li>Support for CSS, HTML, JavaScript, JSON, LESS, Markdown, PHP, SQL, Plain Text, Textile, XML and more...<\\/li>\\n\\t        <li>Ajax save and Automatic Save options. You''ll never loose your content again, nor wait until the page has finished reloading after a save!<\\/li>\\n\\t        <li>Save, Undo, Redo, Goto line, Advanced Search and Search &amp; Replace, Full Screen. Settings like Themes, Font Size, Code Folding, Wrap Mode, Invisible Characters, Print Margin, Highlight of selected word<\\/li>\\n\\t        <li>26 Themes to choose from<\\/li>\\n\\t        <li>Resizable Editor by dragging the Statusbar<\\/li>\\n\\t        <li>Keyboard shortcuts<\\/li>\\n\\t        <li>Brackets match<\\/li>\\n\\t        <li>Multiple cursors and selections<\\/li>\\n\\t        <li>Vertical Selection<\\/li>\\n\\t        <li>Ability to insert at multiple locations xtd-buttons shortcodes, all at once.<\\/li>\\n\\t        <li>Shortcodes and Universal Tag Insertion<\\/li>\\n\\t        <li>Drag &amp; Drop of text from external applications such as other Browser Tabs\\/windows or Native Applications (Supported on Firefox, Chrome, IE10 and Safari)<\\/li>\\n\\t        <li>Import local files by Drag &amp; Drop directly from your desktop! (Supported on Firefox, Chrome, IE10 and Safari 6+)<\\/li>\\n\\t        <li>And much more!<\\/li>\\n        <\\/ul>\\n        <\\/div>\\n        ","group":""}', '{"autosave-enabled":"0","autosave-time":"5","theme":"fluidvision","font-size":"12px","fold-style":"markbeginend","use-wrap-mode":"free","selection-style":"1","highlight-active-line":"1","highlight-selected-word":"1","show-invisibles":"0","show-gutter":"1","show-print-margin":"1","fade-fold-widgets":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10025, 'System - RokCommon', 'plugin', 'rokcommon', 'system', 0, 1, 1, 0, '{"name":"System - RokCommon","type":"plugin","creationDate":"February 28, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.1.10","description":"RokCommon System Plugin","group":""}', '{}', '', '', 754, '2014-03-23 07:10:27', 0, 0),
(10026, 'roksprocket', 'component', 'com_roksprocket', '', 1, 1, 0, 0, '{"name":"RokSprocket","type":"component","creationDate":"March 5, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.1.0","description":"Parent for all PHP based projects","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'RokSprocket Module', 'module', 'mod_roksprocket', '', 0, 1, 1, 0, '{"name":"RokSprocket Module","type":"module","creationDate":"March 5, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.1.0","description":"RokSprocket makes it easy to display content in a dynamic, visual layout.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'System - RokSprocket', 'plugin', 'roksprocket', 'system', 0, 1, 1, 0, '{"name":"System - RokSprocket","type":"plugin","creationDate":"March 5, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.1.0","description":"RokSprocket System Plugin","group":""}', '{}', '', '', 754, '2014-03-23 07:10:24', 1, 0),
(10029, 'Content - RokInjectModule', 'plugin', 'rokinjectmodule', 'content', 0, 1, 1, 0, '{"name":"Content - RokInjectModule","type":"plugin","creationDate":"February 28, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.6","description":"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]","group":""}', '{}', '', '', 754, '2014-03-23 07:10:19', 5, 0),
(10031, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"name":"Gantry","type":"library","creationDate":"February 28, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.21","description":"Gantry Starting Template for Joomla! v4.1.21","group":""}', '{}', '{"last_update":1403293953}', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'Button - RokBox', 'plugin', 'rokbox', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - RokBox","type":"plugin","creationDate":"March 4, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.7","description":"This is an Editor Button to allow injection of RokBox snippets into your Content","group":""}', '{}', '', '', 754, '2014-03-23 07:10:25', 1, 0),
(10039, 'RokCommon', 'library', 'lib_rokcommon', '', 0, 1, 1, 0, '{"name":"RokCommon","type":"library","creationDate":"February 28, 2014","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2014 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"3.1.10","description":"RokCommon Shared Library","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'Button - Sourcerer', 'plugin', 'sourcerer', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - Sourcerer","type":"plugin","creationDate":"February 2014","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2014 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.3.2FREE","description":"PLG_EDITORS-XTD_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'PLG_SYSTEM_NNFRAMEWORK', 'plugin', 'nnframework', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_NNFRAMEWORK","type":"plugin","creationDate":"February 2014","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2014 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"14.2.10","description":"PLG_SYSTEM_NNFRAMEWORK_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'JoomLine Like', 'plugin', 'jllike', 'content', 0, 0, 1, 0, '{"name":"JoomLine Like","type":"plugin","creationDate":"01.2014","author":"JoomLine","copyright":"(C) 2012-2014 by Artem Zhukov, Arkadiy Sedelnikov and Vadim Kunicin(http:\\/\\/www.joomline.ru)","authorEmail":"sale@joomline.ru","authorUrl":"http:\\/\\/joomline.ru","version":"2.0","description":"PLG_JLLIKE_DESC_ALL","group":""}', '{"addfacebook":"1","addvk":"1","addtw":"1","addod":"1","addgp":"1","addmail":"1","addlin":"0","addya":"0","addpi":"0","jqload":"1","jqloadcont":"0","load_libs":"0","autoAdd":"1","position_content":"0","shares_position":"1","allow_in_category":"0","typesget":"0","pathbase":"","buttons_contayner":"sidebar-a","punycode_convert":"0","content_images":"fields"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'breezingforms', 'component', 'com_breezingforms', '', 1, 1, 0, 0, '{"name":"BreezingForms","type":"component","creationDate":"2013-12-05","author":"Markus Bopp - Crosstec GmbH & Co. KG | Until FacileForms Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"Lite (build 827)","description":"Installation successful. Next find BreezingForms in the Components menu, and continue with step 2 of the installation process.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'BreezingForms', 'module', 'mod_breezingforms', '', 0, 1, 0, 0, '{"name":"BreezingForms","type":"module","creationDate":"November 2013","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8.4","description":"\\n\\t\\tEnter the form name for displaying in the desired module position.\\n    ","group":""}', '{"ff_mod_name":"","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'BreezingForms', 'plugin', 'breezingforms', 'content', 0, 0, 1, 0, '{"name":"BreezingForms","type":"plugin","creationDate":"August 2012","author":"Markus Bopp - Crosstec Solutions | Until Version 1.4.7: Peter Koch","copyright":"This Joomla! component is released under the GNU\\/GPL license","authorEmail":"markus.bopp@crosstec.de","authorUrl":"www.crosstec.de","version":"1.8","description":"\\n\\t\\n<h3>BreezingForms<\\/h3>\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<h2>BreezingForms Plugin: Displays forms inline in articles<\\/h2>\\n<h3>Requirements:<\\/h3><ul>\\n\\n<li>The BreezingForms component must also be installed (same version)<\\/li>\\n<li>The bot must be published<\\/li>\\n<\\/ul>\\n<h3>Pattern syntax:<\\/h3><code><pre>\\n\\t{ BreezingForms : <em>formname<\\/em> [, <em>page<\\/em>, <em>border<\\/em>, <em>urlparams<\\/em>, <em>suffix<\\/em> ] }\\n\\n<\\/pre><\\/code><h3>Parameter description:<\\/h3><code><pre>\\n\\tBreezingForms : This tag must be present literally and in exact upper\\/lowercase.\\n\\t<em>formname<\\/em>    : The name of the form to include, also in exact upper\\/lowercase.\\n\\t<em>page<\\/em>        : The starting page number.   Defaults to 1 when omitted.\\n\\t<em>border<\\/em>      : 0=no border, 1=with border. Defaults to 1 when omitted.\\n\\t<em>urlparams<\\/em>   : Parameters to pass in URL style (no commas or closing brackets allowed).\\n\\t<em>suffix<\\/em>      : Suffix appended to all CSS class names in the form.\\n\\n<\\/pre><\\/code><h3>Examples:<\\/h3><code><pre>\\n\\t{ BreezingForms : SampleContactForm }\\n\\t{ BreezingForms : MyVeryForm, 2 }\\n\\t{ BreezingForms : AnotherForm, 1, 0, &amp;amp;ff_param_xy=123&amp;amp;ff_param_foo=bar }\\n\\t{BreezingForms:testform,,,&amp;amp;ff_param_foo=bar,mysuffix}\\n<\\/pre><\\/code>But attention with the following one. Basicly it would work, but when\\nusing a WYSIWYG editor, it will insert linebreaks as <code>&lt;br\\/&gt;<\\/code>\\nand the bot will no longer recognize the pattern:<code><pre>\\n\\t{\\n\\t\\tBreezingForms:\\n\\n\\t\\t\\tAnotherForm,\\n\\t\\t\\t1,\\n\\t\\t\\t0,\\n\\t\\t\\t&amp;amp;ff_param_xy=123&amp;amp;ff_param_foo=bar\\n\\t}\\n<\\/pre><\\/code>\\n\\n\\n    ","group":""}', '{"load_in_iframe":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":""}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `m7bpc_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10048, 'com_k2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":""}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"1","userFeedIcon":"1","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"600","itemImageXL":"900","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","recaptcha":"0","recaptchaForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","K2UserGroup":"","redirect":"","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"PLG_FINDER_K2_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":""}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Categories","type":"plugin","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"MOD_K2_COMMENTS_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10056, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10057, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_TOOLS","group":""}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10058, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":""}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10059, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_MOD_K2_USER_DESCRIPTION","group":""}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10060, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":""}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10061, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"February 28th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.8","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":""}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10062, 'CEGCore', 'library', 'cegcore', '', 0, 1, 1, 0, '{"name":"CEGCore","type":"library","creationDate":"01.2014","author":"ChronoEngine.com","copyright":"Copyright (C) 2013","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"1.0","description":"The GCore framework classes!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10063, 'com_chronoforms5', 'component', 'com_chronoforms5', '', 1, 1, 0, 0, '{"name":"com_chronoforms5","type":"component","creationDate":"1.Feb.2014","author":"Chronoman","copyright":"ChronoEngine.com 2014","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"5.0 RC4.1","description":"The ChronoForms V5 component is the ultimate tool for Joomla forms creation, power and simplicity.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10064, 'ChronoForms5', 'module', 'mod_chronoforms5', '', 0, 1, 0, 0, '{"name":"ChronoForms5","type":"module","creationDate":"December 2013","author":"ChronoEngine.com","copyright":"Copyright (C) 2006 - 2013 ChronoEngine.com. All rights reserved.","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"V5 RC1.2","description":"Show a Chronoform V5","group":""}', '{"cache":"0","chronoform":"","moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'com_xmap', 'component', 'com_xmap', '', 1, 1, 0, 0, '{"name":"com_xmap","type":"component","creationDate":"2011-04-10","author":"Guillermo Vargas","copyright":"This component is released under the GNU\\/GPL License","authorEmail":"guille@vargas.co.cr","authorUrl":"http:\\/\\/www.jooxmap.com","version":"2.3.4","description":"Xmap - Sitemap Generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'Xmap - Content Plugin', 'plugin', 'com_content', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - Content Plugin","type":"plugin","creationDate":"01\\/26\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.4","description":"XMAP_CONTENT_PLUGIN_DESCRIPTION","group":""}', '{"expand_categories":"1","expand_featured":"1","include_archived":"2","show_unauth":"0","add_pagebreaks":"1","max_art":"0","max_art_age":"0","add_images":"1","cat_priority":"-1","cat_changefreq":"-1","art_priority":"-1","art_changefreq":"-1","keywords":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'Xmap - Kunena Plugin', 'plugin', 'com_kunena', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - Kunena Plugin","type":"plugin","creationDate":"September 2007","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"3.0.0","description":"Xmap Plugin for Kunena component","group":""}', '{"include_topics":"1","max_topics":"","max_age":"","cat_priority":"-1","cat_changefreq":"-1","topic_priority":"-1","topic_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'Xmap - SobiPro Plugin', 'plugin', 'com_sobipro', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - SobiPro Plugin","type":"plugin","creationDate":"07\\/15\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.2","description":"Xmap Plugin for SobiPro component","group":""}', '{"include_entries":"1","max_entries":"","max_age":"","entries_order":"a.ordering","entries_orderdir":"DESC","cat_priority":"-1","cat_changefreq":"weekly","entry_priority":"-1","entry_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10069, 'Xmap - Mosets Tree Plugin', 'plugin', 'com_mtree', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - Mosets Tree Plugin","type":"plugin","creationDate":"07\\/20\\/2011","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.2","description":"XMAP_MTREE_PLUGIN_DESCRIPTION","group":""}', '{"cats_order":"cat_name","cats_orderdir":"ASC","include_links":"1","links_order":"ordering","entries_orderdir":"ASC","max_links":"","max_age":"","cat_priority":"0.5","cat_changefreq":"weekly","link_priority":"0.5","link_changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10070, 'Xmap - Virtuemart Plugin', 'plugin', 'com_virtuemart', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - Virtuemart Plugin","type":"plugin","creationDate":"January 2012","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.3","description":"XMAP_VM_PLUGIN_DESCRIPTION","group":""}', '{"include_products":"1","cat_priority":"-1","cat_changefreq":"-1","prod_priority":"-1","prod_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10071, 'Xmap - WebLinks Plugin', 'plugin', 'com_weblinks', 'xmap', 0, 1, 1, 0, '{"name":"Xmap - WebLinks Plugin","type":"plugin","creationDate":"Apr 2004","author":"Guillermo Vargas","copyright":"GNU GPL","authorEmail":"guille@vargas.co.cr","authorUrl":"joomla.vargas.co.cr","version":"2.0.1","description":"XMAP_WL_PLUGIN_DESCRIPTION","group":""}', '{"include_links":"1","max_links":"","cat_priority":"-1","cat_changefreq":"-1","link_priority":"-1","link_changefreq":"-1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10072, 'XMAP_PLUGIN_K2', 'plugin', 'com_k2', 'xmap', 0, 1, 1, 0, '{"name":"XMAP_PLUGIN_K2","type":"plugin","creationDate":"November 2011","author":"Mohammad Hasani Eghtedar","copyright":"GNU GPL","authorEmail":"m.h.eghtedar@gmail.com","authorUrl":"https:\\/\\/github.com\\/mhehm\\/Xmap","version":"1.3","description":"XMAP_PLUGIN_K2_DESC","group":""}', '{"subcategories":"no","showk2items":"always","suppressdups":"no","priority":"0.5","changefreq":"weekly"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10073, 'xmap', 'package', 'pkg_xmap', '', 0, 1, 1, 0, '{"name":"Xmap Package","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.3.3","description":"The Site Map generator for Joomla!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10074, 'Skype Status', 'module', 'mod_skype_status', '', 0, 1, 0, 0, '{"name":"Skype Status","type":"module","creationDate":"December 2012","author":"S2 Software di Stefano Storti","copyright":"Copyright (C) 2012 - S2 Software. All rights reserved.","authorEmail":"s.storti@s2software.it","authorUrl":"www.s2software.it","version":"2.1.3","description":"MOD_SKYPESTATUS_XML_DESCRIPTION","group":""}', '{"username":"","refreshInterval":"60","text":"","textAfter":"","command":"add","imagesFolder":"modules\\/mod_skype_status\\/assets\\/images","loadingImage":"loading.gif","onlineImage":"online_button.png","offlineImage":"offline_button.png","awayImage":"away_button.png","busyImage":"busy_button.png","includejQuery":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_compmenus`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_compmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(30) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` int(11) NOT NULL DEFAULT '1',
  `frame` tinyint(1) NOT NULL DEFAULT '0',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_config`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_config` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_facileforms_config`
--

INSERT INTO `m7bpc_facileforms_config` (`id`, `value`) VALUES
('stylesheet', '0'),
('wysiwyg', '0'),
('areasmall', '4'),
('areamedium', '12'),
('arealarge', '20'),
('limitdesc', '100'),
('emailadr', 'Enter your email address here'),
('images', '{mossite}/components/com_breezingforms/images'),
('uploads', '{mospath}/media/breezingforms/uploads'),
('movepixels', '10'),
('compress', '1'),
('livesite', '1'),
('getprovider', '0'),
('gridshow', '1'),
('gridsize', '10'),
('gridcolor1', '#e0e0ff'),
('gridcolor2', '#ffe0e0'),
('viewed', '0'),
('exported', '0'),
('archived', '0'),
('formname', ''),
('menupkg', ''),
('formpkg', ''),
('scriptpkg', ''),
('piecepkg', ''),
('csvdelimiter', ';'),
('csvquote', '"'),
('cellnewline', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_elements`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '1',
  `posx` int(11) DEFAULT NULL,
  `posxmode` tinyint(1) NOT NULL DEFAULT '0',
  `posy` int(11) DEFAULT NULL,
  `posymode` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `flag1` tinyint(1) NOT NULL DEFAULT '0',
  `flag2` tinyint(1) NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `data3` text,
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script1flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script1flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `script2flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag3` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag4` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag5` tinyint(1) NOT NULL DEFAULT '0',
  `script3cond` tinyint(1) NOT NULL DEFAULT '0',
  `script3id` int(11) DEFAULT NULL,
  `script3code` text,
  `script3msg` text,
  `mailback` tinyint(1) NOT NULL DEFAULT '0',
  `mailbackfile` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `m7bpc_facileforms_elements`
--

INSERT INTO `m7bpc_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`, `mailback`, `mailbackfile`) VALUES
(1, 1, 1, 0, 1, 'b642e79420f6b1d24233456fca9b1319', 'title_ff_elemb642e79420f6b1d24233456fca9b1319', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(2, 1, 1, 1, 1, 'deafc0c1d61c0738db914cc761a2f9f2', 'title_ff_elemdeafc0c1d61c0738db914cc761a2f9f2', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(3, 1, 1, 2, 1, '86740747b4faf1b9b0351c3f56f4bd40', 'title_ff_elem86740747b4faf1b9b0351c3f56f4bd40', 'Select List', '', '', 1, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '1', '1;Выберите тип;\n2;Сайт-визитка;\n3;Официальный сайт;\n4;Корпоративный сайт;\n5;Интернет-магазин;', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 1, ''),
(4, 1, 1, 3, 1, '54fa1a9ebe6ea7cee87925bb8c30b735', 'title_ff_elem54fa1a9ebe6ea7cee87925bb8c30b735', 'Regular Button', '', '', 1, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(5, 1, 1, 4, 1, 'ad66e9c0a3121de8598555b5d5e43cc5', 'title_ff_elemad66e9c0a3121de8598555b5d5e43cc5', 'Captcha', '', '', 1, 0, 0, 160, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(6, 2, 1, 0, 1, 'bfFakeName', 'bfFakeTitle', '', '', '', 0, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 41, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(7, 2, 1, 0, 1, 'bfFakeName2', 'bfFakeTitle2', '', '', '', 0, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 23, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(8, 2, 1, 0, 1, 'bfFakeName3', 'bfFakeTitle3', '', '', '', 0, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 40, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(9, 2, 1, 0, 1, 'bfFakeName4', 'bfFakeTitle4', '', '', '', 0, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 1, 38, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(10, 3, 1, 0, 1, '00df617d9fa3c498710ec65c5dea1333', 'title_ff_elem00df617d9fa3c498710ec65c5dea1333', 'Text', '', '', 1, 0, 0, 0, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(11, 3, 1, 1, 1, 'b89b73b4fe71aba0813a50ed0cc00c27', 'title_ff_elemb89b73b4fe71aba0813a50ed0cc00c27', 'Text', '', '', 1, 0, 0, 40, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(12, 3, 1, 2, 1, 'd295e09b0e72c69a6c04baaa4fe598e9', 'title_ff_elemd295e09b0e72c69a6c04baaa4fe598e9', 'Select List', '', '', 1, 0, 0, 80, 0, 20, 0, 20, 0, 0, 0, '1', '1;Выберите тип сайта;\n2;Сайт-визитка;\n3;Официальный-сайт;\n4;Корпоративный сайт;\n5;Интернет-магазин;', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, ''),
(13, 3, 1, 3, 1, 'b991e389279e807ee3fe79d3588d5dc8', 'title_ff_elemb991e389279e807ee3fe79d3588d5dc8', 'Textarea', '', '', 1, 0, 0, 120, 0, 20, 0, 20, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_forms`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alt_mailfrom` text,
  `alt_fromname` text,
  `mb_alt_mailfrom` text,
  `mb_alt_fromname` text,
  `mailchimp_email_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_checkbox_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_api_key` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_list_id` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_double_optin` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_mergevars` text,
  `mailchimp_text_html_mobile_field` varchar(255) NOT NULL DEFAULT '',
  `mailchimp_send_errors` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_update_existing` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_replace_interests` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_welcome` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_default_type` varchar(255) NOT NULL DEFAULT 'text',
  `mailchimp_delete_member` tinyint(1) NOT NULL DEFAULT '0',
  `mailchimp_send_goodbye` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_send_notify` tinyint(1) NOT NULL DEFAULT '1',
  `mailchimp_unsubscribe_field` varchar(255) NOT NULL DEFAULT '',
  `salesforce_token` varchar(255) NOT NULL DEFAULT '',
  `salesforce_username` varchar(255) NOT NULL DEFAULT '',
  `salesforce_password` varchar(255) NOT NULL DEFAULT '',
  `salesforce_type` varchar(255) NOT NULL DEFAULT '',
  `salesforce_fields` text,
  `salesforce_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_email` varchar(255) NOT NULL DEFAULT '',
  `dropbox_password` varchar(255) NOT NULL DEFAULT '',
  `dropbox_folder` text,
  `dropbox_submission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `dropbox_submission_types` varchar(255) NOT NULL DEFAULT 'pdf',
  `tags_content` text NOT NULL,
  `tags_content_template` mediumtext NOT NULL,
  `tags_content_template_default_element` int(11) NOT NULL DEFAULT '0',
  `tags_form` text NOT NULL,
  `tags_content_default_category` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_state` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_access` int(11) NOT NULL DEFAULT '1',
  `tags_content_default_language` varchar(7) NOT NULL DEFAULT '*',
  `tags_content_default_featured` int(11) NOT NULL DEFAULT '0',
  `tags_content_default_publishup` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags_content_default_publishdown` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autoheight` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `template_code` longtext NOT NULL,
  `template_code_processed` longtext NOT NULL,
  `template_areas` longtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `runmode` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `mb_custom_mail_subject` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '1',
  `emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `mb_emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `mb_emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `email_type` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_type` tinyint(1) NOT NULL DEFAULT '0',
  `email_custom_template` text,
  `mb_email_custom_template` text,
  `email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `mb_email_custom_html` tinyint(1) NOT NULL DEFAULT '0',
  `emailadr` text,
  `dblog` tinyint(1) NOT NULL DEFAULT '1',
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `piece1cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece1id` int(11) DEFAULT NULL,
  `piece1code` text,
  `piece2cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece2id` int(11) DEFAULT NULL,
  `piece2code` text,
  `piece3cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece3id` int(11) DEFAULT NULL,
  `piece3code` text,
  `piece4cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece4id` int(11) DEFAULT NULL,
  `piece4code` text,
  `prevmode` tinyint(1) NOT NULL DEFAULT '2',
  `prevwidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `m7bpc_facileforms_forms`
--

INSERT INTO `m7bpc_facileforms_forms` (`id`, `alt_mailfrom`, `alt_fromname`, `mb_alt_mailfrom`, `mb_alt_fromname`, `mailchimp_email_field`, `mailchimp_checkbox_field`, `mailchimp_api_key`, `mailchimp_list_id`, `mailchimp_double_optin`, `mailchimp_mergevars`, `mailchimp_text_html_mobile_field`, `mailchimp_send_errors`, `mailchimp_update_existing`, `mailchimp_replace_interests`, `mailchimp_send_welcome`, `mailchimp_default_type`, `mailchimp_delete_member`, `mailchimp_send_goodbye`, `mailchimp_send_notify`, `mailchimp_unsubscribe_field`, `salesforce_token`, `salesforce_username`, `salesforce_password`, `salesforce_type`, `salesforce_fields`, `salesforce_enabled`, `dropbox_email`, `dropbox_password`, `dropbox_folder`, `dropbox_submission_enabled`, `dropbox_submission_types`, `tags_content`, `tags_content_template`, `tags_content_template_default_element`, `tags_form`, `tags_content_default_category`, `tags_content_default_state`, `tags_content_default_access`, `tags_content_default_language`, `tags_content_default_featured`, `tags_content_default_publishup`, `tags_content_default_publishdown`, `autoheight`, `package`, `template_code`, `template_code_processed`, `template_areas`, `ordering`, `published`, `runmode`, `name`, `custom_mail_subject`, `mb_custom_mail_subject`, `title`, `description`, `class1`, `class2`, `width`, `widthmode`, `height`, `heightmode`, `pages`, `emailntf`, `mb_emailntf`, `emaillog`, `mb_emaillog`, `emailxml`, `mb_emailxml`, `email_type`, `mb_email_type`, `email_custom_template`, `mb_email_custom_template`, `email_custom_html`, `mb_email_custom_html`, `emailadr`, `dblog`, `script1cond`, `script1id`, `script1code`, `script2cond`, `script2id`, `script2code`, `piece1cond`, `piece1id`, `piece1code`, `piece2cond`, `piece2id`, `piece2code`, `piece3cond`, `piece3id`, `piece3code`, `piece4cond`, `piece4id`, `piece4code`, `prevmode`, `prevwidth`) VALUES
(1, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'EasyModeForms', '<span style="" id="bfPage1" class="bfPage"><ul id="drop1" class="droppableArea"><li class="ff_listItem" id="ff_listItemb642e79420f6b1d24233456fca9b1319"><span class="ff_dragBox" id="ff_dragBoxb642e79420f6b1d24233456fca9b1319">&nbsp;</span><div style="" class="ff_div" id="ff_divb642e79420f6b1d24233456fca9b1319"><div tabindex="-1" style="vertical-align: top; width: 60px; height: 10px; float: left; position: relative; padding: 10px;" class="ff_label" id="ff_labelb642e79420f6b1d24233456fca9b1319">ФИО</div><div style="display: none;" class="ff_break" id="ff_breakb642e79420f6b1d24233456fca9b1319"></div><input style="width: 170px; height: 18px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_b642e79420f6b1d24233456fca9b1319[]" id="ff_elemb642e79420f6b1d24233456fca9b1319" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItemdeafc0c1d61c0738db914cc761a2f9f2"><span class="ff_dragBox" id="ff_dragBoxdeafc0c1d61c0738db914cc761a2f9f2">&nbsp;</span><div style="" class="ff_div" id="ff_divdeafc0c1d61c0738db914cc761a2f9f2"><div tabindex="-1" style="vertical-align: top; width: 60px; height: 20px; float: left; position: relative; padding: 10px;" class="ff_label" id="ff_labeldeafc0c1d61c0738db914cc761a2f9f2">Телефон</div><div style="display: none;" class="ff_break" id="ff_breakdeafc0c1d61c0738db914cc761a2f9f2"></div><input value="" style="width: 168px; height: 20px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_deafc0c1d61c0738db914cc761a2f9f2[]" id="ff_elemdeafc0c1d61c0738db914cc761a2f9f2" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem86740747b4faf1b9b0351c3f56f4bd40"><span class="ff_dragBox" id="ff_dragBox86740747b4faf1b9b0351c3f56f4bd40">&nbsp;</span><div style="" class="ff_div" id="ff_div86740747b4faf1b9b0351c3f56f4bd40"><div tabindex="-1" style="vertical-align: top; width: 60px; height: 10px; float: left; position: relative; padding: 10px;" class="ff_label" id="ff_label86740747b4faf1b9b0351c3f56f4bd40">Сайт</div><div style="display: none;" class="ff_break" id="ff_break86740747b4faf1b9b0351c3f56f4bd40"></div><select style="width: 170px; height: 18px; position: static; margin: 0px; display: block; padding: 0px;" class="ff_elem chzn-done" name="ff_nm_86740747b4faf1b9b0351c3f56f4bd40[]" id="ff_elem86740747b4faf1b9b0351c3f56f4bd40"><option selected="selected" value="">Выберите тип</option><option value="">Сайт-визитка</option><option value="">Официальный сайт</option><option value="">Корпоративный сайт</option><option value="">Интернет-магазин</option></select></div><div style="clear: both;" class="ff_appender"></div></li><li style="" class="ff_listItem" id="ff_listItemad66e9c0a3121de8598555b5d5e43cc5"><span class="ff_dragBox" id="ff_dragBoxad66e9c0a3121de8598555b5d5e43cc5">&nbsp;</span><div style="" class="ff_div" id="ff_divad66e9c0a3121de8598555b5d5e43cc5"><div tabindex="-1" style="vertical-align: top; width: 50px; height: 10px; float: left; position: relative;" class="ff_label" id="ff_labelad66e9c0a3121de8598555b5d5e43cc5">Код</div><div style="display: none;" class="ff_break" id="ff_breakad66e9c0a3121de8598555b5d5e43cc5"></div><div style="position: relative; width: 234.233px; height: 117.233px;" class="ff_elem" id="ff_elemad66e9c0a3121de8598555b5d5e43cc5"><img src="components/com_breezingforms/images/captcha/securimage_show.php" class="ff_capimg" id="ff_capimgValue"><br><input style="width: 200px; float: left;" class="ff_captcha" name="bfCaptchaEntry" id="bfCaptchaEntry" type="text"><div style="float: left; padding-left: 5px;"><a href="#" onclick="document.getElementById(''bfCaptchaEntry'').value='''';document.getElementById(''bfCaptchaEntry'').focus();var splitsrc = document.getElementById(''ff_capimgValue'').src.split(''?''); document.getElementById(''ff_capimgValue'').src = splitsrc[0] + ''?bfMathRandom='' + Math.random(); return false"><img src="http://www.intelweb-nsk.ru/components/com_breezingforms/images/captcha/refresh-captcha.png" border="0"></a></div></div></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem54fa1a9ebe6ea7cee87925bb8c30b735"><span class="ff_dragBox" id="ff_dragBox54fa1a9ebe6ea7cee87925bb8c30b735">&nbsp;</span><div style="" class="ff_div" id="ff_div54fa1a9ebe6ea7cee87925bb8c30b735"><div tabindex="-1" style="vertical-align: top; width: 50px; height: 10px; float: left; position: relative; padding: 10px; margin: 10px;" class="ff_label" id="ff_label54fa1a9ebe6ea7cee87925bb8c30b735"></div><div style="display: none;" class="ff_break" id="ff_break54fa1a9ebe6ea7cee87925bb8c30b735"></div><input value="Отправить" style="padding: 10px; width: 160px; height: 25px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_54fa1a9ebe6ea7cee87925bb8c30b735[]" id="ff_elem54fa1a9ebe6ea7cee87925bb8c30b735" type="submit"></div><div style="clear: both;" class="ff_appender"></div></li></ul></span>', '<span style="" id="bfPage1" class="bfPage"><ul id="drop1" class="droppableArea"><li class="ff_listItem" id="ff_listItem1"><span class="ff_dragBox" id="ff_dragBox1">&nbsp;</span><div style="" class="ff_div" id="ff_div1"><div tabindex="-1" style="vertical-align: top; width: 60px; height: 10px; float: left; position: relative; padding: 10px;" class="ff_label" id="ff_label1">ФИО</div><div style="display: none;" class="ff_break" id="ff_break1"></div><input style="width: 170px; height: 18px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_b642e79420f6b1d24233456fca9b1319[]" id="ff_elem1" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem2"><span class="ff_dragBox" id="ff_dragBox2">&nbsp;</span><div style="" class="ff_div" id="ff_div2"><div tabindex="-1" style="vertical-align: top; width: 60px; height: 20px; float: left; position: relative; padding: 10px;" class="ff_label" id="ff_label2">Телефон</div><div style="display: none;" class="ff_break" id="ff_break2"></div><input value="" style="width: 168px; height: 20px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_deafc0c1d61c0738db914cc761a2f9f2[]" id="ff_elem2" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem3"><span class="ff_dragBox" id="ff_dragBox3">&nbsp;</span><div style="" class="ff_div" id="ff_div3"><div tabindex="-1" style="vertical-align: top; width: 60px; height: 10px; float: left; position: relative; padding: 10px;" class="ff_label" id="ff_label3">Сайт</div><div style="display: none;" class="ff_break" id="ff_break3"></div><select style="width: 170px; height: 18px; position: static; margin: 0px; display: block; padding: 0px;" class="ff_elem chzn-done" name="ff_nm_86740747b4faf1b9b0351c3f56f4bd40[]" id="ff_elem3"><option selected="selected" value="">Выберите тип</option><option value="">Сайт-визитка</option><option value="">Официальный сайт</option><option value="">Корпоративный сайт</option><option value="">Интернет-магазин</option></select></div><div style="clear: both;" class="ff_appender"></div></li><li style="" class="ff_listItem" id="ff_listItem5"><span class="ff_dragBox" id="ff_dragBox5">&nbsp;</span><div style="" class="ff_div" id="ff_div5"><div tabindex="-1" style="vertical-align: top; width: 50px; height: 10px; float: left; position: relative;" class="ff_label" id="ff_label5">Код</div><div style="display: none;" class="ff_break" id="ff_break5"></div><div style="position: relative; width: 234.233px; height: 117.233px;" class="ff_elem" id="ff_elem5"><img src="components/com_breezingforms/images/captcha/securimage_show.php" class="ff_capimg" id="ff_capimgValue"><br><input style="width: 200px; float: left;" class="ff_captcha" name="bfCaptchaEntry" id="bfCaptchaEntry" type="text"><div style="float: left; padding-left: 5px;"><a href="#" onclick="document.getElementById(''bfCaptchaEntry'').value='''';document.getElementById(''bfCaptchaEntry'').focus();var splitsrc = document.getElementById(''ff_capimgValue'').src.split(''?''); document.getElementById(''ff_capimgValue'').src = splitsrc[0] + ''?bfMathRandom='' + Math.random(); return false"><img src="http://www.intelweb-nsk.ru/components/com_breezingforms/images/captcha/refresh-captcha.png" border="0"></a></div></div></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem4"><span class="ff_dragBox" id="ff_dragBox4">&nbsp;</span><div style="" class="ff_div" id="ff_div4"><div tabindex="-1" style="vertical-align: top; width: 50px; height: 10px; float: left; position: relative; padding: 10px; margin: 10px;" class="ff_label" id="ff_label4"></div><div style="display: none;" class="ff_break" id="ff_break4"></div><input value="Отправить" style="padding: 10px; width: 160px; height: 25px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_54fa1a9ebe6ea7cee87925bb8c30b735[]" id="ff_elem4" type="submit"></div><div style="clear: both;" class="ff_appender"></div></li></ul></span>', '[{"id":"drop1","elements":[{"id":"ff_elemb642e79420f6b1d24233456fca9b1319","dbId":1,"rndId":"b642e79420f6b1d24233456fca9b1319","name":"b642e79420f6b1d24233456fca9b1319","title":"title_ff_elemb642e79420f6b1d24233456fca9b1319","type":"text","internalType":"bfTextfield","bfType":"Text","elementType":"input","area":"drop1","appElementId":"bfTextfield","appElementOrderId":0,"wrapperId":"ff_divb642e79420f6b1d24233456fca9b1319","labelId":"ff_labelb642e79420f6b1d24233456fca9b1319","listItemId":"ff_listItemb642e79420f6b1d24233456fca9b1319","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":-1,"tabIndex":-1,"page":1,"options":{"value":"","readonly":false,"password":false,"mailback":false}},{"id":"ff_elemdeafc0c1d61c0738db914cc761a2f9f2","dbId":2,"rndId":"deafc0c1d61c0738db914cc761a2f9f2","name":"deafc0c1d61c0738db914cc761a2f9f2","title":"title_ff_elemdeafc0c1d61c0738db914cc761a2f9f2","type":"text","internalType":"bfTextfield","bfType":"Text","elementType":"input","area":"drop1","appElementId":"bfTextfield","appElementOrderId":1,"wrapperId":"ff_divdeafc0c1d61c0738db914cc761a2f9f2","labelId":"ff_labeldeafc0c1d61c0738db914cc761a2f9f2","listItemId":"ff_listItemdeafc0c1d61c0738db914cc761a2f9f2","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":"-1","tabIndex":"-1","page":1,"options":{"value":"","readonly":false,"password":false,"mailback":false}},{"id":"ff_elem86740747b4faf1b9b0351c3f56f4bd40","dbId":3,"rndId":"86740747b4faf1b9b0351c3f56f4bd40","name":"86740747b4faf1b9b0351c3f56f4bd40","title":"title_ff_elem86740747b4faf1b9b0351c3f56f4bd40","type":"select-one","internalType":"bfSelect","bfType":"Select List","elementType":"select","area":"drop1","appElementId":"bfSelect","appElementOrderId":2,"wrapperId":"ff_div86740747b4faf1b9b0351c3f56f4bd40","labelId":"ff_label86740747b4faf1b9b0351c3f56f4bd40","listItemId":"ff_listItem86740747b4faf1b9b0351c3f56f4bd40","data1":1,"data2":"1;\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0442\\u0438\\u043f;\\n2;\\u0421\\u0430\\u0439\\u0442-\\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430;\\n3;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442;\\n4;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442;\\n5;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d;","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":1,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":"-1","tabIndex":"-1","page":1,"options":{"multiple":false,"options":"1;\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0442\\u0438\\u043f;\\n2;\\u0421\\u0430\\u0439\\u0442-\\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430;\\n3;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442;\\n4;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442;\\n5;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d;","readonly":false,"mailback":true}},{"id":"ff_elem54fa1a9ebe6ea7cee87925bb8c30b735","dbId":4,"rndId":"54fa1a9ebe6ea7cee87925bb8c30b735","name":"54fa1a9ebe6ea7cee87925bb8c30b735","title":"title_ff_elem54fa1a9ebe6ea7cee87925bb8c30b735","type":"submit","internalType":"bfSubmitButton","bfType":"Regular Button","elementType":"input","area":"drop1","appElementId":"bfSubmitButton","appElementOrderId":3,"wrapperId":"ff_div54fa1a9ebe6ea7cee87925bb8c30b735","labelId":"ff_label54fa1a9ebe6ea7cee87925bb8c30b735","listItemId":"ff_listItem54fa1a9ebe6ea7cee87925bb8c30b735","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":"-1","tabIndex":"-1","page":1,"options":{"readonly":false,"value":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u0442\\u044c"}},{"id":"ff_elemad66e9c0a3121de8598555b5d5e43cc5","dbId":5,"rndId":"ad66e9c0a3121de8598555b5d5e43cc5","name":"ad66e9c0a3121de8598555b5d5e43cc5","title":"title_ff_elemad66e9c0a3121de8598555b5d5e43cc5","type":"","internalType":"bfCaptcha","bfType":"Captcha","elementType":"input","area":"drop1","appElementId":"bfCaptcha","appElementOrderId":4,"wrapperId":"ff_divad66e9c0a3121de8598555b5d5e43cc5","labelId":"ff_labelad66e9c0a3121de8598555b5d5e43cc5","listItemId":"ff_listItemad66e9c0a3121de8598555b5d5e43cc5","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":-1,"tabIndex":-1,"page":1,"options":[]}],"pixelRaster":1}]', 1, 1, 0, 'EasyForm_1847659486', '', '', 'EasyForm_1847659486', NULL, '', NULL, 400, 0, 500, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL),
(2, NULL, NULL, NULL, NULL, '', '', '', '', 1, NULL, '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', NULL, 0, 'pdf', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'QuickModeForms', 'eyJhdHRyaWJ1dGVzIjp7ImNsYXNzIjoiYmZRdWlja01vZGVSb290Q2xhc3MiLCJpZCI6ImJmUXVpY2tNb2RlUm9vdCIsIm1kYXRhIjoie1widHlwZVwiOiBcInJvb3RcIn0ifSwicHJvcGVydGllcyI6eyJ0eXBlIjoicm9vdCIsInRpdGxlIjoiUXVpY2tGb3JtNDkzMTI4Nzg0IiwibmFtZSI6ImZvcm1fb3JkZXIiLCJyb2xsb3ZlciI6dHJ1ZSwicm9sbG92ZXJDb2xvciI6IiNmZmMiLCJ0b2dnbGVGaWVsZHMiOiIiLCJkZXNjcmlwdGlvbiI6IiIsIm1haWxOb3RpZmljYXRpb24iOmZhbHNlLCJtYWlsUmVjaXBpZW50IjoiIiwic3VibWl0SW5jbHVkZSI6dHJ1ZSwic3VibWl0TGFiZWwiOiJcdTA0MTdcdTA0MzBcdTA0M2FcdTA0MzBcdTA0MzdcdTA0MzBcdTA0NDJcdTA0NGMiLCJjYW5jZWxJbmNsdWRlIjpmYWxzZSwiY2FuY2VsTGFiZWwiOiJyZXNldCIsInBhZ2luZ0luY2x1ZGUiOnRydWUsInBhZ2luZ05leHRMYWJlbCI6Im5leHQiLCJwYWdpbmdQcmV2TGFiZWwiOiJiYWNrIiwidGhlbWUiOiJnbG9zc3lfYmx1ZSIsInRoZW1lYm9vdHN0cmFwIjoiIiwidGhlbWVib290c3RyYXBiZWZvcmUiOiIiLCJ0aGVtZWJvb3RzdHJhcExhYmVsVG9wIjpmYWxzZSwidGhlbWVib290c3RyYXBUaGVtZUVuZ2luZSI6ImJyZWV6aW5nZm9ybXMiLCJ0aGVtZWJvb3RzdHJhcFVzZUhlcm9Vbml0IjpmYWxzZSwidGhlbWVib290c3RyYXBVc2VXZWxsIjpmYWxzZSwidGhlbWVib290c3RyYXBVc2VQcm9ncmVzcyI6ZmFsc2UsInRoZW1ldXNlYm9vdHN0cmFwbGVnYWN5IjpmYWxzZSwiZmFkZUluIjpmYWxzZSwibGFzdFBhZ2VUaGFua1lvdSI6dHJ1ZSwic3VibWl0dGVkU2NyaXB0Q29uZGlkdGlvbiI6LTEsInN1Ym1pdHRlZFNjcmlwdENvZGUiOiIiLCJ1c2VFcnJvckFsZXJ0cyI6ZmFsc2UsInVzZURlZmF1bHRFcnJvcnMiOmZhbHNlLCJ1c2VCYWxsb29uRXJyb3JzIjpmYWxzZSwiZGlzYWJsZUpRdWVyeSI6ZmFsc2UsImpvb21sYUhpbnQiOmZhbHNlLCJtb2JpbGVFbmFibGVkIjpmYWxzZSwiZm9yY2VNb2JpbGUiOmZhbHNlLCJmb3JjZU1vYmlsZVVybCI6ImluZGV4LnBocCIsInRoZW1lYm9vdHN0cmFwdmFycyI6IiJ9LCJzdGF0ZSI6Im9wZW4iLCJkYXRhIjp7InRpdGxlIjoiUXVpY2tGb3JtNDkzMTI4Nzg0IiwiaWNvbiI6Ii4uXC9hZG1pbmlzdHJhdG9yXC9jb21wb25lbnRzXC9jb21fYnJlZXppbmdmb3Jtc1wvbGlicmFyaWVzXC9qcXVlcnlcL3RoZW1lc1wvcXVpY2ttb2RlXC9pXC9pY29uX2Zvcm0ucG5nIn0sImNoaWxkcmVuIjpbXX0=', 'QuickMode', '[{"elements":[{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"41","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle","name":"bfFakeName","page":1,"orderNumber":0,"dbId":6,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"23","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle2","name":"bfFakeName2","page":1,"orderNumber":0,"dbId":7,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"40","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle3","name":"bfFakeName3","page":1,"orderNumber":0,"dbId":8,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""},{"element":null,"bfType":"","elementType":"","options":[],"data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":1,"script2id":"38","script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","title":"bfFakeTitle4","name":"bfFakeName4","page":1,"orderNumber":0,"dbId":9,"appElementOrderId":0,"id":0,"logging":0,"qId":0,"internalType":""}],"elementCount":0}]', 3, 1, 0, 'form_order', '', '', 'QuickForm493128784', '', '', NULL, 400, 0, 500, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, '', 1, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL),
(3, '', '', '', '', '', '', '', '', 1, '', '', 0, 0, 0, 0, 'text', 0, 1, 1, '', '', '', '', '', NULL, 0, '', '', '', 0, '', '', '', 0, '', 0, 1, 1, '*', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'EasyModeForms', '<ul class="droppableArea" id="drop1"><li class="ff_listItem" id="ff_listItem00df617d9fa3c498710ec65c5dea1333"><span class="ff_dragBox" id="ff_dragBox00df617d9fa3c498710ec65c5dea1333">&nbsp;</span><div style="" class="ff_div" id="ff_div00df617d9fa3c498710ec65c5dea1333"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_label00df617d9fa3c498710ec65c5dea1333">ФИО</div><div style="display: none;" class="ff_break" id="ff_break00df617d9fa3c498710ec65c5dea1333"></div><input style="width: 170px; height: 18px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_00df617d9fa3c498710ec65c5dea1333[]" id="ff_elem00df617d9fa3c498710ec65c5dea1333" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItemb89b73b4fe71aba0813a50ed0cc00c27"><span class="ff_dragBox" id="ff_dragBoxb89b73b4fe71aba0813a50ed0cc00c27">&nbsp;</span><div style="" class="ff_div" id="ff_divb89b73b4fe71aba0813a50ed0cc00c27"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_labelb89b73b4fe71aba0813a50ed0cc00c27">Телефон</div><div style="display: none;" class="ff_break" id="ff_breakb89b73b4fe71aba0813a50ed0cc00c27"></div><input style="width: 170px; height: 18px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_b89b73b4fe71aba0813a50ed0cc00c27[]" id="ff_elemb89b73b4fe71aba0813a50ed0cc00c27" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItemd295e09b0e72c69a6c04baaa4fe598e9"><span class="ff_dragBox" id="ff_dragBoxd295e09b0e72c69a6c04baaa4fe598e9">&nbsp;</span><div style="" class="ff_div" id="ff_divd295e09b0e72c69a6c04baaa4fe598e9"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_labeld295e09b0e72c69a6c04baaa4fe598e9">Сайт</div><div style="display: none;" class="ff_break" id="ff_breakd295e09b0e72c69a6c04baaa4fe598e9"></div><select style="width: 170px; height: 18px; position: static; display: block;" class="ff_elem chzn-done" name="ff_nm_d295e09b0e72c69a6c04baaa4fe598e9[]" id="ff_elemd295e09b0e72c69a6c04baaa4fe598e9"><option selected="selected" value="">Выберите тип сайта</option><option value="">Сайт-визитка</option><option value="">Официальный-сайт</option><option value="">Корпоративный сайт</option><option value="">Интернет-магазин</option></select></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItemb991e389279e807ee3fe79d3588d5dc8"><span class="ff_dragBox" id="ff_dragBoxb991e389279e807ee3fe79d3588d5dc8">&nbsp;</span><div style="" class="ff_div" id="ff_divb991e389279e807ee3fe79d3588d5dc8"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_labelb991e389279e807ee3fe79d3588d5dc8">Комментарий</div><div style="display: none;" class="ff_break" id="ff_breakb991e389279e807ee3fe79d3588d5dc8"></div><textarea style="position: static; margin: 0px; display: block; height: 55px; width: 153px;" class="ff_elem" type="textarea" name="ff_nm_b991e389279e807ee3fe79d3588d5dc8[]" id="ff_elemb991e389279e807ee3fe79d3588d5dc8"></textarea></div><div style="clear: both;" class="ff_appender"></div></li></ul>\n', '<ul class="droppableArea" id="drop1"><li class="ff_listItem" id="ff_listItem10"><span class="ff_dragBox" id="ff_dragBox10">&nbsp;</span><div style="" class="ff_div" id="ff_div10"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_label10">ФИО</div><div style="display: none;" class="ff_break" id="ff_break10"></div><input style="width: 170px; height: 18px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_00df617d9fa3c498710ec65c5dea1333[]" id="ff_elem10" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem11"><span class="ff_dragBox" id="ff_dragBox11">&nbsp;</span><div style="" class="ff_div" id="ff_div11"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_label11">Телефон</div><div style="display: none;" class="ff_break" id="ff_break11"></div><input style="width: 170px; height: 18px; position: static; margin: 0px; display: block;" class="ff_elem" name="ff_nm_b89b73b4fe71aba0813a50ed0cc00c27[]" id="ff_elem11" type="text"></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem12"><span class="ff_dragBox" id="ff_dragBox12">&nbsp;</span><div style="" class="ff_div" id="ff_div12"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_label12">Сайт</div><div style="display: none;" class="ff_break" id="ff_break12"></div><select style="width: 170px; height: 18px; position: static; display: block;" class="ff_elem chzn-done" name="ff_nm_d295e09b0e72c69a6c04baaa4fe598e9[]" id="ff_elem12"><option selected="selected" value="">Выберите тип сайта</option><option value="">Сайт-визитка</option><option value="">Официальный-сайт</option><option value="">Корпоративный сайт</option><option value="">Интернет-магазин</option></select></div><div style="clear: both;" class="ff_appender"></div></li><li class="ff_listItem" id="ff_listItem13"><span class="ff_dragBox" id="ff_dragBox13">&nbsp;</span><div style="" class="ff_div" id="ff_div13"><div tabindex="0" style="vertical-align: top; width: 100px; height: 10px; float: left; position: relative; margin: 10px;" class="ff_label" id="ff_label13">Комментарий</div><div style="display: none;" class="ff_break" id="ff_break13"></div><textarea style="position: static; margin: 0px; display: block; height: 55px; width: 153px;" class="ff_elem" type="textarea" name="ff_nm_b991e389279e807ee3fe79d3588d5dc8[]" id="ff_elem13"></textarea></div><div style="clear: both;" class="ff_appender"></div></li></ul>', '[{"id":"drop1","elements":[{"id":"ff_elem00df617d9fa3c498710ec65c5dea1333","dbId":10,"rndId":"00df617d9fa3c498710ec65c5dea1333","name":"00df617d9fa3c498710ec65c5dea1333","title":"title_ff_elem00df617d9fa3c498710ec65c5dea1333","type":"text","internalType":"bfTextfield","bfType":"Text","elementType":"input","area":"drop1","appElementId":"bfTextfield","appElementOrderId":0,"wrapperId":"ff_div00df617d9fa3c498710ec65c5dea1333","labelId":"ff_label00df617d9fa3c498710ec65c5dea1333","listItemId":"ff_listItem00df617d9fa3c498710ec65c5dea1333","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":-1,"tabIndex":-1,"page":1,"options":{"value":"","readonly":false,"password":false,"mailback":false}},{"id":"ff_elemb89b73b4fe71aba0813a50ed0cc00c27","dbId":11,"rndId":"b89b73b4fe71aba0813a50ed0cc00c27","name":"b89b73b4fe71aba0813a50ed0cc00c27","title":"title_ff_elemb89b73b4fe71aba0813a50ed0cc00c27","type":"text","internalType":"bfTextfield","bfType":"Text","elementType":"input","area":"drop1","appElementId":"bfTextfield","appElementOrderId":1,"wrapperId":"ff_divb89b73b4fe71aba0813a50ed0cc00c27","labelId":"ff_labelb89b73b4fe71aba0813a50ed0cc00c27","listItemId":"ff_listItemb89b73b4fe71aba0813a50ed0cc00c27","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":-1,"tabIndex":-1,"page":1,"options":{"value":"","readonly":false,"password":false,"mailback":false}},{"id":"ff_elemd295e09b0e72c69a6c04baaa4fe598e9","dbId":12,"rndId":"d295e09b0e72c69a6c04baaa4fe598e9","name":"d295e09b0e72c69a6c04baaa4fe598e9","title":"title_ff_elemd295e09b0e72c69a6c04baaa4fe598e9","type":"select-one","internalType":"bfSelect","bfType":"Select List","elementType":"select","area":"drop1","appElementId":"bfSelect","appElementOrderId":2,"wrapperId":"ff_divd295e09b0e72c69a6c04baaa4fe598e9","labelId":"ff_labeld295e09b0e72c69a6c04baaa4fe598e9","listItemId":"ff_listItemd295e09b0e72c69a6c04baaa4fe598e9","data1":1,"data2":"1;\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0442\\u0438\\u043f \\u0441\\u0430\\u0439\\u0442\\u0430;\\n2;\\u0421\\u0430\\u0439\\u0442-\\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430;\\n3;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439-\\u0441\\u0430\\u0439\\u0442;\\n4;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442;\\n5;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d;","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":"-1","tabIndex":"-1","page":1,"options":{"multiple":false,"options":"1;\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0442\\u0438\\u043f \\u0441\\u0430\\u0439\\u0442\\u0430;\\n2;\\u0421\\u0430\\u0439\\u0442-\\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430;\\n3;\\u041e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439-\\u0441\\u0430\\u0439\\u0442;\\n4;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442;\\n5;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d;","readonly":false,"mailback":false}},{"id":"ff_elemb991e389279e807ee3fe79d3588d5dc8","dbId":13,"rndId":"b991e389279e807ee3fe79d3588d5dc8","name":"b991e389279e807ee3fe79d3588d5dc8","title":"title_ff_elemb991e389279e807ee3fe79d3588d5dc8","type":"textarea","internalType":"bfTextarea","bfType":"Textarea","elementType":"textarea","area":"drop1","appElementId":"bfTextarea","appElementOrderId":3,"wrapperId":"ff_divb991e389279e807ee3fe79d3588d5dc8","labelId":"ff_labelb991e389279e807ee3fe79d3588d5dc8","listItemId":"ff_listItemb991e389279e807ee3fe79d3588d5dc8","data1":"","data2":"","data3":"","script1cond":0,"script1id":0,"script1code":"","script1flag1":0,"script1flag2":0,"script2cond":0,"script2id":0,"script2code":"","script2flag1":0,"script2flag2":0,"script2flag3":0,"script2flag4":0,"script2flag5":0,"script3cond":0,"script3id":0,"script3code":"","script3msg":"","functionNameScript1":"","functionNameScript2":"","functionNameScript3":"","flag1":0,"flag2":0,"mailback":0,"mailbackfile":"","mailbackAsSender":false,"mailbackAccept":false,"mailbackAcceptConnectWith":"","orderNumber":-1,"tabIndex":-1,"page":1,"options":{"value":"","readonly":false}}],"pixelRaster":1}]', 2, 1, 0, 'EasyForm_470229647', '', '', 'form_order', 'форма заказа сайта веб студии интелвеб', '', '', 400, 0, 500, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, '', '', 0, 0, '', 1, 0, 31, '', 0, 32, '', 0, 1, '', 0, NULL, '', 0, 5, '', 0, NULL, '', 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_integrator_criteria_fixed`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_integrator_criteria_fixed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `fixed_value` text NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_integrator_criteria_form`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_integrator_criteria_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `element_id` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_integrator_criteria_joomla`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_integrator_criteria_joomla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `joomla_object` varchar(255) NOT NULL,
  `andor` varchar(3) NOT NULL DEFAULT 'AND',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_integrator_items`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_integrator_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `reference_column` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_integrator_rules`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_integrator_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `reference_table` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'insert',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `finalize_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_packages`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_packages` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `created` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_facileforms_packages`
--

INSERT INTO `m7bpc_facileforms_packages` (`id`, `name`, `version`, `created`, `title`, `author`, `email`, `url`, `description`, `copyright`) VALUES
('', 'mypck_001', '0.0.1', '2005-07-31 22:21:23', 'My First Package', 'My Name', 'my.name@my.domain', 'http://www.my.domain', 'This is the first package that I created', 'This FacileForms package is released under the GNU/GPL license'),
('FF', 'stdlib.english', '1.8', '2012-09-21 11:50:15', 'BreezingForms-Standard Piece and Script Libraries', 'Markus Bopp', 'markus.bopp@crosstec.de', 'http://www.crosstec.de', 'These are the standard BreezingForms script and piece libraries.', 'This BreezingForms package is released under the GNU/GPL license');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_pieces`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `m7bpc_facileforms_pieces`
--

INSERT INTO `m7bpc_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_addCustomCSSFile', 'Add custom CSS File', 'Adds a custom css file to the form. To choose a css file, execute this piece and call the function ff_addCustomCSSFile(''path/to/css/file'') with the RELATIVE (not full!) path to your joomla installation.\r\nDo not forget to call $this->execPieceByName(''ff_InitLib'') before!\r\n\r\nExample:\r\n\r\nglobal $mainframe;\r\n\r\n$this->execPieceByName(''ff_InitLib'');\r\n$this->execPieceByName(''ff_addCustomCSSFile'');\r\n\r\nff_addCustomCSSFile(''templates/'' . $mainframe->getTemplate() . ''/css/template.css'');', 'Before Form', 'function ff_addCustomCSSFile($path){\r\n	if(file_exists(JPATH_SITE . ''/'' . $path)){\r\n		JFactory::getDocument()->addStyleSheet(JURI::root() . $path);\r\n	}\r\n}'),
(2, 1, 'FF', 'ff_Constants', 'Constansts definitions', 'Library constants definitions', 'Before Form', 'define(''FF_DIE'',       ''_ff_die_on_errors_'');\r\ndefine(''FF_DONTDIE'',   ''_ff_stay_alive_'');\r\ndefine(''FF_IGNOREDIE'', ''_ff_ignore_if_dying_'');\r\n\r\ndefine(''FF_ARRAY'',     ''_ff_return_as_array_'');\r\ndefine(''FF_LIST'',      ''_ff_return_as_list_'');\r\ndefine(''FF_SLIST'',     ''_ff_return_as_slist_'');\r\ndefine(''FF_DLIST'',     ''_ff_return_as_dlist_'');\r\n\r\ndefine(''FF_NOTRIM'',    1);\r\ndefine(''FF_ALLOWHTML'', 2);\r\ndefine(''FF_ALLOWRAW'',  4);'),
(3, 1, 'FF', 'ff_die', 'Terminate form gracefully', 'Gracefully terminates the form and shows a message plus opionally a \r\nCONTINUE button for further redirection.\r\n\r\nCall:\r\n\r\n    ff_die($message=null, $action=''stop'', $target='''', $params='''', $label=''Continue'');\r\n    return;\r\n\r\n    $message = A message to display. If no message is provided, it will\r\n               display:\r\n\r\n                    Fatal error in $formname, processing stopped.\r\n\r\n    $action  = ''stop'' : Dont show a CONTINUE button (default)\r\n               ''self'' : Redirect to the same form\r\n               ''form'' : Redirect to another form \r\n               ''page'' : Redirect to another page of this site\r\n               ''home'' : Redirect to homepage of the site\r\n               ''url''  : Redirect to a url\r\n\r\n    $target  = Target name/url for ''form'', ''page'' and ''url''\r\n\r\n    $params  = Additional parameters for ''self'' and ''form''\r\n\r\n    $label   = Text for the continue button\r\n\r\nExamples:\r\n\r\n    // Display standard message without continue button\r\n    ff_die(); \r\n\r\n    // Display message without continue button\r\n    ff_die(''Sorry, cannot continue for some reason.'');\r\n\r\n    // Display standard message and return to same form with a parameter\r\n    ff_die(null, ''self'', ''&ff_param_foo=bar'');\r\n\r\n    // Redirect to another form\r\n    ff_die(''Guess you are hungry now...'', ''form'', ''SamplePizzaShop'', null, ''Order'');\r\n\r\n    // Redirect to another site page\r\n    ff_die(\r\n        ''Something strange has happened!'', \r\n        ''page'', \r\n        ''index.php?option=com_content&task=section&id=1&Itemid=2''\r\n    );', 'Untyped', 'function ff_die($message='''', $action=''stop'', $target='''', $params='''', $label=''Continue'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    $form =& $ff_processor->formrow;\r\n    if (!$message) \r\n        $message = \r\n            "<strong>Fatal error in $form->name, form processing halted.</strong>";\r\n    switch ($action) {\r\n        case ''self'': $url = ff_makeSelfUrl($params); break;\r\n        case ''form'': $url = ff_makeFormUrl($target, $params); break;\r\n        case ''page'': $url = ff_makePageUrl($target); break;\r\n        case ''home'': $url = "{mossite}"; break;\r\n        case ''url'' : $url = $target; break;\r\n        default    : $url = '''';\r\n    } // switch\r\n    if ($form->class1 != '''') echo ''<div class="''.$form->class1.''">''.nl();\r\n    echo($message.''<br/><br/><br/>''.nl());\r\n    if ($url) {\r\n        if (!$ff_processor->inline) echo ''<form action="#redirect">''.nl();\r\n        if ($ff_processor->inframe) $t = ''parent''; else $t = ''document'';\r\n        echo ''<input type="button" class="button" value="''.$label.''"''.\r\n             '' onClick="''.$t.''.location.href=\\''''.htmlentities($url,ENT_QUOTES).''\\'';"''.\r\n             ''/>''.nl();\r\n        if (!$ff_processor->inline) echo ''</form>''.nl();\r\n    } // if\r\n    if ($form->class1 != '''') echo ''</div>''.nl();\r\n    unset($form);\r\n    ob_start();\r\n    $ff_processor->suicide();\r\n} // ff_die'),
(4, 1, 'FF', 'ff_DisableFormTrace', 'Disable tracing at view time', 'Disables tracing for use as before form piece', 'Before Form', '//+trace dis'),
(5, 1, 'FF', 'ff_DisableSubmitTrace', 'Disable tracing at submit time', 'Disables tracing for use as begin submit piece', 'Begin Submit', '//+trace dis'),
(6, 1, 'FF', 'ff_dying', 'Query live status', 'Query if form is dying', 'Untyped', '//+trace max none\r\nfunction ff_dying()\r\n{\r\n    global $ff_processor; \r\n    return $ff_processor->dying;\r\n} // ff_dying'),
(7, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters in c-codes', 'Untyped', 'function ff_expString($text)\r\n{\r\n    return expstring($text);\r\n} // ff_expString'),
(8, 1, 'FF', 'ff_getPageByNameX', 'Get page # by element name', 'Gets the page number by the name of an element. \r\nTypically used to redirect to a certain page in a before form piece \r\nas \r\n\r\n    $this->page = ff_getPageByName(''elementname'');', 'Untyped', 'function ff_getPageByName($name)\r\n{\r\n    global $ff_processor;\r\n    foreach($ff_processor->rows as $row)\r\n        if ($row->name==$name)\r\n            return $row->page;\r\n    return null;\r\n} // ff_getPageByName'),
(9, 1, 'FF', 'ff_getParam', 'Get GET/POST parameter', 'Direct replacement for mosGetParam. ff_getParam will attempt to filter \r\nout parameters that are targeted to another form on the same page.', 'Untyped', 'function ff_getParam($name, $default=null, $mask=0)\r\n{\r\n    global $ff_request;\r\n    if (substr($name,0,9)==''ff_param_'') {\r\n        if (!isset($ff_request[$name])) return $default;\r\n        $val = $ff_request[$name];\r\n    } else {\r\n        if (!isset($_REQUEST[$name])) return $default;\r\n        $val = $_REQUEST[$name];\r\n    } // if\r\n    $dotrim = ($mask & FF_NOTRIM)==0;\r\n    $dostrp = ($mask & FF_ALLOWHTML)==0;\r\n    $addsla = ($mask & FF_ALLOWRAW)==0 && !get_magic_quotes_gpc();\r\n    $remsla = ($mask & FF_ALLOWRAW)!=0 && get_magic_quotes_gpc();\r\n    if (is_array($val)) {\r\n        $cnt = count($val);\r\n        for ($v = 0; $v < $cnt; $v++)\r\n            if (is_string($val[$v])) {\r\n                if ($dotrim) $val[$v] = trim($val[$v]);\r\n                if ($dostrp) $val[$v] = strip_tags($val[$v]);\r\n                if ($addsla) $val[$v] = addslashes($val[$v]);\r\n                if ($remsla) $val[$v] = stripslashes($val[$v]);\r\n            } // if\r\n    } else {\r\n        if (is_string($val)) {\r\n            if ($dotrim) $val = trim($val);\r\n            if ($dostrp) $val = strip_tags($val);\r\n            if ($addsla) $val = addslashes($val);\r\n            if ($remsla) $val = stripslashes($val);\r\n        } // if\r\n    } // if\r\n    return $val;\r\n} // ff_getParam'),
(10, 1, 'FF', 'ff_getSubmit', 'Get submited data', 'Returns submitdata either as scalar, array or list. In case of list the values\r\nare returned as a string with the values concatenated by comma.\r\n\r\nExamples:\r\n\r\n// Get as scalar: Optionally pass a default value as second parameter.\r\n// If no default is provided, it will return NULL if no value was submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'');        // return NULL if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',1);      // return 1 if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',''foo'');  // return ''foo'' if not submitted\r\n\r\n    ff_query(\r\n        "insert into #__mytable(id, name) ".\r\n        "values (''".\r\n            ff_getSubmit(''id'').", ".\r\n            ff_getSubmit(''name'',''unknown'').\r\n        "'')"\r\n    );\r\n\r\n// Get as array: Pass FF_ARRAY as second Parameter\r\n\r\n    $myarr = $ff_getSubmit(''myarr'', FF_ARRAY);\r\n\r\n    foreach ($myarr as $myval) ...\r\n\r\n// Get as list: Pass either FF_LIST, FF_SLIST or FF_DLIST as 2nd parameter.\r\n\r\n    // FF_LIST will return numeric data unquoted and strings in single quotes:\r\n    //    1,2,''a'',4\r\n\r\n    // FF_SLIST will return all data single quoted:\r\n    //    ''1'',''2'',''a'',''4''\r\n\r\n    // FF_DLIST will return all data double quoted:\r\n    //    "1","2","a","4"\r\n\r\n    ff_query(\r\n        "delete from #__mytable ".\r\n        "where id in (".ff_getSubmit(''itemlist'',FF_LIST).")"\r\n    );', 'Untyped', 'function ff_getSubmit($name, $default=null)\r\n{\r\n    global $ff_processor;\r\n\r\n    switch ((string)$default) {\r\n        case FF_ARRAY: $value = array(); break;\r\n        case FF_LIST : \r\n        case FF_SLIST:\r\n        case FF_DLIST: $value = ''''; break;\r\n        default      : $value = $default;\r\n    } // switch\r\n    foreach ($ff_processor->submitdata as $data)\r\n        if ($data[_FF_DATA_NAME]==$name) {\r\n            $q = '''';\r\n            switch ((string)$default) {\r\n                case FF_ARRAY:\r\n                    $value[] = $data[_FF_DATA_VALUE];\r\n                    break;\r\n                case FF_SLIST:\r\n                    $q = "''";\r\n                case FF_DLIST:\r\n                    if ($q=='''') $q = ''"'';\r\n                case FF_LIST:\r\n                    if ($q=='''' && !is_numeric($data[_FF_DATA_VALUE])) $q = "''";\r\n                    if ($value!='''') $value.='','';\r\n                    $value .= $q.$data[_FF_DATA_VALUE].$q;\r\n                    break;\r\n                default:\r\n                    return $data[_FF_DATA_VALUE];\r\n            } // switch\r\n         } // if\r\n    return $value;\r\n} // ff_getSubmit'),
(11, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString($text)\r\n{\r\n    return impstring($text);\r\n} // ff_impString'),
(12, 1, 'FF', 'ff_InitLib', 'Init Library', 'A collection of useful functions for use in form pieces. \r\n\r\nInclude by: \r\n\r\n    $this->execPieceByName(''ff_InitLib'');', 'Before Form', '//+trace high none\r\nif (!defined(''FF_DIE''))                    $this->execPieceByName(''ff_Constants'');\r\nif (!function_exists(''ff_expstring''))      $this->execPieceByName(''ff_expstring'');\r\nif (!function_exists(''ff_makePageUrl''))    $this->execPieceByName(''ff_makePageUrl'');\r\nif (!function_exists(''ff_makeFormUrl''))    $this->execPieceByName(''ff_makeFormUrl'');\r\nif (!function_exists(''ff_makeSelfUrl''))    $this->execPieceByName(''ff_makeSelfUrl'');\r\nif (!function_exists(''ff_die''))            $this->execPieceByName(''ff_die'');\r\nif (!function_exists(''ff_dying''))          $this->execPieceByName(''ff_dying'');\r\nif (!function_exists(''ff_redirect''))       $this->execPieceByName(''ff_redirect'');\r\nif (!function_exists(''ff_redirectParent'')) $this->execPieceByName(''ff_redirectParentX'');\r\nif (!function_exists(''ff_redirectPage''))   $this->execPieceByName(''ff_redirectPage'');\r\nif (!function_exists(''ff_redirectForm''))   $this->execPieceByName(''ff_redirectForm'');\r\nif (!function_exists(''ff_redirectSelf''))   $this->execPieceByName(''ff_redirectSelf'');\r\nif (!function_exists(''ff_setChecked''))     $this->execPieceByName(''ff_setCheckedX'');\r\nif (!function_exists(''ff_setSelected''))    $this->execPieceByName(''ff_setSelectedX'');\r\nif (!function_exists(''ff_setValue''))       $this->execPieceByName(''ff_setValueX'');\r\nif (!function_exists(''ff_getPageByName''))  $this->execPieceByName(''ff_getPageByNameX'');\r\nif (!function_exists(''ff_getParam''))       $this->execPieceByName(''ff_getParam'');\r\nif (!function_exists(''ff_getSubmit''))      $this->execPieceByName(''ff_getSubmit'');\r\nif (!function_exists(''ff_impString''))      $this->execPieceByName(''ff_impString'');\r\nif (!function_exists(''ff_expString''))      $this->execPieceByName(''ff_expString'');\r\nif (!function_exists(''ff_securityImage''))  $this->execPieceByName(''ff_securityImage'');\r\nif (!function_exists(''ff_select''))         $this->execPieceByName(''ff_select'');\r\nif (!function_exists(''ff_selectValue''))    $this->execPieceByName(''ff_selectValue'');\r\nif (!function_exists(''ff_query''))          $this->execPieceByName(''ff_query'');\r\nif (!function_exists(''ff_markdown''))       $this->execPieceByName(''ff_markdown'');'),
(13, 1, 'FF', 'ff_makeFormUrl', 'Make URL to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeFormUrl($name, $params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeFormUrl(\r\n       ''OtherForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_makeFormUrl($name, $params='''')\r\n{\r\n    global $ff_processor, $ff_otherparams;\r\n    $url = '''';\r\n    switch ($ff_processor->runmode) {\r\n        case 2: // preview\r\n        case 1: // backend\r\n            $url .= ''administrator/index2.php?option=com_breezingforms&act=run''.\r\n                    ''&ff_name=''.urlencode($name);\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            break;\r\n        default: // frontend\r\n            $url .= ''index.php?ff_name=''.urlencode($name);\r\n            if ($ff_otherparams[''option''] == ''com_breezingforms'') {\r\n                reset($ff_otherparams);\r\n                while (list($prop, $val) = each($ff_otherparams))\r\n                    $url .= ''&''.urlencode($prop).''=''.urlencode($val);\r\n            } else\r\n                $url .= ''&option=com_breezingforms'';\r\n            if ($ff_processor->target > 1) $url .= ''&ff_target=''.$ff_processor->target;\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            if ($ff_processor->align !=1) $url .= ''&ff_align=''.$ff_processor->align;\r\n            if ($ff_processor->top>0) $url .= ''&ff_top=''.$ff_processor->top;\r\n    } // switch\r\n    return ff_makePageUrl($url. $params);\r\n} // ff_makeFormUrl'),
(14, 1, 'FF', 'ff_makePageUrl', 'Make URL to other page', 'Builds an URL to another mambo page\r\n\r\nCall: \r\n\r\n    $url = ff_makePageUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makePageUrl(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_makePageUrl($params='''')\r\n{\r\n    $url = ''{mossite}'';\r\n    if ($params != '''') {\r\n        $len = strlen($url);\r\n        if ($len > 0 && $url{$len-1} != ''/'') $url .= ''/'';\r\n        $url .= $params;\r\n    } // if\r\n    return $url;\r\n} // ff_makePageUrl'),
(15, 1, 'FF', 'ff_makeSelfUrl', 'Make URL to same form', 'Make an URL to the same form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeSelfUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeSelfUrl(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_makeSelfUrl($params='''')\r\n{\r\n    global $ff_processor;\r\n    return ff_makeFormUrl($ff_processor->formrow->name, $params);\r\n} // ff_makeSelfUrl'),
(16, 1, 'FF', 'ff_markdown', 'Markdown tagging for facile forms', 'Convert text marked up by ''Markdown'' into HTML.\r\n\r\nInclude by: \r\n\r\n    if (!function_exists(''ff_markdown'')) $this->execPieceByName(''ff_markdown'');\r\n\r\nCall syntax: \r\n\r\n    $html = ff_markdown($text);', 'Untyped', 'function ff_markdown($text)\r\n{\r\n    global $ff_processor, $ff_compath;\r\n\r\n    // do the standard Markdown processing first\r\n    if (!function_exists(''Markdown'')) require_once($ff_compath.''/markdown.php'');\r\n    $html = Markdown($text);\r\n\r\n    // now fix <a href...> tags\r\n    $html = preg_replace(\r\n        "/(\\\\<a href=[^\\\\>]+)/i",    // search pattern\r\n        "\\${1} target=\\"_parent\\"",  // replacement\r\n        $html\r\n    );       \r\n    return $html;\r\n} // ff_markdown'),
(17, 1, 'FF', 'ff_query', 'Non-select queries against db', 'Execute a simple db query.\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_query'')) $this->execPieceByName(''ff_query'');\r\n\r\nCall syntax:\r\n\r\n    [$newid = ] ff_query($sql [, $insert = 0]);\r\n\r\n    $sql:    Sql statement to call\r\n    $insert: 1 = return key of auto column when inserting rows\r\n    $newid:  The key of the new row.', 'Untyped', 'function ff_query($sql, $insert=false, $error=FF_DIE)\r\n{\r\n    global $ff_processor;\r\n    $database = JFactory::getDBO();\r\n    if ($ff_processor->dying && $error!=FF_IGNOREDIE) return -1;\r\n    $database->setQuery($sql);\r\n    $database->query();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($insert) return $database->insertid();\r\n    } // if\r\n    return 0;\r\n} // ff_query'),
(18, 1, 'FF', 'ff_redirect', 'Basic redirection', 'Basic redirection routine supporting multiple targets and methods.\r\n\r\nCall:\r\n \r\nff_redirect($url [, $target=''self'' , $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $target = ''top'', ''parent'', ''self'' or ''blank''\r\n\r\n              ''top''    = redirect to the top browser window\r\n              ''parent'' = redirect to the parent frame\r\n              ''self''   = redirect in the same frame (the default)\r\n              ''blank''  = redirect to a new browser window \r\n                         (blank works with post method only)\r\n\r\n    $method = ''post'' or ''get''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirect(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''top''\r\n       );', 'Untyped', 'function ff_redirect($url, $target=''self'', $method=''post'')\r\n{\r\n    global $ff_processor, $ff_request;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    switch (strtolower($method)) {\r\n        case ''get'': {\r\n            switch (strtolower($target)) {\r\n                case ''top''   :\r\n                case ''parent'': break;\r\n                default      : $target = ''document'';\r\n            } // switch\r\n            echo ''<script type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 "onload=function() { ".$target.".location.href=''".$url."''; }".nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''</body>''.nl();\r\n            break;\r\n        } // url\r\n        default: { // post\r\n            $pos = strpos($url,''?'');\r\n            $ff_request = array();\r\n            if ($pos === false)\r\n                $action = $url;\r\n            else {\r\n                $action = substr($url,0,$pos);\r\n                addRequestParams(substr($url, $pos+1));\r\n            } // if\r\n            switch (strtolower($target)) {\r\n                case ''blank'' : $target = '' target="_blank"'';  break;\r\n                case ''top''   : $target = '' target="_top"'';    break;\r\n                case ''parent'': $target = '' target="_parent"''; break;\r\n                default      : $target = '' target="_self"'';\r\n            } // switch\r\n            echo ''<script language="javascript" type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 ''onload = function() { document.ff_redirect.submit(); }''.nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''<form action="''.$action.''" ''.\r\n                  ''method="post" ''.\r\n                  ''name="ff_redirect" id="ff_redirect" ''.\r\n                  ''enctype="multipart/form-data"''.\r\n                  $target.\r\n                 ''>''.nl();\r\n            while (list($prop, $val) = each($ff_request))\r\n                echo ''<input type="hidden" name="''.$prop.''" ''.\r\n                            ''value="''.htmlentities(urldecode($val)).''"/>''.nl();\r\n            echo ''</form>''.nl().\r\n                 ''</body>''.nl();\r\n        } // post\r\n    } // switch\r\n    exit;\r\n} // ff_redirect'),
(19, 1, 'FF', 'ff_redirectForm', 'Redirect to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    ff_redirectForm($name, $params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectForm(\r\n        $this, \r\n       ''SecondForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_redirectForm($name, $params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeFormUrl($name, $params), $method);\r\n} // ff_redirectForm'),
(20, 1, 'FF', 'ff_redirectPage', 'Redirect to other page', 'Redirects to another mambo page. \r\n\r\nCall: \r\n\r\n    ff_redirectPage($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectPage(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_redirectPage($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makePageUrl($params), $method);\r\n} // ff_redirectPage'),
(21, 1, 'FF', 'ff_redirectParentX', 'Redirect to parent window', 'Redirects to the parent window when runing in iframe, otherwise to self. \r\n\r\nff_redirectParent($url [, $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $method = ''post'' or ''url''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirectParent(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''url''\r\n       );', 'Untyped', 'function ff_redirectParent($url, $method = ''post'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->inframe) $target = ''parent''; else $target = ''self''; \r\n    ff_redirect($url, $target, $method);\r\n} // ff_redirectParent'),
(22, 1, 'FF', 'ff_redirectSelf', 'Redirect to same form', 'Redirects to the same form. \r\n\r\nCall: \r\n\r\n    ff_redirectSelf($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectSelf(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_redirectSelf($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeSelfUrl($params), $method);\r\n} // ff_redirectSelf'),
(23, 1, 'FF', 'ff_securityImage', 'Security Image', 'Create code to display the security image', 'Untyped', 'global $ff_seccode;\r\n\r\nif (!isset($this->record_id)) { $ff_seccode = null; }\r\n\r\nfunction ff_securityImage()\r\n{\r\n    global $ff_comsite, $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n\r\n    return ''<img src="''.JURI::root().''ff_secimage.php?option=com_breezingforms&showSecImage=true" title="" alt="" />'';\r\n} // ff_securityImage'),
(24, 1, 'FF', 'ff_select', 'Select rows from db', 'Execute a select query\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_select'')) $this->execPieceByName(''ff_select'');\r\n\r\nCall syntax:\r\n\r\n    $rows = ff_select($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $rows:   List of row objects', 'Untyped', 'function ff_select($sql, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $rows = $database->loadObjectList();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        $rows = array();\r\n        if ($dienow) ff_die($error);\r\n    } else\r\n        $error = null;\r\n    return $rows;\r\n} // ff_select'),
(25, 1, 'FF', 'ff_selectValue', 'Select single value from db', 'Execute query to read a single value\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_selectValue'')) $this->execPieceByName(''ff_selectValue'');\r\n\r\nCall syntax:\r\n\r\n    $value = ff_selectValue($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $value:  The value returned by the database', 'Untyped', 'function ff_selectValue($sql, $def=null, $error=FF_DIE)\r\n{\r\n    $database = JFactory::getDBO();\r\n    $database->setQuery($sql);\r\n    $value = $database->loadResult();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($value) return $value;\r\n    } // if\r\n    return $def;\r\n} // ff_selectValue'),
(26, 1, 'FF', 'ff_setCheckedX', 'Set checkbox/radiobutton checked', 'Set a radio button or checkbox checked. \r\n\r\nCall: \r\n\r\n    ff_setChecked(''name'', ''value'');', 'Untyped', 'function ff_setChecked($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name && $row->data1==$value)\r\n            $row->flag1 = 1;\r\n        unset($row);\r\n    } // for\r\n} // ff_setChecked'),
(27, 1, 'FF', 'ff_setSelectedX', 'Set a select list option to *selected*', 'Sets a select list option to selected. \r\n\r\nCall: \r\n\r\n    ff_setSelected(''name'', ''value'');', 'Untyped', 'function ff_setSelected($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data2 =\r\n                preg_replace(\r\n                    ''/(^|\\r\\n|\\n)(0|1);([^;]*);(''.$value.'')($|\\r\\n|\\n)/'',\r\n                    ''${1}1;${3};${4}${5}'',\r\n                    $row->data2\r\n                );\r\n        unset($row);\r\n    } // for\r\n} // ff_setSelected'),
(28, 1, 'FF', 'ff_setValueX', 'Set text, textarea, hidden value', 'Set value of a Static Text, Text, Textarea or Hidden Input. \r\n\r\nCall: \r\n\r\n    ff_setValue(''name'', ''value'');', 'Untyped', 'function ff_setValue($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data1 = $value;\r\n        unset($row);\r\n    } // for\r\n} // ff_setValue');
INSERT INTO `m7bpc_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(29, 1, 'FF', 'Markdown', 'Original Markdown Processor', 'Converts text marked up by ''Markdown'' into HTML.\r\n\r\nPlease use ff_markdown() in forms instead of Markdown()', 'Untyped', '#\r\n# Markdown  -  A text-to-HTML conversion tool for web writers\r\n#\r\n# Copyright (c) 2004-2005 John Gruber\r\n# <http://daringfireball.net/projects/markdown/>\r\n#\r\n# Copyright (c) 2004-2005 Michel Fortin - PHP Port\r\n# <http://www.michelf.com/projects/php-markdown/>\r\n#\r\n\r\nglobal	$MarkdownPHPVersion, $MarkdownSyntaxVersion,\r\n		$md_empty_element_suffix, $md_tab_width,\r\n		$md_nested_brackets_depth, $md_nested_brackets,\r\n		$md_escape_table, $md_backslash_escape_table,\r\n		$md_list_level;\r\n\r\n$MarkdownPHPVersion    = ''1.0.1b''; # Mon 6 Jun 2005\r\n$MarkdownSyntaxVersion = ''1.0.1'';  # Sun 12 Dec 2004\r\n\r\n\r\n#\r\n# Global default settings:\r\n#\r\n$md_empty_element_suffix = " />";     # Change to ">" for HTML output\r\n$md_tab_width = 4;\r\n\r\n#\r\n# WordPress settings:\r\n#\r\n$md_wp_posts    = true;  # Set to false to remove Markdown from posts.\r\n$md_wp_comments = true;  # Set to false to remove Markdown from comments.\r\n\r\n\r\n# -- WordPress Plugin Interface -----------------------------------------------\r\n/*\r\nPlugin Name: Markdown\r\nPlugin URI: http://www.michelf.com/projects/php-markdown/\r\nDescription: <a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\r\nVersion: 1.0.1b\r\nAuthor: Michel Fortin\r\nAuthor URI: http://www.michelf.com/\r\n*/\r\nif (isset($wp_version)) {\r\n	# More details about how it works here:\r\n	# <http://www.michelf.com/weblog/2005/wordpress-text-flow-vs-markdown/>\r\n\r\n	# Post content and excerpts\r\n	if ($md_wp_posts) {\r\n		remove_filter(''the_content'',  ''wpautop'');\r\n		remove_filter(''the_excerpt'',  ''wpautop'');\r\n		add_filter(''the_content'',     ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''trim'', 7);\r\n		add_filter(''the_excerpt'',     ''md_add_p'');\r\n		add_filter(''the_excerpt_rss'', ''md_strip_p'');\r\n\r\n		remove_filter(''content_save_pre'',  ''balanceTags'', 50);\r\n		remove_filter(''excerpt_save_pre'',  ''balanceTags'', 50);\r\n		add_filter(''the_content'',  	  ''balanceTags'', 50);\r\n		add_filter(''get_the_excerpt'', ''balanceTags'', 9);\r\n\r\n		function md_add_p($text) {\r\n			if (strlen($text) == 0) return;\r\n			if (strcasecmp(substr($text, -3), ''<p>'') == 0) return $text;\r\n			return ''<p>''.$text.''</p>'';\r\n		}\r\n		function md_strip_p($t) { return preg_replace(''{</?[pP]>}'', '''', $t); }\r\n	}\r\n\r\n	# Comments\r\n	if ($md_wp_comments) {\r\n		remove_filter(''comment_text'', ''wpautop'');\r\n		remove_filter(''comment_text'', ''make_clickable'');\r\n		add_filter(''pre_comment_content'', ''Markdown'', 6);\r\n		add_filter(''pre_comment_content'', ''md_hide_tags'', 8);\r\n		add_filter(''pre_comment_content'', ''md_show_tags'', 12);\r\n		add_filter(''get_comment_text'',    ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''md_strip_p'', 7);\r\n\r\n		global $md_hidden_tags;\r\n		$md_hidden_tags = array(\r\n			''<p>''	=> md5(''<p>''),		''</p>''	=> md5(''</p>''),\r\n			''<pre>''	=> md5(''<pre>''),	''</pre>''=> md5(''</pre>''),\r\n			''<ol>''	=> md5(''<ol>''),		''</ol>''	=> md5(''</ol>''),\r\n			''<ul>''	=> md5(''<ul>''),		''</ul>''	=> md5(''</ul>''),\r\n			''<li>''	=> md5(''<li>''),		''</li>''	=> md5(''</li>''),\r\n			);\r\n\r\n		function md_hide_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_keys($md_hidden_tags),\r\n								array_values($md_hidden_tags), $text);\r\n		}\r\n		function md_show_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_values($md_hidden_tags),\r\n								array_keys($md_hidden_tags), $text);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n# -- bBlog Plugin Info --------------------------------------------------------\r\nfunction identify_modifier_markdown() {\r\n	global $MarkdownPHPVersion;\r\n	return array(\r\n		''name''			=> ''markdown'',\r\n		''type''			=> ''modifier'',\r\n		''nicename''		=> ''Markdown'',\r\n		''description''	=> ''A text-to-HTML conversion tool for web writers'',\r\n		''authors''		=> ''Michel Fortin and John Gruber'',\r\n		''licence''		=> ''GPL'',\r\n		''version''		=> $MarkdownPHPVersion,\r\n		''help''			=> ''<a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>''\r\n	);\r\n}\r\n\r\n# -- Smarty Modifier Interface ------------------------------------------------\r\nfunction smarty_modifier_markdown($text) {\r\n	return Markdown($text);\r\n}\r\n\r\n# -- Textile Compatibility Mode -----------------------------------------------\r\n# Rename this file to "classTextile.php" and it can replace Textile anywhere.\r\nif (strcasecmp(substr(__FILE__, -16), "classTextile.php") == 0) {\r\n	# Try to include PHP SmartyPants. Should be in the same directory.\r\n	@include_once ''smartypants.php'';\r\n	# Fake Textile class. It calls Markdown instead.\r\n	class Textile {\r\n		function TextileThis($text, $lite='''', $encode='''', $noimage='''', $strict='''') {\r\n			if ($lite == '''' && $encode == '''')   $text = Markdown($text);\r\n			if (function_exists(''SmartyPants'')) $text = SmartyPants($text);\r\n			return $text;\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n#\r\n# Globals:\r\n#\r\n\r\n# Regex to match balanced [brackets].\r\n# Needed to insert a maximum bracked depth while converting to PHP.\r\n$md_nested_brackets_depth = 6;\r\n$md_nested_brackets =\r\n	str_repeat(''(?>[^\\[\\]]+|\\['', $md_nested_brackets_depth).\r\n	str_repeat(''\\])*'', $md_nested_brackets_depth);\r\n\r\n# Table of hash values for escaped characters:\r\n$md_escape_table = array(\r\n	"\\\\" => md5("\\\\"),\r\n	"`" => md5("`"),\r\n	"*" => md5("*"),\r\n	"_" => md5("_"),\r\n	"{" => md5("{"),\r\n	"}" => md5("}"),\r\n	"[" => md5("["),\r\n	"]" => md5("]"),\r\n	"(" => md5("("),\r\n	")" => md5(")"),\r\n	">" => md5(">"),\r\n	"#" => md5("#"),\r\n	"+" => md5("+"),\r\n	"-" => md5("-"),\r\n	"." => md5("."),\r\n	"!" => md5("!")\r\n);\r\n# Create an identical table but for escaped characters.\r\n$md_backslash_escape_table;\r\nforeach ($md_escape_table as $key => $char)\r\n	$md_backslash_escape_table["\\\\$key"] = $char;\r\n\r\n\r\nfunction Markdown($text) {\r\n#\r\n# Main function. The order in which other subs are called here is\r\n# essential. Link and image substitutions need to happen before\r\n# _EscapeSpecialCharsWithinTagAttributes(), so that any *''s or _''s in the <a>\r\n# and <img> tags get encoded.\r\n#\r\n	# Clear the global hashes. If we don''t clear these, you get conflicts\r\n	# from other articles when generating a page which contains more than\r\n	# one article (e.g. an index page that shows the N most recent\r\n	# articles):\r\n	global $md_urls, $md_titles, $md_html_blocks;\r\n	$md_urls = array();\r\n	$md_titles = array();\r\n	$md_html_blocks = array();\r\n\r\n	# Standardize line endings:\r\n	#   DOS to Unix and Mac to Unix\r\n	$text = str_replace(array("\\r\\n", "\\r"), "\\n", $text);\r\n\r\n	# Make sure $text ends with a couple of newlines:\r\n	$text .= "\\n\\n";\r\n\r\n	# Convert all tabs to spaces.\r\n	$text = _Detab($text);\r\n\r\n	# Strip any lines consisting only of spaces and tabs.\r\n	# This makes subsequent regexen easier to write, because we can\r\n	# match consecutive blank lines with /\\n+/ instead of something\r\n	# contorted like /[ \\t]*\\n+/ .\r\n	$text = preg_replace(''/^[ \\t]+$/m'', '''', $text);\r\n\r\n	# Turn block-level HTML blocks into hash entries\r\n	$text = _HashHTMLBlocks($text);\r\n\r\n	# Strip link definitions, store in hashes.\r\n	$text = _StripLinkDefinitions($text);\r\n\r\n	$text = _RunBlockGamut($text);\r\n\r\n	$text = _UnescapeSpecialChars($text);\r\n\r\n	return $text . "\\n";\r\n}\r\n\r\n\r\nfunction _StripLinkDefinitions($text) {\r\n#\r\n# Strips link definitions from text, stores the URLs and titles in\r\n# hash references.\r\n#\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Link defs are in the form: ^[id]: url "optional title"\r\n	$text = preg_replace_callback(''{\r\n						^[ ]{0,''.$less_than_tab.''}\\[(.+)\\]:	# id = $1\r\n						  [ \\t]*\r\n						  \\n?				# maybe *one* newline\r\n						  [ \\t]*\r\n						<?(\\S+?)>?			# url = $2\r\n						  [ \\t]*\r\n						  \\n?				# maybe one newline\r\n						  [ \\t]*\r\n						(?:\r\n							(?<=\\s)			# lookbehind for whitespace\r\n							["(]\r\n							(.+?)			# title = $3\r\n							[")]\r\n							[ \\t]*\r\n						)?	# title is optional\r\n						(?:\\n+|\\Z)\r\n		}xm'',\r\n		''_StripLinkDefinitions_callback'',\r\n		$text);\r\n	return $text;\r\n}\r\nfunction _StripLinkDefinitions_callback($matches) {\r\n	global $md_urls, $md_titles;\r\n	$link_id = strtolower($matches[1]);\r\n	$md_urls[$link_id] = _EncodeAmpsAndAngles($matches[2]);\r\n	if (isset($matches[3]))\r\n		$md_titles[$link_id] = str_replace(''"'', ''&quot;'', $matches[3]);\r\n	return ''''; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _HashHTMLBlocks($text) {\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Hashify HTML blocks:\r\n	# We only want to do this for block-level HTML tags, such as headers,\r\n	# lists, and tables. That''s because we still want to wrap <p>s around\r\n	# "paragraphs" that are wrapped in non-block-level tags, such as anchors,\r\n	# phrase emphasis, and spans. The list of tags we''re looking for is\r\n	# hard-coded:\r\n	$block_tags_a = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math|ins|del'';\r\n	$block_tags_b = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math'';\r\n\r\n	# First, look for nested blocks, e.g.:\r\n	# 	<div>\r\n	# 		<div>\r\n	# 		tags for inner block must be indented.\r\n	# 		</div>\r\n	# 	</div>\r\n	#\r\n	# The outermost tags must start at the left margin for this to match, and\r\n	# the inner nested divs must be indented.\r\n	# We need to do this before the next, more liberal match, because the next\r\n	# match will start at the first `<div>` and stop at the first `</div>`.\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_a)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	#\r\n	# Now match more liberally, simply from `\\n<tag>` to `</tag>\\n`\r\n	#\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_b)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					.*</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case just for <hr />. It was easier to make a special case than\r\n	# to make the other regex more complicated.\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					<(hr)				# start tag = $2\r\n					\\b					# word break\r\n					([^<>])*?			#\r\n					/?>					# the matching end tag\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n		}x'',\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case for standalone HTML comments:\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					(?s:\r\n						<!\r\n						(--.*?--\\s*)+\r\n						>\r\n					)\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n			}x'',\r\n			''_HashHTMLBlocks_callback'',\r\n			$text);\r\n\r\n	return $text;\r\n}\r\nfunction _HashHTMLBlocks_callback($matches) {\r\n	global $md_html_blocks;\r\n	$text = $matches[1];\r\n	$key = md5($text);\r\n	$md_html_blocks[$key] = $text;\r\n	return "\\n\\n$key\\n\\n"; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _RunBlockGamut($text) {\r\n#\r\n# These are all the transformations that form block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoHeaders($text);\r\n\r\n	# Do Horizontal Rules:\r\n	$text = preg_replace(\r\n		array(''{^[ ]{0,2}([ ]?\\*[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? -[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? _[ ]?){3,}[ \\t]*$}mx''),\r\n		"\\n<hr$md_empty_element_suffix\\n",\r\n		$text);\r\n\r\n	$text = _DoLists($text);\r\n	$text = _DoCodeBlocks($text);\r\n	$text = _DoBlockQuotes($text);\r\n\r\n	# We already ran _HashHTMLBlocks() before, in Markdown(), but that\r\n	# was to escape raw HTML in the original Markdown source. This time,\r\n	# we''re escaping the markup we''ve just created, so that we don''t wrap\r\n	# <p> tags around block-level tags.\r\n	$text = _HashHTMLBlocks($text);\r\n	$text = _FormParagraphs($text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _RunSpanGamut($text) {\r\n#\r\n# These are all the transformations that occur *within* block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoCodeSpans($text);\r\n\r\n	$text = _EscapeSpecialChars($text);\r\n\r\n	# Process anchor and image tags. Images must come first,\r\n	# because ![foo][f] looks like an anchor.\r\n	$text = _DoImages($text);\r\n	$text = _DoAnchors($text);\r\n\r\n	# Make links out of things like `<http://example.com/>`\r\n	# Must come after _DoAnchors(), because you can use < and >\r\n	# delimiters in inline links like [this](<url>).\r\n	$text = _DoAutoLinks($text);\r\n	$text = _EncodeAmpsAndAngles($text);\r\n	$text = _DoItalicsAndBold($text);\r\n\r\n	# Do hard breaks:\r\n	$text = preg_replace(''/ {2,}\\n/'', "<br$md_empty_element_suffix\\n", $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EscapeSpecialChars($text) {\r\n	global $md_escape_table;\r\n	$tokens = _TokenizeHTML($text);\r\n\r\n	$text = '''';   # rebuild $text from the tokens\r\n#	$in_pre = 0;  # Keep track of when we''re inside <pre> or <code> tags.\r\n#	$tags_to_skip = "!<(/?)(?:pre|code|kbd|script|math)[\\s>]!";\r\n\r\n	foreach ($tokens as $cur_token) {\r\n		if ($cur_token[0] == ''tag'') {\r\n			# Within tags, encode * and _ so they don''t conflict\r\n			# with their use in Markdown for italics and strong.\r\n			# We''re replacing each such character with its\r\n			# corresponding MD5 checksum value; this is likely\r\n			# overkill, but it should prevent us from colliding\r\n			# with the escape values by accident.\r\n			$cur_token[1] = str_replace(array(''*'', ''_''),\r\n				array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n				$cur_token[1]);\r\n			$text .= $cur_token[1];\r\n		} else {\r\n			$t = $cur_token[1];\r\n			$t = _EncodeBackslashEscapes($t);\r\n			$text .= $t;\r\n		}\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoAnchors($text) {\r\n#\r\n# Turn Markdown link shortcuts into XHTML <a> tags.\r\n#\r\n	global $md_nested_brackets;\r\n	#\r\n	# First, handle reference-style links: [link text] [id]\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(					# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\\\[\r\n			(.*?)		# id = $3\r\n		  \\\\]\r\n		)\r\n		}xs",\r\n		''_DoAnchors_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, inline-style links: [link text](url "optional title")\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(				# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n		  \\\\(			# literal paren\r\n			[ \\\\t]*\r\n			<?(.*?)>?	# href = $3\r\n			[ \\\\t]*\r\n			(			# $4\r\n			  ([''\\"])	# quote char = $5\r\n			  (.*?)		# Title = $6\r\n			  \\\\5		# matching quote\r\n			)?			# title is optional\r\n		  \\\\)\r\n		)\r\n		}xs",\r\n		''_DoAnchors_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoAnchors_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$link_text   = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($link_text); # for shortcut links like [this][].\r\n	}\r\n\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<a href=\\"$url\\"";\r\n		if ( isset( $md_titles[$link_id] ) ) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'',     ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= ">$link_text</a>";\r\n	}\r\n	else {\r\n		$result = $whole_match;\r\n	}\r\n	return $result;\r\n}\r\nfunction _DoAnchors_inline_callback($matches) {\r\n	global $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$link_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			=& $matches[6];\r\n\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<a href=\\"$url\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(''"'', ''&quot;'', $title);\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\"";\r\n	}\r\n\r\n	$result .= ">$link_text</a>";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoImages($text) {\r\n#\r\n# Turn Markdown image shortcuts into <img> tags.\r\n#\r\n	global $md_nested_brackets;\r\n\r\n	#\r\n	# First, handle reference-style labeled images: ![alt text][id]\r\n	#\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\[\r\n			(.*?)		# id = $3\r\n		  \\]\r\n\r\n		)\r\n		}xs'',\r\n		''_DoImages_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, handle inline images:  ![alt text](url "optional title")\r\n	# Don''t forget: encode * and _\r\n\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n		  \\(			# literal paren\r\n			[ \\t]*\r\n			<?(\\S+?)>?	# src url = $3\r\n			[ \\t]*\r\n			(			# $4\r\n			  ([\\''"])	# quote char = $5\r\n			  (.*?)		# title = $6\r\n			  \\5		# matching quote\r\n			  [ \\t]*\r\n			)?			# title is optional\r\n		  \\)\r\n		)\r\n		}xs'',\r\n		''_DoImages_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoImages_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$alt_text    = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($alt_text); # for shortcut links like ![this][].\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n		if (isset($md_titles[$link_id])) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'', ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= $md_empty_element_suffix;\r\n	}\r\n	else {\r\n		# If there''s no such link ID, leave intact:\r\n		$result = $whole_match;\r\n	}\r\n\r\n	return $result;\r\n}\r\nfunction _DoImages_inline_callback($matches) {\r\n	global $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$alt_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			= '''';\r\n	if (isset($matches[6])) {\r\n		$title		= $matches[6];\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	$title    = str_replace(''"'', ''&quot;'', $title);\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\""; # $title already quoted\r\n	}\r\n	$result .= $md_empty_element_suffix;\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoHeaders($text) {\r\n	# Setext-style headers:\r\n	#	  Header 1\r\n	#	  ========\r\n	#\r\n	#	  Header 2\r\n	#	  --------\r\n	#\r\n	$text = preg_replace(\r\n		array(''{ ^(.+)[ \\t]*\\n=+[ \\t]*\\n+ }emx'',\r\n			  ''{ ^(.+)[ \\t]*\\n-+[ \\t]*\\n+ }emx''),\r\n		array("''<h1>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h1>\\n\\n''",\r\n			  "''<h2>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h2>\\n\\n''"),\r\n		$text);\r\n\r\n	# atx-style headers:\r\n	#	# Header 1\r\n	#	## Header 2\r\n	#	## Header 2 with closing hashes ##\r\n	#	...\r\n	#	###### Header 6\r\n	#\r\n	$text = preg_replace("{\r\n			^(\\\\#{1,6})	# $1 = string of #''s\r\n			[ \\\\t]*\r\n			(.+?)		# $2 = Header text\r\n			[ \\\\t]*\r\n			\\\\#*			# optional closing #''s (not counted)\r\n			\\\\n+\r\n		}xme",\r\n		"''<h''.strlen(''\\\\1'').''>''._RunSpanGamut(_UnslashQuotes(''\\\\2'')).''</h''.strlen(''\\\\1'').''>\\n\\n''",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoLists($text) {\r\n#\r\n# Form HTML ordered (numbered) and unordered (bulleted) lists.\r\n#\r\n	global $md_tab_width, $md_list_level;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$markers = array($marker_ul, $marker_ol);\r\n\r\n	foreach ($markers as $marker) {\r\n		# Re-usable pattern to match any entirel ul or ol list:\r\n		$whole_list = ''\r\n			(								# $1 = whole list\r\n			  (								# $2\r\n				[ ]{0,''.$less_than_tab.''}\r\n				(''.$marker.'')				# $3 = first list item marker\r\n				[ \\t]+\r\n			  )\r\n			  (?s:.+?)\r\n			  (								# $4\r\n				  \\z\r\n				|\r\n				  \\n{2,}\r\n				  (?=\\S)\r\n				  (?!						# Negative lookahead for another list item marker\r\n					[ \\t]*\r\n					''.$marker.''[ \\t]+\r\n				  )\r\n			  )\r\n			)\r\n		''; // mx\r\n\r\n		# We use a different prefix before nested lists than top-level lists.\r\n		# See extended comment in _ProcessListItems().\r\n\r\n		if ($md_list_level) {\r\n			$text = preg_replace_callback(''{\r\n					^\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_top'', $text);\r\n		}\r\n		else {\r\n			$text = preg_replace_callback(''{\r\n					(?:(?<=\\n\\n)|\\A\\n?)\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_nested'', $text);\r\n		}\r\n	}\r\n\r\n	return $text;\r\n}\r\nfunction _DoLists_callback_top($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n\r\n	# Trim any trailing whitespace, to put the closing `</$list_type>`\r\n	# up on the preceding line, to get it past the current stupid\r\n	# HTML block parser. This is a hack to work around the terrible\r\n	# hack that is the HTML block parser.\r\n	$result = rtrim($result);\r\n	$result = "<$list_type>" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\nfunction _DoLists_callback_nested($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n	$result = "<$list_type>\\n" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _ProcessListItems($list_str, $marker_any) {\r\n#\r\n#	Process the contents of a single ordered or unordered list, splitting it\r\n#	into individual list items.\r\n#\r\n	global $md_list_level;\r\n\r\n	# The $md_list_level global keeps track of when we''re inside a list.\r\n	# Each time we enter a list, we increment it; when we leave a list,\r\n	# we decrement. If it''s zero, we''re not in a list anymore.\r\n	#\r\n	# We do this because when we''re not inside a list, we want to treat\r\n	# something like this:\r\n	#\r\n	#		I recommend upgrading to version\r\n	#		8. Oops, now this line is treated\r\n	#		as a sub-list.\r\n	#\r\n	# As a single paragraph, despite the fact that the second line starts\r\n	# with a digit-period-space sequence.\r\n	#\r\n	# Whereas when we''re inside a list (or sub-list), that line will be\r\n	# treated as the start of a sub-list. What a kludge, huh? This is\r\n	# an aspect of Markdown''s syntax that''s hard to parse perfectly\r\n	# without resorting to mind-reading. Perhaps the solution is to\r\n	# change the syntax rules such that sub-lists must start with a\r\n	# starting cardinal number; e.g. "1." or "a.".\r\n\r\n	$md_list_level++;\r\n\r\n	# trim trailing blank lines:\r\n	$list_str = preg_replace("/\\n{2,}\\\\z/", "\\n", $list_str);\r\n\r\n	$list_str = preg_replace_callback(''{\r\n		(\\n)?							# leading line = $1\r\n		(^[ \\t]*)						# leading whitespace = $2\r\n		(''.$marker_any.'') [ \\t]+		# list marker = $3\r\n		((?s:.+?)						# list item text   = $4\r\n		(\\n{1,2}))\r\n		(?= \\n* (\\z | \\2 (''.$marker_any.'') [ \\t]+))\r\n		}xm'',\r\n		''_ProcessListItems_callback'', $list_str);\r\n\r\n	$md_list_level--;\r\n	return $list_str;\r\n}\r\nfunction _ProcessListItems_callback($matches) {\r\n	$item = $matches[4];\r\n	$leading_line =& $matches[1];\r\n	$leading_space =& $matches[2];\r\n\r\n	if ($leading_line || preg_match(''/\\n{2,}/'', $item)) {\r\n		$item = _RunBlockGamut(_Outdent($item));\r\n	}\r\n	else {\r\n		# Recursion for sub-lists:\r\n		$item = _DoLists(_Outdent($item));\r\n		$item = preg_replace(''/\\n+$/'', '''', $item);\r\n		$item = _RunSpanGamut($item);\r\n	}\r\n\r\n	return "<li>" . $item . "</li>\\n";\r\n}\r\n\r\n\r\nfunction _DoCodeBlocks($text) {\r\n#\r\n#	Process Markdown `<pre><code>` blocks.\r\n#\r\n	global $md_tab_width;\r\n	$text = preg_replace_callback("{\r\n			(?:\\\\n\\\\n|\\\\A)\r\n			(	            # $1 = the code block -- one or more lines, starting with a space/tab\r\n			  (?:\r\n				(?:[ ]\\{$md_tab_width} | \\\\t)  # Lines must start with a tab or a tab-width of spaces\r\n				.*\\\\n+\r\n			  )+\r\n			)\r\n			((?=^[ ]{0,$md_tab_width}\\\\S)|\\\\Z)	# Lookahead for non-space at line-start, or end of doc\r\n		}xm",\r\n		''_DoCodeBlocks_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeBlocks_callback($matches) {\r\n	$codeblock = $matches[1];\r\n\r\n	$codeblock = _EncodeCode(_Outdent($codeblock));\r\n//	$codeblock = _Detab($codeblock);\r\n	# trim leading newlines and trailing whitespace\r\n	$codeblock = preg_replace(array(''/\\A\\n+/'', ''/\\s+\\z/''), '''', $codeblock);\r\n\r\n	$result = "\\n\\n<pre><code>" . $codeblock . "\\n</code></pre>\\n\\n";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoCodeSpans($text) {\r\n#\r\n# 	*	Backtick quotes are used for <code></code> spans.\r\n#\r\n# 	*	You can use multiple backticks as the delimiters if you want to\r\n# 		include literal backticks in the code span. So, this input:\r\n#\r\n#		  Just type ``foo `bar` baz`` at the prompt.\r\n#\r\n#	  	Will translate to:\r\n#\r\n#		  <p>Just type <code>foo `bar` baz</code> at the prompt.</p>\r\n#\r\n#		There''s no arbitrary limit to the number of backticks you\r\n#		can use as delimters. If you need three consecutive backticks\r\n#		in your code, use four for delimiters, etc.\r\n#\r\n#	*	You can use spaces to get literal backticks at the edges:\r\n#\r\n#		  ... type `` `bar` `` ...\r\n#\r\n#	  	Turns to:\r\n#\r\n#		  ... type <code>`bar`</code> ...\r\n#\r\n	$text = preg_replace_callback(''@\r\n			(?<!\\\\\\)	# Character before opening ` can\\''t be a backslash\r\n			(`+)		# $1 = Opening run of `\r\n			(.+?)		# $2 = The code block\r\n			(?<!`)\r\n			\\1			# Matching closer\r\n			(?!`)\r\n		@xs'',\r\n		''_DoCodeSpans_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeSpans_callback($matches) {\r\n	$c = $matches[2];\r\n	$c = preg_replace(''/^[ \\t]*/'', '''', $c); # leading whitespace\r\n	$c = preg_replace(''/[ \\t]*$/'', '''', $c); # trailing whitespace\r\n	$c = _EncodeCode($c);\r\n	return "<code>$c</code>";\r\n}\r\n\r\n\r\nfunction _EncodeCode($_) {\r\n#\r\n# Encode/escape certain characters inside Markdown code runs.\r\n# The point is that in code, these characters are literals,\r\n# and lose their special Markdown meanings.\r\n#\r\n	global $md_escape_table;\r\n\r\n	# Encode all ampersands; HTML entities are not\r\n	# entities within a Markdown code span.\r\n	$_ = str_replace(''&'', ''&amp;'', $_);\r\n\r\n	# Do the angle bracket song and dance:\r\n	$_ = str_replace(array(''<'',    ''>''),\r\n					 array(''&lt;'', ''&gt;''), $_);\r\n\r\n	# Now, escape characters that are magic in Markdown:\r\n	$_ = str_replace(array_keys($md_escape_table),\r\n					 array_values($md_escape_table), $_);\r\n\r\n	return $_;\r\n}\r\n\r\n\r\nfunction _DoItalicsAndBold($text) {\r\n	# <strong> must go first:\r\n	$text = preg_replace(''{\r\n			(						# $1: Marker\r\n				(?<!\\*\\*) \\*\\* |	#     (not preceded by two chars of\r\n				(?<!__)   __		#      the same marker)\r\n			)\r\n			(?=\\S) 					# Not followed by whitespace\r\n			(?!\\1)					#   or two others marker chars.\r\n			(						# $2: Content\r\n				(?:\r\n					[^*_]+?			# Anthing not em markers.\r\n				|\r\n									# Balence any regular emphasis inside.\r\n					([*_]) (?=\\S) .+? (?<=\\S) \\3	# $3: em char (* or _)\r\n				|\r\n					(?! \\1 ) .		# Allow unbalenced * and _.\r\n				)+?\r\n			)\r\n			(?<=\\S) \\1				# End mark not preceded by whitespace.\r\n		}sx'',\r\n		''<strong>\\2</strong>'', $text);\r\n	# Then <em>:\r\n	$text = preg_replace(\r\n		''{ ( (?<!\\*)\\* | (?<!_)_ ) (?=\\S) (?! \\1) (.+?) (?<=\\S) \\1 }sx'',\r\n		''<em>\\2</em>'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoBlockQuotes($text) {\r\n	$text = preg_replace_callback(''/\r\n		  (								# Wrap whole match in $1\r\n			(\r\n			  ^[ \\t]*>[ \\t]?			# ">" at the start of a line\r\n				.+\\n					# rest of the first line\r\n			  (.+\\n)*					# subsequent consecutive lines\r\n			  \\n*						# blanks\r\n			)+\r\n		  )\r\n		/xm'',\r\n		''_DoBlockQuotes_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoBlockQuotes_callback($matches) {\r\n	$bq = $matches[1];\r\n	# trim one level of quoting - trim whitespace-only lines\r\n	$bq = preg_replace(array(''/^[ \\t]*>[ \\t]?/m'', ''/^[ \\t]+$/m''), '''', $bq);\r\n	$bq = _RunBlockGamut($bq);		# recurse\r\n\r\n	$bq = preg_replace(''/^/m'', "  ", $bq);\r\n	# These leading spaces screw with <pre> content, so we need to fix that:\r\n	$bq = preg_replace_callback(''{(\\s*<pre>.+?</pre>)}sx'',\r\n								''_DoBlockQuotes_callback2'', $bq);\r\n\r\n	return "<blockquote>\\n$bq\\n</blockquote>\\n\\n";\r\n}\r\nfunction _DoBlockQuotes_callback2($matches) {\r\n	$pre = $matches[1];\r\n	$pre = preg_replace(''/^  /m'', '''', $pre);\r\n	return $pre;\r\n}\r\n\r\n\r\nfunction _FormParagraphs($text) {\r\n#\r\n#	Params:\r\n#		$text - string to process with html <p> tags\r\n#\r\n	global $md_html_blocks;\r\n\r\n	# Strip leading and trailing lines:\r\n	$text = preg_replace(array(''/\\A\\n+/'', ''/\\n+\\z/''), '''', $text);\r\n\r\n	$grafs = preg_split(''/\\n{2,}/'', $text, -1, PREG_SPLIT_NO_EMPTY);\r\n\r\n	#\r\n	# Wrap <p> tags.\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (!isset( $md_html_blocks[$value] )) {\r\n			$value = _RunSpanGamut($value);\r\n			$value = preg_replace(''/^([ \\t]*)/'', ''<p>'', $value);\r\n			$value .= "</p>";\r\n			$grafs[$key] = $value;\r\n		}\r\n	}\r\n\r\n	#\r\n	# Unhashify HTML blocks\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (isset( $md_html_blocks[$value] )) {\r\n			$grafs[$key] = $md_html_blocks[$value];\r\n		}\r\n	}\r\n\r\n	return implode("\\n\\n", $grafs);\r\n}\r\n\r\n\r\nfunction _EncodeAmpsAndAngles($text) {\r\n# Smart processing for ampersands and angle brackets that need to be encoded.\r\n\r\n	# Ampersand-encoding based entirely on Nat Irons''s Amputator MT plugin:\r\n	#   http://bumppo.net/projects/amputator/\r\n	$text = preg_replace(''/&(?!#?[xX]?(?:[0-9a-fA-F]+|\\w+);)/'',\r\n						 ''&amp;'', $text);;\r\n\r\n	# Encode naked <''s\r\n	$text = preg_replace(''{<(?![a-z/?\\$!])}i'', ''&lt;'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeBackslashEscapes($text) {\r\n#\r\n#	Parameter:  String.\r\n#	Returns:    The string, with after processing the following backslash\r\n#				escape sequences.\r\n#\r\n	global $md_escape_table, $md_backslash_escape_table;\r\n	# Must process escaped backslashes first.\r\n	return str_replace(array_keys($md_backslash_escape_table),\r\n					   array_values($md_backslash_escape_table), $text);\r\n}\r\n\r\n\r\nfunction _DoAutoLinks($text) {\r\n	$text = preg_replace("!<((https?|ftp):[^''\\">\\\\s]+)>!",\r\n						 ''<a href="\\1">\\1</a>'', $text);\r\n\r\n	# Email addresses: <address@domain.foo>\r\n	$text = preg_replace(''{\r\n		<\r\n        (?:mailto:)?\r\n		(\r\n			[-.\\w]+\r\n			\\@\r\n			[-a-z0-9]+(\\.[-a-z0-9]+)*\\.[a-z]+\r\n		)\r\n		>\r\n		}exi'',\r\n		"_EncodeEmailAddress(_UnescapeSpecialChars(_UnslashQuotes(''\\\\1'')))",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeEmailAddress($addr) {\r\n#\r\n#	Input: an email address, e.g. "foo@example.com"\r\n#\r\n#	Output: the email address as a mailto link, with each character\r\n#		of the address encoded as either a decimal or hex entity, in\r\n#		the hopes of foiling most address harvesting spam bots. E.g.:\r\n#\r\n#	  <a href="&#x6D;&#97;&#105;&#108;&#x74;&#111;:&#102;&#111;&#111;&#64;&#101;\r\n#		x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;">&#102;&#111;&#111;\r\n#		&#64;&#101;x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;</a>\r\n#\r\n#	Based by a filter by Matthew Wickline, posted to the BBEdit-Talk\r\n#	mailing list: <http://tinyurl.com/yu7ue>\r\n#\r\n	$addr = "mailto:" . $addr;\r\n	$length = strlen($addr);\r\n\r\n	# leave '':'' alone (to spot mailto: later)\r\n	$addr = preg_replace_callback(''/([^\\:])/'',\r\n								  ''_EncodeEmailAddress_callback'', $addr);\r\n\r\n	$addr = "<a href=\\"$addr\\">$addr</a>";\r\n	# strip the mailto: from the visible part\r\n	$addr = preg_replace(''/">.+?:/'', ''">'', $addr);\r\n\r\n	return $addr;\r\n}\r\nfunction _EncodeEmailAddress_callback($matches) {\r\n	$char = $matches[1];\r\n	$r = rand(0, 100);\r\n	# roughly 10% raw, 45% hex, 45% dec\r\n	# ''@'' *must* be encoded. I insist.\r\n	if ($r > 90 && $char != ''@'') return $char;\r\n	if ($r < 45) return ''&#x''.dechex(ord($char)).'';'';\r\n	return ''&#''.ord($char).'';'';\r\n}\r\n\r\n\r\nfunction _UnescapeSpecialChars($text) {\r\n#\r\n# Swap back in all the special characters we''ve hidden.\r\n#\r\n	global $md_escape_table;\r\n	return str_replace(array_values($md_escape_table),\r\n					   array_keys($md_escape_table), $text);\r\n}\r\n\r\n\r\n# _TokenizeHTML is shared between PHP Markdown and PHP SmartyPants.\r\n# We only define it if it is not already defined.\r\nif (!function_exists(''_TokenizeHTML'')) :\r\nfunction _TokenizeHTML($str) {\r\n#\r\n#   Parameter:  String containing HTML markup.\r\n#   Returns:    An array of the tokens comprising the input\r\n#               string. Each token is either a tag (possibly with nested,\r\n#               tags contained therein, such as <a href="<MTFoo>">, or a\r\n#               run of text between tags. Each element of the array is a\r\n#               two-element array; the first is either ''tag'' or ''text'';\r\n#               the second is the actual value.\r\n#\r\n#\r\n#   Regular expression derived from the _tokenize() subroutine in\r\n#   Brad Choate''s MTRegex plugin.\r\n#   <http://www.bradchoate.com/past/mtregex.php>\r\n#\r\n	$index = 0;\r\n	$tokens = array();\r\n\r\n	$match = ''(?s:<!(?:--.*?--\\s*)+>)|''.	# comment\r\n			 ''(?s:<\\?.*?\\?>)|''.				# processing instruction\r\n			 								# regular tags\r\n			 ''(?:<[/!$]?[-a-zA-Z0-9:]+\\b(?>[^"\\''>]+|"[^"]*"|\\''[^\\'']*\\'')*>)'';\r\n\r\n	$parts = preg_split("{($match)}", $str, -1, PREG_SPLIT_DELIM_CAPTURE);\r\n\r\n	foreach ($parts as $part) {\r\n		if (++$index % 2 && $part != '''')\r\n			$tokens[] = array(''text'', $part);\r\n		else\r\n			$tokens[] = array(''tag'', $part);\r\n	}\r\n\r\n	return $tokens;\r\n}\r\nendif;\r\n\r\n\r\nfunction _Outdent($text) {\r\n#\r\n# Remove one level of line-leading tabs or spaces\r\n#\r\n	global $md_tab_width;\r\n	return preg_replace("/^(\\\\t|[ ]{1,$md_tab_width})/m", "", $text);\r\n}\r\n\r\n\r\nfunction _Detab($text) {\r\n#\r\n# Replace tabs with the appropriate amount of space.\r\n#\r\n	global $md_tab_width;\r\n\r\n	# For each line we separate the line in blocks delemited by\r\n	# tab characters. Then we reconstruct every line by adding the\r\n	# appropriate number of space between each blocks.\r\n\r\n	$lines = explode("\\n", $text);\r\n	$text = "";\r\n\r\n	foreach ($lines as $line) {\r\n		# Split in blocks.\r\n		$blocks = explode("\\t", $line);\r\n		# Add each blocks to the line.\r\n		$line = $blocks[0];\r\n		unset($blocks[0]); # Do not add first block twice.\r\n		foreach ($blocks as $block) {\r\n			# Calculate amount of space, insert spaces, insert block.\r\n			$amount = $md_tab_width - strlen($line) % $md_tab_width;\r\n			$line .= str_repeat(" ", $amount) . $block;\r\n		}\r\n		$text .= "$line\\n";\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _UnslashQuotes($text) {\r\n#\r\n#	This function is useful to remove automaticaly slashed double quotes\r\n#	when using preg_replace and evaluating an expression.\r\n#	Parameter:  String.\r\n#	Returns:    The string with any slash-double-quote (\\") sequence replaced\r\n#				by a single double quote.\r\n#\r\n	return str_replace(''\\"'', ''"'', $text);\r\n}\r\n\r\n\r\n/*\r\n\r\nPHP Markdown\r\n============\r\n\r\nDescription\r\n-----------\r\n\r\nThis is a PHP translation of the original Markdown formatter written in\r\nPerl by John Gruber.\r\n\r\nMarkdown is a text-to-HTML filter; it translates an easy-to-read /\r\neasy-to-write structured text format into HTML. Markdown''s text format\r\nis most similar to that of plain text email, and supports features such\r\nas headers, *emphasis*, code blocks, blockquotes, and links.\r\n\r\nMarkdown''s syntax is designed not as a generic markup language, but\r\nspecifically to serve as a front-end to (X)HTML. You can use span-level\r\nHTML tags anywhere in a Markdown document, and you can use block level\r\nHTML tags (like <div> and <table> as well).\r\n\r\nFor more information about Markdown''s syntax, see:\r\n\r\n<http://daringfireball.net/projects/markdown/>\r\n\r\n\r\nBugs\r\n----\r\n\r\nTo file bug reports please send email to:\r\n\r\n<michel.fortin@michelf.com>\r\n\r\nPlease include with your report: (1) the example input; (2) the output you\r\nexpected; (3) the output Markdown actually produced.\r\n\r\n\r\nVersion History\r\n---------------\r\n\r\nSee the readme file for detailed release notes for this version.\r\n\r\n1.0.1b - 6 Jun 2005\r\n\r\n1.0.1a - 15 Apr 2005\r\n\r\n1.0.1 - 16 Dec 2004\r\n\r\n1.0 - 21 Aug 2004\r\n\r\n\r\nAuthor & Contributors\r\n---------------------\r\n\r\nOriginal Perl version by John Gruber\r\n<http://daringfireball.net/>\r\n\r\nPHP port and other contributions by Michel Fortin\r\n<http://www.michelf.com/>\r\n\r\n\r\nCopyright and License\r\n---------------------\r\n\r\nCopyright (c) 2004-2005 Michel Fortin\r\n<http://www.michelf.com/>\r\nAll rights reserved.\r\n\r\nCopyright (c) 2003-2004 John Gruber\r\n<http://daringfireball.net/>\r\nAll rights reserved.\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, are permitted provided that the following conditions are\r\nmet:\r\n\r\n*	Redistributions of source code must retain the above copyright notice,\r\n	this list of conditions and the following disclaimer.\r\n\r\n*	Redistributions in binary form must reproduce the above copyright\r\n	notice, this list of conditions and the following disclaimer in the\r\n	documentation and/or other materials provided with the distribution.\r\n\r\n*	Neither the name "Markdown" nor the names of its contributors may\r\n	be used to endorse or promote products derived from this software\r\n	without specific prior written permission.\r\n\r\nThis software is provided by the copyright holders and contributors "as\r\nis" and any express or implied warranties, including, but not limited\r\nto, the implied warranties of merchantability and fitness for a\r\nparticular purpose are disclaimed. In no event shall the copyright owner\r\nor contributors be liable for any direct, indirect, incidental, special,\r\nexemplary, or consequential damages (including, but not limited to,\r\nprocurement of substitute goods or services; loss of use, data, or\r\nprofits; or business interruption) however caused and on any theory of\r\nliability, whether in contract, strict liability, or tort (including\r\nnegligence or otherwise) arising in any way out of the use of this\r\nsoftware, even if advised of the possibility of such damage.\r\n\r\n*/');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_records`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `opsys` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_full_name` varchar(255) NOT NULL DEFAULT '',
  `paypal_tx_id` varchar(255) NOT NULL DEFAULT '',
  `paypal_payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paypal_testaccount` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_download_tries` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_scripts`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Дамп данных таблицы `m7bpc_facileforms_scripts`
--

INSERT INTO `m7bpc_facileforms_scripts` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(1, 1, 'FF', 'ff_anychecked', 'Any Checked', 'Validate that any radio button or checkbox of a group is checked.', 'Element Validation', 'function ff_anychecked(element, message)\r\n{\r\n    // get plain name\r\n   // alert(document.ff_form52[''ff_nm_bfQuickMode6303958[]'']);\r\n   // alert(document.getElementById(element.id).id);\r\n    var name = '''';\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n           name = element[0].name;\r\n           var cnt = 0;\r\n           for (var i = 0; i < element.length; i++)\r\n             if (element[i].name==name) \r\n              if (element[i].checked) cnt++;                      \r\n           if (cnt==0) {\r\n            ff_validationFocus(element[0].name);\r\n            if (message=='''') message = "Please check or select "+name+".\\n";\r\n            return message;\r\n           } // if \r\n\r\n        } else {\r\n           return '''';\r\n        }\r\n    } else {\r\n      name = element.name;\r\n      if (name.substr(0,6) == ''ff_nm_'') name = name.substring(6,name.length-2);\r\n\r\n      // loop through elements and count selections\r\n      var cnt = 0;\r\n      for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) \r\n            if (ff_getElementByIndex(i).checked) cnt++;\r\n\r\n      // if none selected, emitt error\r\n      if (cnt==0) {\r\n        ff_validationFocus(element.name);\r\n        if (message=='''') message = "Please check or select "+name+".\\n";\r\n        return message;\r\n      } // if\r\n    }\r\n    \r\n    return '''';\r\n} // ff_anychecked'),
(2, 1, 'FF', 'ff_checked', 'Checked', 'Validate that radio button or checkbox is checked.', 'Element Validation', 'function ff_checked(element, message)\r\n{\r\n    if (element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is not checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } \r\n}'),
(3, 1, 'FF', 'ff_checkedValue', 'Get checked value', 'Get value of the currently checked radiobutton.', 'Untyped', 'function ff_checkedValue(name)\r\n{\r\n    // loop through elements and find checked\r\n    for (i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            e = ff_getElementByIndex(i);\r\n            if (e.checked) return e.value;\r\n        } // if \r\n    return '''';\r\n} // ff_checkedValue'),
(4, 1, 'FF', 'ff_countQuerySelections', 'Count Query Selections', 'Counts how many checkboxes/radiobuttons are checked/selected in a query list element', 'Untyped', 'function ff_countQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var sels = 0;\r\n    for (curr = 0; curr < cnt; curr++)\r\n        if (document.getElementById(''ff_cb''+id+''_''+curr).checked) sels++;\r\n    return sels;\r\n} // ff_countQuerySelections'),
(5, 1, 'FF', 'ff_dollaramount2dp', 'Dollar Amount with 2 Decimal Places', 'Validate that a dollar amount with two decimal places is entered.', 'Element Validation', 'function ff_dollaramount2dp(element, message)\r\n{\r\n    var ex  = /^\\d+$|^\\d+\\.\\d{2}$/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number with two decimal places.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_dollaramount2dp'),
(6, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters of a string', 'Untyped', 'function ff_expString(text)\r\n{\r\n    text = trim(text);\r\n    var i;\r\n    var o = '''';\r\n    for(i = 0; i < text.length; i++) {\r\n        c = text.charAt(i);\r\n        switch(c) {\r\n            case '';'' : o += ''\\\\x3B''; break;\r\n            case '','' : o += ''\\\\x2C''; break;\r\n            case ''&'' : o += ''\\\\x26''; break;\r\n            case ''<'' : o += ''\\\\x3C''; break;\r\n            case ''>'' : o += ''\\\\x3E''; break;\r\n            case ''\\'''': o += ''\\\\x27''; break;\r\n            case ''\\\\'': o += ''\\\\x5C''; break;\r\n            case ''"'' : o += ''\\\\x22''; break;\r\n            case ''\\n'': o += ''\\\\n''; break;\r\n            case ''\\r'': o += ''\\\\r''; break;\r\n            default: o += c;\r\n        } // switch\r\n    } // for\r\n    return o;\r\n} // expString'),
(7, 1, 'FF', 'ff_flashupload_not_empty', 'Flash Upload Not Empty (QuickMode only!)', 'Validates if a flash upload is empty or not.', 'Element Validation', 'function ff_flashupload_not_empty(element, message)\r\n{\r\n    if(typeof bfSummarizers == "undefined") { alert("Flash upload validation only available in QuickMode!"); return ''''}\r\n    if(JQuery(''#bfFlashFileQueue''+element.id.split(''ff_elem'')[1]).html() != '''') return '''';\r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty'),
(8, 1, 'FF', 'ff_getfocus', 'Get focus', 'Get the focus. Usually this is for the first element of the form/page.', 'Element Init', 'function ff_getfocus(element,condition)\r\n{\r\n    if(!element.name){\r\n    	if(element.length && element.length != 0){\r\n    		element[0].focus();\r\n    	}\r\n    }else{\r\n    	element.focus();\r\n    }\r\n}'),
(9, 1, 'FF', 'ff_getQuerySelectedRows', 'Get Query Selected Rows', 'Returns the selected rows in a 2-dimensional array', 'Untyped', 'function ff_getQuerySelectedRows(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var rcnt = ff_queryRows[id].length;\r\n    var cnt = rcnt;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr, r;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) {\r\n            var ident = elem.value;\r\n            for (r = 0; r < rcnt; r++)\r\n                if (ff_queryRows[id][r][0] == ident) {\r\n                    sels[selcnt++] = ff_queryRows[id][r];\r\n                    break;\r\n                } // if\r\n        } // if\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelectedRows'),
(10, 1, 'FF', 'ff_getQuerySelections', 'Get Query Selected ID''s', 'Returns the column values of the checked/selected checkboxes/radiobuttons in an array', 'Untyped', 'function ff_getQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) \r\n            sels[selcnt++] = elem.value;\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelections'),
(11, 1, 'FF', 'ff_htmlvaluenotempty', 'HTML Texteditor Not Empty', 'Checks if an HTML editor element is empty or not', 'Element Validation', 'function ff_htmlvaluenotempty( element, message ){\r\n    \r\n    if( typeof bf_htmltextareanames == "undefined" ) return '''';\r\n\r\n    var content = "";\r\n\r\n    for(var i = 0; i < bf_htmltextareanames.length; i++){\r\n      if( element.name == bf_htmltextareanames[i] ) {\r\n          eval("content = " + bf_htmltextareas[i]);\r\n          break;\r\n      }\r\n    }\r\n    if (JQuery.trim(content) == "") {\r\n        if (message=='''') message = element.name+" must not be empty.\\n";\r\n        return message;\r\n    } // if\r\n    return '''';\r\n}'),
(12, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString(text)\r\n{\r\n    var str = '''';\r\n    var ss = 0;\r\n    var s;\r\n    var tl = text.length;\r\n    var hexdigs = "0123456789abcdefABCDEF";\r\n    while (ss < tl) {\r\n        s = text.charAt(ss++);\r\n        if (s == ''\\\\'') {\r\n            if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n            switch (s) {\r\n                case 0   : break;\r\n                case ''e'' : str += ''\\33''; break;\r\n                case ''t'' : str += ''\\t''; break;\r\n                case ''r'' : str += ''\\r''; break;\r\n                case ''n'' : str += ''\\n''; break;\r\n                case ''f'' : str += ''\\f''; break;\r\n                case ''x'' : {\r\n                    if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    var ch = '''';\r\n                    while (hexdigs.indexOf(s)>=0 && ch.length < 2) {\r\n                        ch += s;\r\n                        if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    } // while\r\n                    while (ch.length < 2) ch = ''0''+ch;\r\n                    str += unescape(''%''+ch);\r\n                    if (s) ss--;\r\n                    break;\r\n                }\r\n                default:\r\n                    str += s;\r\n            } // switch\r\n        } else\r\n            str += s;\r\n    } // while\r\n    return str;\r\n} // impString'),
(13, 1, 'FF', 'ff_integer', 'Integer Number', 'Validate that an integer value is entered.', 'Element Validation', 'function ff_integer(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integer'),
(14, 1, 'FF', 'ff_integeramount', 'Positive Integer', 'Validate that an positive integer value is entered.', 'Element Validation', 'function ff_integeramount(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integeramount'),
(15, 1, 'FF', 'ff_integer_or_empty', 'Integer or empty', 'Validate that either an integer value or nothing is entered.', 'Element Validation', 'function ff_integer_or_empty(element, message)\r\n{\r\n    if (element.value != '''') {\r\n        var ex  = /(^-?\\d\\d*$)/;\r\n        if (!ex.test(element.value)) {\r\n            if (message=='''') message = element.name+" must be integer.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        } // if\r\n    } // if\r\n    return '''';\r\n} // ff_integer_or_empty'),
(16, 1, 'FF', 'ff_nextpage', 'Next page', 'Switchs to the next page.', 'Element Action', 'function ff_nextpage(element, action)\r\n{\r\n    if (ff_currentpage < ff_lastpage) {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_nextpage'),
(17, 1, 'FF', 'ff_page1', 'Page 1', 'Switches to the first page.', 'Element Action', 'function ff_page1(element, action)\r\n{\r\n    ff_switchpage(1);\r\n} // ff_page1'),
(18, 1, 'FF', 'ff_page2', 'Page 2', 'Switches to the second page.', 'Element Action', 'function ff_page2(element, action)\r\n{\r\n    if (ff_lastpage >= 2) ff_switchpage(2);\r\n} // ff_page2'),
(19, 1, 'FF', 'ff_page3', 'Page 3', 'Switches to the third page.', 'Element Action', 'function ff_page3(element, action)\r\n{\r\n    if (ff_lastpage >= 3) ff_switchpage(3);\r\n} // ff_page3'),
(20, 1, 'FF', 'ff_previouspage', 'Previous page', 'Switches to the previous page.', 'Element Action', 'function ff_previouspage(element, action)\r\n{\r\n    if (ff_currentpage > 1){\r\n        ff_switchpage(ff_currentpage-1);\r\n        self.scrollTo(0,0);\r\n    }\r\n} // ff_previouspage'),
(21, 1, 'FF', 'ff_real', 'Real Number', 'Validate that a real number is entered.', 'Element Validation', 'function ff_real(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_real'),
(22, 1, 'FF', 'ff_realamount', 'Positive Real Number', 'Validate that a positive real number is entered.', 'Element Validation', 'function ff_realamount(element, message)\r\n{\r\n    var ex  = /(^\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_realamount'),
(23, 1, 'FF', 'ff_resetForm', 'Reset form', 'Reset all form inputs to the initial values.', 'Element Action', 'function ff_resetForm(element, action)\r\n{\r\n    eval(''document.''+ff_processor.form_id).reset();\r\n} // ff_resetForm'),
(24, 1, 'FF', 'ff_securitycode_entered', 'Security code entered', 'Check that a security code was entered.', 'Element Validation', 'function ff_securitycode_entered(element, message)\r\n{\r\n    var ex  = /(^\\d{5}$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = "Security code must be entered as five digits.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_securitycode_entered'),
(25, 1, 'FF', 'ff_securitycode_ok', 'Security code ok', 'Check that a valid security code was entered.', 'Element Validation', 'function ff_securitycode_ok(element, message)\r\n{\r\n<?php\r\n    global $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        JFactory::getSession()->set(''ff_seccode'', $ff_seccode);\r\n    } // if\r\n    $enc = array();\r\n    mt_srand((double)microtime()*1000000);\r\n    for ($i = 0; $i < 256; $i++) $enc[] = mt_rand(0, 255);\r\n    $seccode = (string)$ff_seccode;\r\n    $hash = '''';\r\n    $ini = $ff_seccode % 240;\r\n    for ($i = 0; $i < 5; $i++) {\r\n        $d = $ini+intval($seccode{$i});\r\n        for ($j = 0; $j < 7; $j++) $d = $enc[$d];\r\n        $hash .= $d;\r\n        $ini = ($ini+$d) % 240;\r\n    } // for\r\n    return\r\n        "var enc = ".$this->expJsValue($enc).";\\n".\r\n        "var seccode = new String(element.value);\\n".\r\n        "if (seccode.length==5) {\\n".\r\n        "    var hash = '''';\\n".\r\n        "    var ini = parseInt(element.value) % 240;\\n".\r\n        "    var i, j;\\n".\r\n        "    for (i = 0; i < 5; i++) {\\n".\r\n        "        var d = ini+parseInt(seccode.charAt(i));\\n".\r\n        "        for (j = 0; j < 7; j++) d = enc[d];\\n".\r\n        "        hash += d;\\n".\r\n        "        ini = (ini+d) % 240;\\n".\r\n        "    } // for\\n".\r\n        "    if (hash == ''$hash'') return '''';\\n". \r\n        "} // if\\n".\r\n        "if (message=='''') message = \\"Security code is missing or wrong.\\\\n\\";\\n".\r\n        "ff_validationFocus(element.name);\\n".\r\n        "return message;\\n";\r\n?>\r\n} // ff_securitycode_ok'),
(26, 1, 'FF', 'ff_selectedValues', 'Get selected values as list', 'Get values of selected options of a select list as list:\r\n\r\nx = ff_selectedValues(''myselectlist'');\r\n// x = green,red', 'Untyped', 'function ff_selectedValues(name)\r\n{\r\n    vals = '''';\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++)\r\n        if (opts[o].selected) {\r\n            if (vals != '''') vals += '','';\r\n            vals += opts[o].value;\r\n        } // if\r\n    return vals;\r\n} // ff_selectedValues'),
(27, 1, 'FF', 'ff_setChecked', 'Set radiobutton checked', 'Set a radiobutton checked/unchecked', 'Untyped', 'function ff_setChecked(name, value, checked)\r\n{\r\n    if (arguments.length<3) checked = true;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            var e = ff_getElementByIndex(i);\r\n            if (e.value == value) {\r\n                e.checked = checked;\r\n                break;\r\n            } // if\r\n        } // if\r\n} // ff_setChecked'),
(28, 1, 'FF', 'ff_setSelected', 'Select options of  select list', 'Select options in a Select List element.\r\n\r\nff_setSelected(''mylist'', ''green''); // select green in single or multi mode, unselect all other options\r\nff_setSelected(''mylist'', ''red,green''); // select red and green in multi mode, unselect all other options', 'Untyped', 'function ff_setSelected(name, list)\r\n{\r\n    ids = list.split('','')\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++) {\r\n        state = false;\r\n        for (i = 0; i < ids.length; i++) \r\n            if (ids[i]==opts[o].value) {\r\n                state = true;\r\n                break;\r\n            } // if\r\n        opts[o].selected = state;\r\n    } // for\r\n} // ff_setSelected'),
(29, 1, 'FF', 'ff_showaction', 'Show action', 'Displays the element action.', 'Element Action', 'function ff_showaction(element, action)\r\n{\r\n   alert(''Action ''+action+'' performed by element ''+element.id);\r\n}'),
(30, 1, 'FF', 'ff_showelementinit', 'Show element initialization', 'Display the element initialization (mainly for debugging)', 'Element Init', 'function ff_showelementinit(element,condition)\r\n{\r\n    if(!element.name)\r\n    	if(element.length && element.length != 0)\r\n    		alert(''Initialization of ''+element[0].name+'' at ''+condition);\r\n    else\r\n    	alert(''Initialization of ''+element.name+'' at ''+condition);\r\n}'),
(31, 1, 'FF', 'ff_showforminit', 'Show form initialization', 'Show when form initialization is run (for debugging)', 'Form Init', 'function ff_showforminit()\r\n{\r\n    alert(''Form initialization'');\r\n}'),
(32, 1, 'FF', 'ff_showsubmitted', 'Show submitted status', 'Display submit status as user feedback.', 'Form Submitted', 'function ff_showsubmitted(status, message)\r\n{\r\n    alert(message);\r\n} // ff_showsubmitted'),
(33, 1, 'FF', 'ff_showvalidation', 'Show element validation', 'Display element validation (for debugging)', 'Element Validation', 'function ff_showvalidation(element, message)\r\n{\r\n    alert(''Validation of ''+element.name+" with message: \\n"+message);\r\n    return '''';\r\n}'),
(34, 1, 'FF', 'ff_submittedhome', 'Return to homepage', 'Display submit status and then return to the home page of the site.', 'Form Submitted', 'function ff_submittedhome(status, message)\r\n{\r\n    alert(message+"\\nYou will be redirected to the home page now.");\r\n    ff_returnHome();\r\n} // ff_submittedhome'),
(35, 1, 'FF', 'ff_unchecked', 'Unchecked', 'Validate that radio button or checkbox is unchecked.', 'Element Validation', 'function ff_unchecked(element, message)\r\n{\r\n    if (!element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n} // ff_unchecked'),
(36, 1, 'FF', 'ff_validate_date_DDMMYYYY', 'Validate Date DD/MM/YYYY format', 'Validates that the date in a textfield is correctly formatted in DD/MM/YYYY format.\r\nCan be used with a textfield element and/or the Calendar element.', 'Element Validation', 'function ff_validate_date_DDMMYYYY(element, message)\r\n{\r\n   // Regular expression used to check if date is in correct format\r\n   var pattern = /[0-3][0-9]\\/(0|1)[0-9]\\/(19|20)[0-9]{2}/;\r\n   if(pattern.test(element.value))\r\n   {\r\n      var date_array = element.value.split(''/'');\r\n      var day = date_array[0];\r\n\r\n      // Attention! Javascript consider months in the range 0 - 11\r\n      var month = date_array[1] - 1;\r\n      var year = date_array[2];\r\n\r\n      // This instruction will create a date object\r\n      source_date = new Date(year,month,day);\r\n\r\n      if(year != source_date.getFullYear())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(month != source_date.getMonth())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n\r\n      if(day != source_date.getDate())\r\n      {\r\n         return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n      }\r\n   }\r\n   else\r\n   {\r\n      return message == '''' ? ''Element '' + element.name + '' failed my test'' : message;\r\n   }\r\n\r\n   return '''';\r\n}'),
(37, 1, 'FF', 'ff_validate_form', 'Validate form', 'Validates the form and displays the result.', 'Element Action', 'function ff_validate_form(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_form'),
(38, 1, 'FF', 'ff_validate_nextpage', 'Validate and next page', 'Validates the current page, and if everything is ok is switches to the next page.', 'Element Action', 'function ff_validate_nextpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else {\r\n        ff_switchpage(ff_currentpage+1);\r\n        self.scrollTo(0,0);   \r\n    }\r\n} // ff_validate_nextpage'),
(39, 1, 'FF', 'ff_validate_page', 'Validate page', 'Validates the current page and displays the result.', 'Element Action', 'function ff_validate_page(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_page'),
(40, 1, 'FF', 'ff_validate_prevpage', 'Validate previous page', 'Validates the current page and switches to the previous page if all is ok', 'Element Action', 'function ff_validate_prevpage(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n       if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus('''');\r\n    } else{\r\n    	if(ff_currentpage > 1){\r\n	 ff_switchpage(ff_currentpage-1);\r\n	 self.scrollTo(0,0);\r\n        }\r\n    }\r\n} // ff_validate_prevpage'),
(41, 1, 'FF', 'ff_validate_submit', 'Validate and submit form', 'Validates the whole form, and if everything is ok it submits the form.', 'Element Action', 'function ff_validate_submit(element, action)\r\n{\r\n    if(typeof bfUseErrorAlerts != ''undefined''){\r\n     JQuery(".bfErrorMessage").html('''');\r\n     JQuery(".bfErrorMessage").css("display","none");\r\n    }\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n\r\n        if(typeof bfUseErrorAlerts == ''undefined''){\r\n           alert(error);\r\n        } else {\r\n           bfShowErrors(error);\r\n        }\r\n        ff_validationFocus();\r\n    } else\r\n        ff_submitForm();\r\n} // ff_validate_submit'),
(42, 1, 'FF', 'ff_validemail', 'Valid email', 'Validate entry of a valid email (syntax check only)', 'Element Validation', 'function ff_validemail(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_validemail'),
(43, 1, 'FF', 'ff_validemail_repeat', 'Validate Email repeat', 'Checks if the field value is a valid email address and has a second counterpart that has an equal value.\r\nThe 2nd email field must be named "FIELDNAME_repeat"!', 'Element Validation', 'function ff_validemail_repeat(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n	\r\n    try{\r\n	    var repeat = element.name.split("ff_nm_")[1].split("[]")[0];\r\n	\r\n	    if(!ff_getElementByName(repeat + ''_repeat'')){\r\n	     	if (message=='''') message = repeat+" has no repeat email field.\\n";\r\n	        ff_validationFocus(element.name);\r\n	        return message;\r\n	    } else {\r\n	        if(ff_getElementByName(repeat + ''_repeat'').value != element.value){\r\n	           if (message=='''') message = element.name+" and " + repeat + "_repeat do not match.\\n";\r\n	           ff_validationFocus(repeat + ''_repeat'');\r\n	           return message;\r\n	        }\r\n	    }\r\n    }catch(e){\r\n        return e.description;\r\n    }\r\n\r\n    return '''';\r\n} // ff_validemail'),
(44, 1, 'FF', 'ff_valuenotempty', 'Value not empty', 'Validate that value is not empty.', 'Element Validation', 'function ff_valuenotempty(element, message)\r\n{\r\n    if (element.value!='''') return ''''; \r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_facileforms_subrecords`
--

CREATE TABLE IF NOT EXISTS `m7bpc_facileforms_subrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` int(11) NOT NULL DEFAULT '0',
  `element` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_filters`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_filters` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_taxonomy` (
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
-- Дамп данных таблицы `m7bpc_finder_taxonomy`
--

INSERT INTO `m7bpc_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_terms`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_finder_terms_common`
--

INSERT INTO `m7bpc_finder_terms_common` (`term`, `language`) VALUES
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
-- Структура таблицы `m7bpc_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_tokens_aggregate` (
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
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_finder_types`
--

CREATE TABLE IF NOT EXISTS `m7bpc_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `m7bpc_finder_types`
--

INSERT INTO `m7bpc_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_attachments`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_categories`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_categories` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `m7bpc_k2_categories`
--

INSERT INTO `m7bpc_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'Сайты', 'sites', '', 0, 0, 1, 1, 1, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(2, 'Uncategorised', 'uncategorised', '', 0, 0, 1, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(3, 'Услуги', 'uslugi', '', 0, 0, 1, 1, 2, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(4, 'Типы сайтов', 'tipy-sajtov', '', 0, 2, 1, 1, 3, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_comments`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_comments` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_extra_fields` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `m7bpc_k2_extra_fields`
--

INSERT INTO `m7bpc_k2_extra_fields` (`id`, `name`, `value`, `type`, `group`, `published`, `ordering`) VALUES
(1, 'ФИО', '[{"name":null,"value":"","target":null,"alias":"fio","required":1,"showNull":0}]', 'textfield', 2, 1, 1),
(2, 'E-mail', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 2, 1, 2),
(3, 'Телефон', '[{"name":null,"value":"","target":null,"alias":"","required":1,"showNull":0}]', 'textfield', 2, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `m7bpc_k2_extra_fields_groups`
--

INSERT INTO `m7bpc_k2_extra_fields_groups` (`id`, `name`) VALUES
(2, 'Заказ');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_items`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_items` (
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
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `m7bpc_k2_items`
--

INSERT INTO `m7bpc_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(15, 'Главная', 'glavnaya', 2, 1, '<h1>Добро пожаловать на сайт веб-студии "ИнтелВеб"!</h1>\r\n<p>Создание сайтов любой сложности в Новомосковске! В срок и по доступным ценам! Обращайтесь  нашу веб-студию и получите качественный веб- ресурс для продвижения Вашего бизнеса!</p>\r\n<p>Преимущества нашей веб-студии:</p>\r\n<ol class="orange">\r\n<li>Низкие цены, качественная разработка, короткие сроки</li>\r\n<li>Домен и хостинг оформляются на вас, поэтому вы, и только вы, являетесь полноправным владельцем сайта .</li>\r\n<li>Никаких дополнительных денежных сборов. Все цены прозрачны и окончательны.</li>\r\n<li>Оказание комплекса услуг в одном месте - регистрация домена, хостинга, создание сайта, фирменного логотипа, продвижение и многое другое.</li>\r\n<li>При желании вы можете сами управлять своим сайтом посредством CMS.</li>\r\n</ol>\r\n<p> Наши услуги:</p>\r\n<p> <i>Разработка сайтов</i></p>\r\n<ul class="orangeMarker">\r\n<li><i>Оптимизация и сопровождение сайтов</i></li>\r\n<li><i>Веб-дизайн и создание фирменного стиля</i></li>\r\n<li><i>Продвижение <br /></i></li>\r\n<li><i>Написание уникального контента</i></li>\r\n</ul>\r\n<p>Стоит выбрать нашу веб-студию, потому что: </p>\r\n<ul class="orangeMarker">\r\n<li><i>Работа осуществляется с использованием новейший технологий быстро и качественно<br /></i></li>\r\n<li><i>Нам важен каждый заказчик, поэтому к каждому клиенту осуществляется индивидуальный подход</i></li>\r\n<li><i>Мы оказываем весь спектр услуг от создания сайта до продвижения</i></li>\r\n<li><i>Предоставляем возможности для роста и развития клиента. Неважно, с какого сайта вы начнете свой бизнес в Интернете, мы всегда сможем расширить и дополнить функционал вашего ресурса<br /></i></li>\r\n</ul>\r\n<p>    "ИнтелВеб" - продвигайте свой бизнес с нами<b>!</b></p>\r\n<p> </p>\r\n<p> </p>', '', NULL, NULL, NULL, '', '2014-03-18 19:52:44', 754, '', 0, '0000-00-00 00:00:00', '2014-03-20 17:25:40', 754, '2014-03-18 19:52:44', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 134, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(11, 'Поддержка функциональности', 'podderzhka-funktsionalnosti', 2, 1, '', '', NULL, NULL, NULL, '', '2014-03-13 22:40:16', 754, '', 0, '0000-00-00 00:00:00', '2014-03-14 08:42:23', 754, '2014-03-13 22:40:16', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(14, 'Главная', 'glavnaya', 2, 1, '<h1>Добро пожаловать на сайт веб-студии "ИнтелВеб"!</h1>\r\n<p>Создание сайтов любой сложности в Новомосковске! В срок и по доступным ценам! Обращайтесь  нашу веб-студию и получите качественный веб- ресурс для продвижения Вашего бизнеса! Ознакомьтесь с полным перечнем услуг на нашем сайте.</p>\r\n<p> </p>', '', NULL, NULL, NULL, '', '2014-03-18 11:06:31', 754, '', 0, '0000-00-00 00:00:00', '2014-03-18 12:35:15', 754, '2014-03-18 11:06:31', '0000-00-00 00:00:00', 1, 1, 1, 0, 0, '', '', '', '', 22, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(16, 'Позвоните нам', 'pozvonite-nam', 2, 1, '<p>+79105585383 - Евгения</p>\r\n<p> </p>', '', NULL, NULL, NULL, '', '2014-03-21 10:43:07', 754, '', 0, '0000-00-00 00:00:00', '2014-03-21 10:47:25', 754, '2014-03-21 10:43:07', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(1, 'Услуги', 'uslugi', 3, 1, '<p>Веб-студия «ИнтелВеб» рада предложить организациям  Новомосковска  и частным лицам свои услуги в области разработки веб-сайтов.</p>\r\n<p>В настоящее время вы ведем разработку сайтов любой сложности для любых Ваших целей. Продвигайте свой бизнес вместе с нами! </p>\r\n<div class="grid_6">\r\n<h4>Создание сайтов, их продвижение и поддержка</h4>\r\n<p>Полный комплекс услуг, которые необходимы любому сайту:</p>\r\n<ul class="list2">\r\n<li>Разработка сайтов, доработка существующих сайтов</li>\r\n<li>Продвижение веб-сайтов: поисковая оптимизация, контекстная реклама</li>\r\n<li>Поддержка веб-сайтов: техническая, информационная</li>\r\n</ul>\r\n</div>', '', NULL, NULL, NULL, '', '2014-03-11 17:25:58', 754, '', 0, '0000-00-00 00:00:00', '2014-03-20 09:39:25', 754, '2014-03-11 17:25:58', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 68, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(2, 'Разработка', 'razrabotka', 3, 1, '<p style="text-align: justify;">Специалисты нашей студии "ИнтелВеб" помогут выбрать Вам требуемый вид сайта исходя из Ваших потребностей. Основные виды сайтов, создаваемые нами:</p>\r\n<p style="text-align: justify;">Сайт-визитка - часто простое и недорогое решение, позволяющее представлять информацию частных лиц и небольших организаций</p>\r\n<p style="text-align: justify;">Сайт-каталог - сайт организации, представляющей свою продукцию</p>\r\n<p style="text-align: justify;">Интернет-магазин - сайт торговли в интернете</p>\r\n<p style="text-align: justify;">Информационный портал -  <span style="color: #555c69; font-family: ''Helvetica Neue'', Helvetica, Arial, ''Lucida Grande'', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;">сайт предусматривающий новостные ленты, главные новости, объявления, блоги,форумы,фотогалерею, опросы, баннеры и другие элементы, необходимые для сайта СМИ.</span></p>', '', NULL, NULL, NULL, '', '2014-03-11 17:28:02', 754, '', 0, '0000-00-00 00:00:00', '2014-03-18 10:20:40', 754, '2014-03-11 17:28:02', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(3, 'Портфолио', 'portfolio', 3, 1, '', '', NULL, NULL, NULL, '', '2014-03-11 17:28:22', 754, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-03-11 17:28:22', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 14, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(4, 'Доработка и оптимизация', 'dorabotka-i-optimizatsiya', 3, 1, '', '', NULL, NULL, NULL, '', '2014-03-11 17:28:33', 754, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-03-11 17:28:33', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 3, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(5, 'SEO продвижение', 'seo-prodvizhenie', 3, 1, '<h1>SEO оптимизация сайта</h1>\r\n<p> Хорошие позиции сайта в Яндексе, Google и др.</p>\r\n<p>Увеличение узнаваемости ресурса</p>\r\n<p>Повышение посещаемости сайта</p>\r\n<p>Рост числа клиентов</p>\r\n<p> </p>\r\n<p>Все пользователи, которым интересны предлагаемые товары или услуги, придут именно на Ваш сайт, и поможет в этом SEO оптимизация сайта.</p>\r\n<p> </p>\r\n<h2>Что такое Seo?</h2>\r\n<p> </p>\r\n<p><strong>SEO</strong> (от англ. Search Engine Optimization) — это совокупность действий, которые позволяют <a href="http://promo.ingate.ru/effect/in-what-search-engines-to-promote/tehnologiya-raskrutki-sayta-v-top-10/">вывести сайт в ТОП</a> поисковых систем и, следовательно, повысить его посещаемость.</p>\r\n<p> </p>\r\n<p>Сегодня достаточно распространено мнение, что узнаваемость компании и продажи ее продуктов можно увеличить с помощью оффлайн-рекламы. Однако она дает отсроченный результат, который очень сложно оценить, а ее стоимость очень велика. SEO оптимизация — это высокие результаты при относительно небольших затратах.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p>SEO оптимизация включает в себя несколько обязательных этапов работы:</p>\r\n<p> </p>\r\n<ol>\r\n<li>Формирование списка ключевых слов, составление коммерческого предложения.</li>\r\n<li>Заключение договора.</li>\r\n<li>Аудит сайта, который позволяет найти ошибки, препятствующие продвижению ресурса.</li>\r\n<li><a href="http://promo.ingate.ru/">Поисковая оптимизация</a>. Деятельность по улучшению технических, текстовых и визуальных характеристик сайта.</li>\r\n<li>Комплексное продвижение ресурса, повышение цитируемости сайта и видимости сайта в выдаче поисковиков.</li>\r\n<li>Поддержание позиций сайта, корректировка стратегии SEO оптимизации, отслеживание результатов.<span style="font-family: Georgia, serif; color: #273468; font-size: 18px;"><br /></span></li>\r\n</ol>\r\n<p>Очень часто нам задают вопрос, с какой периодичностью нужно проводить доработки в SEO? Если перед вами стоит задача постоянно и стабильно получать клиентов, увеличивать продажи и т.п., то необходимо постоянно работать над своим сайтом.</p>', '', NULL, NULL, NULL, '', '2014-03-11 17:29:22', 754, '', 0, '0000-00-00 00:00:00', '2014-03-11 17:31:46', 754, '2014-03-11 17:29:22', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(12, 'Сопровождение сайта', 'soprovozhdenie-sajta', 3, 1, '<h1>Техническая поддержка сайта</h1>\r\n<p>Люди доверяют компании, если её сайт всегда доступен и предоставляет актуальную информацию. Чтобы заниматься сопровождением сайта, поддерживать его работу, и обновлять контент, Вам не нужно нанимать штатного программиста. Технический отдел Фабрики сайтов будет обеспечивать сопровождение сайта, поддерживать его в идеальном техническом состоянии и ежемесячно проводить плановые работы.</p>\r\n<p>Сопровождение сайта включает в себя:</p>\r\n<div class="textPart" style="height: 280px;">\r\n<ul class="list">\r\n<li>Обновление и редактирование информации на сайте (новости, контакты и тд.)</li>\r\n<li>Создание почтовых ящиков</li>\r\n<li>Восстановление доступа к сайту и хостингу</li>\r\n<li>Устранение вирусов</li>\r\n<li>Установка счетчиков</li>\r\n</ul>\r\n<p>Техническая поддержка - Ваш сайт в идеальном техническом состоянии.</p>\r\n<p>Техническая поддержка для:</p>\r\n<ul class="list">\r\n<li><span class="priced rm2999"> </span>Сайта-визитки: 2000 руб/мес</li>\r\n<li><span class="priced rm3999"> </span>Малого бизнеса: 3000 руб/мес</li>\r\n<li><span class="priced rm4999"> </span>Официального сайта: 4000 руб/мес</li>\r\n<li><span class="priced rm5999"> </span>Интернет-магазина: 5000 руб/мес</li>\r\n<li><span class="priced rm5999"> </span>Корпоративного сайта: 5000 руб/мес</li>\r\n</ul>\r\n</div>', '', NULL, NULL, NULL, '', '2014-03-18 10:27:47', 754, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-03-18 10:27:47', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(13, 'Веб-дизайн', 'veb-dizajn', 3, 1, '<h1>Веб-дизайн.</h1>\r\n<p><b>Веб-дизайн</b> (от <a title="Английский язык" href="http://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA">англ.</a> <i><span lang="en">Web design</span></i>) — отрасль <a title="Веб-разработка" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B0">веб-разработки</a> и разновидность <a title="Дизайн" href="http://ru.wikipedia.org/wiki/%D0%94%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD">дизайна</a>, в задачи которой входит проектирование <a class="mw-redirect" title="Пользовательский интерфейс" href="http://ru.wikipedia.org/wiki/%D0%9F%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%B8%D0%B9_%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81">пользовательских</a> <a title="Веб-интерфейс" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D1%84%D0%B5%D0%B9%D1%81">веб-интерфейсов</a> для <a class="mw-redirect" title="Веб-сайт" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D1%81%D0%B0%D0%B9%D1%82">сайтов</a> или <a title="Веб-приложение" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5">веб-приложений</a>. Веб-дизайнеры проектируют <a title="Логическое программирование" href="http://ru.wikipedia.org/wiki/%D0%9B%D0%BE%D0%B3%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5">логическую</a> структуру веб-страниц, продумывают <a title="Юзабилити" href="http://ru.wikipedia.org/wiki/%D0%AE%D0%B7%D0%B0%D0%B1%D0%B8%D0%BB%D0%B8%D1%82%D0%B8">наиболее удобные</a> решения подачи информации, а также занимаются <a class="mw-redirect" title="Оформление" href="http://ru.wikipedia.org/wiki/%D0%9E%D1%84%D0%BE%D1%80%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5">художественным оформлением</a> веб-проекта. В результате пересечения двух отраслей человеческой деятельности грамотный веб-дизайнер должен быть знаком с последними <a class="new" title="Веб-технологии (страница отсутствует)" href="http://ru.wikipedia.org/w/index.php?title=%D0%92%D0%B5%D0%B1-%D1%82%D0%B5%D1%85%D0%BD%D0%BE%D0%BB%D0%BE%D0%B3%D0%B8%D0%B8&amp;action=edit&amp;redlink=1">веб-технологиями</a> и обладать соответствующими художественными качествами. Большую часть специалистов, работающих в области дизайна, обычно концентрирует в себе такое творческое образование как <a class="new" title="Дизайн студия (страница отсутствует)" href="http://ru.wikipedia.org/w/index.php?title=%D0%94%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD_%D1%81%D1%82%D1%83%D0%B4%D0%B8%D1%8F&amp;action=edit&amp;redlink=1">студия дизайна</a>.</p>\r\n<p>Веб-дизайн — вид графического дизайна, направленный на разработку и оформление объектов информационной среды <a title="Интернет" href="http://ru.wikipedia.org/wiki/%D0%98%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82">интернета</a>, призванный обеспечить им высокие потребительские свойства и <a title="Эстетика" href="http://ru.wikipedia.org/wiki/%D0%AD%D1%81%D1%82%D0%B5%D1%82%D0%B8%D0%BA%D0%B0">эстетические</a> качества. Подобная трактовка отделяет веб-дизайн от <a title="Веб-программирование" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5">веб-программирования</a>, подчеркивает специфику предметной деятельности веб-дизайнера, позиционирует веб-дизайн как вид графического дизайна<sup id="cite_ref-1" class="reference"><a href="http://ru.wikipedia.org/wiki/%C2%E5%E1-%E4%E8%E7%E0%E9%ED#cite_note-1">[1]</a></sup>.</p>\r\n<p>В настоящее время услуги веб-дизайна предоставляют как специальные компании, так и частные лица (<a class="mw-redirect" title="Веб-дизайнер" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%B4%D0%B8%D0%B7%D0%B0%D0%B9%D0%BD%D0%B5%D1%80">веб-дизайнеры</a> или <a title="Веб-мастер" href="http://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%B1-%D0%BC%D0%B0%D1%81%D1%82%D0%B5%D1%80">веб-мастера</a>, являющиеся <a title="Фрилансер" href="http://ru.wikipedia.org/wiki/%D0%A4%D1%80%D0%B8%D0%BB%D0%B0%D0%BD%D1%81%D0%B5%D1%80">фрилансерами</a>).</p>\r\n<p>Веб-дизайнер — сравнительно молодая <a title="Профессия" href="http://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D1%8F">профессия</a>, и <a title="Профессиональное образование" href="http://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%BE%D1%84%D0%B5%D1%81%D1%81%D0%B8%D0%BE%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5_%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5">профессиональное образование</a> в области веб-дизайна в России пока не распространено. В связи с увеличением спроса на представительство в Сети растёт и спрос на дизайн <a title="Сайт" href="http://ru.wikipedia.org/wiki/%D0%A1%D0%B0%D0%B9%D1%82">сайтов</a>, увеличивается количество веб-дизайнеров.</p>\r\n<h2>Содержание</h2>', '', NULL, NULL, NULL, '', '2014-03-18 11:00:00', 754, '', 0, '0000-00-00 00:00:00', '2014-03-18 11:01:40', 754, '2014-03-18 11:00:00', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(6, 'Интернет-магазин', 'internet-magazin', 4, 1, '', '', NULL, NULL, NULL, '', '2014-03-11 17:30:31', 754, '', 0, '0000-00-00 00:00:00', '2014-03-11 17:31:36', 754, '2014-03-11 17:30:31', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 11, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(7, 'Копроративный сайт', 'koprorativnyj-sajt', 4, 1, '<p>Корпоративный сайт - это крупный информационный ресурс с большим количеством разделов.<br /><strong>Расширенная информация</strong><strong> обо всех услугах</strong>, юридические документы,  техническая информация и описания продукции, данные о компании и о ее филиалах, различные статьи и новости, все это и многое другое будет компактно размещено на корпоративном сайте. Мы наполним до 30 страниц вашими материалами.</p>\r\n<p dir="ltr"><strong>Структура сайта</strong><strong> и многоуровневое меню</strong> позволят посетителям легко ориентироваться в разделах и страницах большого сайта, а <strong>система поиска по словам</strong> поможет быстро найти необходимые документы и статьи. <strong>Слайдшоу </strong>позволит эффектно презентовать посетителям сайта преимущества вашей компании.</p>\r\n<p dir="ltr"><strong>Удобная и простая система управления сайтом</strong> (CMS) поможет вам легко добавлять<strong> неограниченное количество страниц</strong> в любой раздел сайта. <strong>Функция текстового редактора</strong> позволит размещать и редактировать тексты, изображения, таблицы и другие элементы на любой странице.</p>\r\n<p dir="ltr"><strong>Домен </strong>- адрес Вашего сайта, будет оформлен на вас. Вы сможете указывать его на визитных карточках и в рекламе.</p>\r\n<p dir="ltr"><strong><strong>Мы даем вам свободу выбора </strong></strong> и предоставляем все доступы к управлению сайтом и хостингом</p>', '', NULL, NULL, NULL, '', '2014-03-11 17:30:58', 754, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-03-11 17:30:58', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 9, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*');
INSERT INTO `m7bpc_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(8, 'Малый бизнес', 'malyj-biznes', 4, 1, '<p>Сарафанное радио – самый эффективный способ привлечения клиентов. Люди охотно покупают то, что рекомендуют им друзья и знакомые. Поэтому модуль <a class="article" href="http://www.fabricasaitov.ru/option/yashara/index.html">"Социальные кнопки"</a> устанавливается в каждую новость и фотографию сайта, основанного на пакете "Малый бизнес". Чтобы посетители рассказали о Вас в социальных сетях своим друзьям, "Малый бизнес" предлагает дополнительный модуль на выбор: <a class="foto" href="http://www.fabricasaitov.ru/option/foto/index.html">"Галерея"</a> или <a class="catalog" href="http://www.fabricasaitov.ru/option/catalog/index.html">"Каталог"</a>. Модуль "Галерея" – это удобный инструмент для демонстрации ваших сертификатов, портфолио или подборки любых фотографий. "Каталог" идеально подходит для размещения на сайте фотографий товаров и информации об их особенностях и стоимости. А посредством "Социальных кнопок" ваши фотографии и карточки товаров разойдутся по всей сети Интернет.</p>\r\n<p><span class="orange">Пакет "Малый бизнес"</span> - это идеальное решение для продвижения Вашего бизнеса в интернете. Дополнительные страницы для описания услуг и их преимуществ, актуальная информация, постоянная связь с клиентами, доступность интерфейса - гарантия конкурентоспособного сайта. Пакет "Малый бизнес" нацелен на эффективную работу сайта и на прибыль Вашей компании. Продвижение бизнеса в интернете, используя предложенные нами инструменты, дает Вам неоспоримое преимущество перед конкурентами.</p>\r\n<p><span class="orange">Пакет "Малый бизнес"</span> от Фабрики Сайтов - самое выгодное, простое и оптимальное решение для ведения Вашего бизнеса в интернете!</p>\r\n<p>Чем отличаются сайты, на которые пользователи заходят постоянно от тех, куда они больше не возвращаются? Ответ прост: наличием обновлений и удобством использования. Если с момента последнего захода пользователя, на Вашем сайте ничего не изменилось - вряд ли этот клиент на него еще вернется. А сложности при отправке заявки на услуги и неудобная навигация вынудят клиента покинуть сайт навсегда.</p>\r\n<p>Грамотно разработанный интерфейс пакета "Малый бизнес" позволяет пользователю с легкостью перемещаться по Вашему сайту, а с помощью модулей <a class="news" href="http://www.fabricasaitov.ru/option/news/index.html">"Новости"</a> и <a class="calendar" href="http://www.fabricasaitov.ru/option/eventcalendar/index.html">"Календарь событий"</a> клиент всегда будет в курсе последних новинок и предстоящих мероприятий Вашей компании.</p>\r\n<p>Удобство в использовании сайта и часто обновляемая информация - самый оптимальный и простой способ удержания клиентов.</p>\r\n<p>Одним из самых важных аспектов для развития любой компании является обратная связь с ее клиентами. Модуль <a class="feedback" href="http://www.fabricasaitov.ru/option/feedback/index.html">"Форма обратной связи"</a> поможет клиентам оставить заявку даже ночью, а Вам, узнать, довольны ли клиенты Вашим обслуживанием? Могут ли они оставить отзыв о Ваших услугах? Легко ли им заказать Ваши услуги? Узнав ответы на эти и другие вопросы, Вы сможете улучшить качество сервиса, дополнить перечень Ваших услуг и увеличить лояльность клиентов.</p>\r\n<p> </p>\r\n<p> </p>', '', NULL, NULL, NULL, '', '2014-03-11 17:31:20', 754, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-03-11 17:31:20', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 11, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(9, 'Официальный сайт', 'ofitsialnyj-sajt', 4, 1, '', '', NULL, NULL, NULL, '', '2014-03-11 17:32:38', 754, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-03-11 17:32:38', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 7, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', '{"robots":"","author":"","rights":"","xreference":""}', '', '', '*'),
(10, 'Сайт-визитка', 'sajt-vizitka', 4, 1, '<div class="aTxt">\r\n<p>Что такое <a href="http://allforjoomla.ru/info/61-joomla-vizitka">визитка</a> и зачем она нужна – все знаем хорошо. И как приятно получать, а тем более, дарить прекрасно выполненную визитку – тоже знаем. Визитку не вычурную и <a href="http://allforjoomla.ru/info/76-cvetovoe-oformlenie-sajjta">цветастую</a>, с массой неинтересных вам данных, а функциональную, краткую, с хорошим <a href="http://allforjoomla.ru/info/23-making-websites-design">дизайном</a>. Которую приятно подержать и хранить в визитнице. Визитка - на одной бумажной карточке небольшого размера.</p>\r\n<p>Функции сайта-визитки – вполне аналогичны. Только такой сайт представляет не обязательно физическое лицо, его должность. Чаще всего он представляет лицо юридическое (компанию, организацию), его деятельность и его возможности. На этом сайте приятно находиться, его хочется добавить в «Избранные». Сайт-визитка - не обязательно на одной веб-странице небольшого размера.</p>\r\n<p align="center"><img src="http://allforjoomla.ru/images/sait-vizitka.jpg" alt="сайт-визитка" /></p>\r\n<p>Сайт-визитка представляет владельца с различной стороны: род занятий, имеющиеся успехи и достижения, достойное резюме, необходимая посетителям контактная информация со схемой проезда, необходимые для партнерства реквизиты. Без малофункциональной, плохо загружаемой графики. Он может быть простого или расширенного, представительского типа (портфолио, отзывов и т.д.). Статическим или динамическим, открытым или закрытым (по инвайту, приглашению владельца). Это мини-презентация владельца визитки. Важный элемент имиджа.</p>\r\n<p>Сайт-визитку иногда отождествляют с промо-сайтом, что в корне неправильно: промо-сайт разрабатывается для представления, точнее, продвижения конкретного вида товара или услуги, марки с рекламными, бонусными акциями. Еще «хуже» отождествлять сайт-визитку с «заглушкой» - сайтом (страницей) устанавливаемой временно на купленный домен и <a href="http://allforjoomla.ru/info/33-joomla-hosting">хостинг</a>, например, для почты.</p>\r\n<div class="headr hgrey">\r\n<h2>В каких случайх нужен сайт-визитка?</h2>\r\n</div>\r\n<p>Ваш сайт-визитка вам обязательно поможет, если перед вами стоит проблема:</p>\r\n<ul class="arrow2">\r\n<li>оперативно запустить сайт, например, сайт выставки, семинара, просто важного доклада;</li>\r\n<li>ограниченного бюджета на ресурс;</li>\r\n<li>«<a href="http://allforjoomla.ru/info/86-osobennosti-nagruzochnogo-testirovanija-dlja-joomla">тестирования</a>» <a href="http://allforjoomla.ru/info/130-opredeljaem-celevuju-auditoriju">целевой аудитории</a>, например, маркетингового, до разработки более сложного ресурса (портала, многофункционального сайта);</li>\r\n<li>упрощения, улучшения и усиления работы с целевой аудиторией;</li>\r\n<li><a href="http://allforjoomla.ru/info/48-search-in-joomla">поиска</a> «пристанища» для сайтов-визиток, например, промо-сайтов;</li>\r\n<li>поискового продвижения и сбора <a href="http://allforjoomla.ru/info/304-veb-analitika">веб-аналитики</a>.</li>\r\n</ul>\r\n<div class="headr hgrey">\r\n<h2>Особенности сайта-визитки</h2>\r\n</div>\r\n<p>Во-первых, такой сайт лучше всего походит для начинающих свою деятельность в интернет. Особенно для физических лиц, собирающихся вести частную практику. Для малого и даже для среднего бизнеса. Да и крупным компаниям такой ресурс не помешает. Но при условии, что они не будут увлекаться объемом представляемой информации. Особенно, давая повод клиентам сказать или подумать: «стоило так много выкладывать на сайте, чтобы рассказать о таких малых достижениях и предложениях». Достаточно крупной компании разработать сайт-визитку по конкретному виду товаров или услуг или комплекс таких сайтов.</p>\r\n<p>Во-вторых, на сайте-визитке нужно обеспечить эффективную <a href="http://allforjoomla.ru/info/310-modul-obratnoj-svjazi-joomla">обратную связь</a>, возможность оперативного ответа на вопросы посетителей. Ведь на таком сайте случайных посетителей практически не бывает (они практически не задерживаются). Их всех необходимо рассматривать как потенциальных клиентов. Уметь дорожить их вниманием.</p>\r\n<p align="center"><img src="http://allforjoomla.ru/images/sait-vizitka-2.jpg" alt="сайт-визитка" /></p>\r\n<p>В-третьих, такой сайт простой и легкий, дружественный и вам не нужен специальный штат для его обслуживания, поддержки. Он легко управляемый. Его можно легко обновлять и функционально расширять, добавляя дополнительные разделы самому, без специальных знаний и умений, навыков.</p>\r\n<p>В-четвертых, на нем можно осуществлять самому же и обычную рекламу, сэкономив средства, как на обычных бумажных рекламных буклетах и проспектах, так и на заказной рекламе самого интернет-сайта. А если «повезет» с раскруткой, наоборот, заработав на рекламе сторонней, продажами рекламных мест под <a href="http://allforjoomla.ru/info/103-banner-sposob-prodvizhenija-sajjta">баннеры</a> и ссылки. К тому же, получив самому дополнительные ссылки.</p>\r\n<ins style="display: inline-table; border: none; height: 90px; margin: 0; padding: 0; position: relative; visibility: visible; width: 728px; background-color: transparent;"><ins id="aswift_0_anchor" style="display: block; border: none; height: 90px; margin: 0; padding: 0; position: relative; visibility: visible; width: 728px; background-color: transparent;"></ins></ins>\r\n<p>Собственно говоря, сам сайт-визитка – это вид качественной рекламы. Раскрученный под определенный товар или определенную услугу, такой сайт может модифицироваться под другой товар (другую услугу) и работать на него.</p>\r\n<div class="headr hgrey">\r\n<h2>Что нужно для разработки сайта-визитки?</h2>\r\n</div>\r\n<p>Для того чтобы разработать сайт-визитку обычно достаточна следующая информация:</p>\r\n<ul class="arrow2">\r\n<li>структура, состав, объем целевой аудитории, анализ аналогичных <a href="http://allforjoomla.ru/info/89-tematika-sajta">тематических</a> сайтов-визиток;</li>\r\n<li>общая информация о владельце – история, деятельность (товары и услуги) и другая необходимая для целевой аудитории информация (реклама, бонусы, акции и т.п.);</li>\r\n<li>тип выбираемого стилевого решения и дизайна (например, подойдет минималистический или американский стиль, бизнес-стиль), особое внимание на размеры страниц (желательно, чтобы их не нужно было бы прокручивать, «хотя бы долго»);</li>\r\n<li>требования, пожелания к сайту, его особенности, оформляемые в виде <a href="http://allforjoomla.ru/info/91-o-polze-razrabotki-tz">технического задания</a> (ТЗ) – не думайте, что простой вид сайта-визитки избавляет вас от необходимости иметь подробное ТЗ, совсем наоборот!</li>\r\n</ul>\r\n<p>ТЗ должно акцентировать строгую функциональность, детальность: «функциональность, детальность и надежность лишней не может быть».</p>\r\n<div class="headr hgrey">\r\n<h2>Структура сайта-визитки</h2>\r\n</div>\r\n<p>Сайт-визитка обычно имеет следующие обязательные разделы: «Главная», «Контакты», «Описание представляемого товара или услуги», «Помощь», «Обратная связь».</p>\r\n<p>К этим разделам часто «прикрепляют» разделы, расширяющие функциональные возможности ресурса: «Новости» (<a href="http://allforjoomla.ru/info/49-rss-in-joomla">RSS</a>), «Прайс-лист», «Фотогалерея», «Портфолио», «Каталог», «Статистика», «<a href="http://allforjoomla.ru/info/164-gostevaja-kniga-dlja-gostejj-li">Гостевая книга</a>».</p>\r\n<p align="center"><img src="http://allforjoomla.ru/images/sait-vizitka-3.jpg" alt="сайт-визитка" /></p>\r\n<p>Не стоит забывать и про обеспечение связи с <a href="http://allforjoomla.ru/info/174-bazy-dannykh-dlja-sajjtov">базой данных</a> (возможно, впоследствии вам без этого не обойтись).</p>\r\n<p>Число страниц сайта-визитки обычно не более десятка. Это малостраничный, но функциональный сайт, создаваемый за достаточно небольшие деньги и в короткий срок (так и тянется рука дописать: «малым штатом», но, увы! – в разработке такого сайта участвуют те же специалисты, что и для многостраничного, многофункционального, сложно структурированного сайта; обойтись, например, без дизайнера или оптимизатора – не получится, и не пытайтесь).</p>\r\n<p>Дизайн сайта должен быть оригинальным, не <a href="http://allforjoomla.ru/info/37-choosing-joomla-template">шаблонным</a> (по возможности), без излишней графики, а тем более, анимации. Это не значит, что графика и видео – «персоны нон гранта» на визитке, часто одна фотография со стенда компании говорит больше, чем описание ее услуг и деятельности. Графика – минимальная по объему, в частности, вполне достаточно в объеме 20-200 килобайт. Этому можно научиться у сайтов-визиток ведущих автокомпаний и турагентств, например. Они в этом – «доки». Дизайн – не кричащий и не пестрый.</p>\r\n<p>Важным элементом представительности и имиджа являются логотип, фирменный стиль, фирменные <a href="http://allforjoomla.ru/info/18-dobaviti-shrift-v-nicetext">шрифты</a>. Разумеется, и «фирменный» оптимизированный <a href="http://allforjoomla.ru/info/75-kontent-na-zakaz">контент</a>. Все они должны соответствовать характеру владельца сайта и передавать его настрой - наклоном, размером, цветовой гаммой, фоном, насыщенностью, строгостью и легкостью линий. Здесь можно экспериментировать (шрифты, логотипы, цвета – легко заменяемы).</p>\r\n<p>Несмотря на простую структуру сайта-визитки, необходимо тщательно определить минимальный набор его элементов: от логотипа – до текста, от шапки – до боковых элементов.</p>\r\n<p>Нестандартные шрифты воспринимаются как показатель успешности и самостоятельности владельца. Это часто справедливо, но не делайте самоцелью (сейчас свободно распространяются многие тысячи хороших шрифтов). Буквы шрифта различаются своим размером, наклоном, цветом, своей насыщенностью.</p>\r\n<p>Проектирование дизайна и, особенно, контента сайта-визитки следует осуществлять по ТЗ. Оно позволит оперативно и полностью решить возникающие вопросы веб-дизайнера, программиста, контент-менеджера, заказника и др. Необходимо «пройтись» по ТЗ с этими специалистами до начала работ. Детализации много не бывает. Это только повысит надежность и самовосстанавливаемость сайта.</p>\r\n<div class="headr hgrey">\r\n<h2>Как выбрать CMS для сайта-визитки?</h2>\r\n</div>\r\n<p>Многие предпочитают пользоваться «самописным» <a href="http://allforjoomla.ru/info/21-what-is-website-engine">движком</a> – для того, чтобы показать свою индивидуальность, «мощность» компании. Решение, в целом, неплохое. Если только есть лишние средства, а особенно, лишнее время для этого.</p>\r\n<p>Но есть много CMS (Систем Управления Сайтами), подходящих для этих целей отлично – Джумла, Битрикс, ВордПресс и другие. Они избавят вас от необходимости искать «дефицитного» веб-специалиста, если возникнут какие-то неполадки на сайте. Используя CMS можно разработать ресурс и самому, без специальных знаний по разработке сайтов. К тому же использование CMS и выбранного дизайна важно для расширения сайта-визитки до многофункционального сайта и, более того, стоимость сайта-визитки засчитывается многими веб-студиями при разработке у них же такого сайта.</p>\r\n<p>На самом деле, выбирать CMS и все остальное необходимо учитывая цели сайта: рекламный, просветительский, сервисный или коммерческий. Например, если нужен «мощный» контент на сайте-визитке, хорошо подойдет система Joomla!, позволяющая создать его. Для коммерческого сайта или промо-сайта (где важно наличие удобных стандартных простых <a href="http://allforjoomla.ru/info/81-platnye-i-besplatnye-shablony">шаблонов</a>) подойдет WordPress.</p>\r\n<div class="headr hgrey">\r\n<h2>Что ожидать (не ожидать) от сайта-визитки?</h2>\r\n</div>\r\n<p><strong>Что можно ожидать от сайта-визитки</strong>? – Оперативной, облегченной, структурированной работы с уменьшением рутинной работы, упрощением бизнес-процессов, улучшением обратных связей и т.д.</p>\r\n<p><strong>Чего не ожидать от сайта-визитки</strong>? – Моментального эффекта, его измерения в деньгах, резкого роста клиентов (конверсии), большой экономии и т.д.</p>\r\n<p>Какого бы типа сайт вы не разрабатывали, под какие бы функции его не проектировали, нельзя забывать о имиджевой функции сайта-визитки.</p>\r\n<p>За чем все же необходимо будет проследить – так это за обеспечением кроссбраузерности (правильного отображения в разных браузерах и версиях).</p>\r\n<p>Отличного сайта-визитки вам – для отличного бизнеса и имиджа.</p>\r\n</div>\r\n<div class="socials"> </div>', '', NULL, NULL, '[{"id":"1","value":""},{"id":"2","value":""},{"id":"3","value":""}]', '   ', '2014-03-11 00:00:00', 754, '', 754, '2014-03-23 07:56:10', '2014-03-22 18:57:53', 754, '2014-03-11 00:00:00', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 31, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"0","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_rating`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_tags`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_users`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_users` (
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
-- Дамп данных таблицы `m7bpc_k2_users`
--

INSERT INTO `m7bpc_k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 754, 'Super User', 'm', '', NULL, NULL, 1, '', '94.28.223.79', 'node-79-223-28-94.domolink.tula.net', '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `m7bpc_k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_languages`
--

CREATE TABLE IF NOT EXISTS `m7bpc_languages` (
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
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `m7bpc_languages`
--

INSERT INTO `m7bpc_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_menu`
--

CREATE TABLE IF NOT EXISTS `m7bpc_menu` (
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
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Дамп данных таблицы `m7bpc_menu`
--

INSERT INTO `m7bpc_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 145, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 41, 46, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 42, 43, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 44, 45, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 47, 52, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 48, 49, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 50, 51, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 53, 58, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 54, 55, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 56, 57, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 59, 60, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 61, 62, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 63, 68, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 64, 65, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 66, 67, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 69, 70, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 71, 72, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 73, 74, 0, '', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=article&id=14', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"0","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"87","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 75, 76, 0, '*', 0),
(127, 'mainmenu', 'ИнтелВеб', 'o-nas', '', 'o-nas', 'index.php?option=com_content&view=article&id=15', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"91","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 11, 12, 1, '*', 0),
(103, 'main', 'COM_ROKCANDY', 'com-rokcandy', '', 'com-rokcandy', 'index.php?option=com_rokcandy', 'component', 0, 1, 1, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/rokcandy-icon-16.png', 0, '', 79, 84, 0, '', 1),
(104, 'main', 'COM_ROKCANDY_SUBMENU_MACROS', 'com-rokcandy-submenu-macros', '', 'com-rokcandy/com-rokcandy-submenu-macros', 'index.php?option=com_rokcandy', 'component', 0, 103, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/rokcandy-icon-16.png', 0, '', 80, 81, 0, '', 1),
(105, 'main', 'COM_ROKCANDY_SUBMENU_CATEGORIES', 'com-rokcandy-submenu-categories', '', 'com-rokcandy/com-rokcandy-submenu-categories', 'index.php?option=com_categories&extension=com_rokcandy', 'component', 0, 103, 2, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rokcandy/assets/icon-16-category.png', 0, '', 82, 83, 0, '', 1),
(107, 'mainmenu', 'Услуги', 'uslugi', '', 'uslugi', 'index.php?option=com_content&view=article&id=1', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 37, 40, 0, '*', 0),
(108, 'mainmenu', 'Портфолио', 'portfolio', '', 'portfolio', 'index.php?option=com_content&view=article&id=3', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 13, 14, 0, '*', 0),
(109, 'mainmenu', 'Разработка', 'sozdanie-sajtov', '', 'sozdanie-sajtov', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 15, 28, 0, '*', 0),
(110, 'mainmenu', 'Сайт-визитка', 'sajt-vizitka', '', 'sozdanie-sajtov/sajt-vizitka', 'index.php?option=com_content&view=article&id=10', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 16, 17, 0, '*', 0),
(111, 'mainmenu', 'Малый бизнес', 'malyj-biznes', '', 'sozdanie-sajtov/malyj-biznes', 'index.php?option=com_content&view=article&id=8', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 18, 19, 0, '*', 0),
(112, 'mainmenu', 'Официальный сайт', 'ofitsialnyj-sajt', '', 'sozdanie-sajtov/ofitsialnyj-sajt', 'index.php?option=com_content&view=article&id=9', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 20, 21, 0, '*', 0),
(113, 'mainmenu', 'Корпоративный сайт', 'korporativnyj-sajt', '', 'sozdanie-sajtov/korporativnyj-sajt', 'index.php?option=com_content&view=article&id=7', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 22, 23, 0, '*', 0),
(114, 'mainmenu', 'Интернет-магазин', 'internet-magazin', '', 'sozdanie-sajtov/internet-magazin', 'index.php?option=com_content&view=article&id=6', 'component', 1, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 24, 25, 0, '*', 0),
(115, 'mainmenu', 'Сопровождение', 'dorabotka-i-optimizatsiya', '', 'dorabotka-i-optimizatsiya', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 29, 30, 0, '*', 0),
(116, 'mainmenu', 'Продвижение', 'seo-prodvizhenie', '', 'seo-prodvizhenie', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 31, 32, 0, '*', 0),
(119, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 77, 78, 0, '*', 1),
(120, 'left', 'Сайт-визитка', 'sajt-vizitka', '', 'sajt-vizitka', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 85, 86, 0, '*', 0),
(121, 'left', 'Малый бизнес', 'malyj-biznes', '', 'malyj-biznes', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 87, 88, 0, '*', 0),
(122, 'left', 'Официальный сайт', 'ofitsialnyj-sajt', '', 'ofitsialnyj-sajt', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 89, 90, 0, '*', 0),
(123, 'left', 'Корпоративный сайт', 'korporativnyj-sajt', '', 'korporativnyj-sajt', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 91, 92, 0, '*', 0),
(124, 'left', 'Интернет-магазин', 'internet-magazin', '', 'internet-magazin', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"88","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 93, 94, 0, '*', 0),
(125, 'mainmenu', 'Оптимизация', 'optimizatsiya', '', 'uslugi/optimizatsiya', 'index.php?option=com_content&view=article&id=4', 'component', -2, 107, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"91","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 38, 39, 0, '*', 0),
(126, 'mainmenu', 'Веб-дизайн', 'veb-dizajn', '', 'veb-dizajn', 'index.php?option=com_content&view=article&id=13', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"91","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 33, 34, 0, '*', 0),
(128, 'mainmenu', 'Контакты', 'kontakty', '', 'kontakty', 'index.php?option=com_content&view=article&id=20', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"94","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 35, 36, 0, '*', 0),
(129, 'main', 'BreezingForms', 'BreezingForms', '', 'BreezingForms', 'index.php?option=com_breezingforms', 'component', 0, 1, 1, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 95, 110, 0, '', 1),
(130, 'main', 'COM_BREEZINGFORMS_MANAGE_RECORDS', 'Manage Records', '', 'BreezingForms/Manage Records', 'index.php?option=com_breezingforms&act=managerecs', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/checkin.png', 0, '', 96, 97, 0, '', 1),
(131, 'main', 'COM_BREEZINGFORMS_MANAGE_FORMS', 'Manage Forms', '', 'BreezingForms/Manage Forms', 'index.php?option=com_breezingforms&act=manageforms', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/content.png', 0, '', 98, 99, 0, '', 1),
(132, 'main', 'COM_BREEZINGFORMS_MANAGE_SCRIPTS', 'Manage Scripts', '', 'BreezingForms/Manage Scripts', 'index.php?option=com_breezingforms&act=managescripts', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '', 100, 101, 0, '', 1),
(133, 'main', 'COM_BREEZINGFORMS_MANAGE_PIECES', 'Manage Pieces', '', 'BreezingForms/Manage Pieces', 'index.php?option=com_breezingforms&act=managepieces', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '', 102, 103, 0, '', 1),
(134, 'main', 'COM_BREEZINGFORMS_INTEGRATOR', 'Integrator', '', 'BreezingForms/Integrator', 'index.php?option=com_breezingforms&act=integrate', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/controlpanel.png', 0, '', 104, 105, 0, '', 1),
(135, 'main', 'COM_BREEZINGFORMS_MANAGE_BACKEND_MENUS', 'Manage Backend Menus', '', 'BreezingForms/Manage Backend Menus', 'index.php?option=com_breezingforms&act=managemenus', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/mainmenu.png', 0, '', 106, 107, 0, '', 1),
(136, 'main', 'COM_BREEZINGFORMS_CONFIGURATION', 'Configuration', '', 'BreezingForms/Configuration', 'index.php?option=com_breezingforms&act=configuration', 'component', 0, 129, 2, 10044, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_breezingforms/images/js/ThemeOffice/config.png', 0, '', 108, 109, 0, '', 1),
(137, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10048, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 111, 132, 0, '', 1),
(138, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 112, 113, 0, '', 1),
(139, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 114, 115, 0, '', 1),
(140, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 116, 117, 0, '', 1),
(141, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 118, 119, 0, '', 1),
(142, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 120, 121, 0, '', 1),
(143, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 122, 123, 0, '', 1),
(144, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 124, 125, 0, '', 1),
(145, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 126, 127, 0, '', 1),
(146, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 128, 129, 0, '', 1),
(147, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 137, 2, 10048, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 130, 131, 0, '', 1),
(148, 'left', 'тест', 'test', '', 'test', 'index.php?option=com_k2&view=item&layout=item&id=10', 'component', 1, 1, 1, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"112","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 133, 134, 0, '*', 0),
(149, 'mainmenu', 'test1', 'test1', '', 'test1', 'index.php?option=com_k2&view=item&layout=item&id=10', 'component', -2, 1, 1, 10048, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"112","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 135, 136, 0, '*', 0),
(150, 'main', 'COM_CHRONOFORMS5', 'com-chronoforms5', '', 'com-chronoforms5', 'index.php?option=com_chronoforms5', 'component', 0, 1, 1, 10063, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_chronoforms5/CF.png', 0, '', 137, 142, 0, '', 1),
(151, 'main', 'COM_CHRONOFORMS5', 'com-chronoforms5', '', 'com-chronoforms5/com-chronoforms5', 'index.php?option=com_chronoforms5', 'component', 0, 150, 2, 10063, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 138, 139, 0, '', 1),
(152, 'main', 'COM_CHRONOFORMS5_VALIDATE', 'com-chronoforms5-validate', '', 'com-chronoforms5/com-chronoforms5-validate', 'index.php?option=com_chronoforms5&act=validateinstall', 'component', 0, 150, 2, 10063, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 140, 141, 0, '', 1),
(153, 'mainmenu', 'офиц', 'ofits', '', 'sozdanie-sajtov/ofits', 'index.php?option=com_content&view=article&id=17', 'component', -2, 109, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_item_subtext":"","dropdown_customimage":"","dropdown_customicon":"","dropdown_customclass":"","dropdown_columns":"1","dropdown_distribution":"even","dropdown_manual_distribution":"","dropdown_dropdown_width":"","dropdown_column_widths":"","dropdown_children_group":"0","dropdown_children_type":"menuitems","dropdown_modules":"112","dropdown_module_positions":"","splitmenu_item_subtext":"","splitmenu_customimage":"","splitmenu_customicon":"","splitmenu_customclass":""}', 26, 27, 0, '*', 0),
(154, 'main', 'COM_XMAP_TITLE', 'com-xmap-title', '', 'com-xmap-title', 'index.php?option=com_xmap', 'component', 0, 1, 1, 10065, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_xmap/images/xmap-favicon.png', 0, '', 143, 144, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_menu_types`
--

CREATE TABLE IF NOT EXISTS `m7bpc_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `m7bpc_menu_types`
--

INSERT INTO `m7bpc_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'left', 'leftmenu', 'site menu');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_messages`
--

CREATE TABLE IF NOT EXISTS `m7bpc_messages` (
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

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `m7bpc_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_modules`
--

CREATE TABLE IF NOT EXISTS `m7bpc_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- Дамп данных таблицы `m7bpc_modules`
--

INSERT INTO `m7bpc_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'RokNavMenu', '', '', 1, 'position-1', 754, '2014-03-25 20:04:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roknavmenu', 1, 1, '{"menutype":"mainmenu","limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","tag_id":"","class_sfx":"","window_open":"","moduleclass_sfx":"","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 64, 'Поиск по сайту', '', '', 1, 'copyright-a', 754, '2014-03-23 09:57:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_rokajaxsearch', 1, 1, '{"search_page":"index.php?option=com_search&view=search&tmpl=component","adv_search_page":"index.php?option=com_search&view=search","include_css":"1","theme":"blue","searchphrase":"any","ordering":"newest","limit":"10","perpage":"3","websearch":"0","blogsearch":"0","imagesearch":"0","videosearch":"0","websearch_api":"","show_pagination":"1","safesearch":"MODERATE","image_size":"MEDIUM","show_estimated":"1","hide_divs":"","include_link":"1","show_description":"1","include_category":"1","show_readmore":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 57, 'Сайты, которые мы делаем', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"features","joomla_articles":{"1":{"root":{"article":"10"}},"2":{"root":{"article":"8"}},"3":{"root":{"article":"9"}},"4":{"root":{"article":"7"}},"5":{"root":{"article":"6"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","display_limit":"\\u221e","features_themes":"showcase","features_show_title":"1","features_show_article_text":"1","features_previews_length":"20","features_strip_html_tags":"1","features_show_arrows":"show","features_show_pagination":"1","features_animation":"crossfade","features_autoplay":"1","features_autoplay_delay":"5","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","features_title_default":"title","features_description_default":"primary","features_image_default":"primary","features_image_default_custom":"","features_link_default":"primary","features_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(90, 58, 'Сайты, которые мы делаем (копия)', '', '', 1, 'showcase-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"features","joomla_articles":{"1":{"root":{"article":"10"}},"2":{"root":{"article":"8"}},"3":{"root":{"article":"9"}},"4":{"root":{"article":"7"}},"5":{"root":{"article":"6"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","display_limit":"\\u221e","features_themes":"showcase","features_show_title":"1","features_show_article_text":"1","features_previews_length":"10","features_strip_html_tags":"1","features_show_arrows":"show","features_show_pagination":"1","features_animation":"crossfade","features_autoplay":"1","features_autoplay_delay":"5","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","features_title_default":"title","features_description_default":"primary","features_image_default":"primary","features_image_default_custom":"","features_link_default":"primary","features_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(91, 59, 'Услуги, которые мы оказываем', '', '', 1, 'feature-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"simple","layout":"mosaic","simple_sort":"manual","mosaic_themes":"default","display_limit":"\\u221e","mosaic_columns":"3","mosaic_previews_length":"20","mosaic_filter_tags":"","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","mosaic_article_details":"0","mosaic_animations":["fade","scale","rotate"],"mosaic_ordering":["default","title","date","random"],"mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(92, 60, 'Услуги, которые мы оказываем', '', '', 1, 'mainbottom-a', 754, '2014-03-25 20:05:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"mosaic","joomla_articles":{"1":{"root":{"article":"2"}},"2":{"root":{"article":"4"}},"3":{"root":{"article":"5"}},"4":{"root":{"article":"12"}},"5":{"root":{"article":"13"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","mosaic_themes":"default","display_limit":"\\u221e","mosaic_columns":"4","mosaic_previews_length":"20","mosaic_filter_tags":"","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","mosaic_article_details":"0","mosaic_animations":["fade","scale","rotate"],"mosaic_ordering":["default","title","date","random"],"mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(93, 61, 'Левое меню', '', '', 1, 'sidebar-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"left","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 63, 'Закажите прямо сейчас', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roknavmenu', 1, 1, '{"menutype":"left","limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","theme":"gantry-splitmenu","custom_layout":"default.php","custom_formatter":"default.php","roknavmenu_fusion_load_css":"1","roknavmenu_fusion_enable_js":"0","roknavmenu_fusion_opacity":"1","roknavmenu_fusion_effect":"slidefade","roknavmenu_fusion_hidedelay":"500","roknavmenu_fusion_menu_animation":"Quad.easeOut","roknavmenu_fusion_menu_duration":"400","roknavmenu_fusion_pill":"0","roknavmenu_fusion_pill_animation":"Back.easeOut","roknavmenu_fusion_pill_duration":"400","roknavmenu_fusion_centeredOffset":"0","roknavmenu_fusion_tweakInitial_x":"0","roknavmenu_fusion_tweakInitial_y":"0","roknavmenu_fusion_tweakSubsequent_x":"0","roknavmenu_fusion_tweakSubsequent_y":"0","roknavmenu_fusion_enable_current_id":"0","roknavmenu_splitmenu_enable_current_id":"1","tag_id":"","class_sfx":"","window_open":"","moduleclass_sfx":"","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 65, 'Хостингер - отличный хостинг', '', '<p>{source}</p>\r\n<p>&lt;a href="http://api.hostinger.ru/redir/600620" target="_blank"&gt;&lt;img src="http://www.hostinger.ru/banners/ru/hostinger-300x250-1.gif" alt="Бесплатный Хостинг" border="0" width="300" height="250" /&gt;&lt;/a&gt;</p>\r\n<p>{/source}</p>', 3, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 69, 'Веб-дизайн, который мы предлагаем', '', '', 1, 'maintop-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"simple","layout":"strips","simple_sort":"manual","strips_themes":"default","display_limit":"\\u221e","strips_previews_length":"20","strips_strip_html_tags":"1","strips_items_per_page":"5","strips_items_per_row":"5","strips_show_arrows":"show","strips_show_pagination":"1","strips_animation":"fadeDelay","strips_autoplay":"1","strips_autoplay_delay":"5","strips_resize_enable":"0","strips_resize_width":"0","strips_resize_height":"0","strips_title_default":"title","strips_description_default":"primary","strips_image_default":"primary","strips_image_default_custom":"","strips_link_default":"primary","strips_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(97, 70, 'Соц кнопки', '', '<p>{source}</p>\r\n<p>&lt;script type="text/javascript" src="//yandex.st/share/share.js"<br />charset="utf-8"&gt;&lt;/script&gt;<br />&lt;div class="yashare-auto-init" data-yashareL10n="ru"<br /> data-yashareQuickServices="vkontakte,facebook,twitter,odnoklassniki,moimir" data-yashareTheme="counter"<br /><br />&gt;&lt;/div&gt; <br /><br />{/source}</p>', 1, 'sidebar-b', 754, '2014-06-21 19:40:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 75, 'Нужен сайт? Позвоните прямо сейчас!', '', '', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"mosaic","joomla_articles":{"1":{"root":{"article":"16"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","mosaic_themes":"default","display_limit":"\\u221e","mosaic_columns":"3","mosaic_previews_length":"20","mosaic_filter_tags":"","mosaic_strip_html_tags":"1","mosaic_items_per_page":"1","mosaic_article_details":"0","mosaic_animations":["fade","scale","rotate"],"mosaic_ordering":["default","title","date","random"],"mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(98, 72, 'Контакты', '', '', 0, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 73, 'Нужен сайт? Позвоните прямо сейчас!', '', '', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 0, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"features","joomla_articles":{"1":{"root":{"article":"16"}}},"joomla_sort":"automatic","joomla_sort_manual_append":"after","display_limit":"\\u221e","features_themes":"slideshow","features_show_title":"1","features_show_article_text":"1","features_previews_length":"\\u221e","features_strip_html_tags":"1","features_show_arrows":"show","features_show_pagination":"1","features_animation":"crossfade","features_autoplay":"1","features_autoplay_delay":"5","features_resize_enable":"0","features_resize_width":"0","features_resize_height":"0","features_title_default":"title","features_description_default":"primary","features_image_default":"primary","features_image_default_custom":"","features_link_default":"primary","features_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(101, 76, 'Звоните нам', '', '<h5>Нужен <em>сайт</em>?</h5>\r\n<h5><em>Позвоните</em> нам прямо сейчас!</h5>\r\n<h5>+79105585383- Новомосковск</h5>\r\n<p>{source}&lt;a class="readon" href="http://www.intelweb-nsk.ru/index.php/kontakty" &gt; Подробнее &lt;/a&gt;{/source}</p>', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 94, 'Заказ сайта', '', '', 4, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_chronoforms5', 1, 1, '{"cache":"0","chronoform":"\\u0417\\u0430\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 77, 'ололол', '', '<div class="container">\r\n<div class="line number1 index0 alt2"><code class="php plain">{source}&lt;select&gt;&lt;option&gt;Выберите из списка&lt;/option&gt;</code></div>\r\n<div class="line number2 index1 alt1"><code class="php plain">&lt;option&gt;Option&lt;/option&gt;</code></div>\r\n<div class="line number3 index2 alt2"><code class="php plain">&lt;option&gt;Textarea&lt;/option&gt;</code></div>\r\n<div class="line number4 index3 alt1"><code class="php plain">&lt;option&gt;Label&lt;/option&gt;</code></div>\r\n<div class="line number5 index4 alt2"><code class="php plain">&lt;option&gt;Fieldset&lt;/option&gt;&lt;</code></div>\r\n<div class="line number6 index5 alt1"><code class="php plain">&lt;option&gt;Legend&lt;/option&gt;&lt;/select&gt;</code></div>\r\n<div class="line number6 index5 alt1"><code class="php plain">{/source}</code></div>\r\n</div>', 1, 'top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 79, 'BreezingForms', '', '', 1, 'maintop-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breezingforms', 1, 0, '{"ff_mod_name":"\\u041e\\u0441\\u0442\\u0430\\u0432\\u044c\\u0442\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 80, 'Связаться с нами', '', '', 4, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breezingforms', 1, 1, '{"ff_mod_name":"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"1","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 81, 'dsfsf', '', '', 0, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breezingforms', 1, 1, '{"ff_mod_name":"form_order","ff_mod_page":"1","ff_mod_editable":"0","ff_mod_editable_override":"0","ff_mod_frame":"0","ff_mod_border":"0","ff_mod_align":"1","ff_mod_left":"0","ff_mod_top":"0","ff_mod_parprv":"","ff_mod_parpub":"","moduleclass_sfx":"","owncache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 82, 'Сайт-визитка', '', '', 0, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"mosaic","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(107, 83, 'Визитка', '', '', 1, 'maintop-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 0, '{"run_content_plugins":"onmodule","provider":"simple","layout":"mosaic","simple_sort":"manual","mosaic_themes":"default","display_limit":"\\u221e","mosaic_columns":"3","mosaic_previews_length":"40","mosaic_filter_tags":"","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","mosaic_article_details":"0","mosaic_animations":["fade","scale","rotate"],"mosaic_ordering":["default","title","date","random"],"mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(108, 85, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_comments', 1, 1, '', 0, '*'),
(109, 86, 'K2 Content', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_content', 1, 1, '', 0, '*'),
(110, 87, 'K2 Tools', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_tools', 1, 1, '', 0, '*'),
(111, 88, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_users', 1, 1, '', 0, '*'),
(112, 89, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_user', 1, 1, '', 0, '*'),
(113, 90, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(114, 91, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(115, 93, 'Заказ сайта', '', '<p>{source}</p>\r\n<p>&lt;div class="form-group gcore-form-row" id="form-row-2"&gt;&lt;label for="FIO" class="control-label gcore-label-left"&gt;ФИО&lt;/label&gt;<br />&lt;div class="gcore-input gcore-display-table" id="fin-FIO"&gt;&lt;input name="FIO" id="FIO" value="" placeholder="" maxlength="" size="" class="validate[&amp;#039;required&amp;#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="form-group gcore-form-row" id="form-row-4"&gt;&lt;label for="phone" class="control-label gcore-label-left"&gt;Телефон&lt;/label&gt;<br />&lt;div class="gcore-input gcore-display-table" id="fin-phone"&gt;&lt;input name="phone" id="phone" value="" placeholder="" maxlength="" size="" class="validate[&amp;#039;required&amp;#039;,&amp;#039;phone&amp;#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="form-group gcore-form-row" id="form-row-6"&gt;&lt;label for="email" class="control-label gcore-label-left"&gt;E-mail&lt;/label&gt;<br />&lt;div class="gcore-input gcore-display-table" id="fin-email"&gt;&lt;input name="email" id="email" value="" placeholder="" maxlength="" size="" class="validate[&amp;#039;required&amp;#039;,&amp;#039;email&amp;#039;] form-control A" title="" style="" data-inputmask="" data-load-state="" data-tooltip="" type="text" /&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="form-group gcore-form-row" id="form-row-7"&gt;&lt;label for="select" class="control-label gcore-label-left"&gt;Сайт&lt;/label&gt;<br />&lt;div class="gcore-input gcore-display-table" id="fin-select"&gt;&lt;select name="select" id="select" size="" class="validate[&amp;#039;required&amp;#039;] form-control A" title="" style="" data-load-state="" data-tooltip=""&gt;<br />&lt;option value=""&gt;Выберите тип&lt;/option&gt;<br />&lt;option value="1"&gt;Сайт-визитка&lt;/option&gt;<br />&lt;option value="2"&gt;Официальный сайт&lt;/option&gt;<br />&lt;option value="3"&gt;Малый бизнес&lt;/option&gt;<br />&lt;option value="4"&gt;Корпоративный сайт&lt;/option&gt;<br />&lt;option value="5"&gt;Интернет-магазин&lt;/option&gt;<br />&lt;/select&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class="form-group gcore-form-row" id="form-row-8"&gt;&lt;div class="gcore-input gcore-display-table" id="fin-button4"&gt;&lt;input name="button4" id="button4" type="submit" value="Отправить" class="form-control A" style="" data-load-state="" /&gt;&lt;/div&gt;&lt;/div&gt;</p>\r\n<p>{/source}</p>', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 96, 'Сайт-визитка', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 0, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"mosaic","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(118, 97, 'Сайт-визитка', '', '', 1, '', 754, '2014-03-23 10:00:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 0, '{"run_content_plugins":"onmodule","provider":"simple","layout":"mosaic","simple_sort":"manual","mosaic_themes":"default","display_limit":"\\u221e","mosaic_columns":"3","mosaic_previews_length":"20","mosaic_filter_tags":"","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","mosaic_article_details":"0","mosaic_animations":["fade","scale","rotate"],"mosaic_ordering":["default","title","date","random"],"mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(119, 98, 'Сайт-визитка 2', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"simple","layout":"strips","simple_sort":"manual","strips_themes":"default","display_limit":"\\u221e","strips_previews_length":"20","strips_strip_html_tags":"1","strips_items_per_page":"2","strips_items_per_row":"2","strips_show_arrows":"show","strips_show_pagination":"1","strips_animation":"fadeDelay","strips_autoplay":"0","strips_autoplay_delay":"5","strips_resize_enable":"0","strips_resize_width":"0","strips_resize_height":"0","strips_title_default":"title","strips_description_default":"primary","strips_image_default":"primary","strips_image_default_custom":"","strips_link_default":"primary","strips_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(120, 99, 'Сайт-визитка', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_roksprocket', 1, 1, '{"run_content_plugins":"onmodule","provider":"joomla","layout":"mosaic","joomla_articles":{"1":{"root":{"article":"11"}},"2":{"root":{"article":"19"}}},"joomla_sort":"manual","joomla_sort_manual_append":"after","mosaic_themes":"default","display_limit":"\\u221e","mosaic_columns":"3","mosaic_previews_length":"20","mosaic_filter_tags":"","mosaic_strip_html_tags":"1","mosaic_items_per_page":"5","mosaic_article_details":"0","mosaic_animations":["fade","scale","rotate"],"mosaic_ordering":["default","title","date","random"],"mosaic_resize_enable":"0","mosaic_resize_width":"0","mosaic_resize_height":"0","mosaic_title_default":"title","mosaic_description_default":"primary","mosaic_image_default":"primary","mosaic_image_default_custom":"","mosaic_link_default":"primary","mosaic_link_default_custom":"","cache":"0","moduleclass_sfx":"","module_cache":"1","cache_time":"900"}', 0, '*'),
(121, 104, 'футер', '', '', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 106, 'Онлайн консультант', '', '', 1, 'top-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_skype_status', 1, 1, '{"username":"lenneset","refreshInterval":60,"text":"\\u0417\\u0432\\u043e\\u043d\\u043e\\u043a \\u043f\\u043e Skype","textAfter":"","command":"call","imagesFolder":"modules\\/mod_skype_status\\/assets\\/images","loadingImage":"loading.gif","onlineImage":"online_button.png","offlineImage":"offline_button.png","awayImage":"away_button.png","busyImage":"busy_button.png","includejQuery":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h6","header_class":"","style":"0"}', 0, '*'),
(123, 107, 'Сообщение', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_chronoforms5', 1, 0, '{"cache":"0","chronoform":"\\u0421\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 109, 'Яндекс метрика', '', '<p>{source}<span style="font-family: courier new, courier, monospace;"><br />&lt;!-- Yandex.Metrika informer --&gt;<br />&lt;a href="https://metrika.yandex.ru/stat/?id=24439670&amp;amp;from=informer"<br />target="_blank" rel="nofollow"&gt;&lt;img src="//bs.yandex.ru/informer/24439670/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"<br />style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика" title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)" onclick="try{Ya.Metrika.informer({i:this,id:24439670,lang:''ru''});return false}catch(e){}"/&gt;&lt;/a&gt;<br />&lt;!-- /Yandex.Metrika informer --&gt;<br /><br />&lt;!-- Yandex.Metrika counter --&gt;<br />&lt;script type="text/javascript"&gt;<br />(function (d, w, c) {<br /> (w[c] = w[c] || []).push(function() {<br /> try {<br /> w.yaCounter24439670 = new Ya.Metrika({id:24439670,<br /> webvisor:true,<br /> clickmap:true,<br /> trackLinks:true,<br /> accurateTrackBounce:true});<br /> } catch(e) { }<br /> });<br /><br /> var n = d.getElementsByTagName("script")[0],<br /> s = d.createElement("script"),<br /> f = function () { n.parentNode.insertBefore(s, n); };<br /> s.type = "text/javascript";<br /> s.async = true;<br /> s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";<br /><br /> if (w.opera == "[object Opera]") {<br /> d.addEventListener("DOMContentLoaded", f, false);<br /> } else { f(); }<br />})(document, window, "yandex_metrika_callbacks");<br />&lt;/script&gt;<br />&lt;noscript&gt;&lt;div&gt;&lt;img src="//mc.yandex.ru/watch/24439670" style="position:absolute; left:-9999px;" alt="" /&gt;&lt;/div&gt;&lt;/noscript&gt;<br />&lt;!-- /Yandex.Metrika counter --&gt;<br /></span>{/source}</p>', 1, 'footer-f', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 110, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(126, 111, 'Search', '', '', 2, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"left","imagebutton":"0","button_text":"\\u041d\\u0430\\u0439\\u0442\\u0438","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_modules_menu`
--

CREATE TABLE IF NOT EXISTS `m7bpc_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_modules_menu`
--

INSERT INTO `m7bpc_modules_menu` (`moduleid`, `menuid`) VALUES
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
(89, 109),
(89, 127),
(90, 101),
(90, 107),
(90, 108),
(90, 109),
(90, 110),
(90, 111),
(90, 112),
(90, 113),
(90, 114),
(90, 115),
(90, 116),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 126),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 110),
(113, 0),
(114, 0),
(115, 109),
(115, 110),
(115, 111),
(115, 112),
(115, 113),
(115, 114),
(115, 115),
(115, 116),
(115, 126),
(115, 127),
(115, 128),
(116, -128),
(117, 110),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 108),
(125, 109),
(125, 110),
(125, 111),
(125, 112),
(125, 113),
(125, 114),
(125, 115),
(125, 116),
(125, 120),
(125, 121),
(125, 122),
(125, 123),
(125, 124),
(125, 126),
(125, 128),
(125, 148),
(126, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `m7bpc_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
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
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_overrider`
--

CREATE TABLE IF NOT EXISTS `m7bpc_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `m7bpc_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `m7bpc_postinstall_messages`
--

INSERT INTO `m7bpc_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_redirect_links`
--

CREATE TABLE IF NOT EXISTS `m7bpc_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243 ;

--
-- Дамп данных таблицы `m7bpc_redirect_links`
--

INSERT INTO `m7bpc_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://www.intelweb-nsk.ru/index.php/component/content/article?layout=edit&id=article', '', '', '', 1, 0, '2014-03-20 09:46:32', '0000-00-00 00:00:00'),
(2, 'http://www.intelweb-nsk.ru/index.php/component/content/article?layout&id=article', '', '', '', 1, 0, '2014-03-20 09:46:42', '0000-00-00 00:00:00'),
(3, 'http://intelweb-nsk.ru/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=1576&cid=20', '', '', '', 1, 0, '2014-03-22 06:26:48', '0000-00-00 00:00:00'),
(4, 'http://www.intelweb-nsk.ru/index.php/veb-dizajn', '', 'http://www.intelweb-nsk.ru/index.php/sozdanie-sajtov/sajt-vizitka', '', 1, 0, '2014-03-24 17:12:30', '0000-00-00 00:00:00'),
(5, 'http://www.intelweb-nsk.ru/sozdanie-sajtov/sajt-vizitka.html', '', 'http://www.intelweb-nsk.ru/', '', 1, 0, '2014-03-25 14:20:35', '0000-00-00 00:00:00'),
(6, 'http://www.intelweb-nsk.ru/index.php/sozdanie-sajtov/sajt-vizitka.html', '', '', '', 1, 0, '2014-03-25 14:20:48', '0000-00-00 00:00:00'),
(7, 'http://www.intelweb-nsk.ru/dorabotka-i-optimizatsiya.html', '', 'http://www.intelweb-nsk.ru/index.php/sozdanie-sajtov/sajt-vizitka.html', '', 1, 0, '2014-03-25 14:20:52', '0000-00-00 00:00:00'),
(8, 'http://www.intelweb-nsk.ru/kontakty.html', '', 'http://www.intelweb-nsk.ru/', '', 1, 0, '2014-03-25 14:20:57', '0000-00-00 00:00:00'),
(9, 'http://www.intelweb-nsk.ru/sozdanie-sajtov.html', '', 'http://www.intelweb-nsk.ru/index.php?option=com_xmap&view=xml&tmpl=component&id=1', '', 1, 0, '2014-03-25 14:21:30', '0000-00-00 00:00:00'),
(10, 'http://www.intelweb-nsk.ru/index.php/kontakty/', '', 'http://www.intelweb-nsk.ru/index.php/seo-prodvizhenie/', '', 1, 0, '2014-03-25 19:20:42', '0000-00-00 00:00:00'),
(11, 'http://intelweb-nsk.ru/rj/', '', 'http://vk.com/away.php', '', 1, 0, '2014-03-27 16:46:26', '0000-00-00 00:00:00'),
(12, 'http://intelweb-nsk.ru/engine/classes/min/index.php?f=engine/data/dbconfig.php\0.js', '', '', '', 1, 0, '2014-03-29 22:50:44', '0000-00-00 00:00:00'),
(13, 'http://www.intelweb-nsk.ru/engine/classes/min/index.php?f=engine/data/dbconfig.php\0.js', '', '', '', 1, 0, '2014-03-29 22:50:46', '0000-00-00 00:00:00'),
(14, 'http://intelweb-nsk.ru/index.php?option=com_tag&controller=tag&task=add&article_id=-260479/**//*!union*//**//*!select*//**/concat(username,0x3a,password,0x3a,usertype)/**//*!from*//**/jos_users/**/&tmpl=component', '', '', '', 1, 0, '2014-03-31 05:50:01', '0000-00-00 00:00:00'),
(15, 'http://intelweb-nsk.ru/admin.php', '', '', '', 1, 0, '2014-03-31 11:17:18', '0000-00-00 00:00:00'),
(16, 'http://intelweb-nsk.ru/wp-login.php', '', '', '', 1, 0, '2014-03-31 23:02:45', '0000-00-00 00:00:00'),
(17, 'http://intelweb-nsk.ru/forum/', '', 'http://intelweb-nsk.ru/forum', '', 1, 0, '2014-04-11 08:52:27', '0000-00-00 00:00:00'),
(18, 'http://www.intelweb-nsk.ru/libraries/cegcore/assets/bootstrap/css/bootstrap.cssindex.php', '', 'http://www.intelweb-nsk.ru/libraries/cegcore/assets/bootstrap/css/bootstrap.cssindex.php', '', 1, 0, '2014-04-14 01:14:17', '0000-00-00 00:00:00'),
(19, 'http://intelweb-nsk.ru/auth/login/', '', '', '', 1, 0, '2014-04-14 11:40:10', '0000-00-00 00:00:00'),
(20, 'http://intelweb-nsk.ru/yandex.php', '', '', '', 1, 0, '2014-04-14 18:52:51', '0000-00-00 00:00:00'),
(21, 'http://intelweb-nsk.ru/bitrix/admin/', '', '', '', 1, 0, '2014-04-15 05:33:38', '0000-00-00 00:00:00'),
(22, 'http://intelweb-nsk.ru/user/login/', '', '', '', 1, 0, '2014-04-15 05:33:43', '0000-00-00 00:00:00'),
(23, 'http://intelweb-nsk.ru/node/', '', '', '', 1, 0, '2014-04-15 05:33:45', '0000-00-00 00:00:00'),
(24, 'http://intelweb-nsk.ru/user/password/', '', '', '', 1, 0, '2014-04-15 05:33:46', '0000-00-00 00:00:00'),
(25, 'http://intelweb-nsk.ru/manager/', '', '', '', 1, 0, '2014-04-15 05:33:57', '0000-00-00 00:00:00'),
(26, 'http://intelweb-nsk.ru/netcat/admin/', '', '', '', 1, 0, '2014-04-15 05:34:02', '0000-00-00 00:00:00'),
(27, 'http://intelweb-nsk.ru/users/forget/', '', '', '', 1, 0, '2014-04-15 05:34:07', '0000-00-00 00:00:00'),
(28, 'http://intelweb-nsk.ru/users/registrate/', '', '', '', 1, 0, '2014-04-15 05:34:10', '0000-00-00 00:00:00'),
(29, 'http://intelweb-nsk.ru/admin/content/sitetree/', '', '', '', 1, 0, '2014-04-15 05:34:12', '0000-00-00 00:00:00'),
(30, 'http://intelweb-nsk.ru/wp-admin/', '', '', '', 1, 0, '2014-04-15 05:34:15', '0000-00-00 00:00:00'),
(31, 'http://intelweb-nsk.ru/wp-content/', '', '', '', 1, 0, '2014-04-15 05:34:16', '0000-00-00 00:00:00'),
(32, 'http://www.intelweb-nsk.ru/wp-login.php', '', '', '', 1, 0, '2014-04-15 18:09:00', '0000-00-00 00:00:00'),
(33, 'http://www.intelweb-nsk.ru/wp-admin/', '', '', '', 1, 0, '2014-04-15 18:09:01', '0000-00-00 00:00:00'),
(34, 'http://www.intelweb-nsk.ru/engine/print.php?newsid=0', '', '', '', 1, 0, '2014-04-15 18:09:03', '0000-00-00 00:00:00'),
(35, 'http://www.intelweb-nsk.ru/manager/', '', '', '', 1, 0, '2014-04-15 18:09:07', '0000-00-00 00:00:00'),
(36, 'http://www.intelweb-nsk.ru/modx/manager/', '', '', '', 1, 0, '2014-04-15 18:09:07', '0000-00-00 00:00:00'),
(37, 'http://www.intelweb-nsk.ru/textpattern/', '', '', '', 1, 0, '2014-04-15 18:09:09', '0000-00-00 00:00:00'),
(38, 'http://intelweb-nsk.ru/market.php', '', '', '', 1, 0, '2014-04-16 14:58:01', '0000-00-00 00:00:00'),
(39, 'http://intelweb-nsk.ru/index.php?option=com_community&view=frontpage', '', 'http://INTELWEB-NSK.RU/index.php?option=com_community&view=frontpage', '', 1, 0, '2014-04-16 16:55:19', '0000-00-00 00:00:00'),
(40, 'http://intelweb-nsk.ru/yml/yandex.php', '', '', '', 1, 0, '2014-04-17 18:04:36', '0000-00-00 00:00:00'),
(41, 'http://www.intelweb-nsk.ru/bitrix/admin/', '', '', '', 1, 0, '2014-04-18 06:02:54', '0000-00-00 00:00:00'),
(42, 'http://www.intelweb-nsk.ru/user/login/', '', '', '', 1, 0, '2014-04-18 06:02:59', '0000-00-00 00:00:00'),
(43, 'http://www.intelweb-nsk.ru/node/', '', '', '', 1, 0, '2014-04-18 06:03:01', '0000-00-00 00:00:00'),
(44, 'http://www.intelweb-nsk.ru/user/password/', '', '', '', 1, 0, '2014-04-18 06:03:02', '0000-00-00 00:00:00'),
(45, 'http://www.intelweb-nsk.ru/netcat/admin/', '', '', '', 1, 0, '2014-04-18 06:03:18', '0000-00-00 00:00:00'),
(46, 'http://www.intelweb-nsk.ru/users/forget/', '', '', '', 1, 0, '2014-04-18 06:03:22', '0000-00-00 00:00:00'),
(47, 'http://www.intelweb-nsk.ru/users/registrate/', '', '', '', 1, 0, '2014-04-18 06:03:26', '0000-00-00 00:00:00'),
(48, 'http://www.intelweb-nsk.ru/admin/content/sitetree/', '', '', '', 1, 0, '2014-04-18 06:03:28', '0000-00-00 00:00:00'),
(49, 'http://www.intelweb-nsk.ru/wp-content/', '', '', '', 1, 0, '2014-04-18 06:03:32', '0000-00-00 00:00:00'),
(50, 'http://intelweb-nsk.ru/shop/yandex_market/', '', '', '', 1, 0, '2014-04-19 04:32:37', '0000-00-00 00:00:00'),
(51, 'http://intelweb-nsk.ru/yml.php', '', '', '', 1, 0, '2014-04-20 20:09:19', '0000-00-00 00:00:00'),
(52, 'http://intelweb-nsk.ru/upload/yandex.php', '', '', '', 1, 0, '2014-04-21 12:45:37', '0000-00-00 00:00:00'),
(53, 'http://intelweb-nsk.ru/admin/to_xml_yandex.php', '', '', '', 1, 0, '2014-04-22 08:06:31', '0000-00-00 00:00:00'),
(54, 'http://intelweb-nsk.ru/netcat/modules/netshop/export/yandexml.php', '', '', '', 1, 0, '2014-04-23 01:47:25', '0000-00-00 00:00:00'),
(55, 'http://intelweb-nsk.ru/eshop/yml/', '', '', '', 1, 0, '2014-04-23 17:15:56', '0000-00-00 00:00:00'),
(56, 'http://intelweb-nsk.ru/includes/shop.yandex.php', '', '', '', 1, 0, '2014-04-24 21:08:42', '0000-00-00 00:00:00'),
(57, 'http://intelweb-nsk.ru/export_yml.php', '', '', '', 1, 0, '2014-04-25 12:42:54', '0000-00-00 00:00:00'),
(58, 'http://intelweb-nsk.ru/admin/index.php', '', 'http://INTELWEB-NSK.RU/admin/index.php', '', 1, 0, '2014-04-25 17:04:59', '0000-00-00 00:00:00'),
(59, 'http://intelweb-nsk.ru/media/market.php', '', '', '', 1, 0, '2014-04-26 04:31:14', '0000-00-00 00:00:00'),
(60, 'http://intelweb-nsk.ru/yml/export_yml.php', '', '', '', 1, 0, '2014-04-26 20:40:11', '0000-00-00 00:00:00'),
(61, 'http://intelweb-nsk.ru/shop/yml.php', '', '', '', 1, 0, '2014-04-28 11:14:46', '0000-00-00 00:00:00'),
(62, 'http://intelweb-nsk.ru/export/export_yml.php', '', '', '', 1, 0, '2014-04-29 02:22:26', '0000-00-00 00:00:00'),
(63, 'http://intelweb-nsk.ru/stats/awards.php?d=2014-04-01''+AND+0+UNION+SELECT+user+FROM+mysql.user#', '', '', '', 1, 0, '2014-04-29 15:42:19', '0000-00-00 00:00:00'),
(64, 'http://intelweb-nsk.ru/shop/yandex.php', '', '', '', 1, 0, '2014-04-29 17:23:16', '0000-00-00 00:00:00'),
(65, 'http://intelweb-nsk.ru/psycho/awards.php?d=2014-04-01''+AND+0+UNION+SELECT+user+FROM+mysql.user#', '', '', '', 1, 0, '2014-04-30 12:25:39', '0000-00-00 00:00:00'),
(66, 'http://intelweb-nsk.ru/psychostats/awards.php?d=2014-04-01''+AND+0+UNION+SELECT+user+FROM+mysql.user#', '', '', '', 1, 0, '2014-04-30 16:24:44', '0000-00-00 00:00:00'),
(67, 'http://intelweb-nsk.ru/yml/', '', '', '', 1, 0, '2014-05-01 13:34:23', '0000-00-00 00:00:00'),
(68, 'http://intelweb-nsk.ru/xml/', '', '', '', 1, 0, '2014-05-02 04:05:21', '0000-00-00 00:00:00'),
(69, 'http://intelweb-nsk.ru/shop/market.php', '', '', '', 1, 0, '2014-05-03 09:33:17', '0000-00-00 00:00:00'),
(70, 'http://www.intelweb-nsk.ru/skype:lenneset/?call', '', 'http://www.intelweb-nsk.ru/skype:lenneset', '', 1, 0, '2014-05-04 05:56:23', '0000-00-00 00:00:00'),
(71, 'http://www.intelweb-nsk.ru/''+img+''/', '', 'http://www.intelweb-nsk.ru/''+img+''', '', 1, 0, '2014-05-04 05:56:55', '0000-00-00 00:00:00'),
(72, 'http://www.intelweb-nsk.ru/mc.yandex.ru/watch/24439670/', '', 'http://www.intelweb-nsk.ru//mc.yandex.ru/watch/24439670', '', 1, 0, '2014-05-04 05:57:13', '0000-00-00 00:00:00'),
(73, 'http://intelweb-nsk.ru/yandex/yandex.php', '', '', '', 1, 0, '2014-05-04 10:56:01', '0000-00-00 00:00:00'),
(74, 'http://intelweb-nsk.ru/yandex/', '', '', '', 1, 0, '2014-05-06 07:45:38', '0000-00-00 00:00:00'),
(75, 'http://intelweb-nsk.ru/yandex/ya.php', '', '', '', 1, 0, '2014-05-06 23:11:02', '0000-00-00 00:00:00'),
(76, 'http://intelweb-nsk.ru/yandex/yandex_export.php', '', '', '', 1, 0, '2014-05-07 13:45:09', '0000-00-00 00:00:00'),
(77, 'http://intelweb-nsk.ru/yandex_market.php', '', '', '', 1, 0, '2014-05-08 06:08:15', '0000-00-00 00:00:00'),
(78, 'http://intelweb-nsk.ru/yandex_xml.php', '', '', '', 1, 0, '2014-05-08 22:48:58', '0000-00-00 00:00:00'),
(79, 'http://intelweb-nsk.ru/skype:lenneset/?call', '', 'http://intelweb-nsk.ru/skype:lenneset?call', '', 1, 0, '2014-05-09 07:21:44', '0000-00-00 00:00:00'),
(80, 'http://intelweb-nsk.ru/admin/users/tov.php', '', '', '', 1, 0, '2014-05-10 06:44:12', '0000-00-00 00:00:00'),
(81, 'http://intelweb-nsk.ru/upload/market.php', '', '', '', 1, 0, '2014-05-10 22:06:03', '0000-00-00 00:00:00'),
(82, 'http://intelweb-nsk.ru/market_xml.php', '', '', '', 1, 0, '2014-05-14 11:37:28', '0000-00-00 00:00:00'),
(83, 'http://intelweb-nsk.ru/yml/market.php', '', '', '', 1, 0, '2014-05-15 03:01:37', '0000-00-00 00:00:00'),
(84, 'http://intelweb-nsk.ru/ya.php', '', '', '', 1, 0, '2014-05-21 05:20:44', '0000-00-00 00:00:00'),
(85, 'http://intelweb-nsk.ru/yandex_market/', '', '', '', 1, 0, '2014-05-21 22:18:04', '0000-00-00 00:00:00'),
(86, 'http://intelweb-nsk.ru/market/', '', '', '', 1, 0, '2014-05-22 14:58:49', '0000-00-00 00:00:00'),
(87, 'http://intelweb-nsk.ru/backup/mysql_backups/', '', 'http://INTELWEB-NSK.RU/backup/mysql_backups/', '', 1, 0, '2014-05-23 12:16:34', '0000-00-00 00:00:00'),
(88, 'http://intelweb-nsk.ru/files/backups/', '', 'http://INTELWEB-NSK.RU/files/backups/', '', 1, 0, '2014-05-23 12:16:35', '0000-00-00 00:00:00'),
(89, 'http://intelweb-nsk.ru/mysql_backups/', '', 'http://INTELWEB-NSK.RU/mysql_backups/', '', 1, 0, '2014-05-23 12:16:35', '0000-00-00 00:00:00'),
(90, 'http://intelweb-nsk.ru/backup/', '', 'http://INTELWEB-NSK.RU/backup/', '', 1, 0, '2014-05-23 12:16:39', '0000-00-00 00:00:00'),
(91, 'http://intelweb-nsk.ru/dumps/', '', 'http://INTELWEB-NSK.RU/dumps/', '', 1, 0, '2014-05-23 12:16:39', '0000-00-00 00:00:00'),
(92, 'http://intelweb-nsk.ru/dumper/backup/', '', 'http://INTELWEB-NSK.RU/dumper/backup/', '', 1, 0, '2014-05-23 12:16:40', '0000-00-00 00:00:00'),
(93, 'http://intelweb-nsk.ru/dumper/work/backup/', '', 'http://INTELWEB-NSK.RU/dumper/work/backup/', '', 1, 0, '2014-05-23 12:16:40', '0000-00-00 00:00:00'),
(94, 'http://intelweb-nsk.ru/dump/', '', 'http://INTELWEB-NSK.RU/dump/', '', 1, 0, '2014-05-23 12:16:40', '0000-00-00 00:00:00'),
(95, 'http://intelweb-nsk.ru/files/backup/', '', 'http://INTELWEB-NSK.RU/files/backup/', '', 1, 0, '2014-05-23 12:16:41', '0000-00-00 00:00:00'),
(96, 'http://intelweb-nsk.ru/data/backups/‎/', '', 'http://INTELWEB-NSK.RU/data/backups/%E2%80%8E', '', 1, 0, '2014-05-23 12:17:06', '0000-00-00 00:00:00'),
(97, 'http://intelweb-nsk.ru/backup/database/', '', 'http://INTELWEB-NSK.RU/backup/database', '', 1, 0, '2014-05-23 12:17:07', '0000-00-00 00:00:00'),
(98, 'http://intelweb-nsk.ru/backup/databases/', '', 'http://INTELWEB-NSK.RU/backup/databases', '', 1, 0, '2014-05-23 12:17:11', '0000-00-00 00:00:00'),
(99, 'http://intelweb-nsk.ru/yandexmarket/yandexmarket.php', '', '', '', 1, 0, '2014-05-24 00:24:55', '0000-00-00 00:00:00'),
(100, 'http://intelweb-nsk.ru/yandexmarket.php', '', '', '', 1, 0, '2014-05-24 22:06:51', '0000-00-00 00:00:00'),
(101, 'http://intelweb-nsk.ru//phpmyadmin/index.php', '', '', '', 1, 0, '2014-05-29 07:33:45', '0000-00-00 00:00:00'),
(102, 'http://intelweb-nsk.ru/openmod/yandexMarket.php', '', '', '', 1, 0, '2014-05-29 21:43:50', '0000-00-00 00:00:00'),
(103, 'http://intelweb-nsk.ru/wp/', '', 'http://intelweb-nsk.ru/wp', '', 1, 0, '2014-05-31 00:03:30', '0000-00-00 00:00:00'),
(104, 'http://intelweb-nsk.ru/catalog/market.php', '', '', '', 1, 0, '2014-05-31 02:39:59', '0000-00-00 00:00:00'),
(105, 'http://intelweb-nsk.ru/catalog/yandex.php', '', '', '', 1, 0, '2014-06-01 07:40:43', '0000-00-00 00:00:00'),
(106, 'http://intelweb-nsk.ru/pma/index.php', '', '', '', 1, 0, '2014-06-01 08:27:41', '0000-00-00 00:00:00'),
(107, 'http://intelweb-nsk.ru/framer/login.php', '', '', '', 1, 0, '2014-06-01 22:41:47', '0000-00-00 00:00:00'),
(108, 'http://intelweb-nsk.ru/catalog/yml.php', '', '', '', 1, 0, '2014-06-02 13:04:10', '0000-00-00 00:00:00'),
(109, 'http://intelweb-nsk.ru/myadmin/index.php', '', '', '', 1, 0, '2014-06-02 13:09:59', '0000-00-00 00:00:00'),
(110, 'http://intelweb-nsk.ru/sql/index.php', '', '', '', 1, 0, '2014-06-03 07:25:10', '0000-00-00 00:00:00'),
(111, 'http://intelweb-nsk.ru/wp-trackback.php', '', '', '', 1, 0, '2014-06-03 10:34:15', '0000-00-00 00:00:00'),
(112, 'http://intelweb-nsk.ru/blog/wp-trackback.php', '', '', '', 1, 0, '2014-06-03 10:34:16', '0000-00-00 00:00:00'),
(113, 'http://intelweb-nsk.ru/wp/wp-trackback.php', '', '', '', 1, 0, '2014-06-03 10:34:16', '0000-00-00 00:00:00'),
(114, 'http://intelweb-nsk.ru/wordpress/wp-trackback.php', '', '', '', 1, 0, '2014-06-03 10:34:17', '0000-00-00 00:00:00'),
(115, 'http://intelweb-nsk.ru/index.php?option=com_idoblog&task=profile&userblog&userid=63''', '', 'http://INTELWEB-NSK.RU/', '', 1, 0, '2014-06-04 20:34:43', '0000-00-00 00:00:00'),
(116, 'http://intelweb-nsk.ru/sxd/backup/', '', 'http://INTELWEB-NSK.RU/sxd/backup/', '', 1, 0, '2014-06-04 20:42:47', '0000-00-00 00:00:00'),
(117, 'http://intelweb-nsk.ru/index.php?option=com_catalogproduction&task=viewdetail&id=-9999', '', 'http://INTELWEB-NSK.RU/', '', 1, 0, '2014-06-05 14:30:06', '0000-00-00 00:00:00'),
(118, 'http://intelweb-nsk.ru/yandex-xml/', '', '', '', 1, 0, '2014-06-06 06:34:14', '0000-00-00 00:00:00'),
(119, 'http://intelweb-nsk.ru/catalog-yandex.php', '', '', '', 1, 0, '2014-06-07 10:43:00', '0000-00-00 00:00:00'),
(120, 'http://intelweb-nsk.ru/catalog-price.php', '', '', '', 1, 0, '2014-06-08 14:41:59', '0000-00-00 00:00:00'),
(121, 'http://intelweb-nsk.ru/bitrix/catalog_export/yml.php', '', '', '', 1, 0, '2014-06-09 18:46:49', '0000-00-00 00:00:00'),
(122, 'http://intelweb-nsk.ru/bitrix/catalog_export/yandex.php', '', '', '', 1, 0, '2014-06-11 00:01:42', '0000-00-00 00:00:00'),
(123, 'http://intelweb-nsk.ru/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1', '', '', '', 1, 0, '2014-06-11 10:16:16', '0000-00-00 00:00:00'),
(124, 'http://intelweb-nsk.ru/phpmyadmin/index.php', '', '', '', 1, 0, '2014-06-11 17:53:23', '0000-00-00 00:00:00'),
(125, 'http://intelweb-nsk.ru/index.php?option=com_user&task=register', '', '', '', 1, 0, '2014-06-12 15:08:09', '0000-00-00 00:00:00'),
(126, 'http://intelweb-nsk.ru/modules/yamarket/yml.php', '', '', '', 1, 0, '2014-06-17 01:41:11', '0000-00-00 00:00:00'),
(127, 'http://intelweb-nsk.ru/catalog/ya-market.php', '', '', '', 1, 0, '2014-06-18 05:57:56', '0000-00-00 00:00:00'),
(128, 'http://intelweb-nsk.ru/upload/yml.php', '', '', '', 1, 0, '2014-06-19 10:09:12', '0000-00-00 00:00:00'),
(129, 'http://intelweb-nsk.ru/xmlrpc.php', '', '', '', 1, 0, '2014-06-19 21:53:50', '0000-00-00 00:00:00'),
(130, 'http://intelweb-nsk.ru/blocks/', '', '', '', 1, 0, '2014-06-19 21:53:52', '0000-00-00 00:00:00'),
(131, 'http://intelweb-nsk.ru/fpw.php', '', '', '', 1, 0, '2014-06-19 21:53:53', '0000-00-00 00:00:00'),
(132, 'http://intelweb-nsk.ru/engine/engine.php', '', '', '', 1, 0, '2014-06-19 21:53:54', '0000-00-00 00:00:00'),
(133, 'http://intelweb-nsk.ru/modules/netshop/export/yandexml.php', '', '', '', 1, 0, '2014-06-20 14:05:00', '0000-00-00 00:00:00'),
(134, 'http://www.intelweb-nsk.ru/administrator/components/com_rokcandy/help/en-GB/COM_ROKCANDY__HELP_URL.html', '', 'http://www.intelweb-nsk.ru/administrator/index.php?option=com_rokcandy', '', 1, 0, '2014-06-20 20:35:23', '0000-00-00 00:00:00'),
(135, 'http://intelweb-nsk.ru/df-yandex-market/yml/', '', '', '', 1, 0, '2014-06-21 17:58:15', '0000-00-00 00:00:00'),
(136, 'http://www.intelweb-nsk.ru/index.php/seo-prodvizhenie.html', '', '', '', 1, 0, '2014-06-21 19:35:09', '0000-00-00 00:00:00'),
(137, 'http://www.intelweb-nsk.ru/seo-prodvizhenie.html', '', '', '', 1, 0, '2014-06-21 19:35:15', '0000-00-00 00:00:00'),
(138, 'http://intelweb-nsk.ru/index.php?option=com_ignitegallery', '', '', '', 1, 0, '2014-06-22 12:40:55', '0000-00-00 00:00:00'),
(139, 'http://intelweb-nsk.ru/index.php?option=com_community', '', '', '', 1, 0, '2014-06-23 16:18:59', '0000-00-00 00:00:00'),
(140, 'http://intelweb-nsk.ru/plugins/system/CssJsCompress/js.php?js=../../configuration.php', '', '', '', 1, 0, '2014-06-26 15:13:53', '0000-00-00 00:00:00'),
(141, 'http://intelweb-nsk.ru/emarket/yandex_market/', '', '', '', 1, 0, '2014-06-28 18:56:05', '0000-00-00 00:00:00'),
(142, 'http://intelweb-nsk.ru/index.php?option=com_jobprofile', '', '', '', 1, 0, '2014-07-03 16:43:19', '0000-00-00 00:00:00'),
(143, 'http://intelweb-nsk.ru/index.php?option=com_tag&task=tag&lang=es&tag=999999.9''', '', '', '', 1, 0, '2014-07-04 04:35:19', '0000-00-00 00:00:00'),
(144, 'http://intelweb-nsk.ru/index.html', '', 'http://INTELWEB-NSK.ru/index.html', '', 1, 0, '2014-07-06 21:57:31', '0000-00-00 00:00:00'),
(145, 'http://intelweb-nsk.ru/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:41', '0000-00-00 00:00:00'),
(146, 'http://intelweb-nsk.ru/sozdanie-sajtov/malyj-biznes/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:42', '0000-00-00 00:00:00'),
(147, 'http://intelweb-nsk.ru/sozdanie-sajtov/korporativnyj-sajt/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:43', '0000-00-00 00:00:00'),
(148, 'http://intelweb-nsk.ru/sozdanie-sajtov/ofitsialnyj-sajt/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:44', '0000-00-00 00:00:00'),
(149, 'http://intelweb-nsk.ru/kontakty/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:46', '0000-00-00 00:00:00'),
(150, 'http://intelweb-nsk.ru/dorabotka-i-optimizatsiya/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:47', '0000-00-00 00:00:00'),
(151, 'http://intelweb-nsk.ru/seo-prodvizhenie/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:48', '0000-00-00 00:00:00'),
(152, 'http://intelweb-nsk.ru/sozdanie-sajtov/internet-magazin/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:49', '0000-00-00 00:00:00'),
(153, 'http://intelweb-nsk.ru/sozdanie-sajtov/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:50', '0000-00-00 00:00:00'),
(154, 'http://intelweb-nsk.ru/sozdanie-sajtov/sajt-vizitka/skype:lenneset/', '', '', '', 1, 0, '2014-07-22 09:22:51', '0000-00-00 00:00:00'),
(155, 'http://intelweb-nsk.ru/wp-admin/admin-post.php?page=wysija_campaigns&action=themes', '', 'http://INTELWEB-NSK.RU/wp-admin/admin-post.php?page=wysija_campaigns&action=themes', '', 1, 0, '2014-07-31 21:55:33', '0000-00-00 00:00:00'),
(156, 'http://intelweb-nsk.ru/wp-admin/admin-post.php?page=wysija_campaigns&action=themesindex.php', '', 'http://INTELWEB-NSK.RU/wp-admin/admin-post.php?page=wysija_campaigns&action=themesindex.php', '', 1, 0, '2014-07-31 21:55:35', '0000-00-00 00:00:00'),
(157, 'http://intelweb-nsk.ru/index.php?option=com_community&view=videos&groupid=1''', '', '', '', 1, 0, '2014-08-03 14:37:53', '0000-00-00 00:00:00'),
(158, 'http://www.intelweb-nsk.ru/index.php/sozdanie-sajtov/ofitsialnyj-sajt/function.require', '', '', '', 1, 0, '2014-08-08 15:29:05', '0000-00-00 00:00:00'),
(159, 'http://www.intelweb-nsk.ru/index.php/sozdanie-sajtov/ofitsialnyj-sajt/function.file-exists', '', '', '', 1, 0, '2014-08-08 16:24:58', '0000-00-00 00:00:00'),
(160, 'http://www.intelweb-nsk.ru/index.php/sozdanie-sajtov/ofitsialnyj-sajt/function.require-once', '', '', '', 1, 0, '2014-08-08 16:28:25', '0000-00-00 00:00:00'),
(161, 'http://intelweb-nsk.ru/tmp/rss.php?baks', '', '', '', 1, 0, '2014-08-13 02:15:35', '0000-00-00 00:00:00'),
(162, 'http://intelweb-nsk.ru/modules/mod_fxprev/libraries/archives.php', '', '', '', 1, 0, '2014-08-16 08:26:34', '0000-00-00 00:00:00'),
(163, 'http://intelweb-nsk.ru/index.php?option=com_community&view=videos&groupid=''', '', '', '', 1, 0, '2014-08-16 17:47:04', '0000-00-00 00:00:00'),
(164, 'http://intelweb-nsk.ru/modules/mod_araticlhess/mod_araticlhess.php', '', '', '', 1, 0, '2014-08-23 21:10:01', '0000-00-00 00:00:00'),
(165, 'http://intelweb-nsk.ru/index.php?option=com_user&view=register', '', 'http://intelweb-nsk.ru/index.php?option=com_user&view=register', '', 1, 0, '2014-08-26 12:08:45', '0000-00-00 00:00:00'),
(166, 'http://www.intelweb-nsk.ru/Fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-09-07 01:45:15', '0000-00-00 00:00:00'),
(167, 'http://www.intelweb-nsk.ru/admin/fckeditor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-09-07 01:45:16', '0000-00-00 00:00:00'),
(168, 'http://www.intelweb-nsk.ru/editor/editor/filemanager/browser/default/connectors/test.html', '', '', '', 1, 0, '2014-09-07 01:45:17', '0000-00-00 00:00:00'),
(169, 'http://www.intelweb-nsk.ru/FCKeditor/editor/filemanager/connectors/uploadtest.html', '', '', '', 1, 0, '2014-09-07 01:45:18', '0000-00-00 00:00:00'),
(170, 'http://www.intelweb-nsk.ru/admin/fckeditor/editor/filemanager/browser/default/connectors/uploadtest.html', '', '', '', 1, 0, '2014-09-07 01:45:19', '0000-00-00 00:00:00'),
(171, 'http://www.intelweb-nsk.ru/editor/editor/filemanager/browser/default/connectors/uploadtest.html', '', '', '', 1, 0, '2014-09-07 01:45:20', '0000-00-00 00:00:00'),
(172, 'http://intelweb-nsk.ru/modules/mod_search/tmpl/index.php?search=hello', '', '', '', 1, 0, '2014-09-10 04:39:31', '0000-00-00 00:00:00'),
(173, 'http://intelweb-nsk.ru/components/com_support/support.php', '', '', '', 1, 0, '2014-09-11 15:04:56', '0000-00-00 00:00:00'),
(174, 'http://intelweb-nsk.ru/index.php?option=com_community&view=videos&groupid=(select', '', '', '', 1, 0, '2014-09-11 20:34:32', '0000-00-00 00:00:00'),
(175, 'http://intelweb-nsk.ru/index.php?option=com_youtubegallery&view=youtubegallery&listid=1&themeid=1''&videoid=ETMVUuFbToQ&tmpl=component&TB_iframe=true&height=500&width=700', '', 'http://intelweb-nsk.ru/index.php?option=com_youtubegallery&view=youtubegallery&listid=1&themeid=1''&videoid=ETMVUuFbToQ&tmpl=component&TB_iframe=true&h', '', 1, 0, '2014-09-14 04:01:08', '0000-00-00 00:00:00'),
(176, 'http://intelweb-nsk.ru/index.php?option=com_spidercalendar&calendar_id=1''', '', 'http://intelweb-nsk.ru/index.php?option=com_spidercalendar&calendar_id=1''', '', 1, 0, '2014-09-14 08:26:31', '0000-00-00 00:00:00'),
(177, 'http://intelweb-nsk.ru/component/spidervideoplayer/?view=settings&format=row&typeselect=0&playlist=1,&theme=1''', '', 'http://intelweb-nsk.ru/component/spidervideoplayer/?view=settings&format=row&typeselect=0&playlist=1,&theme=1''', '', 1, 0, '2014-09-14 12:03:04', '0000-00-00 00:00:00'),
(178, 'http://intelweb-nsk.ru/''+img+''/', '', 'http://intelweb-nsk.ru/', '', 1, 0, '2014-09-17 08:04:46', '0000-00-00 00:00:00'),
(179, 'http://intelweb-nsk.ru/sozdanie-sajtov/''+img+''/', '', 'http://intelweb-nsk.ru/sozdanie-sajtov/', '', 1, 0, '2014-09-17 08:05:00', '0000-00-00 00:00:00'),
(180, 'http://intelweb-nsk.ru/sozdanie-sajtov/sajt-vizitka/''+img+''/', '', 'http://intelweb-nsk.ru/sozdanie-sajtov/sajt-vizitka/', '', 1, 0, '2014-09-17 08:05:04', '0000-00-00 00:00:00'),
(181, 'http://intelweb-nsk.ru/sozdanie-sajtov/malyj-biznes/''+img+''/', '', 'http://intelweb-nsk.ru/sozdanie-sajtov/malyj-biznes/', '', 1, 0, '2014-09-17 08:05:07', '0000-00-00 00:00:00'),
(182, 'http://intelweb-nsk.ru/sozdanie-sajtov/ofitsialnyj-sajt/''+img+''/', '', 'http://intelweb-nsk.ru/sozdanie-sajtov/ofitsialnyj-sajt/', '', 1, 0, '2014-09-17 08:05:10', '0000-00-00 00:00:00'),
(183, 'http://intelweb-nsk.ru/sozdanie-sajtov/korporativnyj-sajt/''+img+''/', '', 'http://intelweb-nsk.ru/sozdanie-sajtov/korporativnyj-sajt/', '', 1, 0, '2014-09-17 08:05:13', '0000-00-00 00:00:00'),
(184, 'http://intelweb-nsk.ru/sozdanie-sajtov/internet-magazin/''+img+''/', '', 'http://intelweb-nsk.ru/sozdanie-sajtov/internet-magazin/', '', 1, 0, '2014-09-17 08:05:16', '0000-00-00 00:00:00'),
(185, 'http://intelweb-nsk.ru/dorabotka-i-optimizatsiya/''+img+''/', '', 'http://intelweb-nsk.ru/dorabotka-i-optimizatsiya/', '', 1, 0, '2014-09-17 08:05:20', '0000-00-00 00:00:00'),
(186, 'http://intelweb-nsk.ru/seo-prodvizhenie/''+img+''/', '', 'http://intelweb-nsk.ru/seo-prodvizhenie/', '', 1, 0, '2014-09-17 08:05:23', '0000-00-00 00:00:00'),
(187, 'http://intelweb-nsk.ru/kontakty/''+img+''/', '', 'http://intelweb-nsk.ru/kontakty/', '', 1, 0, '2014-09-17 08:05:26', '0000-00-00 00:00:00'),
(188, 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/sajt-vizitka/''+img+''/', '', 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/sajt-vizitka/', '', 1, 0, '2014-09-17 08:05:33', '0000-00-00 00:00:00'),
(189, 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/ofitsialnyj-sajt/''+img+''/', '', 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/ofitsialnyj-sajt/', '', 1, 0, '2014-09-17 08:05:37', '0000-00-00 00:00:00'),
(190, 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/korporativnyj-sajt/''+img+''/', '', 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/korporativnyj-sajt/', '', 1, 0, '2014-09-17 08:05:41', '0000-00-00 00:00:00'),
(191, 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/internet-magazin/''+img+''/', '', 'http://intelweb-nsk.ru/index.php/sozdanie-sajtov/internet-magazin/', '', 1, 0, '2014-09-17 08:05:44', '0000-00-00 00:00:00'),
(192, 'http://intelweb-nsk.ru/index.php?option=com_user&view=reset&layout=confirm', '', 'http://intelweb-nsk.ru/index.php?option=com_user&view=reset&layout=confirm', '', 1, 0, '2014-09-17 17:15:36', '0000-00-00 00:00:00'),
(193, 'http://intelweb-nsk.ru/index.php?tmpl=component&option=com_redshop&view=product&task=addtocompare&pid=1''', '', 'http://intelweb-nsk.ru/index.php?tmpl=component&option=com_redshop&view=product&task=addtocompare&pid=1''', '', 1, 0, '2014-09-17 21:32:25', '0000-00-00 00:00:00'),
(194, 'http://intelweb-nsk.ru/tmp/configuration.php?pw=oscar', '', '', '', 1, 0, '2014-09-24 11:22:59', '0000-00-00 00:00:00'),
(195, 'http://intelweb-nsk.ru/components/com_user/views/login/tmpls.php', '', '', '', 1, 0, '2014-09-26 01:31:43', '0000-00-00 00:00:00'),
(196, 'http://intelweb-nsk.ru/modules/mod_index/mod_index.php', '', '', '', 1, 0, '2014-09-26 01:31:43', '0000-00-00 00:00:00'),
(197, 'http://intelweb-nsk.ru/administrator/components/com_contact/pp1.php', '', '', '', 1, 0, '2014-09-26 01:31:43', '0000-00-00 00:00:00'),
(198, 'http://intelweb-nsk.ru/components/com_jooomlas/s.php', '', '', '', 1, 0, '2014-09-26 01:31:44', '0000-00-00 00:00:00'),
(199, 'http://intelweb-nsk.ru/cache/pp1.php', '', '', '', 1, 0, '2014-09-26 04:34:43', '0000-00-00 00:00:00'),
(200, 'http://intelweb-nsk.ru/plugins/editors-xtd/mosimage.php', '', '', '', 1, 0, '2014-09-26 04:34:43', '0000-00-00 00:00:00'),
(201, 'http://intelweb-nsk.ru/tmp/in.php?ari=ari', '', '', '', 1, 0, '2014-09-27 04:27:01', '0000-00-00 00:00:00'),
(202, 'http://www.intelweb-nsk.ru/components/com_community/index.html', '', '', '', 1, 0, '2014-09-27 10:52:28', '0000-00-00 00:00:00'),
(203, 'http://www.intelweb-nsk.ru/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&action=upload', '', '', '', 1, 0, '2014-09-27 10:52:31', '0000-00-00 00:00:00'),
(204, 'http://www.intelweb-nsk.ru/85/components/com_community/index.html', '', '', '', 1, 0, '2014-09-27 10:52:33', '0000-00-00 00:00:00'),
(205, 'http://www.intelweb-nsk.ru/85/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&action=upload', '', '', '', 1, 0, '2014-09-27 10:52:35', '0000-00-00 00:00:00'),
(206, 'http://intelweb-nsk.ru/administrator/components/com_banners/web-infor.php', '', '', '', 1, 0, '2014-09-28 02:03:55', '0000-00-00 00:00:00'),
(207, 'http://intelweb-nsk.ru/modules/mod_main_wrap/mod_main_wrap.php', '', '', '', 1, 0, '2014-09-28 02:56:17', '0000-00-00 00:00:00'),
(208, 'http://intelweb-nsk.ru/components/com_contact/core.php', '', '', '', 1, 0, '2014-09-28 03:47:25', '0000-00-00 00:00:00'),
(209, 'http://intelweb-nsk.ru/modules/mod_araticclhess/mod_araticclhess.php', '', '', '', 1, 0, '2014-09-29 04:53:41', '0000-00-00 00:00:00'),
(210, 'http://intelweb-nsk.ru/modules/mod_system/mod_system.php', '', '', '', 1, 0, '2014-09-29 05:33:03', '0000-00-00 00:00:00'),
(211, 'http://intelweb-nsk.ru/tmp/cache.php', '', '', '', 1, 0, '2014-10-03 05:58:44', '0000-00-00 00:00:00'),
(212, 'http://intelweb-nsk.ru/components/com_banners/models/mod.php', '', '', '', 1, 0, '2014-10-04 05:53:17', '0000-00-00 00:00:00'),
(213, 'http://intelweb-nsk.ru/media/mod.php', '', '', '', 1, 0, '2014-10-05 03:32:39', '0000-00-00 00:00:00'),
(214, 'http://intelweb-nsk.ru/modules/mod_artshop/mod_artshop.php', '', '', '', 1, 0, '2014-10-06 02:34:23', '0000-00-00 00:00:00'),
(215, 'http://intelweb-nsk.ru/modules/mod_araticlhessess/mod_araticlhessess.php', '', '', '', 1, 0, '2014-10-06 04:14:18', '0000-00-00 00:00:00'),
(216, 'http://intelweb-nsk.ru/images/ccs.php?input', '', '', '', 1, 0, '2014-10-10 00:13:34', '0000-00-00 00:00:00'),
(217, 'http://intelweb-nsk.ru/administrator/components/com_cpanel/views/cpanel/ccs.php?input', '', '', '', 1, 0, '2014-10-10 00:57:56', '0000-00-00 00:00:00'),
(218, 'http://intelweb-nsk.ru/components/com_content/views/article/tmpl/ccs.php?input', '', '', '', 1, 0, '2014-10-10 06:34:46', '0000-00-00 00:00:00'),
(219, 'http://intelweb-nsk.ru/libraries/phputf8/native/index.html.php', '', '', '', 1, 0, '2014-10-11 02:16:42', '0000-00-00 00:00:00'),
(220, 'http://intelweb-nsk.ru/images/jupload.php', '', '', '', 1, 0, '2014-10-11 02:52:52', '0000-00-00 00:00:00'),
(221, 'http://intelweb-nsk.ru/modules/mod_WeBAntivirus/mod_WeBAntivirus.php', '', '', '', 1, 0, '2014-10-11 22:41:45', '0000-00-00 00:00:00'),
(222, 'http://intelweb-nsk.ru/images/fix.php', '', '', '', 1, 0, '2014-10-13 01:22:09', '0000-00-00 00:00:00'),
(223, 'http://intelweb-nsk.ru/plugins/system/captcha/captcha.php', '', '', '', 1, 0, '2014-10-14 02:03:13', '0000-00-00 00:00:00'),
(224, 'http://intelweb-nsk.ru/images/gallery.php', '', '', '', 1, 0, '2014-10-14 02:03:14', '0000-00-00 00:00:00'),
(225, 'http://intelweb-nsk.ru/administrator/components/com_aceftp/quixplorer/index.php', '', '', '', 1, 0, '2014-10-15 00:33:16', '0000-00-00 00:00:00'),
(226, 'http://intelweb-nsk.ru/media/editors/functions.php', '', '', '', 1, 0, '2014-10-15 03:02:13', '0000-00-00 00:00:00'),
(227, 'http://intelweb-nsk.ru/update.php', '', '', '', 1, 0, '2014-10-15 11:56:13', '0000-00-00 00:00:00'),
(228, 'http://www.intelweb-nsk.ru//index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1', '', '', '', 1, 0, '2014-10-15 13:49:30', '0000-00-00 00:00:00'),
(229, 'http://www.intelweb-nsk.ru/xoops2/components/com_community/index.html', '', '', '', 1, 0, '2014-10-15 13:49:42', '0000-00-00 00:00:00'),
(230, 'http://www.intelweb-nsk.ru/xoops2//index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1', '', '', '', 1, 0, '2014-10-15 13:49:53', '0000-00-00 00:00:00'),
(231, 'http://www.intelweb-nsk.ru/xoops2/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&action=upload', '', '', '', 1, 0, '2014-10-15 13:49:58', '0000-00-00 00:00:00'),
(232, 'http://www.intelweb-nsk.ru/inventa//index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1', '', '', '', 1, 0, '2014-10-15 16:15:44', '0000-00-00 00:00:00'),
(233, 'http://www.intelweb-nsk.ru/inventa/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&action=upload', '', '', '', 1, 0, '2014-10-15 16:15:46', '0000-00-00 00:00:00'),
(234, 'http://intelweb-nsk.ru/components/com_user/views/index.php', '', '', '', 1, 0, '2014-10-15 21:52:03', '0000-00-00 00:00:00'),
(235, 'http://intelweb-nsk.ru/modules/mod_ariimageslidersa/mod_ariimageslidersa.php', '', '', '', 1, 0, '2014-10-16 01:44:26', '0000-00-00 00:00:00'),
(236, 'http://intelweb-nsk.ru/modules/online/online.php', '', '', '', 1, 0, '2014-10-16 13:40:31', '0000-00-00 00:00:00'),
(237, 'http://intelweb-nsk.ru/modules/mod_rssemailer/mod_rssemailer.php', '', '', '', 1, 0, '2014-10-16 23:35:26', '0000-00-00 00:00:00'),
(238, 'http://intelweb-nsk.ru/cache/online.php', '', '', '', 1, 0, '2014-10-17 00:03:39', '0000-00-00 00:00:00'),
(239, 'http://intelweb-nsk.ru/images/plagmain.php', '', '', '', 1, 0, '2014-10-17 10:49:57', '0000-00-00 00:00:00'),
(240, 'http://intelweb-nsk.ru/plugins/captcha/jproicaptcha.php', '', '', '', 1, 0, '2014-10-17 12:00:05', '0000-00-00 00:00:00'),
(241, 'http://intelweb-nsk.ru/uu.php', '', '', '', 1, 0, '2014-10-18 01:03:52', '0000-00-00 00:00:00'),
(242, 'http://intelweb-nsk.ru/components/com_banners/helpers/sys.php', '', '', '', 1, 0, '2014-10-18 02:22:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_rokcandy`
--

CREATE TABLE IF NOT EXISTS `m7bpc_rokcandy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `macro` text NOT NULL,
  `html` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `m7bpc_rokcandy`
--

INSERT INTO `m7bpc_rokcandy` (`id`, `catid`, `macro`, `html`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(20, 8, '[h1]{text}[/h1]', '<h1>{text}</h1>', 1, 754, '2014-06-20 20:35:36', 1, ''),
(21, 8, '[h2]{text}[/h2]', '<h2>{text}</h2>', 1, 0, '0000-00-00 00:00:00', 2, ''),
(22, 8, '[h3]{text}[/h3]', '<h3>{text}</h3>', 1, 0, '0000-00-00 00:00:00', 3, ''),
(23, 8, '[h4]{text}[/h4]', '<h4>{text}</h4>', 1, 0, '0000-00-00 00:00:00', 4, ''),
(24, 8, '[h5]{text}[/h5]', '<h5>{text}</h5>', 1, 0, '0000-00-00 00:00:00', 5, ''),
(25, 8, '[b]{text}[/b]', '<strong>{text}</strong>', 1, 0, '0000-00-00 00:00:00', 6, ''),
(26, 8, '[i]{text}[/i]', '<em>{text}</em>', 1, 0, '0000-00-00 00:00:00', 7, ''),
(27, 8, '[code]{text}[/code]', '<code>{text}</code>', 1, 0, '0000-00-00 00:00:00', 8, '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_rokcommon_configs`
--

CREATE TABLE IF NOT EXISTS `m7bpc_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `m7bpc_rokcommon_configs`
--

INSERT INTO `m7bpc_rokcommon_configs` (`id`, `extension`, `type`, `file`, `priority`) VALUES
(3, 'roksprocket', 'container', '/components/com_roksprocket/container.xml', 10),
(4, 'roksprocket', 'library', '/components/com_roksprocket/lib', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_roksprocket_items`
--

CREATE TABLE IF NOT EXISTS `m7bpc_roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

--
-- Дамп данных таблицы `m7bpc_roksprocket_items`
--

INSERT INTO `m7bpc_roksprocket_items` (`id`, `module_id`, `provider`, `provider_id`, `order`, `params`) VALUES
(86, '90', 'joomla', '6', 0, '{"features_item_title":"-title-","features_item_description":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d (\\u0430\\u043d\\u0433\\u043b. online shop \\u0438\\u043b\\u0438 e-shop) \\u2014 \\u0441\\u0430\\u0439\\u0442, \\u0442\\u043e\\u0440\\u0433\\u0443\\u044e\\u0449\\u0438\\u0439 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0435\\u0442\\u0438 \\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f\\u043c \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d, \\u0432 \\u0441\\u0432\\u043e\\u0451\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435, \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043d\\u0430 \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0443, \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u043e\\u043f\\u043b\\u0430\\u0442\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0430\\u043c\\u0438.","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_features_item_image&undefined''}","features_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","mosaic_item_tags":null,"strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(87, '90', 'joomla', '7', 1, '{"features_item_title":"-title-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img11.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_7__params_features_item_image&undefined''}","features_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","mosaic_item_tags":null,"strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(88, '90', 'joomla', '8', 2, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img13.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_8__params_features_item_image&undefined''}","features_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","mosaic_item_tags":null,"strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(89, '90', 'joomla', '9', 3, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img14.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_9__params_features_item_image&undefined''}","features_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","mosaic_item_tags":null,"strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(90, '90', 'joomla', '10', 4, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img16.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_10__params_features_item_image&undefined''}","features_item_link":"-default-","mosaic_item_title":"-default-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","mosaic_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","mosaic_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","mosaic_item_tags":null,"strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(91, '91', 'simple', '3', 0, '{"_article_title":"SEO \\u043f\\u0440\\u043e\\u0434\\u0432\\u0438\\u0436\\u0435\\u043d\\u0438\\u0435","mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(92, '91', 'simple', '2', 1, '{"_article_title":"\\u041e\\u043f\\u0442\\u0438\\u043c\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438 \\u0434\\u043e\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0430","mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(93, '91', 'simple', '1', 2, '{"_article_title":"\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0430\\u0439\\u0442\\u043e\\u0432","mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","lists_item_title":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","strips_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","strips_item_link":"-default-","features_item_title":"-default-","features_item_description":"-default-","strips_item_description":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(241, '92', 'joomla', '5', 2, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-article-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(242, '92', 'joomla', '12', 3, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-article-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(220, '89', 'joomla', '7', 1, '{"features_item_title":"-title-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img10.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_7__params_features_item_image&undefined&undefined''}","features_item_link":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(221, '89', 'joomla', '8', 2, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img11.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_8__params_features_item_image&undefined&undefined''}","features_item_link":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(222, '89', 'joomla', '9', 3, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img12.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_9__params_features_item_image&undefined&undefined''}","features_item_link":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(219, '89', 'joomla', '6', 0, '{"features_item_title":"-title-","features_item_description":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d (\\u0430\\u043d\\u0433\\u043b. online shop \\u0438\\u043b\\u0438 e-shop) \\u2014 \\u0441\\u0430\\u0439\\u0442, \\u0442\\u043e\\u0440\\u0433\\u0443\\u044e\\u0449\\u0438\\u0439 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430\\u043c\\u0438 \\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u043e\\u043c \\u0441\\u0435\\u0442\\u0438 \\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442. \\u041f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f\\u043c \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d, \\u0432 \\u0441\\u0432\\u043e\\u0451\\u043c \\u0431\\u0440\\u0430\\u0443\\u0437\\u0435\\u0440\\u0435, \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437 \\u043d\\u0430 \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0443, \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u043e\\u043f\\u043b\\u0430\\u0442\\u0438\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0434\\u0435\\u043d\\u044c\\u0433\\u0430\\u043c\\u0438.","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img1.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_features_item_image&undefined&undefined''}","features_item_link":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(223, '89', 'joomla', '10', 4, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"{''type'':''mediamanager'',''path'':''images\\/img13.jpg'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_10__params_features_item_image&undefined&undefined''}","features_item_link":"-default-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":null,"lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(240, '92', 'joomla', '4', 1, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-article-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(158, '96', 'simple', '5', 0, '{"_article_title":"\\u0412\\u0438\\u0437\\u0438\\u0442\\u043a\\u0438","strips_item_title":"-default-","strips_item_image":"-none-","strips_item_link":"-default-","strips_item_description":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(159, '96', 'simple', '4', 1, '{"_article_title":"\\u0411\\u0443\\u043a\\u043b\\u0435\\u0442\\u044b","strips_item_title":"-default-","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(160, '96', 'simple', '3', 2, '{"_article_title":"\\u041b\\u0438\\u0441\\u0442\\u043e\\u0432\\u043a\\u0438","strips_item_title":"-default-","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(161, '96', 'simple', '2', 3, '{"_article_title":"\\u0414\\u0438\\u0437\\u0430\\u0439\\u043d \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u043e\\u0432","strips_item_title":"-default-","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(162, '96', 'simple', '1', 4, '{"_article_title":"\\u0420\\u0435\\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0441\\u0430\\u0439\\u0442\\u0430","strips_item_title":"-default-","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"-default-","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(180, '99', 'joomla', '16', 0, '{"features_item_title":"-default-","features_item_description":"-default-","features_item_image":"-default-","features_item_link":"http:\\/\\/www.intelweb-nsk.ru\\/index.php\\/kontakty","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","headlines_item_link":"-default-","headlines_item_description":"-default-"}'),
(185, '100', 'joomla', '16', 0, '{"mosaic_item_title":"-default-","mosaic_item_description":"-article-","mosaic_item_image":"{''type'':''mediamanager'',''path'':''images\\/Picture-13.png'',''preview'':'''',''link'':''index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_16__params_mosaic_item_image''}","mosaic_item_link":"http:\\/\\/www.intelweb-nsk.ru\\/index.php\\/kontakty","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(203, '107', 'simple', '1', 0, '{"_article_title":"\\u0421\\u0430\\u0439\\u0442-\\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430","mosaic_item_title":"-default-","mosaic_item_description":"\\u0421\\u0440\\u043e\\u043a \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 - 1 \\u0434\\u0435\\u043d\\u044c*   \\u0414\\u043e\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0438\\u043c\\u044f .RU \\/ .\\u0420\\u0424 (1 \\u0433\\u043e\\u0434)    \\u0425\\u043e\\u0441\\u0442\\u0438\\u043d\\u0433 (3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430)    \\u041d\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 3 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446 \\u0441\\u0430\\u0439\\u0442\\u0430*    \\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430\\"*    \\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438\\"*    \\u0413\\u043e\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0441\\u0430\\u0439\\u0442\\u0430    CMS \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c    \\u0421\\u0447\\u0435\\u0442\\u0447\\u0438\\u043a \\u043f\\u043e\\u0441\\u0435\\u0449\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430   \\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u0445","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(204, '118', 'simple', '2', 0, '{"_article_title":"\\u0421\\u0430\\u0439\\u0442 \\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430","mosaic_item_title":"-default-","mosaic_item_description":"    \\u0421\\u0440\\u043e\\u043a \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 - 1 \\u0434\\u0435\\u043d\\u044c*\\n    \\u0414\\u043e\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0438\\u043c\\u044f .RU \\/ .\\u0420\\u0424 (1 \\u0433\\u043e\\u0434)\\n    \\u0425\\u043e\\u0441\\u0442\\u0438\\u043d\\u0433 (3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430)\\n    \\u041d\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 3 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446 \\u0441\\u0430\\u0439\\u0442\\u0430*\\n    \\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430\\"*\\n    \\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438\\"*\\n    \\u0413\\u043e\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0441\\u0430\\u0439\\u0442\\u0430\\n    CMS \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c\\n    \\u0421\\u0447\\u0435\\u0442\\u0447\\u0438\\u043a \\u043f\\u043e\\u0441\\u0435\\u0449\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430\\n    \\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u0445","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(205, '118', 'simple', '1', 1, '{"_article_title":"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0443\\u043b\\u0438","mosaic_item_title":"-default-","mosaic_item_description":"\\u0412\\u043e\\u043f\\u0440\\u043e\\u0441-\\u043e\\u0442\\u0432\\u0435\\u0442\\n\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432\\n\\u0424\\u043e\\u0442\\u043e\\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f\\n\\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0438\\n\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(210, '119', 'simple', '2', 0, '{"_article_title":"\\u0421\\u0430\\u0439\\u0442-\\u0432\\u0438\\u0437\\u0438\\u0442\\u043a\\u0430","strips_item_title":"-default-","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":"    \\u0421\\u0440\\u043e\\u043a \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 - 1 \\u0434\\u0435\\u043d\\u044c*\\n    \\u0414\\u043e\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u0438\\u043c\\u044f .RU \\/ .\\u0420\\u0424 (1 \\u0433\\u043e\\u0434)\\n    \\u0425\\u043e\\u0441\\u0442\\u0438\\u043d\\u0433 (3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430)\\n    \\u041d\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 3 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446 \\u0441\\u0430\\u0439\\u0442\\u0430*\\n    \\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430\\"*\\n    \\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e\\u0439 \\u0441\\u0432\\u044f\\u0437\\u0438\\"*\\n    \\u0413\\u043e\\u0442\\u043e\\u0432\\u044b\\u0439 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0441\\u0430\\u0439\\u0442\\u0430\\n    CMS \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430 \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c\\n    \\u0421\\u0447\\u0435\\u0442\\u0447\\u0438\\u043a \\u043f\\u043e\\u0441\\u0435\\u0449\\u0430\\u0435\\u043c\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430\\n    \\u0420\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u043e\\u0432\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u0430\\u0445","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(211, '119', 'simple', '1', 1, '{"_article_title":"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0443\\u043b\\u0438","strips_item_title":"-default-","strips_item_image":"-default-","strips_item_link":"-default-","strips_item_description":" {source}   \\u0412\\u043e\\u043f\\u0440\\u043e\\u0441-\\u043e\\u0442\\u0432\\u0435\\u0442 <br \\/>    \\n\\u041a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432  <br \\/>\\n\\u0424\\u043e\\u0442\\u043e\\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f  <br \\/>\\n\\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0438  <br \\/>   \\n\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 <br \\/> {\\/source}   ","tabs_item_title":"-default-","lists_item_title":"-default-","mosaic_item_title":"-default-","mosaic_item_description":"-default-","tabs_item_icon":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","mosaic_item_image":"-default-","lists_item_link":"-default-","tabs_item_description":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(212, '120', 'joomla', '11', 0, '{"mosaic_item_title":"-default-","mosaic_item_description":"-article-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(213, '120', 'joomla', '19', 1, '{"mosaic_item_title":"-default-","mosaic_item_description":"-article-","mosaic_item_image":"-default-","mosaic_item_link":"-default-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(243, '92', 'joomla', '13', 4, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-article-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}'),
(239, '92', 'joomla', '2', 0, '{"mosaic_item_title":"-default-","mosaic_item_description":"-default-","mosaic_item_image":"-default-","mosaic_item_link":"-article-","mosaic_item_tags":"-article-","tabs_item_title":"-default-","strips_item_title":"-default-","lists_item_title":"-default-","tabs_item_icon":"-default-","strips_item_image":"-default-","lists_item_image":"-default-","tabs_item_link":"-default-","lists_item_link":"-default-","strips_item_link":"-default-","tabs_item_description":"-default-","features_item_title":"-default-","lists_item_description":"-default-","headlines_item_image":"-default-","strips_item_description":"-default-","features_item_description":"-default-","features_item_image":"-default-","headlines_item_link":"-default-","features_item_link":"-default-","headlines_item_description":"-default-"}');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_schemas`
--

CREATE TABLE IF NOT EXISTS `m7bpc_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_schemas`
--

INSERT INTO `m7bpc_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.2.3-2014-02-20');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_session`
--

CREATE TABLE IF NOT EXISTS `m7bpc_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_session`
--

INSERT INTO `m7bpc_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('ae95d136c57f22e3ed3d5d998204932f', 0, 1, '1413736164', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1413736164;s:18:"session.timer.last";i:1413736164;s:17:"session.timer.now";i:1413736164;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}gcore|a:2:{s:4:"user";a:9:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:10:"last_login";N;s:9:"logged_in";b:0;s:5:"guest";i:1;s:6:"groups";a:1:{i:0;s:1:"9";}s:11:"inheritance";a:2:{i:0;s:1:"1";i:1;s:1:"0";}}s:13:"gcore_captcha";s:32:"c8465353d451a255b9143f06acb8a2bb";}', 0, ''),
('57e70ea4bfd36ee38654bdf90a0d2a24', 0, 1, '1413737018', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1413737017;s:18:"session.timer.last";i:1413737017;s:17:"session.timer.now";i:1413737017;s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Firefox/31.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:23:"gantry-current-template";s:10:"rt_stratos";}gcore|a:1:{s:4:"user";a:9:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:10:"last_login";N;s:9:"logged_in";b:0;s:5:"guest";i:1;s:6:"groups";a:1:{i:0;s:1:"9";}s:11:"inheritance";a:2:{i:0;s:1:"1";i:1;s:1:"0";}}}', 0, ''),
('686cd8176c51fb02c6754a13ab0a9686', 0, 1, '1413737058', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1413737058;s:18:"session.timer.last";i:1413737058;s:17:"session.timer.now";i:1413737058;s:22:"session.client.browser";s:85:"Mozilla/5.0 (compatible; YandexMetrika/2.0; +http://yandex.com/bots mtmon1.yandex.ru)";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:23:"gantry-current-template";s:10:"rt_stratos";}gcore|a:1:{s:4:"user";a:9:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:10:"last_login";N;s:9:"logged_in";b:0;s:5:"guest";i:1;s:6:"groups";a:1:{i:0;s:1:"9";}s:11:"inheritance";a:2:{i:0;s:1:"1";i:1;s:1:"0";}}}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_tags`
--

CREATE TABLE IF NOT EXISTS `m7bpc_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
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
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `m7bpc_tags`
--

INSERT INTO `m7bpc_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_template_styles`
--

CREATE TABLE IF NOT EXISTS `m7bpc_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `m7bpc_template_styles`
--

INSERT INTO `m7bpc_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'rt_stratos', 0, '1', 'Stratos - Default', '{"master":"true","current_id":"10","template_full_name":"Stratos","grid_system":"12","template_prefix":"stratos-","cookie_time":"31536000","override_set":"2.5","name":"Preset1","copy_lang_files_if_diff":"1","logo":{"enabled":"1","position":"top-a","type":"custom","custom":{"image":"{''path'':''images\\/logo.png''}"}},"background":{"color":"#eef1f6","overlay":"light","type":"light-diagonal-strips","customtop":{"image":""}},"header":{"background":"#1a1a1a","overlay":"dark","layout":"a:1:{i:12;a:2:{i:1;a:1:{i:0;i:12;}i:2;a:2:{i:0;i:4;i:1;i:8;}}}","showall":"0","showmax":"6"},"main":{"accent":"#009bdd","accent2":"#F45E5F","body":"light"},"font":{"family":"s:helvetica","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","dropdownmenu-priority":"18","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","webfonts-priority":"27","styledeclaration-enabled":"1","social":{"enabled":"0","button-1-icon":"http:\\/\\/vk.com\\/","button-2-icon":"http:\\/\\/facebook.com","button-3-icon":"","button-4-icon":"","button-5-icon":"","button-6-icon":"","position":"showcase-a","button-1-link":"http:\\/\\/vk.com\\/","button-2-link":"http:\\/\\/facebook.com","button-3-link":"","button-4-link":"","button-5-link":"","button-6-link":""},"date":{"enabled":"0","position":"top-d","clientside":"0","formats":"%A, %B %d, %Y"},"fontsizer":{"enabled":"0","position":"feature-b"},"login":{"enabled":"0","position":"utility-c","text":"\\u0412\\u0445\\u043e\\u0434","logouttext":"\\u0412\\u044b\\u0445\\u043e\\u0434"},"popup":{"enabled":"0","position":"utility-d","text":"\\u043a\\u0430\\u043a\\u043e\\u0439 \\u0442\\u043e \\u043c\\u043e\\u0434\\u0443\\u043b\\u044c"},"branding":{"enabled":"0","position":"copyright-a"},"copyright":{"enabled":"0","position":"copyright-a","text":"\\u0418\\u043d\\u0442\\u0435\\u043b\\u0412\\u0435\\u0431 2013","layout":"3,3,3,3","showall":"0","showmax":"6"},"totop":{"enabled":"1","position":"copyright-b","text":"\\u0412\\u0432\\u0435\\u0440\\u0445"},"systemmessages":{"enabled":"1","position":"drawer"},"resetsettings":{"enabled":"0","position":"copyright-d","text":"Reset Settings"},"analytics":{"enabled":"1","code":"UA-36425569-2","position":"analytics"},"menu":{"enabled":"1","type":"dropdownmenu","dropdownmenu":{"theme":"gantry-dropdown","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","menutype":"mainmenu","position":"header-b","responsive-menu":"panel","enable-current-id":"0","module_cache":"1"},"splitmenu":{"mainmenu-limit_levels":"1","mainmenu-startLevel":"0","mainmenu-endLevel":"0","mainmenu-class_sfx":"top","submenu-limit_levels":"1","submenu-startLevel":"1","submenu-endLevel":"9","cache":"0","menutype":"mainmenu","theme":"gantry-splitmenu","mainmenu-position":"header-b","submenu-position":"sidebar-a","submenu-title":"1","submenu-class_sfx":"","submenu-module_sfx":"","responsive-menu":"panel","roknavmenu_dropdown_enable-current-id":"0","module_cache":"1"}},"top":{"layout":"a:1:{i:12;a:1:{i:2;a:2:{i:0;i:8;i:1;i:4;}}}","showall":"0","showmax":"6"},"showcase":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"feature":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"utility":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"maintop":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"a:1:{i:12;a:1:{i:3;a:3:{s:2:\\"sa\\";i:3;s:2:\\"mb\\";i:6;s:2:\\"sb\\";i:3;}}}","mainbottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"extension":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"layout-mode":"responsive","loadtransition":"0","component-enabled":"1","mainbody-enabled":"1","rtl-enabled":"0","pagesuffix-enabled":"0","selectivizr-enabled":"0","less":{"compression":"1","compilewait":"2","debugheader":"0"},"ie7splash-enabled":"1","k2":"1"}');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_ucm_base`
--

CREATE TABLE IF NOT EXISTS `m7bpc_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_ucm_content`
--

CREATE TABLE IF NOT EXISTS `m7bpc_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_ucm_history`
--

CREATE TABLE IF NOT EXISTS `m7bpc_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_updates`
--

CREATE TABLE IF NOT EXISTS `m7bpc_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=69 ;

--
-- Дамп данных таблицы `m7bpc_updates`
--

INSERT INTO `m7bpc_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.3.1', '', 'http://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(11, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(12, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(30, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(31, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(32, 3, 10002, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(33, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(34, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(35, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(36, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(37, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(38, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(39, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.2.0.6', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(40, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(41, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(42, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(43, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(44, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(45, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(46, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(47, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(48, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(49, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(50, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(51, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(52, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(53, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(54, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(55, 5, 10027, 'RokSprocket Module', '', 'mod_roksprocket', 'module', '', 0, '2.1.1', '0802', 'http://updates.rockettheme.com/joomla/138/b61e70db', '', ''),
(56, 5, 0, 'RokGallery Extension', '', 'com_rokgallery', 'component', '', 0, '2.29', '0802', 'http://updates.rockettheme.com/joomla/286/21ffe006', '', ''),
(57, 5, 10011, 'RokAjaxSearch Module', '', 'mod_rokajaxsearch', 'module', '', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/290/1d5a0af1', '', ''),
(58, 5, 0, 'RokWeather Module', '', 'mod_rokweather', 'module', '', 0, '2.0.3', '0802', 'http://updates.rockettheme.com/joomla/292/a0cbba72', '', ''),
(59, 5, 0, 'RokStock Module', '', 'mod_rokstock', 'module', '', 0, '2.0.1', '0802', 'http://updates.rockettheme.com/joomla/295/87c1121c', '', ''),
(60, 5, 0, 'RokFeatureTable Module', '', 'mod_rokfeaturetable', 'module', '', 0, '1.6', '0802', 'http://updates.rockettheme.com/joomla/296/fb9111b3', '', ''),
(61, 5, 0, 'RokMiniEvents3 Module', '', 'mod_rokminievents', 'module', '', 0, '3.0.0', '0802', 'http://updates.rockettheme.com/joomla/297/1686051690', '', ''),
(62, 5, 0, 'RokQuickCart Extension', '', 'com_rokquickcart', 'component', '', 0, '2.1.2', '0802', 'http://updates.rockettheme.com/joomla/298/ddfa10eb', '', ''),
(63, 5, 0, 'RokCandy Extension', '', 'com_rokcandy', 'component', '', 0, '2.0.1', '0802', 'http://updates.rockettheme.com/joomla/302/2df8a4e2', '', ''),
(64, 5, 0, 'RokComments Plugin', '', 'rokcomments', 'plugin', 'content', 0, '2.0.2', '0802', 'http://updates.rockettheme.com/joomla/303/d1fd7b76', '', ''),
(65, 5, 0, 'RokBridge Extension', '', 'com_rokbridge', 'component', '', 0, '3.2', '0802', 'http://updates.rockettheme.com/joomla/304/535b5e07', '', ''),
(66, 5, 0, 'RokUpdater Plugin', '', 'rokupdater', 'plugin', 'system', 0, '1.0.8', '0802', 'http://updates.rockettheme.com/joomla/305/ea19bc50', '', ''),
(67, 6, 10031, 'Gantry', 'Gantry Framework', 'lib_gantry', 'library', '', 0, '4.1.24', '', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 'http://www.gantry-framework.org', ''),
(68, 7, 10040, 'Sourcerer', '', 'sourcerer', 'plugin', 'system', 0, '4.3.3FREE', '', 'http://download.nonumber.nl/updates.php?e=sourcerer&type=.zip', 'http://www.nonumber.nl/extensions/sourcerer#download', '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_update_sites`
--

CREATE TABLE IF NOT EXISTS `m7bpc_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `m7bpc_update_sites`
--

INSERT INTO `m7bpc_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1403379215, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1403379215, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1403379215, ''),
(5, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 1403379215, ''),
(6, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1403379215, ''),
(7, 'NoNumber Sourcerer', 'extension', 'http://download.nonumber.nl/updates.php?e=sourcerer&type=.zip', 1, 1403379215, ''),
(8, 'Joomline', 'extension', 'http://joomline.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=3&dummy=extension.xml', 1, 1403379215, ''),
(9, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1403379215, ''),
(10, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1403379215, ''),
(11, 'Xmap Update Site', 'extension', 'https://raw.github.com/guilleva/Xmap/master/xmap-update.xml', 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `m7bpc_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `m7bpc_update_sites_extensions`
--

INSERT INTO `m7bpc_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10002),
(5, 10009),
(5, 10011),
(5, 10013),
(5, 10015),
(5, 10022),
(5, 10027),
(5, 10029),
(5, 10039),
(6, 10031),
(7, 10040),
(7, 10041),
(8, 10043),
(9, 10047),
(10, 10048),
(11, 10065);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_usergroups`
--

CREATE TABLE IF NOT EXISTS `m7bpc_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `m7bpc_usergroups`
--

INSERT INTO `m7bpc_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
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
-- Структура таблицы `m7bpc_users`
--

CREATE TABLE IF NOT EXISTS `m7bpc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=755 ;

--
-- Дамп данных таблицы `m7bpc_users`
--

INSERT INTO `m7bpc_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES
(754, 'Super User', 'admin', 'linansk@inbox.ru', '$P$DZeHFS2F7qvBI4pOq4WDJZtdndcjvI0', 0, 1, '2014-03-11 17:12:20', '2014-06-21 19:18:39', '0', '{}', '0000-00-00 00:00:00', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_user_keys`
--

CREATE TABLE IF NOT EXISTS `m7bpc_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_user_notes`
--

CREATE TABLE IF NOT EXISTS `m7bpc_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_user_profiles`
--

CREATE TABLE IF NOT EXISTS `m7bpc_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `m7bpc_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `m7bpc_user_usergroup_map`
--

INSERT INTO `m7bpc_user_usergroup_map` (`user_id`, `group_id`) VALUES
(754, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_viewlevels`
--

CREATE TABLE IF NOT EXISTS `m7bpc_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `m7bpc_viewlevels`
--

INSERT INTO `m7bpc_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_weblinks`
--

CREATE TABLE IF NOT EXISTS `m7bpc_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
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
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
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

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_xmap_items`
--
-- используется(#1286 - Unknown table engine 'InnoDB')
-- Ошибка считывания данных: (#1286 - Unknown table engine 'InnoDB')

-- --------------------------------------------------------

--
-- Структура таблицы `m7bpc_xmap_sitemap`
--
-- используется(#1286 - Unknown table engine 'InnoDB')
-- Ошибка считывания данных: (#1286 - Unknown table engine 'InnoDB')

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
