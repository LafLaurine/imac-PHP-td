-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 21 mars 2019 à 22:45
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `imac-movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `CastNationalities`
--

DROP TABLE IF EXISTS `CastNationalities`;
CREATE TABLE IF NOT EXISTS `CastNationalities` (
  `id_cast` int(11) NOT NULL,
  `code_country` varchar(4) NOT NULL,
  PRIMARY KEY (`id_cast`,`code_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `CastNationalities`
--

INSERT INTO `CastNationalities` (`id_cast`, `code_country`) VALUES
(40, 'US'),
(41, 'US'),
(42, 'US'),
(43, 'GB'),
(44, 'US'),
(45, 'GB'),
(45, 'US'),
(46, 'US'),
(47, 'IT'),
(48, 'NZ'),
(49, 'US'),
(50, 'US'),
(51, 'US'),
(52, 'US'),
(53, 'US'),
(54, 'MX'),
(55, 'US'),
(56, 'US'),
(57, 'US'),
(58, 'KR'),
(59, 'JP'),
(60, 'US'),
(61, 'US'),
(62, 'MX'),
(63, 'US'),
(64, 'FR'),
(65, 'AU'),
(66, 'FR'),
(67, 'FR'),
(68, 'FR'),
(69, 'FR'),
(70, 'FR'),
(71, 'FR'),
(72, 'FR'),
(73, 'FR'),
(74, 'FR'),
(75, 'FR'),
(76, 'FR'),
(77, 'FR'),
(78, 'FR'),
(79, 'FR'),
(80, 'FR'),
(81, 'FR'),
(82, 'FR'),
(83, 'FR'),
(84, 'FR'),
(85, 'FR'),
(86, 'FR'),
(87, 'FR'),
(88, 'FR'),
(89, 'FR'),
(90, 'FR'),
(91, 'FR'),
(92, 'FR'),
(93, 'FR'),
(94, 'FR'),
(95, 'FR'),
(96, 'FR'),
(97, 'FR'),
(98, 'FR'),
(99, 'FR'),
(100, 'FR'),
(101, 'FR'),
(102, 'FR'),
(103, 'FR'),
(104, 'FR'),
(105, 'FR'),
(106, 'FR'),
(107, 'FR'),
(108, 'FR'),
(109, 'FR'),
(110, 'FR'),
(111, 'FR'),
(112, 'FR'),
(113, 'FR');

-- --------------------------------------------------------

--
-- Structure de la table `Casts`
--

