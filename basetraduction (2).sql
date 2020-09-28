-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 28 sep. 2020 à 09:45
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `basetraduction`
--

-- --------------------------------------------------------

--
-- Structure de la table `dictionnaire`
--

DROP TABLE IF EXISTS `dictionnaire`;
CREATE TABLE IF NOT EXISTS `dictionnaire` (
  `id_dict` int(11) NOT NULL AUTO_INCREMENT,
  `id_voc` int(11) DEFAULT NULL,
  `id_syn` int(11) DEFAULT NULL,
  `definition` text NOT NULL,
  PRIMARY KEY (`id_dict`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dictionnaire`
--

INSERT INTO `dictionnaire` (`id_dict`, `id_voc`, `id_syn`, `definition`) VALUES
(4, 1, NULL, 'Avaler pour se nourrir(un aliment solide ou consistant)après avoir maché.'),
(5, 12, NULL, 'Se mettre en mouvement pour quitter un lieu.'),
(6, 10, NULL, 'Etre immobile,ne manifester aucune activité.'),
(7, 37, NULL, 'Nettoyer avec de leau,avec un liquide.'),
(8, 42, NULL, 'Quitter le lieu ou on se trouve pour aller dehors ou passer dans passer dans un autre lieu.'),
(9, 15, NULL, 'Céder,offrir gratuitement a quelquun quelque chose.'),
(10, 16, NULL, 'Adresser la parole a une personne,désigner un nom a une personne.'),
(11, 17, NULL, 'Exprimer sa pensée en articulant les maots dune langue.'),
(12, 18, NULL, 'Faire précéder une chose de quelqu,un précautions pour en assurer l,effet.'),
(13, 101, NULL, 'Formule de salutation utilisée lorsqu,on rencontre quelqu,un.'),
(14, 53, NULL, 'De taille , longueur ,volume ,durée,important,qui dépasse la mesure moyenne ou ordinaire.'),
(15, 56, NULL, 'Qui est peu élevé en quantité,qui n,atteint pas la mésure ordinaire.');

-- --------------------------------------------------------

--
-- Structure de la table `equivalence_synonyme`
--

DROP TABLE IF EXISTS `equivalence_synonyme`;
CREATE TABLE IF NOT EXISTS `equivalence_synonyme` (
  `id_syn1` int(11) NOT NULL,
  `id_syn2` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `equivalence_synonyme`
--

INSERT INTO `equivalence_synonyme` (`id_syn1`, `id_syn2`) VALUES
(8, 11),
(10, 7),
(11, 8),
(7, 10);

-- --------------------------------------------------------

--
-- Structure de la table `equivalence_vocabulaire`
--

DROP TABLE IF EXISTS `equivalence_vocabulaire`;
CREATE TABLE IF NOT EXISTS `equivalence_vocabulaire` (
  `id_voc1` int(11) NOT NULL,
  `id_voc2` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `equivalence_vocabulaire`
--

INSERT INTO `equivalence_vocabulaire` (`id_voc1`, `id_voc2`) VALUES
(13, 22),
(1, 20),
(10, 21),
(23, 24),
(22, 13),
(20, 1),
(21, 10),
(24, 23),
(19, 25),
(25, 19),
(26, 27),
(27, 26),
(26, 95),
(95, 26),
(96, 98),
(98, 96),
(1, 77),
(77, 1),
(77, 20),
(20, 77),
(10, 78),
(78, 10),
(21, 78),
(78, 21),
(37, 79),
(79, 37),
(37, 80),
(80, 37),
(80, 79),
(79, 80),
(53, 54),
(54, 53),
(53, 55),
(55, 53),
(54, 55),
(55, 54),
(12, 81),
(81, 12),
(12, 82),
(82, 12),
(81, 82),
(82, 81),
(57, 58),
(58, 57),
(56, 57),
(57, 56),
(58, 56),
(56, 58),
(101, 102),
(102, 101),
(101, 103),
(103, 101),
(102, 103),
(103, 102),
(62, 104),
(104, 62),
(62, 64),
(64, 62),
(104, 64),
(64, 104),
(65, 66),
(66, 65),
(65, 67),
(67, 65),
(66, 67),
(67, 66);

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

DROP TABLE IF EXISTS `langue`;
CREATE TABLE IF NOT EXISTS `langue` (
  `id_lang` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_lang` varchar(50) NOT NULL,
  PRIMARY KEY (`id_lang`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id_lang`, `libelle_lang`) VALUES
(1, 'Francais'),
(20, 'Adouma'),
(21, 'Omyènè');

-- --------------------------------------------------------

--
-- Structure de la table `synonyme`
--

DROP TABLE IF EXISTS `synonyme`;
CREATE TABLE IF NOT EXISTS `synonyme` (
  `id_syn` int(11) NOT NULL AUTO_INCREMENT,
  `id_voc` int(11) NOT NULL,
  `mot_syn` varchar(100) NOT NULL,
  PRIMARY KEY (`id_syn`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `synonyme`
--

INSERT INTO `synonyme` (`id_syn`, `id_voc`, `mot_syn`) VALUES
(10, 20, 'ibatala'),
(7, 1, 'diner'),
(8, 10, 'siester'),
(11, 21, 'cholo'),
(12, 13, 'partir'),
(13, 22, 'iyèdrè'),
(14, 13, 'issir'),
(18, 10, 'Roupiller'),
(19, 37, 'Nettoyer'),
(20, 12, 'Filer'),
(21, 15, 'Céder'),
(22, 17, 'Idiome'),
(23, 18, 'Cuisiner'),
(24, 87, 'itèlè'),
(25, 81, 'mwèdrè'),
(29, 1, 'diner'),
(30, 101, 'salut'),
(31, 102, 'wèdréna'),
(32, 103, 'salé');

-- --------------------------------------------------------

--
-- Structure de la table `utlisateur`
--

DROP TABLE IF EXISTS `utlisateur`;
CREATE TABLE IF NOT EXISTS `utlisateur` (
  `matri_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  PRIMARY KEY (`matri_user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utlisateur`
--

INSERT INTO `utlisateur` (`matri_user`, `login`, `mot_de_passe`) VALUES
(1, 'admin', '2012'),
(2, 'magloire', '2020');

-- --------------------------------------------------------

--
-- Structure de la table `vocabulaire`
--

DROP TABLE IF EXISTS `vocabulaire`;
CREATE TABLE IF NOT EXISTS `vocabulaire` (
  `id_voc` int(11) NOT NULL AUTO_INCREMENT,
  `id_lang` int(11) NOT NULL,
  `mot_voc` varchar(100) NOT NULL,
  PRIMARY KEY (`id_voc`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vocabulaire`
--

INSERT INTO `vocabulaire` (`id_voc`, `id_lang`, `mot_voc`) VALUES
(1, 1, 'manger'),
(10, 1, 'Dormir'),
(20, 20, 'tcha'),
(12, 1, 'Partir'),
(13, 1, 'Sortir'),
(42, 1, 'sortir'),
(15, 1, 'Donner'),
(16, 1, 'Appeler'),
(17, 1, 'Parler'),
(18, 1, 'Préparer'),
(19, 1, 'Porter'),
(21, 20, 'ikela'),
(23, 1, 'taper'),
(24, 20, 'boma'),
(25, 20, 'louata'),
(26, 1, 'mourir'),
(91, 20, 'ilambra'),
(90, 21, 'kamba'),
(89, 20, 'ivovo'),
(37, 1, 'laver'),
(88, 21, 'gofeya'),
(87, 20, 'irebala'),
(86, 21, 'gopa'),
(85, 20, 'ivede'),
(84, 21, 'gokogwa'),
(83, 20, 'ipola'),
(82, 21, 'gonkeinda'),
(81, 20, 'iyedre'),
(80, 21, 'gosovuna'),
(79, 20, 'itsoka'),
(78, 21, 'gonana'),
(77, 21, 'gonia'),
(53, 1, 'Grand'),
(54, 20, 'Moukoulou'),
(55, 21, 'Ompolo'),
(56, 1, 'petit'),
(57, 20, 'Mourèrè'),
(58, 21, 'Niango'),
(59, 1, 'Court'),
(60, 20, 'Boukoubi'),
(61, 21, 'Itouna'),
(62, 1, 'Chaud'),
(63, 20, 'Mbaghou'),
(64, 21, 'Mpio'),
(65, 1, 'Vilain'),
(66, 20, 'Boubi'),
(67, 21, 'Iféla'),
(68, 1, 'Banc'),
(69, 20, 'Idigha'),
(70, 21, 'Epoué'),
(71, 1, 'Montre'),
(72, 20, 'Litadi'),
(73, 21, 'Ngola'),
(74, 1, 'Cuillière'),
(75, 20, 'Moussèbè'),
(76, 21, 'Ossèwè'),
(92, 21, 'gonamba'),
(93, 20, 'iyedre'),
(94, 1, 'mourir'),
(95, 20, 'ikoua'),
(96, 1, 'boire'),
(98, 20, 'inoua'),
(101, 1, 'bonjour'),
(102, 20, 'sogha'),
(103, 21, 'mbolo'),
(104, 20, 'mbarou'),
(105, 21, 'mpio'),
(106, 1, 'vlain'),
(107, 20, 'boubi'),
(108, 21, 'iféla');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
