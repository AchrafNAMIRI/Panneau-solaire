-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 08 sep. 2020 à 21:36
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pansolarensaj`
--

-- --------------------------------------------------------

--
-- Structure de la table `capteurs`
--

CREATE TABLE `capteurs` (
  `TS` float NOT NULL,
  `TA` float NOT NULL,
  `TM` float NOT NULL,
  `VV` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `capteurs`
--

INSERT INTO `capteurs` (`TS`, `TA`, `TM`, `VV`) VALUES
(220, 34, 39, 19);

-- --------------------------------------------------------

--
-- Structure de la table `energy`
--

CREATE TABLE `energy` (
  `DC` float NOT NULL,
  `AC` float NOT NULL,
  `month` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `energy`
--

INSERT INTO `energy` (`DC`, `AC`, `month`) VALUES
(15, 10.3, 245);

-- --------------------------------------------------------

--
-- Structure de la table `indicateursfevrier`
--

CREATE TABLE `indicateursfevrier` (
  `KWH` float NOT NULL,
  `DH` float NOT NULL,
  `KG` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `indicateursfevrier`
--

INSERT INTO `indicateursfevrier` (`KWH`, `DH`, `KG`) VALUES
(345, 5987, -134);

-- --------------------------------------------------------

--
-- Structure de la table `network`
--

CREATE TABLE `network` (
  `total` float NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisation`
--

CREATE TABLE `utilisation` (
  `total` int(11) NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
