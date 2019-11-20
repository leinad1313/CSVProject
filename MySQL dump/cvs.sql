-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 20. Nov 2019 um 12:51
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
('1', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('2', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('3', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('4', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('5', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('6', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('7', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('8', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('9', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('10', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('11', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('12', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('13', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('14', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('15', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('16', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('17', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('18', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('19', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('20', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('21', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('22', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('23', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('24', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('25', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('26', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('27', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('28', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('29', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('30', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('31', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('32', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('33', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('34', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('35', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('36', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('37', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('38', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('39', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('40', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('41', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('42', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('43', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('44', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('45', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('46', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('47', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('48', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('49', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('50', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('51', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('52', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('53', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('54', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('55', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('56', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('57', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('58', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('59', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('60', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('61', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('62', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('63', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('64', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('65', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('66', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('67', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('68', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('69', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('70', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('71', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('72', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('73', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('74', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('75', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('76', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('77', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('78', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('79', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('80', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('81', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('82', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('83', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('84', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('85', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('86', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('87', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('88', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('89', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('90', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('91', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('92', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5),
('93', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 5);

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
('Test', '2019-11-20 11:46:06', 5);

--
-- Indizes der exportierten Tabellen
--

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
  MODIFY `TabellenID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
