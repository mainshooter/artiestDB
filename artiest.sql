-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 24 feb 2017 om 12:46
-- Serverversie: 10.1.21-MariaDB
-- PHP-versie: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artiest`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `genre`
--

CREATE TABLE `genre` (
  `genreID` int(11) NOT NULL,
  `naam` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `genre`
--

INSERT INTO `genre` (`genreID`, `naam`) VALUES
(1, 'pop'),
(2, 'house');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gerne-album`
--

CREATE TABLE `gerne-album` (
  `gerne-album` int(11) NOT NULL,
  `genreID` int(11) NOT NULL,
  `albumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gerne-album`
--

INSERT INTO `gerne-album` (`gerne-album`, `genreID`, `albumID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `‘album’`
--

CREATE TABLE `‘album’` (
  `‘albumID’` int(11) NOT NULL,
  `‘naam’` varchar(200) NOT NULL,
  `‘uitgebrachtop’` date NOT NULL,
  `‘artiest_artiestID’` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `‘album’`
--

INSERT INTO `‘album’` (`‘albumID’`, `‘naam’`, `‘uitgebrachtop’`, `‘artiest_artiestID’`) VALUES
(1, 'Jump', '2017-02-18', 2),
(2, 'Spring', '2017-02-01', 2),
(3, 'low', '2017-02-19', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `‘artiest’`
--

CREATE TABLE `‘artiest’` (
  `‘artiestID’` int(11) NOT NULL,
  `‘artiestnaam’` varchar(200) DEFAULT NULL,
  `‘voornaam’` varchar(45) NOT NULL,
  `‘achternaam’` varchar(45) NOT NULL,
  `‘email’` varchar(45) NOT NULL,
  `‘telefoon’` int(11) NOT NULL,
  `‘platenlabel_platenlabelID’` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `‘artiest’`
--

INSERT INTO `‘artiest’` (`‘artiestID’`, `‘artiestnaam’`, `‘voornaam’`, `‘achternaam’`, `‘email’`, `‘telefoon’`, `‘platenlabel_platenlabelID’`) VALUES
(2, 'JustNick', 'Nick', 'de Haas', '5743892@rocmn.nl', 9876453, 1),
(3, 'Two friends', 'Two', 'Friends', 'info@friends.com', 89754379, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `‘platenlabel’`
--

CREATE TABLE `‘platenlabel’` (
  `‘platenlabelID’` int(11) NOT NULL,
  `‘naam’` varchar(100) NOT NULL,
  `‘adress’` varchar(100) NOT NULL,
  `‘telefoon’` int(11) DEFAULT NULL,
  `‘email’` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `‘platenlabel’`
--

INSERT INTO `‘platenlabel’` (`‘platenlabelID’`, `‘naam’`, `‘adress’`, `‘telefoon’`, `‘email’`) VALUES
(1, 'Spinning', 'spinning street', 798645798, 'info@spinning.nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `‘studio’`
--

CREATE TABLE `‘studio’` (
  `‘studioID’` int(11) NOT NULL,
  `‘naam’` varchar(45) NOT NULL,
  `‘adress’` varchar(100) NOT NULL,
  `‘postcode’` char(6) NOT NULL,
  `‘Artiest_artiestID’` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `‘studio’`
--

INSERT INTO `‘studio’` (`‘studioID’`, `‘naam’`, `‘adress’`, `‘postcode’`, `‘Artiest_artiestID’`) VALUES
(1, 'Studio spin', 'record street', '5839FR', 2),
(2, 'Siol', 'siollain', '32CV32', 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreID`);

--
-- Indexen voor tabel `gerne-album`
--
ALTER TABLE `gerne-album`
  ADD PRIMARY KEY (`gerne-album`),
  ADD KEY `genreID` (`genreID`),
  ADD KEY `albumID` (`albumID`);

--
-- Indexen voor tabel `‘album’`
--
ALTER TABLE `‘album’`
  ADD PRIMARY KEY (`‘albumID’`,`‘artiest_artiestID’`),
  ADD KEY `‘artiest_artiestID’` (`‘artiest_artiestID’`);

--
-- Indexen voor tabel `‘artiest’`
--
ALTER TABLE `‘artiest’`
  ADD PRIMARY KEY (`‘artiestID’`,`‘platenlabel_platenlabelID’`);

--
-- Indexen voor tabel `‘platenlabel’`
--
ALTER TABLE `‘platenlabel’`
  ADD PRIMARY KEY (`‘platenlabelID’`);

--
-- Indexen voor tabel `‘studio’`
--
ALTER TABLE `‘studio’`
  ADD PRIMARY KEY (`‘studioID’`),
  ADD KEY `‘Artiest_artiestID’` (`‘Artiest_artiestID’`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `genreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `gerne-album`
--
ALTER TABLE `gerne-album`
  MODIFY `gerne-album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `‘album’`
--
ALTER TABLE `‘album’`
  MODIFY `‘albumID’` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `‘artiest’`
--
ALTER TABLE `‘artiest’`
  MODIFY `‘artiestID’` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `‘platenlabel’`
--
ALTER TABLE `‘platenlabel’`
  MODIFY `‘platenlabelID’` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `‘studio’`
--
ALTER TABLE `‘studio’`
  MODIFY `‘studioID’` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `gerne-album`
--
ALTER TABLE `gerne-album`
  ADD CONSTRAINT `gerne-album_ibfk_1` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`),
  ADD CONSTRAINT `gerne-album_ibfk_2` FOREIGN KEY (`albumID`) REFERENCES `‘album’` (`‘albumID’`);

--
-- Beperkingen voor tabel `‘album’`
--
ALTER TABLE `‘album’`
  ADD CONSTRAINT `‘album’_ibfk_1` FOREIGN KEY (`‘artiest_artiestID’`) REFERENCES `‘artiest’` (`‘artiestID’`);

--
-- Beperkingen voor tabel `‘studio’`
--
ALTER TABLE `‘studio’`
  ADD CONSTRAINT `‘studio’_ibfk_1` FOREIGN KEY (`‘Artiest_artiestID’`) REFERENCES `‘artiest’` (`‘artiestID’`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
