-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Mrz 2018 um 16:32
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr14_hadasa_geiger_bigevents`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bige`
--

CREATE TABLE `bige` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateandtime` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `bige`
--

INSERT INTO `bige` (`id`, `name`, `dateandtime`, `description`, `image`, `capacity`, `contact`, `contact_phone`, `address`, `URL`, `type`) VALUES
(1, 'Coco (without ', '2018-04-07 03:09:05', 'a Cartoon movie', 'http://www.smallworldvacations.com/blog/assets/content/coco.jpg', '100', 'hadasa@gmail.com', '123456789', 'Mariahilferstrasse', 'https://www.haydnkino.at/Cinema/Overview', 'Movie'),
(2, 'Ice Skating', '2018-01-01 09:00:00', 'Vienna Dream Ice skating in front of the city hall ', 'https://wiener-eistraum.epcom-cdn.at/thumb/crop/640x640/q80/images/picdb/500/589.jpg', '500', 'hadasa@gmail.com', '123456789', ' Friedrich-Schmidt-Platz 1, 1010 Wien', 'https://www.wienereistraum.com/', 'Sport'),
(3, 'Vienna Nutcrackers Ballet', '2018-04-21 19:00:00', 'Ballet Dance Performanece', 'https://images.eil.com/large_image/VIENNA_SYMPHONY_ORCHESTRA_INVITATION%2BTO%2BTHE%2BDANCE%2BAND%2BWALTZES%2BFROM%2BTHE%2BNUTCRACKER%2C%2BTHE%2BSLEEPING%2BBEAUTY%2C%2BDER%2BROSENKAVALIER%2BETC-530577.jpg', '100', 'hadasa@gmail.com', '123456789', 'Opernring 2', 'https://www.vienna-concert.com/event/en/1470/Vienna-State-Opera-Tickets-/The-Nutcracker.html', 'Ballet Performance'),
(7, 'Magic Flute', '2018-05-10 19:00:00', 'Opera Music Arragement by Mozart', 'https://i.ytimg.com/vi/xDTXVnDe4XQ/maxresdefault.jpg', '150', 'hadasa@gmail.com', '123456789', ' Opernring 2, 1010 Wien', 'https://www.wiener-staatsoper.at/', 'Opera'),
(8, ' Monkey Dreams', '2018-05-05 14:00:00', 'Story of a monkey ', 'https://insightdali.com/wp-content/uploads/2017/01/Eye-of-Dali-Dream-Theatre1.jpg', '50', 'hadasa@gmail.com', '123456789', 'Mariahilferstrasse 25', 'https://www.dschungelwien.at/vorstellung/190', 'Children Theater'),
(9, 'Volleyball', '2018-04-01 09:00:00', 'Volleyball match ', 'http://volleycountry.com/wp-content/uploads/2017/11/volleyball-england-popular.jpg', '500', 'hadasa@gmail.com', '123456789', 'Spain', 'http://vienna2017.fivb.com/en', 'Sport'),
(11, 'Fifty Shade of Greed', '2018-04-10 19:09:05', 'Sequal movie of Fifty Shade of Grey', 'http://t1.gstatic.com/images?q=tbn:ANd9GcSlJc8ETgXJLQBnqC4SliUxiBBIBkqSQsCmDEg3Yx0U3g-gdtUO', '100', 'hadasa@gmail.com', '123456789', 'Mariahilferstrasse 90', 'https://www.haydnkino.at/Cinema/Overview', 'Movie'),
(12, 'Tango Night', '2018-05-01 21:09:05', 'Dancing with your heart', 'http://www.ilearnanything.com/wp-content/uploads/2016/01/o-FOREVER-TANGO-facebookedit-768x565.jpg', '1000', 'Dragana@gmail.com', '123456789', 'Opernring/Operngasse, 1010 Wien', 'http://www.albertinapassage.at/', 'Dancing'),
(13, 'Andrea Bocelli', '2018-03-24 19:00:00', 'World Tour Concert', 'http://westgateevents.com/wgwp/wp-content/uploads/2013/10/concert_banner_1309ownev_599_799x484_andrea-bocelli.jpg', '100', 'hadasa@gmail.com', '1234567', 'kettenbruckengasse', 'https://www.wien-ticket.at/de/ticket/40887/andrea-bocelli-wiener-stadthalle-halle-d-wien?gclid=CjwKCAiA_ojVBRAlEiwAOLRxI5w1a4JlAIGd-bhzC0cHni1dkT6o7oAmJIgXVQXDNw0_fvsCFkX5MhoC-xoQAvD_BwE', 'Music');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'admin admin', 'admin@admin.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(3, 'Hadasa Geiger', 'Hadasa@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bige`
--
ALTER TABLE `bige`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bige`
--
ALTER TABLE `bige`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
