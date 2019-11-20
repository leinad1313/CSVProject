-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 20. Nov 2019 um 12:59
-- Server-Version: 5.6.35
-- PHP-Version: 5.6.40.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cvs`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cvsdata`
--

CREATE TABLE `cvsdata` (
  `Hauptartikelnr` varchar(255) NOT NULL,
  `Artikelname` varchar(255) NOT NULL,
  `Hersteller` varchar(255) NOT NULL,
  `Beschreibung` varchar(255) NOT NULL,
  `Materialangaben` varchar(255) NOT NULL,
  `Geschlecht` varchar(255) NOT NULL,
  `Produktart` varchar(255) NOT NULL,
  `Ärmel` varchar(255) NOT NULL,
  `Bein` varchar(255) NOT NULL,
  `Kragen` varchar(255) NOT NULL,
  `Herstellung` varchar(255) NOT NULL,
  `Taschenart` varchar(255) NOT NULL,
  `Grammatur` varchar(255) NOT NULL,
  `Material` varchar(255) NOT NULL,
  `Ursprungsland` varchar(255) NOT NULL,
  `Bildname` varchar(255) NOT NULL,
  `TabellenID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cvsdata`
--

INSERT INTO `cvsdata` (`Hauptartikelnr`, `Artikelname`, `Hersteller`, `Beschreibung`, `Materialangaben`, `Geschlecht`, `Produktart`, `Ärmel`, `Bein`, `Kragen`, `Herstellung`, `Taschenart`, `Grammatur`, `Material`, `Ursprungsland`, `Bildname`, `TabellenID`) VALUES
('1', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('10', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('11', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('12', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('13', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('14', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('15', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('16', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('17', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('18', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('19', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('2', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('20', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('21', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('22', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('23', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('24', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('25', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('26', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('27', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('28', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('29', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('3', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('30', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('31', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('32', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('33', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('34', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('35', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('36', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('37', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('38', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('39', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('4', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('40', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('41', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('42', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('43', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('44', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('45', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('46', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('47', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('48', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('49', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('5', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('50', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('51', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('52', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('53', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('54', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('55', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('56', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('57', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('58', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('59', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('6', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('60', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('61', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('62', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('63', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('64', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('65', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('66', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('67', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('68', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('69', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('7', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('70', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('71', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('72', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('73', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('74', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('75', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('76', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('77', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('78', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('79', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('8', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('80', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('81', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('82', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('83', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('84', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('85', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('86', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('87', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('88', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('89', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('9', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('90', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('91', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('92', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9),
('93', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cvsinformation`
--

CREATE TABLE `cvsinformation` (
  `Tabellenname` varchar(255) NOT NULL,
  `Datum` datetime NOT NULL,
  `TabellenID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `cvsinformation`
--

INSERT INTO `cvsinformation` (`Tabellenname`, `Datum`, `TabellenID`) VALUES
('Test', '2019-11-20 11:59:23', 9);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cvsdata`
--
ALTER TABLE `cvsdata`
  ADD UNIQUE KEY `Hauptartikelnr` (`Hauptartikelnr`);

--
-- Indizes für die Tabelle `cvsinformation`
--
ALTER TABLE `cvsinformation`
  ADD PRIMARY KEY (`TabellenID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cvsinformation`
--
ALTER TABLE `cvsinformation`
  MODIFY `TabellenID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
