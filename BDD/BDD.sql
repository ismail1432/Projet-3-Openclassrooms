-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 01 août 2018 à 01:02
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog_cdpm`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 NOT NULL,
  `dateTimeAdd` datetime NOT NULL,
  `idTicket` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `alert` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailAdress` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`id`, `emailAdress`, `password`, `status`) VALUES
(1, 'y4su.ced@gmail.com', '$2y$10$VjiCYDfeyCU4qmmIR.JJG.9pWCvHAP/zXKEdiBYeugw7WrtbuPhFy', 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `dateTimeAdd` datetime NOT NULL,
  `dateTimeLastModified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `content`, `dateTimeAdd`, `dateTimeLastModified`) VALUES
(13, 'Chapitre #1 - Le début de l\'aventure', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin congue ut diam sagittis consectetur. Integer bibendum pellentesque purus, et congue sem. Aliquam ut augue porttitor, ullamcorper est sit amet, imperdiet eros. Proin nisl metus, vulputate porttitor est sit amet, scelerisque tempus ex. Suspendisse iaculis sem a nisl accumsan, ut rutrum arcu tempor. Nulla ut pharetra ipsum. Maecenas convallis ipsum vitae tellus lacinia, vitae finibus odio maximus. Donec eu volutpat lacus. Nunc at aliquam lacus. Suspendisse eu nibh fermentum dui iaculis scelerisque. Aliquam luctus, lorem et scelerisque suscipit, ante odio cursus nunc, non placerat elit mi eget urna. Phasellus non lacus in justo commodo tristique. Nullam metus metus, luctus eu turpis vel, fermentum varius sapien. Aenean eu sem gravida, tristique arcu nec, posuere eros.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Donec ultricies, erat non dignissim finibus, orci odio pharetra est, at vehicula odio tellus eu est. In ac fringilla orci. Maecenas imperdiet metus sed tortor semper dictum. Etiam auctor justo vel neque molestie, vel ultrices diam faucibus. Proin id nibh quis sapien finibus imperdiet. Donec sem augue, tincidunt a sollicitudin id, egestas imperdiet lectus. Nunc ornare diam in metus auctor, sed facilisis magna ultricies. Fusce vulputate elit ac lorem consectetur ornare.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas a facilisis diam. Phasellus a finibus odio. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eros ipsum, interdum eget sollicitudin eget, dictum vitae neque. Etiam sit amet sagittis magna, ut vehicula mauris. Etiam vel sapien convallis quam luctus consectetur id sit amet ipsum. Donec malesuada neque ipsum, non ultricies neque posuere in. Vivamus molestie varius imperdiet. Curabitur venenatis mi at sodales egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam a felis sit amet dui ultrices iaculis sed in tortor. Donec in pretium velit, eu condimentum massa. Nam quis augue ac leo porta eleifend vel sed orci. Mauris condimentum commodo sapien, imperdiet vulputate risus pulvinar vel.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas interdum eleifend elit non consectetur. Maecenas dolor odio, commodo eu fermentum eget, volutpat vel lacus. Fusce maximus sit amet dui et pellentesque. Vivamus sed enim sit amet sapien convallis scelerisque in id risus. Vestibulum felis libero, porta eu congue id, eleifend in ante. Etiam lobortis tristique massa, vitae blandit nibh. Fusce condimentum neque massa, eget dapibus felis mattis ac. Cras felis neque, semper at volutpat a, gravida eget enim. Ut aliquam, urna eu pharetra ultricies, nunc lorem consequat velit, nec venenatis erat nunc et nunc. Integer suscipit.</p>', '2018-08-01 02:59:41', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
