-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  sam. 15 sep. 2018 à 18:29
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `javatest`
--

-- --------------------------------------------------------

--
-- Structure de la table `testdata`
--

CREATE TABLE `testdata` (
  `id` int(11) NOT NULL,
  `foo` varchar(25) DEFAULT NULL,
  `bar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `testdata`
--

INSERT INTO `testdata` (`id`, `foo`, `bar`) VALUES
(1, 'hello', 12345);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `testdata`
--
ALTER TABLE `testdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `testdata`
--
ALTER TABLE `testdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
