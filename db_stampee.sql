-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 04, 2023 at 08:21 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stampee`
-- Set the default database
CREATE DATABASE IF NOT EXISTS db_stampee;
USE db_stampee;

-- --------------------------------------------------------

--
-- Table structure for table `Enchere`
--

CREATE TABLE `Enchere` (
  `Membre_idMembre` int(11) NOT NULL,
  `Timbre_idTimbre` int(11) NOT NULL,
  `Status_idStatus` int(11) NOT NULL,
  `dateFin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Favoris`
--

CREATE TABLE `Favoris` (
  `Membre_idMembre` int(11) NOT NULL,
  `Enchere_Membre_idMembre` int(11) NOT NULL,
  `Enchere_Timbre_idTimbre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `idImage` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Timbre_idTimbre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Membre`
--

CREATE TABLE `Membre` (
  `idMembre` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Role_idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Mise`
--

CREATE TABLE `Mise` (
  `idMise` int(11) NOT NULL,
  `mise` double NOT NULL,
  `Membre_idMembre` int(11) NOT NULL,
  `Enchere_Membre_idMembre` int(11) NOT NULL,
  `Enchere_Timbre_idTimbre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `idRole` int(11) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`idRole`, `role`) VALUES
(1, 'membre'),
(2, 'admin'),
(3, 'visiteur');

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE `Status` (
  `idStatus` int(11) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`idStatus`, `Status`) VALUES
(1, 'actif'),
(2, 'passer'),

-- --------------------------------------------------------

--
-- Table structure for table `Timbre`
--

CREATE TABLE `Timbre` (
  `idTimbre` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Enchere`
--
ALTER TABLE `Enchere`
  ADD PRIMARY KEY (`Membre_idMembre`,`Timbre_idTimbre`),
  ADD KEY `fk_Membre_has_Timbre_Timbre1_idx` (`Timbre_idTimbre`),
  ADD KEY `fk_Membre_has_Timbre_Membre1_idx` (`Membre_idMembre`),
  ADD KEY `fk_Enchere_Status1_idx` (`Status_idStatus`);

--
-- Indexes for table `Favoris`
--
ALTER TABLE `Favoris`
  ADD PRIMARY KEY (`Membre_idMembre`,`Enchere_Membre_idMembre`,`Enchere_Timbre_idTimbre`),
  ADD KEY `fk_Membre_has_Enchere_Enchere1_idx` (`Enchere_Membre_idMembre`,`Enchere_Timbre_idTimbre`),
  ADD KEY `fk_Membre_has_Enchere_Membre1_idx` (`Membre_idMembre`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`idImage`,`Timbre_idTimbre`),
  ADD KEY `fk_Image_Timbre1_idx` (`Timbre_idTimbre`);

--
-- Indexes for table `Membre`
--
ALTER TABLE `Membre`
  ADD PRIMARY KEY (`idMembre`),
  ADD KEY `fk_Membre_Role1_idx` (`Role_idRole`);

--
-- Indexes for table `Mise`
--
ALTER TABLE `Mise`
  ADD PRIMARY KEY (`idMise`,`Membre_idMembre`,`Enchere_Membre_idMembre`,`Enchere_Timbre_idTimbre`),
  ADD KEY `fk_Mise_Membre1_idx` (`Membre_idMembre`),
  ADD KEY `fk_Mise_Enchere1_idx` (`Enchere_Membre_idMembre`,`Enchere_Timbre_idTimbre`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`idRole`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indexes for table `Timbre`
--
ALTER TABLE `Timbre`
  ADD PRIMARY KEY (`idTimbre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Image`
--
ALTER TABLE `Image`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Membre`
--
ALTER TABLE `Membre`
  MODIFY `idMembre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Mise`
--
ALTER TABLE `Mise`
  MODIFY `idMise` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `idRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Status`
--
ALTER TABLE `Status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Timbre`
--
ALTER TABLE `Timbre`
  MODIFY `idTimbre` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Enchere`
--
ALTER TABLE `Enchere`
  ADD CONSTRAINT `fk_Enchere_Status1` FOREIGN KEY (`Status_idStatus`) REFERENCES `Status` (`idStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Membre_has_Timbre_Membre1` FOREIGN KEY (`Membre_idMembre`) REFERENCES `Membre` (`idMembre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Membre_has_Timbre_Timbre1` FOREIGN KEY (`Timbre_idTimbre`) REFERENCES `Timbre` (`idTimbre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Favoris`
--
ALTER TABLE `Favoris`
  ADD CONSTRAINT `fk_Membre_has_Enchere_Enchere1` FOREIGN KEY (`Enchere_Membre_idMembre`,`Enchere_Timbre_idTimbre`) REFERENCES `Enchere` (`Membre_idMembre`, `Timbre_idTimbre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Membre_has_Enchere_Membre1` FOREIGN KEY (`Membre_idMembre`) REFERENCES `Membre` (`idMembre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Image`
--
ALTER TABLE `Image`
  ADD CONSTRAINT `fk_Image_Timbre1` FOREIGN KEY (`Timbre_idTimbre`) REFERENCES `Timbre` (`idTimbre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Membre`
--
ALTER TABLE `Membre`
  ADD CONSTRAINT `fk_Membre_Role1` FOREIGN KEY (`Role_idRole`) REFERENCES `Role` (`idRole`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Mise`
--
ALTER TABLE `Mise`
  ADD CONSTRAINT `fk_Mise_Enchere1` FOREIGN KEY (`Enchere_Membre_idMembre`,`Enchere_Timbre_idTimbre`) REFERENCES `Enchere` (`Membre_idMembre`, `Timbre_idTimbre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Mise_Membre1` FOREIGN KEY (`Membre_idMembre`) REFERENCES `Membre` (`idMembre`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
