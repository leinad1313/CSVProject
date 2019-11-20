-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 20. Nov 2019 um 11:41
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
('1', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('2', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('3', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('4', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('5', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('6', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('7', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('8', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('9', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('10', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('11', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('12', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('13', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('14', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('15', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('16', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('17', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('18', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('19', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('20', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('21', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('22', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('23', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('24', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('25', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('26', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('27', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('28', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('29', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('30', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('31', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('1', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('2', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('3', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('4', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('5', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('6', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('7', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('8', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('9', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('10', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('11', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('12', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('13', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('14', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('15', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('16', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('17', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('18', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('19', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('20', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('21', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('22', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('23', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('24', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('25', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('26', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('27', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('28', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('29', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('30', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('31', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('1', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('2', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('3', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('4', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('5', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('6', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('7', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('8', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('9', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('10', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('11', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('12', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('13', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('14', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('15', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('16', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('17', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('18', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('19', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('20', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('21', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('22', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('23', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('24', 'Shirt', 'H&M', 'keine', '1cm dick', 'm', 'Shirt', 'lang', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('25', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('26', 'Hose', 'H&M', 'keine', '3cm dick', 'm', 'Hose', '', 'lang', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('27', 'Socken', 'Nike', 'keine', '1cm dick', 'm', 'Socken', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('28', 'Schuhe', 'Nike', 'keine', '3cm dick', 'm', 'Schuhe', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('29', 'M', 'Puma', 'keine', '1cm dick', 'm', 'M', '', '', '', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('30', 'Jacke', 'Gucci', 'keine', '5cm dick', 'm', 'Jacke', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4),
('31', 'Mantel', 'H&M', 'keine', '5cm dick', 'm', 'Mantel', '', '', 'hoch', '', '', '', 'Stoff', 'DE', '1234.jpg', 4);

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
('Test', '2019-11-20 10:19:58', 4);

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
  MODIFY `TabellenID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