DROP TABLE IF EXISTS `Casts`;
CREATE TABLE IF NOT EXISTS `Casts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birth_year` int(4) DEFAULT NULL,
  `death_year` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Casts`
--

INSERT INTO `Casts` (`id`, `firstname`, `lastname`, `birth_year`, `death_year`) VALUES
(40, 'David', 'Fincher', 1962, NULL),
(41, 'Quentin', 'Tarantino', 1963, NULL),
(42, 'Stanley', 'Kubrick', 1928, 1999),
(43, 'Ridley', 'Scott', 1937, NULL),
(44, 'Francis Ford', 'Coppola', 1939, NULL),
(45, 'Christopher', 'Nolan', 1970, NULL),
(46, 'Robert', 'Zemeckis', 1952, NULL),
(47, 'Sergio', 'Leone', 1929, 1989),
(48, 'Peter', 'Jackson', 1961, NULL),
(49, 'Irvin', 'Kershner', 1923, 2010),
(50, 'Bob', 'Persichetti', NULL, NULL),
(51, 'Peter', 'Ramsey', NULL, NULL),
(52, 'Rodney', 'Rothman', NULL, NULL),
(53, 'Steven', 'Spielberg', 1946, NULL),
(54, 'Guillermo', 'del Toro', 1964, NULL),
(55, 'Anthony', 'Russo', 1970, NULL),
(56, 'Joe', 'Russo', 1971, NULL),
(57, 'Brad', 'Bird', 1957, NULL),
(58, 'Lee', 'Chang-Dong', 1954, NULL),
(59, 'Hirokazu', 'Koreeda', 1962, NULL),
(60, 'Christopher', 'McQuarrie', 1968, NULL),
(61, 'Spike', 'Lee', 1957, NULL),
(62, 'Alfonso', 'Cuarón', 1961, NULL),
(63, 'Bryan', 'Singer', 1965, NULL),
(64, 'Jacques', 'Audiard', 1952, NULL),
(65, 'Craig', 'Gillespie', 1967, NULL),
(66, 'Quentin', 'Dupieux', 1974, NULL),
(67, 'Johan', 'Boyer', NULL, NULL),
(68, 'Clélie', 'Chassignet', NULL, NULL),
(69, 'Mélissande', 'Gaillot', NULL, NULL),
(70, 'Julien', 'Haudegond', NULL, NULL),
(71, 'Élisa', 'Ciavaldini', NULL, NULL),
(72, 'Cyrielle', 'Lassarre', NULL, NULL),
(73, 'Océane', 'Riosset', NULL, NULL),
(74, 'Roxanne', 'Vallée', NULL, NULL),
(75, 'Sarah', 'Veysset', NULL, NULL),
(76, 'Yoann', 'Koeppel aka Cape d\'Invisibilité', NULL, NULL),
(77, 'Zoé', 'Durand aka Gilet Jaune', NULL, NULL),
(78, 'Eva', 'Benharira', NULL, NULL),
(79, 'Louisa', 'Chikar', NULL, NULL),
(80, 'Thomas', 'Geslin', NULL, NULL),
(81, 'Antonin', 'Leuret', NULL, NULL),
(82, 'Myriam', 'Anik', NULL, NULL),
(83, 'Julian', 'Bruxelle', NULL, NULL),
(84, 'Mathilde', 'Dumoulin', NULL, NULL),
(85, 'Solène', 'Mary-Vallée', NULL, NULL),
(86, 'Maël', 'Simon', NULL, NULL),
(87, 'Léna', 'Allibert', NULL, NULL),
(88, 'Nicolas', 'Sénécal', NULL, NULL),
(89, 'Amélia', 'Mansion', NULL, NULL),
(90, 'Victor', 'Julien', NULL, NULL),
(91, 'Noélie', 'Bravo', NULL, NULL),
(92, 'Louise', 'Paris', NULL, NULL),
(93, 'Stella', 'Poulain', NULL, NULL),
(94, 'Hédi', 'Hamadache', NULL, NULL),
(95, 'Louis', 'Hemet', NULL, NULL),
(96, 'Yassine', 'Affes', NULL, NULL),
(97, 'Swann', 'Daniel', NULL, NULL),
(98, 'Sami', 'Belaidi', NULL, NULL),
(99, 'Marion', 'Ceccato', NULL, NULL),
(100, 'Olivier', 'Meyer', NULL, NULL),
(101, 'Cécile', 'Rousset', NULL, NULL),
(102, 'Hélène', 'Duveau', NULL, NULL),
(103, 'Léo', 'Levillain', NULL, NULL),
(104, 'Ilana', 'Azria', NULL, NULL),
(105, 'Léa', 'Harabagiu', NULL, NULL),
(106, 'Nina', 'De Castro', NULL, NULL),
(107, 'Nathanaël', 'Rovère', NULL, NULL),
(108, 'Guillaume', 'Lollier', NULL, NULL),
(109, 'Audrey', 'Combe', NULL, NULL),
(110, 'Quentin', 'Sedmi', NULL, NULL),
(111, 'Damien', 'Trolard', NULL, NULL),
(112, 'Axel', 'Donadio', NULL, NULL),
(113, 'Albert-Henti', 'Moyrand', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
CREATE TABLE IF NOT EXISTS `Countries` (
  `code` varchar(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Countries`
--

