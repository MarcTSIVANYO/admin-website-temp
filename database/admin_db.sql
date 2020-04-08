-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 08 avr. 2020 à 22:49
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `admin_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `fixed` varchar(255) NOT NULL,
  `indice` int(11) NOT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`id`, `titre`, `fixed`, `indice`, `publier`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Accueil Slider', 'home-slider', 1, 0, 1, '2017-03-30 10:15:47', '2017-03-30 10:17:40');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `contenu` text DEFAULT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `categorie_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `libelle`, `fichier`, `indice`, `contenu`, `publier`, `visible`, `categorie_id`, `created_at`, `updated_at`) VALUES
(1, 'Origine', 'origine1', NULL, 1, '<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 1, '2017-03-30 06:53:24', '2017-03-30 07:01:23'),
(2, 'Origine', 'origine', NULL, 1, '<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 2, '2017-03-30 06:54:17', '2017-03-30 08:46:40');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `contenu` text DEFAULT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `titre`, `libelle`, `fichier`, `indice`, `contenu`, `publier`, `visible`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 'Présentation', 'presentation', NULL, 1, '<p>pagespagespagespagespagespagespagespagesFFFUJJYUHNTYHNhghy&#39;-y</p>\r\n', 1, 1, 1, '2017-03-30 04:39:19', '2017-03-30 06:24:36'),
(2, 'Notre Vision', 'vision', NULL, 2, '<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 1, '2017-03-30 05:52:40', '2017-03-30 05:52:40');

-- --------------------------------------------------------

--
-- Structure de la table `configurations`
--

CREATE TABLE `configurations` (
  `id` int(11) NOT NULL,
  `nom_site` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `cel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresse_physique` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `configurations`
--

INSERT INTO `configurations` (`id`, `nom_site`, `telephone`, `cel`, `email`, `adresse_physique`, `logo`, `favicon`, `url`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'ACCESS-TOGO', '(+228) 90 08 67 17', '(+228) 90 33 74 53', 'contact@access-togo.com', 'Lomé-TOGO', 'fichiers/logo-1490938869.jpg', 'fichiers/favicon-1490938869.jpg', 'www.access-togo.com', 1, '2016-12-29 14:03:38', '2017-03-31 03:41:09');

-- --------------------------------------------------------

--
-- Structure de la table `droits`
--

CREATE TABLE `droits` (
  `id_droits` int(11) NOT NULL,
  `publier_droits` tinyint(1) NOT NULL DEFAULT 1,
  `visible_droits` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_sous_menus` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_type_users` int(11) DEFAULT NULL,
  `id_menus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `droits`
--

INSERT INTO `droits` (`id_droits`, `publier_droits`, `visible_droits`, `created_at`, `updated_at`, `id_sous_menus`, `id_users`, `id_type_users`, `id_menus`) VALUES
(1, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', 1, NULL, 1, NULL),
(2, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', 2, NULL, 1, NULL),
(3, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', 3, NULL, 1, NULL),
(4, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', NULL, NULL, 1, 4),
(5, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', NULL, NULL, 1, 5),
(6, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', NULL, NULL, 1, 6),
(7, 1, 1, '2017-05-11 17:58:01', '2017-05-11 17:58:01', NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_users`
--

CREATE TABLE `groupe_users` (
  `id_groupe_users` int(11) NOT NULL,
  `publier_groupe_users` tinyint(1) NOT NULL DEFAULT 1,
  `visible_groupe_users` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_type_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe_users`
--

INSERT INTO `groupe_users` (`id_groupe_users`, `publier_groupe_users`, `visible_groupe_users`, `created_at`, `updated_at`, `id_users`, `id_type_users`) VALUES
(1, 1, 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id_menus` int(11) NOT NULL,
  `titre_menus` varchar(100) NOT NULL,
  `libelle_menus` varchar(200) NOT NULL,
  `lien_menus` varchar(200) NOT NULL,
  `indice_menus` int(11) NOT NULL,
  `publier_menus` tinyint(1) NOT NULL DEFAULT 1,
  `visible_menus` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id_menus`, `titre_menus`, `libelle_menus`, `lien_menus`, `indice_menus`, `publier_menus`, `visible_menus`, `created_at`, `updated_at`) VALUES
(1, 'Paramétrage', 'fa-key', 'null', 1, 1, 1, '2017-03-29 03:57:08', '2017-04-01 07:31:33'),
(4, 'Configuration', 'fa-firefox', 'admin/configurations', 2, 1, 1, '2017-03-29 07:14:46', '2017-03-29 07:14:46'),
(5, 'Section', 'fa-navicon', 'admin/sections', 3, 1, 1, '2017-03-29 12:04:24', '2017-03-30 09:15:20'),
(6, 'Pages', 'fa-book', 'admin/pages', 4, 1, 1, '2017-03-29 13:11:14', '2017-03-30 09:09:35'),
(7, 'Album', 'fa fa-file-text', 'admin/albums', 5, 1, 1, '2017-03-30 09:11:05', '2017-03-30 09:11:05');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `contenu` text DEFAULT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `titre`, `libelle`, `fichier`, `indice`, `contenu`, `publier`, `visible`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'Société', 'societe', NULL, 1, '<p><strong>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;</strong><br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n\r\n<p>Nous sommes un service d&rsquo;&eacute;change en ligne de monnaie &eacute;lectronique et de cryptomonnaie.&nbsp;<br />\r\nNous offrons un service rapide fiable et s&eacute;curis&eacute; vous permettant d&rsquo;acheter ou de vendre le dollar &agrave; travers la cryptomonnaie et la monnaie &eacute;lectronique en Afrique et dans le monde.&nbsp;<br />\r\nNous &eacute;changeons des monnaies comme E-dinarcoin, bitcoin, perfectmoney, paypal et autres.&nbsp;<br />\r\nNous esp&eacute;rons pouvoir vous satisfaire !!!.</p>\r\n', 1, 1, 1, '2017-03-30 05:00:53', '2017-03-30 05:01:03'),
(2, 'Service', 'services', NULL, 2, '', 0, 1, 1, '2017-03-30 05:49:12', '2017-03-30 05:50:50');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `indice` int(11) NOT NULL,
  `publier` tinyint(1) NOT NULL DEFAULT 1,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `album_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photos`
--

INSERT INTO `photos` (`id`, `titre`, `libelle`, `fichier`, `indice`, `publier`, `visible`, `album_id`, `created_at`, `updated_at`) VALUES
(1, 'Photo1', 'photo', 'photos/photo1490898215.jpg', 1, 1, 1, 1, '2017-03-30 16:13:01', '2017-03-30 17:01:05'),
(2, 'House', 'house', 'photos/photo1490900673.jpg', 2, 1, 1, 1, '2017-03-30 17:04:33', '2017-03-30 17:04:33');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `fixe_section` varchar(255) DEFAULT NULL,
  `publier` int(1) NOT NULL DEFAULT 1,
  `visible` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`id`, `titre`, `fixe_section`, `publier`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Menu Horizontal', 'menu_h', 1, 1, '2017-03-29 12:31:43', '2017-03-29 12:31:43');

-- --------------------------------------------------------

--
-- Structure de la table `sous_menus`
--

CREATE TABLE `sous_menus` (
  `id_sous_menus` int(11) NOT NULL,
  `titre_sous_menus` varchar(255) NOT NULL,
  `libelle_sous_menus` varchar(200) NOT NULL,
  `lien_sous_menus` varchar(200) NOT NULL,
  `indice_sous_menus` int(11) NOT NULL,
  `publier_sous_menus` tinyint(1) NOT NULL DEFAULT 1,
  `visible_sous_menus` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_menus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sous_menus`
--

INSERT INTO `sous_menus` (`id_sous_menus`, `titre_sous_menus`, `libelle_sous_menus`, `lien_sous_menus`, `indice_sous_menus`, `publier_sous_menus`, `visible_sous_menus`, `created_at`, `updated_at`, `id_menus`) VALUES
(1, 'Utilisateurs', 'fa-users', 'utilisateurs', 1, 1, 1, '2017-03-29 03:58:21', '2017-03-29 03:58:21', 1),
(2, 'Type d\'utilisateurs', 'fa-street-view', 'type_users', 2, 1, 1, '2017-03-29 04:03:57', '2017-03-29 04:03:57', 1),
(3, 'Menus', 'fa-outdent', 'menus', 3, 1, 1, '2017-03-29 04:05:39', '2017-03-29 04:05:39', 1);

-- --------------------------------------------------------

--
-- Structure de la table `type_users`
--

CREATE TABLE `type_users` (
  `id_type_users` int(11) NOT NULL,
  `libelle_type_users` varchar(150) NOT NULL,
  `visible_type_users` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_users`
--

INSERT INTO `type_users` (`id_type_users`, `libelle_type_users`, `visible_type_users`, `created_at`, `updated_at`) VALUES
(1, 'Administrateur', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nom_users` varchar(255) NOT NULL,
  `prenoms_users` varchar(255) NOT NULL,
  `sexe_users` varchar(255) NOT NULL,
  `date_users` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresse_users` varchar(255) NOT NULL,
  `contact_users` varchar(255) NOT NULL,
  `logo_users` varchar(255) NOT NULL,
  `ville_users` varchar(255) NOT NULL,
  `login_users` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `publier_users` tinyint(1) NOT NULL DEFAULT 1,
  `visible_users` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `nom_users`, `prenoms_users`, `sexe_users`, `date_users`, `email`, `adresse_users`, `contact_users`, `logo_users`, `ville_users`, `login_users`, `password`, `remember_token`, `publier_users`, `visible_users`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'TSIVANYO', 'Marc', 'M', '1970-01-01', 'contact@mastersolut.com', 'Adidogomé', '90337453', 'fichiers/1490770036.jpg', 'Lomé', 'MasterSolut', '$2y$10$PreehdzzqeJJyBUdCUQB/uqWLdKZLGQuysR69TdWLLk9AUPKE.LsO', '7TIWHqT9gZUcRUiThEFrM18fscBtJhFqul86w9gY5gsRjYZN1QfLoeqsPmpY', 1, 1, '2017-03-29 03:46:07', '2017-03-29 04:47:16', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Index pour la table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `droits`
--
ALTER TABLE `droits`
  ADD PRIMARY KEY (`id_droits`),
  ADD KEY `id_sous_menus` (`id_sous_menus`),
  ADD KEY `id_type_users` (`id_type_users`),
  ADD KEY `id_menus` (`id_menus`);

--
-- Index pour la table `groupe_users`
--
ALTER TABLE `groupe_users`
  ADD PRIMARY KEY (`id_groupe_users`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_type_users` (`id_type_users`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menus`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sous_menus`
--
ALTER TABLE `sous_menus`
  ADD PRIMARY KEY (`id_sous_menus`),
  ADD KEY `id_menus` (`id_menus`);

--
-- Index pour la table `type_users`
--
ALTER TABLE `type_users`
  ADD PRIMARY KEY (`id_type_users`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `droits`
--
ALTER TABLE `droits`
  MODIFY `id_droits` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `groupe_users`
--
ALTER TABLE `groupe_users`
  MODIFY `id_groupe_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sous_menus`
--
ALTER TABLE `sous_menus`
  MODIFY `id_sous_menus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `type_users`
--
ALTER TABLE `type_users`
  MODIFY `id_type_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `droits`
--
ALTER TABLE `droits`
  ADD CONSTRAINT `droits_ibfk_1` FOREIGN KEY (`id_sous_menus`) REFERENCES `sous_menus` (`id_sous_menus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `droits_ibfk_2` FOREIGN KEY (`id_type_users`) REFERENCES `type_users` (`id_type_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `droits_ibfk_3` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id_menus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `groupe_users`
--
ALTER TABLE `groupe_users`
  ADD CONSTRAINT `groupe_users_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groupe_users_ibfk_2` FOREIGN KEY (`id_type_users`) REFERENCES `type_users` (`id_type_users`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sous_menus`
--
ALTER TABLE `sous_menus`
  ADD CONSTRAINT `sous_menus_ibfk_1` FOREIGN KEY (`id_menus`) REFERENCES `menus` (`id_menus`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
