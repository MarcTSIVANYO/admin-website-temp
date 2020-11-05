/*
 Navicat Premium Data Transfer

 Source Server         : XAMPP
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : acdief_db

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 10/04/2020 23:03:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fixed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `indice` int(11) NOT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of albums
-- ----------------------------
INSERT INTO `albums` VALUES (1, 'Accueil Slider', 'home-slider', 1, 1, 1, '2020-04-09 03:08:35', '2020-04-09 01:08:35');
INSERT INTO `albums` VALUES (2, 'Nos Partenaires', 'partenaires', 2, 1, 1, '2020-04-09 16:39:56', '2020-04-09 16:39:56');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fichier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `contenu` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `categorie_id` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `categorie_id`(`categorie_id`) USING BTREE,
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (1, 'Origine', 'origine1', NULL, 1, '<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 1, '2017-03-30 08:53:24', '2017-03-30 09:01:23');
INSERT INTO `articles` VALUES (2, 'Origine', 'origine', NULL, 1, '<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 2, '2017-03-30 08:54:17', '2017-03-30 10:46:40');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fichier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `contenu` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `page_id`(`page_id`) USING BTREE,
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Apropos', 'est une association à but non lucratif,pour promouvoir les droits de l’homme en général et en particulier les droits des enfants, de la jeune fille.', 'fichiers_siteWeb/1586449841.JPG', 1, '<p>La question des droits de l&rsquo;homme en g&eacute;n&eacute;ral et celle des droits des enfants et de la jeune fille en particulier, la probl&eacute;matique de la paix et la s&eacute;curit&eacute; en Afrique de l&rsquo;ouest en g&eacute;n&eacute;ral et au Togo en particulier, la probl&eacute;matique de l&rsquo;engagement civique des jeunes togolais et la question de l&rsquo;autonomisation financi&egrave;re des jeunes filles ont suscit&eacute; des interrogations aux jeunes conscients de leur contribution au processus du d&eacute;veloppement au Togo et en Afrique. Pour y parvenir, ces jeunes se sont r&eacute;unis en association d&eacute;nomm&eacute;e ACDIEF.<br />\r\nACDIEF entendue Action Collective pour le D&eacute;veloppement Int&eacute;gral de l&rsquo;Enfance et de la jeune Fille (ACDIEF) est une association &agrave; but non lucratif cr&eacute;&eacute;e en avril 2013. Elle a eu son r&eacute;c&eacute;piss&eacute; le 03 octobre 2019 sous le num&eacute;ro&nbsp;<strong>0923/MATDCL-SG-DLPAP-DOCA.</strong><br />\r\nElle est une association cr&eacute;&eacute;e par des jeunes et dirig&eacute;e par des jeunes dynamiques togolais &eacute;pris de la question du d&eacute;veloppement humain durable dans un contexte de paix et des droits humains.</p>\r\n', 1, 1, 1, '2020-04-10 22:17:14', '2020-04-10 22:17:14');
INSERT INTO `categories` VALUES (2, 'Notre But', 'but', 'fichiers_siteWeb/1586450007.JPG', 2, '<p>L&rsquo;Organisation a pour but de contribuer &agrave; l&rsquo;&eacute;panouissement de l&rsquo;enfance et de la jeune fille dans une approche de d&eacute;veloppement humain durable et participatif, promouvoir la paix et la s&eacute;curit&eacute;.</p>\r\n', 1, 1, 1, '2020-04-09 18:33:27', '2020-04-09 16:33:27');
INSERT INTO `categories` VALUES (3, 'Nos objectifs', 'objectifs', 'fichiers_siteWeb/1586450031.JPG', 3, '<p>Promouvoir et prot&eacute;ger les droits humains en g&eacute;n&eacute;ral, les droits des enfants et de la jeune fille en particulier. Promouvoir la paix et la s&eacute;curit&eacute;. Offrir un accompagnement social, psychologique aux enfants et jeunes fille d&eacute;munies. Offrir un accompagnement juridique, psychosocial aux enfants et jeunes filles en conflit avec la loi.</p>\r\n', 1, 1, 1, '2020-04-09 18:33:51', '2020-04-09 16:33:51');
INSERT INTO `categories` VALUES (4, 'Notre mission', 'mission', 'fichiers_siteWeb/1586450047.JPG', 4, '<p>Informer, &eacute;duquer et communiquer autour de la question des droits humains, li&eacute;e aux groupes vuln&eacute;rables, jeunes et aux communaut&eacute;s &agrave; la base ; mobiliser les jeunes et autres acteurs autours de la question de l&rsquo;engagement civique, la paix et la s&eacute;curit&eacute; et l&rsquo;entrepreneuriat.</p>\r\n', 1, 1, 1, '2020-04-09 18:34:07', '2020-04-09 16:34:07');
INSERT INTO `categories` VALUES (6, 'GaucheInfos', 'Informations à gauches', NULL, 1, '<ul>\r\n	<li><strong>Enseignement des droits humains dans les &eacute;coles et mise en place des clubs de jeunes promoteurs des droits humains en milieux scolaires</strong></li>\r\n	<li><strong>Monitoring des lieux d&eacute;tention</strong></li>\r\n	<li><strong>Protections des groupes vuln&eacute;rables</strong></li>\r\n	<li><strong>Droits de l&rsquo;homme et moi</strong></li>\r\n	<li><strong>Jeunesse, citoyennet&eacute;, paix et s&eacute;curit&eacute;</strong></li>\r\n	<li><strong>Forum national et international</strong></li>\r\n	<li><strong>Concours des droits de l&rsquo;homme</strong></li>\r\n</ul>\r\n', 1, 1, 5, '2020-04-09 03:17:40', '2020-04-09 01:17:40');
INSERT INTO `categories` VALUES (7, 'DroiteInfos', 'Informations à droite', NULL, 2, '<ul>\r\n	<li><strong>Un paquet de cahier &agrave; yawa</strong></li>\r\n	<li><strong>Education &agrave; la citoyennet&eacute; et aux valeurs de paix</strong></li>\r\n	<li><strong>Formation en entrepreneuriat</strong></li>\r\n	<li><strong>Organisation des rencontres d&rsquo;opportunit&eacute;</strong></li>\r\n	<li><strong>Organisation des conf&eacute;rences et ateliers</strong></li>\r\n	<li><strong>Organisation des camps de soutien scolaires</strong></li>\r\n	<li><strong>Action humanitaires &agrave; l&rsquo;endroit des enfants et jeunes filles</strong></li>\r\n	<li><strong>Lutte contre les violences bas&eacute;es sur le genre</strong></li>\r\n	<li><strong>TIC et jeunes filles en milieux scolaires</strong></li>\r\n</ul>\r\n', 1, 1, 5, '2020-04-09 03:18:09', '2020-04-09 01:18:09');
INSERT INTO `categories` VALUES (8, 'FORMATION DES AMBASSADEURS DE LUTTE CONTRE LES VIOLENCES BASÉES SUR LE GENRE.', 'formation-des-ambassadeurs', 'fichiers_siteWeb/1586396726.jpg', 1, '<p>Dans le cadre de ses actions de lutte contre les violences bas&eacute;es sur le genre et donc de promotion de l&rsquo;autonomisation de la jeune fille et de la femme, ACDIEF a initi&eacute; le projet de formation des ambassadeurs de lutte contre les VBG. Ce projet a permis de disposer des ambassadeurs dans la r&eacute;gion Maritime. Il se poursuivra dans la r&eacute;gion des plateaux, centrale, Kara et Savanes. L&rsquo;objectif est de disposer de ces ambassadeurs dans toutes les r&eacute;gions pour servir des cellules d&rsquo;&eacute;coutes et d&rsquo;alerte sur les VBG.</p>\r\n', 1, 1, 6, '2020-04-09 01:45:26', '2020-04-09 01:45:26');
INSERT INTO `categories` VALUES (9, 'SOUTIEN SCOLAIRE AUX JEUNES FILLES ET ENFANTS DÉMUNIS', 'soutien-scolaire', NULL, 2, '<p>Ce projet consiste &agrave; renforcer les capacit&eacute;s des enfants et jeunes filles d&eacute;munis des zones rurales sur des th&eacute;matiques pr&eacute;cises et &agrave; leur offrir des kits scolaires pour leur rentr&eacute;e scolaire. En 2019, 199 filles et enfants d&eacute;munis de Djagbl&eacute; ont &eacute;t&eacute; familiaris&eacute;s &agrave; l&#39;outil informatique puis b&eacute;n&eacute;fici&eacute; des kits scolaires</p>\r\n', 1, 1, 6, '2020-04-09 01:47:56', '2020-04-09 01:47:56');
INSERT INTO `categories` VALUES (10, 'Education aux droits humains en milieux scolaires et carcérales', 'Education aux droits humains en milieux scolaires et carcérales', NULL, 1, '<p>Education aux droits humains en milieux scolaires et carc&eacute;rales</p>\r\n', 1, 1, 4, '2020-04-09 01:50:47', '2020-04-09 01:50:47');
INSERT INTO `categories` VALUES (11, 'Assistance aux victimes de violation des droits humains', 'Assistance aux victimes de violation des droits humains', NULL, 2, '', 1, 1, 4, '2020-04-09 01:51:16', '2020-04-09 01:51:16');
INSERT INTO `categories` VALUES (12, 'Camps de soutien scolaire aux enfants et jeunes filles démunis', 'Camps de soutien scolaire aux enfants et jeunes filles démunis', NULL, 3, '', 1, 1, 4, '2020-04-09 01:51:39', '2020-04-09 01:51:39');
INSERT INTO `categories` VALUES (13, 'Jeunesse- Paix et sécurité', 'Jeunesse- Paix et sécurité', NULL, 4, '', 1, 1, 4, '2020-04-09 01:52:04', '2020-04-09 01:52:04');
INSERT INTO `categories` VALUES (14, 'Autonomisation de la jeune fille et de la femme', 'Autonomisation de la jeune fille et de la femme', NULL, 5, '<p>Autonomisation de la jeune fille et de la femme</p>\r\n', 1, 1, 4, '2020-04-09 01:52:29', '2020-04-09 01:52:29');
INSERT INTO `categories` VALUES (15, 'Médias –droits humains', 'Médias –droits humains', NULL, 6, '', 1, 1, 4, '2020-04-09 01:52:51', '2020-04-09 01:52:51');
INSERT INTO `categories` VALUES (16, 'ACDIEF Fellow', 'ACDIEF Fellow', NULL, 7, '', 1, 1, 4, '2020-04-09 01:53:09', '2020-04-09 01:53:09');
INSERT INTO `categories` VALUES (17, 'Action humanitaire', 'Action humanitaire', NULL, 8, '', 1, 1, 4, '2020-04-09 01:53:38', '2020-04-09 01:53:38');
INSERT INTO `categories` VALUES (18, 'Formation', 'Formation', NULL, 9, '', 1, 1, 4, '2020-04-09 01:53:52', '2020-04-09 01:53:52');
INSERT INTO `categories` VALUES (19, 'Promotion et protection des droits humains', 'Droits des enfants et de la jeune fille.', 'fichiers_siteWeb/1586449644.jpg', 1, '<p>Droits des enfants et de la jeune fille.</p>\r\n', 1, 1, 2, '2020-04-09 18:27:24', '2020-04-09 16:27:24');
INSERT INTO `categories` VALUES (20, 'Paix et Sécurité', 'Paix et Sécurité', 'fichiers_siteWeb/1586449644.jpg', 2, '<p>Paix et S&eacute;curit&eacute;</p>\r\n', 1, 1, 2, '2020-04-09 18:28:44', '2020-04-09 18:28:44');
INSERT INTO `categories` VALUES (21, 'Entrepreneuriat des jeunes', 'Entrepreneuriat des jeunes', 'fichiers_siteWeb/1586449644.jpg', 3, '<p>Entrepreneuriat des jeunes</p>\r\n', 1, 1, 2, '2020-04-09 18:28:45', '2020-04-09 18:28:45');

-- ----------------------------
-- Table structure for configurations
-- ----------------------------
DROP TABLE IF EXISTS `configurations`;
CREATE TABLE `configurations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adresse_physique` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of configurations
-- ----------------------------
INSERT INTO `configurations` VALUES (1, 'ACDIEF', '+228 91 91 27 03', '+228 99 63 96 60', 'acdieftogo@gmail.com', 'Lomé-TOGO', 'fichiers/logo-1586396326.jpg', 'fichiers/favicon-1586396327.jpg', 'www-acdieftogo.org', 1, '2020-04-10 16:13:34', '2020-04-10 16:13:34');

-- ----------------------------
-- Table structure for droits
-- ----------------------------
DROP TABLE IF EXISTS `droits`;
CREATE TABLE `droits`  (
  `id_droits` int(11) NOT NULL AUTO_INCREMENT,
  `publier_droits` tinyint(1) NOT NULL DEFAULT 1,
  `visible_droits` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `id_sous_menus` int(11) NULL DEFAULT NULL,
  `id_users` int(11) NULL DEFAULT NULL,
  `id_type_users` int(11) NULL DEFAULT NULL,
  `id_menus` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_droits`) USING BTREE,
  INDEX `id_sous_menus`(`id_sous_menus`) USING BTREE,
  INDEX `id_type_users`(`id_type_users`) USING BTREE,
  INDEX `id_menus`(`id_menus`) USING BTREE,
  CONSTRAINT `droits_ibfk_1` FOREIGN KEY (`id_sous_menus`) REFERENCES `sous_menus` (`id_sous_menus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `droits_ibfk_2` FOREIGN KEY (`id_type_users`) REFERENCES `type_users` (`id_type_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `droits_ibfk_3` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id_menus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of droits
-- ----------------------------
INSERT INTO `droits` VALUES (51, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', 4, NULL, 2, NULL);
INSERT INTO `droits` VALUES (52, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', 8, NULL, 2, NULL);
INSERT INTO `droits` VALUES (53, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', 9, NULL, 2, NULL);
INSERT INTO `droits` VALUES (54, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', 10, NULL, 2, NULL);
INSERT INTO `droits` VALUES (55, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', 11, NULL, 2, NULL);
INSERT INTO `droits` VALUES (56, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', NULL, NULL, 2, 7);
INSERT INTO `droits` VALUES (57, 1, 1, '2020-04-10 21:01:47', '2020-04-10 21:01:47', NULL, NULL, 2, 9);
INSERT INTO `droits` VALUES (58, 1, 1, '2020-04-10 21:02:10', '2020-04-10 21:02:10', 1, NULL, 1, NULL);
INSERT INTO `droits` VALUES (59, 1, 1, '2020-04-10 21:02:10', '2020-04-10 21:02:10', 2, NULL, 1, NULL);
INSERT INTO `droits` VALUES (60, 1, 1, '2020-04-10 21:02:10', '2020-04-10 21:02:10', 3, NULL, 1, NULL);
INSERT INTO `droits` VALUES (61, 1, 1, '2020-04-10 21:02:10', '2020-04-10 21:02:10', 4, NULL, 1, NULL);
INSERT INTO `droits` VALUES (62, 1, 1, '2020-04-10 21:02:10', '2020-04-10 21:02:10', 8, NULL, 1, NULL);
INSERT INTO `droits` VALUES (63, 1, 1, '2020-04-10 21:02:10', '2020-04-10 21:02:10', 9, NULL, 1, NULL);
INSERT INTO `droits` VALUES (64, 1, 1, '2020-04-10 21:02:11', '2020-04-10 21:02:11', 10, NULL, 1, NULL);
INSERT INTO `droits` VALUES (65, 1, 1, '2020-04-10 21:02:11', '2020-04-10 21:02:11', 11, NULL, 1, NULL);
INSERT INTO `droits` VALUES (66, 1, 1, '2020-04-10 21:02:11', '2020-04-10 21:02:11', NULL, NULL, 1, 7);
INSERT INTO `droits` VALUES (67, 1, 1, '2020-04-10 21:02:11', '2020-04-10 21:02:11', NULL, NULL, 1, 9);

-- ----------------------------
-- Table structure for groupe_users
-- ----------------------------
DROP TABLE IF EXISTS `groupe_users`;
CREATE TABLE `groupe_users`  (
  `id_groupe_users` int(11) NOT NULL AUTO_INCREMENT,
  `publier_groupe_users` tinyint(1) NOT NULL DEFAULT 1,
  `visible_groupe_users` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_type_users` int(11) NOT NULL,
  PRIMARY KEY (`id_groupe_users`) USING BTREE,
  INDEX `id_users`(`id_users`) USING BTREE,
  INDEX `id_type_users`(`id_type_users`) USING BTREE,
  CONSTRAINT `groupe_users_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `groupe_users_ibfk_2` FOREIGN KEY (`id_type_users`) REFERENCES `type_users` (`id_type_users`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groupe_users
-- ----------------------------
INSERT INTO `groupe_users` VALUES (1, 1, 1, NULL, NULL, 1, 1);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id_menus` int(11) NOT NULL AUTO_INCREMENT,
  `titre_menus` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `libelle_menus` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lien_menus` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `indice_menus` int(11) NOT NULL,
  `publier_menus` tinyint(1) NOT NULL DEFAULT 1,
  `visible_menus` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_menus`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Paramétrage', 'fa-key', 'null', 1, 1, 1, '2017-03-29 05:57:08', '2017-04-01 09:31:33');
INSERT INTO `menus` VALUES (5, 'Section', 'fa-navicon', 'admin/sections', 3, 1, 1, '2017-03-29 14:04:24', '2017-03-30 11:15:20');
INSERT INTO `menus` VALUES (6, 'Pages', 'fa-book', 'admin/pages', 4, 1, 1, '2017-03-29 15:11:14', '2017-03-30 11:09:35');
INSERT INTO `menus` VALUES (7, 'Gestion des Partenaires', 'fa fa-file-text', 'admin/albums', 5, 1, 1, '2017-03-30 11:11:05', '2017-03-30 11:11:05');
INSERT INTO `menus` VALUES (8, 'Gestion du site web', 'fa fa-cog', 'siteweb', 2, 1, 1, '2020-04-08 23:16:57', '2020-04-08 23:16:57');
INSERT INTO `menus` VALUES (9, 'Gestion des Actualités', 'fa-newspaper-o', 'admin/page/actualites', 5, 1, 1, '2020-04-09 00:47:23', '2020-04-09 00:47:23');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fixe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fichier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `contenu` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `section_id`(`section_id`) USING BTREE,
  CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'Présentation', 'apropos', 'apropos', NULL, 1, '<p><strong>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;</strong><br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 1, '2020-04-09 01:57:43', '2020-04-08 23:57:43');
INSERT INTO `pages` VALUES (2, 'Domaines d\'intervention', 'domaines', 'domaines', NULL, 2, '', 1, 1, 1, '2020-04-09 02:29:28', '2020-04-09 02:29:28');
INSERT INTO `pages` VALUES (4, 'Programmes', 'programmes', 'programmes', NULL, 3, NULL, 1, 1, 1, '2020-04-09 02:28:36', '2020-04-09 02:28:33');
INSERT INTO `pages` VALUES (5, 'Nos Activités', 'activites', 'activites', NULL, 0, NULL, 1, 1, 1, '2020-04-09 02:50:04', '2020-04-09 02:50:04');
INSERT INTO `pages` VALUES (6, 'Actualités', 'actualites', 'https://drive.google.com/open?id=1FHB_OnWCvgj5A70SWDmd6FnnayvsGtgy', NULL, 0, NULL, 1, 1, 1, '2020-04-09 16:40:55', '2020-04-09 16:40:55');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fichier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `album_id` int(11) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `album_id`(`album_id`) USING BTREE,
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES (1, 'Nous sommes ACDIEF', 'L’Organisation a pour but de contribuer à l’épanouissement de l’enfance et de la jeune fille dans une approche de développement humain durable et participatif, promouvoir la paix et la sécurité', 'photos/photo1586437277.jpg', 1, 1, 1, 1, '2020-04-09 15:01:17', '2020-04-09 13:01:17');
INSERT INTO `photos` VALUES (2, 'Un domaine d’intervention clair', 'L’Organisation intervient dans le domaine de la promotion et protection de l’homme et de l’enfant et de la jeune fille, la paix et la sécurité, et l’entrepreneuriat des jeunes.', 'photos/photo1586437313.jpg', 2, 1, 1, 1, '2020-04-09 15:01:53', '2020-04-09 13:01:53');
INSERT INTO `photos` VALUES (3, 'PNUD', 'PNUD', 'photos/photo1586444686.jpg', 1, 1, 1, 2, '2020-04-09 17:04:46', '2020-04-09 15:04:46');
INSERT INTO `photos` VALUES (4, 'ONU-TOGO', 'ONU-TOGO', 'photos/photo1586436997.jpg', 2, 1, 1, 2, '2020-04-09 12:56:37', '2020-04-09 12:56:37');
INSERT INTO `photos` VALUES (5, 'UNION EUROPÉENNE', 'UNION EUROPÉENNE', 'photos/photo1586437036.jpg', 3, 1, 1, 2, '2020-04-09 12:57:16', '2020-04-09 12:57:16');
INSERT INTO `photos` VALUES (6, 'PROCEMA', 'PROCEMA', 'photos/photo1586437068.jpg', 4, 1, 1, 2, '2020-04-09 12:57:48', '2020-04-09 12:57:48');
INSERT INTO `photos` VALUES (7, 'UNESCO', 'UNESCO', 'photos/photo1586444485.jpg', 4, 1, 1, 2, '2020-04-09 17:01:25', '2020-04-09 15:01:25');
INSERT INTO `photos` VALUES (8, 'FAIEJ', 'FAIEJ', 'photos/photo1586437111.jpg', 5, 1, 1, 2, '2020-04-09 12:58:31', '2020-04-09 12:58:31');
INSERT INTO `photos` VALUES (9, 'MADE IN TOGO', 'MADE IN TOGO', 'photos/photo1586444502.jpg', 6, 1, 1, 2, '2020-04-09 17:01:42', '2020-04-09 15:01:42');
INSERT INTO `photos` VALUES (10, 'Un engagement', 'L’adhésion à l’Organisation est libre et volontaire à toute personne, jouissant de ses droits civiques et moraux sans distinction de race, de sexe ni de religion ni de conviction politique et qui adhère à ses objectifs.', 'photos/photo1586437345.JPG', 3, 1, 1, 1, '2020-04-09 13:02:25', '2020-04-09 13:02:25');

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fixe_section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publier` int(1) NOT NULL DEFAULT 1,
  `visible` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sections
-- ----------------------------
INSERT INTO `sections` VALUES (1, 'Site web Menu', 'menu_h', 1, 1, '2020-04-09 01:31:00', '2020-04-09 01:31:00');

-- ----------------------------
-- Table structure for sous_menus
-- ----------------------------
DROP TABLE IF EXISTS `sous_menus`;
CREATE TABLE `sous_menus`  (
  `id_sous_menus` int(11) NOT NULL AUTO_INCREMENT,
  `titre_sous_menus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `libelle_sous_menus` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lien_sous_menus` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `indice_sous_menus` int(11) NOT NULL,
  `publier_sous_menus` tinyint(1) NOT NULL DEFAULT 1,
  `visible_sous_menus` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `id_menus` int(11) NOT NULL,
  PRIMARY KEY (`id_sous_menus`) USING BTREE,
  INDEX `id_menus`(`id_menus`) USING BTREE,
  CONSTRAINT `sous_menus_ibfk_1` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id_menus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sous_menus
-- ----------------------------
INSERT INTO `sous_menus` VALUES (1, 'Utilisateurs', 'fa-users', 'utilisateurs', 1, 1, 1, '2017-03-29 05:58:21', '2017-03-29 05:58:21', 1);
INSERT INTO `sous_menus` VALUES (2, 'Type d\'utilisateurs', 'fa-street-view', 'type_users', 2, 1, 1, '2017-03-29 06:03:57', '2017-03-29 06:03:57', 1);
INSERT INTO `sous_menus` VALUES (3, 'Menus', 'fa-outdent', 'menus', 3, 1, 1, '2017-03-29 06:05:39', '2017-03-29 06:05:39', 1);
INSERT INTO `sous_menus` VALUES (4, 'Configuration', 'fa-firefox', 'admin/configurations', 5, 1, 1, '2017-03-29 09:14:46', '2017-03-29 09:14:46', 8);
INSERT INTO `sous_menus` VALUES (8, 'Présentation', 'fa fa-book', 'admin/page/apropos', 1, 1, 1, '2020-04-09 00:31:54', '2020-04-09 00:31:54', 8);
INSERT INTO `sous_menus` VALUES (9, 'Domaines', 'fa fa-book', 'admin/page/domaines', 2, 1, 1, '2020-04-09 00:32:47', '2020-04-09 00:32:47', 8);
INSERT INTO `sous_menus` VALUES (10, 'Programmes', 'fa fa-book', 'admin/page/programmes', 3, 1, 1, '2020-04-09 00:33:23', '2020-04-09 00:33:23', 8);
INSERT INTO `sous_menus` VALUES (11, 'Nos Activités', 'fa fa-book', 'admin/page/activites', 4, 1, 1, '2020-04-09 00:34:00', '2020-04-09 00:34:00', 8);

-- ----------------------------
-- Table structure for type_users
-- ----------------------------
DROP TABLE IF EXISTS `type_users`;
CREATE TABLE `type_users`  (
  `id_type_users` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_type_users` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `visible_type_users` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_type_users`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_users
-- ----------------------------
INSERT INTO `type_users` VALUES (1, 'Administrateur', 1, NULL, NULL);
INSERT INTO `type_users` VALUES (2, 'Responsable', 1, '2020-04-10 21:01:17', '2020-04-10 21:01:17');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prenoms_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexe_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adresse_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ville_users` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_users` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publier_users` tinyint(1) NOT NULL DEFAULT 1,
  `visible_users` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_users`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'TSIVANYO', 'Marc', 'M', '1970-01-01', 'contact@mastersolut.com', 'Adidogomé', '90337453', 'fichiers/1490770036.jpg', 'Lomé', 'MasterSolut', '$2y$10$PreehdzzqeJJyBUdCUQB/uqWLdKZLGQuysR69TdWLLk9AUPKE.LsO', 'hJ7RrJgQnOvpDlvBNN9ZOh2Mu0HSRDqjiff1uiuGNnGacMODPkoaOryx0wBg', 1, 1, '2017-03-29 05:46:07', '2020-04-08 22:49:23', 1);

SET FOREIGN_KEY_CHECKS = 1;