INSERT INTO `Countries` (`code`, `name`) VALUES
('AU', 'Australia'),
('BE', 'Belgium'),
('DE', 'Germany'),
('ES', 'Spain'),
('FR', 'France'),
('GB', 'United Kingdom'),
('IT', 'Italy'),
('JP', 'Japan'),
('KR', 'South Korea'),
('MX', 'Mexico'),
('NZ', 'New Zealand'),
('RO', 'Romania'),
('US', 'United States of America');

-- --------------------------------------------------------

--
-- Structure de la table `Genres`
--

DROP TABLE IF EXISTS `Genres`;
CREATE TABLE IF NOT EXISTS `Genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Genres`
--

INSERT INTO `Genres` (`id`, `name`) VALUES
(1, 'Drama'),
(2, 'Science-Fiction'),
(3, 'Action'),
(4, 'Adventure'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horror'),
(8, 'Western'),
(9, 'Comedy'),
(10, 'Crime'),
(11, 'Romance'),
(12, 'Biography'),
(13, 'History'),
(14, 'Fantasy'),
(15, 'Music'),
(16, 'Mystery'),
(17, 'War');

-- --------------------------------------------------------

--
-- Structure de la table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
CREATE TABLE IF NOT EXISTS `Jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Jobs`
--

INSERT INTO `Jobs` (`id`, `name`) VALUES
(1, 'director'),
(2, 'actor');

-- --------------------------------------------------------

--
-- Structure de la table `MovieCountries`
--

DROP TABLE IF EXISTS `MovieCountries`;
CREATE TABLE IF NOT EXISTS `MovieCountries` (
  `id_movie` int(11) NOT NULL,
  `code_country` varchar(4) NOT NULL,
  PRIMARY KEY (`id_movie`,`code_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `MovieCountries`
--

INSERT INTO `MovieCountries` (`id_movie`, `code_country`) VALUES
(1, 'DE'),
(1, 'US'),
(2, 'US'),
(3, 'GB'),
(3, 'US'),
(4, 'US'),
(5, 'US'),
(6, 'GB'),
(6, 'US'),
(7, 'US'),
(8, 'NZ'),
(8, 'US'),
(9, 'GB'),
(9, 'US'),
(10, 'ES'),
(10, 'IT'),
(11, 'GB'),
(11, 'US'),
(12, 'GB'),
(12, 'US'),
(13, 'GB'),
(14, 'NZ'),
(14, 'US'),
(15, 'US'),
(16, 'US'),
(17, 'US'),
(18, 'US'),
(19, 'US'),
(20, 'US'),
(21, 'KR'),
(22, 'JP'),
(23, 'US'),
(24, 'US'),
(25, 'MX'),
(25, 'US'),
(26, 'US'),
(27, 'BE'),
(27, 'ES'),
(27, 'FR'),
(27, 'RO'),
(27, 'US'),
(28, 'US'),
(29, 'FR'),
(30, 'FR'),
(31, 'FR'),
(32, 'FR'),
(33, 'FR'),
(34, 'FR'),
(35, 'FR'),
(36, 'FR'),
(37, 'FR'),
(38, 'FR'),
(39, 'FR'),
(40, 'FR');

-- --------------------------------------------------------

--
-- Structure de la table `MovieGenres`
--

DROP TABLE IF EXISTS `MovieGenres`;
CREATE TABLE IF NOT EXISTS `MovieGenres` (
  `id_movie` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  PRIMARY KEY (`id_movie`,`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `MovieGenres`
--

INSERT INTO `MovieGenres` (`id_movie`, `id_genre`) VALUES
(1, 1),
(2, 1),
(2, 10),
(3, 2),
(3, 4),
(4, 3),
(4, 4),
(4, 10),
(5, 1),
(5, 10),
(6, 1),
(6, 3),
(6, 10),
(7, 1),
(7, 11),
(8, 1),
(8, 4),
(8, 14),
(9, 1),
(9, 2),
(9, 4),
(10, 8),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 10),
(13, 1),
(13, 17),
(14, 1),
(14, 4),
(14, 14),
(15, 3),
(15, 4),
(15, 14),
(16, 3),
(16, 4),
(16, 5),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(18, 4),
(18, 14),
(19, 3),
(19, 4),
(19, 14),
(20, 3),
(20, 4),
(20, 5),
(21, 1),
(21, 16),
(22, 1),
(22, 10),
(23, 3),
(23, 4),
(23, 6),
(24, 1),
(24, 10),
(24, 12),
(25, 1),
(26, 1),
(26, 12),
(26, 15),
(27, 4),
(27, 9),
(27, 10),
(28, 1),
(28, 9),
(28, 12),
(29, 9),
(30, 1),
(30, 11),
(31, 1),
(32, 1),
(32, 2),
(32, 16),
(33, 11),
(33, 15),
(34, 3),
(34, 9),
(35, 1),
(35, 16),
(36, 1),
(36, 11),
(37, 3),
(37, 4),
(38, 9),
(38, 16),
(39, 9),
(40, 4);

-- --------------------------------------------------------

--
-- Structure de la table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
CREATE TABLE IF NOT EXISTS `Movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Movies`
--

INSERT INTO `Movies` (`id`, `title`, `release_date`) VALUES
(1, 'Fight Club', '1999-09-10'),
(2, 'Pulp Fiction', '1994-09-10'),
(3, '2001: A Space Odyssey', '1968-04-03'),
(4, 'Blade Runner', '1982-06-25'),
(5, 'The Godfather', '1972-03-24'),
(6, 'The Dark Knight', '2008-07-16'),
(7, 'Forrest Gump', '1994-07-06'),
(8, 'The Lord of the Rings: The Return of the King', '2003-12-01'),
(9, 'Interstellar', '2014-11-05'),
(10, 'Il Buono, il Brutto, il Cattivo', '1966-12-23'),
(11, 'Inception', '2010-07-14'),
(12, 'A Clockwork Orange', '1971-12-19'),
(13, 'Apocalypse Now', '1979-08-15'),
(14, 'The Lord of the Rings: The Fellowship of the Ring', '2001-12-19'),
(15, 'Star Wars Episode V: The Empire Strikes Back', '1980-05-21'),
(16, 'Spider-Man: Into the Spider-verse', '2018-12-12'),
(17, 'Ready Player One', '2018-03-28'),
(18, 'The Shape of Water', '2018-02-21'),
(19, 'Avengers: Infinity War', '2018-04-25'),
(20, 'The Incredibles 2', '2018-07-04'),
(21, 'Beoning', '2018-08-29'),
(22, 'Manbiki kazoku', '2018-12-12'),
(23, 'Mission: Impossible - Fallout', '2018-08-01'),
(24, 'BlacKkKlansman', '2018-08-22'),
(25, 'Roma', '2018-12-14'),
(26, 'Bohemian Rhapsody', '2018-10-31'),
(27, 'The Sisters Brothers', '2018-09-19'),
(28, 'I, Tonya', '2018-02-21'),
(29, 'Au poste !', '2018-07-04'),
(30, 'À Croquer', '2019-01-12'),
(31, 'La Reine de Coeur', '2019-01-14'),
(32, 'Inside', '2019-01-09'),
(33, 'SHE', '2019-01-13'),
(34, 'WOOPS', '2019-01-13'),
(35, 'Immersion', '2019-01-15'),
(36, 'Délivre-moi', '2018-12-12'),
(37, 'Les Lunettes', '2018-12-22'),
(38, 'Mot à mot', '2018-12-31'),
(39, 'Le Carton', '2018-08-22'),
(40, 'METRONORME', '2018-01-17');

-- --------------------------------------------------------

--
-- Structure de la table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
CREATE TABLE IF NOT EXISTS `Roles` (
  `id_movie` int(11) NOT NULL,
  `id_cast` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_movie`,`id_cast`,`id_job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Roles`
--

INSERT INTO `Roles` (`id_movie`, `id_cast`, `id_job`, `role`) VALUES
(1, 40, 1, NULL),
(2, 41, 1, NULL),
(3, 42, 1, NULL),
(4, 43, 1, NULL),
(5, 44, 1, NULL),
(6, 45, 1, NULL),
(7, 46, 1, NULL),
(8, 48, 1, NULL),
(9, 45, 1, NULL),
(10, 47, 1, NULL),
(11, 45, 1, NULL),
(12, 42, 1, NULL),
(13, 44, 1, NULL),
(14, 48, 1, NULL),
(15, 49, 1, NULL),
(16, 50, 1, NULL),
(16, 51, 1, NULL),
(16, 52, 1, NULL),
(17, 53, 1, NULL),
(18, 54, 1, NULL),
(19, 55, 1, NULL),
(19, 56, 1, NULL),
(20, 57, 1, NULL),
(21, 58, 1, NULL),
(22, 59, 1, NULL),
(23, 60, 1, NULL),
(24, 61, 1, NULL),
(25, 62, 1, NULL),
(26, 63, 1, NULL),
(27, 64, 1, NULL),
(28, 65, 1, NULL),
(29, 66, 1, NULL),
(30, 67, 1, NULL),
(30, 68, 1, NULL),
(30, 68, 2, NULL),
(30, 79, 2, NULL),
(30, 80, 2, NULL),
(31, 69, 1, NULL),
(31, 79, 2, 'Émilie'),
(31, 81, 2, 'Jérôme / Agresseur'),
(31, 82, 2, 'Agresseuse'),
(32, 70, 1, NULL),
(32, 83, 2, 'Michel'),
(32, 84, 2, 'Morte'),
(32, 85, 2, 'Morte'),
(33, 67, 2, NULL),
(33, 71, 1, NULL),
(33, 71, 2, NULL),
(33, 72, 1, NULL),
(33, 73, 1, NULL),
(33, 74, 1, NULL),
(33, 75, 1, NULL),
(32, 86, 2, 'Voix Radio'),
(33, 87, 2, NULL),
(34, 67, 2, 'Marc'),
(34, 76, 1, NULL),
(34, 76, 2, 'Jerry'),
(34, 77, 1, NULL),
(34, 81, 2, 'Guillaume'),
(34, 88, 2, 'Sam'),
(35, 78, 1, NULL),
(35, 89, 2, 'Rôle Principal'),
(35, 90, 2, 'Le Copain'),
(36, 91, 1, NULL),
(36, 92, 1, NULL),
(36, 93, 1, NULL),
(36, 93, 2, 'Manon'),
(36, 94, 1, NULL),
(36, 95, 2, 'Nicolas'),
(37, 82, 1, NULL),
(37, 82, 2, NULL),
(37, 88, 1, NULL),
(37, 88, 2, NULL),
(37, 96, 2, NULL),
(37, 97, 2, NULL),
(37, 98, 2, NULL),
(37, 99, 2, NULL),
(37, 100, 2, NULL),
(37, 101, 2, NULL),
(37, 102, 2, NULL),
(38, 81, 2, 'Logan'),
(38, 103, 2, 'Azur'),
(38, 104, 2, 'Logos'),
(38, 105, 1, NULL),
(38, 105, 2, 'Angel'),
(38, 106, 1, NULL),
(38, 107, 1, NULL),
(38, 108, 1, NULL),
(38, 109, 1, NULL),
(39, 88, 2, 'Voix Off'),
(39, 93, 1, NULL),
(39, 93, 2, 'Coursier'),
(39, 100, 1, NULL),
(39, 105, 1, NULL),
(39, 105, 2, 'Développeuse'),
(39, 110, 2, 'Max'),
(39, 111, 1, NULL),
(39, 111, 2, 'M. Énigme'),
(39, 112, 1, NULL),
(40, 82, 1, NULL),
(40, 106, 1, NULL),
(40, 113, 2, 'Rôle Principal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
