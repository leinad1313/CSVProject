-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 20. Nov 2019 um 18:50
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
-- Datenbank: `csv`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `csvdata`
--

CREATE TABLE `csvdata` (
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
-- Daten für Tabelle `csvdata`
--

INSERT INTO `csvdata` (`Hauptartikelnr`, `Artikelname`, `Hersteller`, `Beschreibung`, `Materialangaben`, `Geschlecht`, `Produktart`, `Ärmel`, `Bein`, `Kragen`, `Herstellung`, `Taschenart`, `Grammatur`, `Material`, `Ursprungsland`, `Bildname`, `TabellenID`) VALUES
('1', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('2', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('3', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('4', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('5', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('6', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('7', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('8', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('9', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('10', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('11', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('12', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('13', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('14', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('15', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('16', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('17', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('18', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('19', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('20', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('21', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('22', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('23', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('24', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('25', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('26', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('27', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('28', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('29', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('30', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('31', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('32', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('33', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('34', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('35', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('36', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('37', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('38', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('39', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('40', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('41', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('42', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('43', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('44', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('45', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('46', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('47', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('48', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('49', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('50', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('51', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('52', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('53', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('54', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('55', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('56', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('57', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('58', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('59', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('60', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('61', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('62', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('63', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('64', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('65', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('66', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('67', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('68', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('69', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('70', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('71', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('72', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('73', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('74', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('75', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('76', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('77', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('78', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('79', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('80', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('81', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('82', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('83', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('84', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('85', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('86', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('87', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('88', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('89', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('90', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('91', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('92', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20),
('93', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `csvinformation`
--

CREATE TABLE `csvinformation` (
  `Tabellenname` varchar(255) NOT NULL,
  `Datum` datetime NOT NULL,
  `TabellenID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `csvinformation`
--

INSERT INTO `csvinformation` (`Tabellenname`, `Datum`, `TabellenID`) VALUES
('Test', '2019-11-20 17:50:30', 20);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `csvdata`
--
ALTER TABLE `csvdata` ADD FULLTEXT KEY `Hauptartikelnr_2` (`Hauptartikelnr`);
ALTER TABLE `csvdata` ADD FULLTEXT KEY `Hauptartikelnr_3` (`Hauptartikelnr`);

--
-- Indizes für die Tabelle `csvinformation`
--
ALTER TABLE `csvinformation`
  ADD PRIMARY KEY (`TabellenID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `csvinformation`
--
ALTER TABLE `csvinformation`
  MODIFY `TabellenID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
