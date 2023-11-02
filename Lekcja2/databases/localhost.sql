-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2023 at 08:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NorthWind`
--
CREATE DATABASE IF NOT EXISTS `NorthWind` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `NorthWind`;

-- --------------------------------------------------------

--
-- Table structure for table `dostawcy`
--

CREATE TABLE `dostawcy` (
  `id_dostwcy` int(11) NOT NULL,
  `nazwa_firmy` varchar(100) NOT NULL,
  `miasto` varchar(100) NOT NULL,
  `kraj` varchar(100) NOT NULL,
  `telefon` varchar(12) NOT NULL,
  `www` varchar(100) NOT NULL,
  `adres` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dostawcy`
--

INSERT INTO `dostawcy` (`id_dostwcy`, `nazwa_firmy`, `miasto`, `kraj`, `telefon`, `www`, `adres`) VALUES
(1, 'Kamis', 'Rzeszów', 'Polska', '123123456', 'www.gres.pl', 'Zielona 8'),
(2, 'Kotus', 'Warszawa', 'Pska', '789454', 'www.ikrje.pl', 'Kosynierów 4'),
(3, 'Krakusek', 'Przeworsk', 'Polska', '56876456', 'www.krakusek.com', 'Krokusowa 4/5'),
(4, 'Zimowit', 'Kraków', 'Polska', '298542345', 'www.zimowit.info', 'Grzybowa 4'),
(5, 'Biako', 'Białystok', 'Polska', '56783456789', 'www.biako.com', 'Ciepla 12'),
(6, 'Most Trans', 'Gdynia', 'Polska', '4567890432', 'www.mottrans.com', 'Marii Konopnickiej 20'),
(7, 'Wiatrołap', 'Gdańsk', 'Polska', '567890234565', 'www.wiatrolap.pl', 'Kochanowskiego 5'),
(8, 'Wodogrzmot', 'Pacanów', 'Polska', '987654328765', 'www.drag.pl', 'Lwowska 6'),
(9, 'WodGaz', 'Radom', 'Polska', '2345678905', 'www.motrk.org', 'Fiołkowa 56/7'),
(10, 'BIKO', 'Białystok', 'Polska', '345678906543', 'www.biko.pl', 'Złota 4');

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kategoria` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id_kategoria`, `nazwa`, `opis`) VALUES
(1, 'spożywcze', ''),
(2, 'chemiczne', ''),
(3, 'napoje', ''),
(4, 'komputery', ''),
(5, 'AGD', ''),
(6, 'RTV', ''),
(7, 'zabawki', '');

-- --------------------------------------------------------

--
-- Table structure for table `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `nazwa_firmy` varchar(100) DEFAULT NULL,
  `adres` varchar(100) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `kraj` varchar(50) NOT NULL,
  `telefon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`, `nazwa_firmy`, `adres`, `miasto`, `kraj`, `telefon`) VALUES
(1, 'Marcin', 'Witkowski', 'Adamczyk Zbigniew', 'Graniczna 9', 'Warszawa', 'Kanada', '(22) 678-09-'),
(2, 'Janusz', 'Olszewski', 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', 'Niemcy', '030-0074321'),
(3, 'Maksymilian', 'Piotrowski', 'Ana Trujillo Emparedados y helados', 'Avda. de la ConstituciÓn 2222', 'MĂŠxico D.F.', 'Meksyk', '(5) 555-4729'),
(4, 'MaŁgorzata', 'Adamska', 'Aronia', 'ul. M.Konopnickiej 123', 'ĹÓdĹş', 'Polska', '(42) 87-87-7'),
(5, 'Lena', 'Szymczak', 'Around the Horn', '120 Hanover Sq.', 'Londyn', 'Wielka Brytania', '(71) 555-778'),
(6, 'Gabriela', 'Urbańska', 'Berglunds snabbkp', 'Berguvsvgen  8', 'LuleÄş', 'Szwecja', '0921-12 34 6'),
(7, 'Paulina', 'Wasilewska', 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', 'Niemcy', '0621-08460'),
(8, 'Dominik', 'Jabłoński', 'Bolido Comidas preparadas', 'C/ Araquil, 67', 'Madryt', 'Hiszpania', ''),
(9, 'Kajetan', 'Pietrzak', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'Kanada', '(604) 555-47'),
(10, 'Olga', 'Ciesielska', 'B\'s Beverages', 'Fauntleroy Circus', 'Londyn', 'Wielka Brytania', '(71) 555-121'),
(11, 'Magdalena', 'Kucharska', 'Białostockie Zakłady Mleczarskie', 'Brzeska 4', 'Białystok', 'Polska', '(29) 89-07-0'),
(12, 'Tomasz', 'Adamczyk', 'Bielskie Zakłady Wód Pitnych', 'BiaŁa 8', 'Bielsko-BiaŁa', 'Polska', '(67) 90-78-1'),
(13, 'Matylda', 'BrzeziĹska', 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', 'Argentyna', '(1) 135-5555'),
(14, 'PaweŁ', 'Kowalczyk', 'Canon', '76 Washington Way', 'Boston', 'USA', '(401)654-12'),
(15, 'Klaudia', 'GŁowacka', 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'MĂŠxico D.F.', 'Meksyk', ''),
(16, 'ElĹźbieta', 'Sadowska', 'ComĂŠrcio Mineiro', 'Av. dos LusĂ¬adas, 23', 'SÄo Paulo', 'Brazylia', '(11) 555-764'),
(17, 'Karol', 'Nowakowski', 'Consolidated Holdings', 'Berkeley Gardens\r\n12  Brewery', 'Londyn', 'Wielka Brytania', '(71) 555-228'),
(18, 'Daniel', 'Duda', 'Drabik Janusz', 'PoznaĹska 12', 'PoznaĹ', 'Polska', '(23) 56-09-7'),
(19, 'Emilia', 'Wysocka', 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', 'Niemcy', '0241-039123'),
(20, 'Zofia', 'Chmielewska', 'Eastern Connection', '35 King George', 'Londyn', 'Wielka Brytania', '(71) 555-029'),
(21, 'Anna', 'Kubiak', 'Ernst Handel', 'Kirchgasse 6', 'Graz', 'Austria', '7675-3425'),
(22, 'Dawid', 'Michalski', 'Familia Arquibaldo', 'Rua OrÓs, 92', 'SÄƒo Paulo', 'Brazylia', ''),
(23, 'Wojciech', 'Kowalski', 'Fiat Auto Poland', 'ul. PoznaĹska 1', 'Warszawa', 'Polska', '(42) 12-01-4'),
(24, 'MichaŁ', 'WÓjcik', 'FISSA Fabrica Inter. Salchichas S.A.', 'C/ Moralzarzal, 86', 'Madryt', 'Hiszpania', '(91) 555 94 '),
(25, 'Antoni', 'WoĹşniak', 'Folies gourmandes', '184, chaussĂŠe de Tournai', 'Lille', 'Francja', '20.16.10.16'),
(26, 'Ignacy', 'Pawlak', 'Folk och fĂ¤ HB', 'Äškergatan 24', 'BrĂ¤cke', 'Szwecja', '0695-34 67 2'),
(27, 'Natalia', 'Zawadzka', 'Frankenversand', 'Berliner Platz 43', 'Monachium', 'Niemcy', '089-0877310'),
(28, 'Sebastian', 'WrÓbel', 'France restauration', '54, rue Royale', 'Nantes', 'Francja', '40.32.21.21'),
(29, 'MiŁosz', 'Kowalski', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', 'WŁochy', '011-4988260'),
(30, 'MikoŁaj', 'KozŁowski', 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lizbona', 'Portugalia', '(1) 354-2534'),
(31, 'StanisŁaw', 'Kowalski', 'GalerĂ¬a del gastrÓnomo', 'Rambla de CataluĹa, 23', 'Barcelona', 'Hiszpania', '(93) 203 456'),
(32, 'Julian', 'Rutkowski', 'Godos Cocina TĂ¬pica', 'C/ Romero, 33', 'Sewilla', 'Hiszpania', '(95) 555 82 '),
(33, 'Kamila', 'Sadowska', 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'Brazylia', '(11) 555-948'),
(34, 'Izabela', 'DomaĹska', 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'USA', '(503) 555-75'),
(35, 'Karolina', 'SokoŁowska', 'GROSELLA-Restaurante', '5Ĺ Ave. Los Palos Grandes', 'Caracas', 'Wenezuela', '(2) 283-2951'),
(36, 'Weronika', 'Sawicka', 'Hanari Carnes', 'Rua do PaĂ§o, 67', 'Rio de Janeiro', 'Brazylia', '(21) 555-009'),
(37, 'Adam', 'Kwiatkowski', 'HILARIĂN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San CristÓbal', 'Wenezuela', '(5) 555-1340'),
(38, 'Oskar', 'Dudek', 'Hungry Coyote Import Store', 'City Center Plaza\r\n516 Main St.', 'Elgin', 'USA', '(503) 555-68'),
(39, 'Konrad', 'Tomaszewski', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Irlandia', '2967 542'),
(40, 'Aleksander', 'Jankowski', 'Island Trading', 'Garden House\r\nCrowther Way', 'Hedge End', 'Wielka Brytania', '(24) 555-888'),
(41, 'Marcel', 'Walczak', 'KĂśniglich Essen', 'Maubelstr. 90', 'Brandenburg', 'Niemcy', '0555-09876'),
(42, 'Zuzanna', 'Jakubowska', 'La corne d\'abondance', '67, avenue de l\'Europe', 'Wersal', 'Francja', '30.59.84.10'),
(43, 'Barbara', 'CzerwiĹska', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', 'Francja', '61.77.61.10'),
(44, 'Franciszek', 'Wojciechowski', 'Laughing Bacchus Wine Cellars', '1900 Oak St.', 'Vancouver', 'Kanada', '(604) 555-33'),
(45, 'Laura', 'Laskowska', 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'USA', '(509) 555-79'),
(46, 'Agata', 'KoŁodziej', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', 'Niemcy', '069-0245984'),
(47, 'Helena', 'Borowska', 'Let\'s Stop N Shop', '87 Polk St.\r\nSuite 5', 'San Francisco', 'USA', '(415) 555-59'),
(48, 'Krzysztof', 'Grabowski', 'LILA-Supermercado', 'Carrera 52 con Ave. BolĂ¬var #65-98 Llano Largo', 'Barquisimeto', 'Wenezuela', ''),
(49, 'Amelia', 'Borkowska', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Wenezuela', '(8) 34-56-12'),
(50, 'Ewa', 'Borowska', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'USA', '(503) 555-95'),
(51, 'Kinga', 'CieĹlak', 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', 'WŁochy', '035-640230'),
(52, 'Patryk', 'PawŁowski', 'Marex', 'Zagajnikowa 5', 'Olsztyn', 'Polska', '(09)78-09-01'),
(53, 'Katarzyna', 'KaĹşmierczak', 'Mercedes Zasada Polska', 'ul. Mostowa 4', 'Warszawa', 'Polska', '(42) 11-65-0'),
(54, 'Daria', 'Makowska', 'Mere Paillarde', '43 rue St. Laurent', 'MontrĂŠal', 'Kanada', '(514) 555-80'),
(55, 'Sandra', 'BŁaszczyk', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Lipsk', 'Niemcy', '0342-023176'),
(56, 'Adrian', 'Majewski', 'North/South', 'South House\r\n300 Queensbridge', 'Londyn', 'Wielka Brytania', '(71) 555-773'),
(57, 'Jan', 'DÄbrowski', 'OcĂŠano AtlĂĄntico Ltda.', 'Ing. Gustavo Moncada 8585\r\nPiso 20-A', 'Buenos Aires', 'Argentyna', '(1) 135-5333'),
(58, 'Aleksandra', 'JasiĹska', 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'USA', '(907) 555-75'),
(59, 'Mateusz', 'Kowalski', 'Ottilies KĂ¤seladen', 'Mehrheimerstr. 369', 'Kolonia', 'Niemcy', '0221-0644327'),
(60, 'Agata', 'Krajewska', 'Paris spĂŠcialitĂŠs', '265, boulevard Charonne', 'ParyĹź', 'Francja', '(1) 42.34.22'),
(61, 'PaweŁ', 'Kowalski', 'Pericles Comidas clĂĄsicas', 'Calle Dr. Jorge Cash 321', 'MĂŠxico D.F.', 'Meksyk', '(5) 552-3745'),
(62, 'Oliwia', 'BÄk', 'Petrochemia PŁocka', 'PŁocka 3', 'PŁock', 'Polska', '(34) 769-09-'),
(63, 'RafaŁ', 'Ostrowski', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', 'Austria', '6562-9722'),
(64, 'Grzegorz', 'Szewczyk', 'Princesa Isabel Vinhos', 'Estrada da saĂşde n. 58', 'La', 'Portugalia', '(1) 356-5634'),
(65, 'Nikola', 'Andrzejewska', 'Que DelĂ¬cia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'Brazylia', '(21) 555-425'),
(66, 'Kacper', 'Lewandowski', 'Queen Cozinha', 'Alameda dos CanĹrios, 891', 'SÄo Paulo', 'Brazylia', '(11) 555-118'),
(67, 'Jan', 'Krawczyk', 'QUICK-Stop', 'TaucherstraĂe 10', 'Cunewalde', 'Niemcy', '0372-035188'),
(68, 'Alicja', 'Czarnecka', 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', 'Argentyna', '(1) 123-5555'),
(69, 'Lena', 'SzczepaĹska', 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'USA', '(505) 555-59'),
(70, 'Kamil', 'Nowak', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', 'WŁochy', '0522-556721'),
(71, 'Damian', 'StÄpieĹ', 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'Brazylia', '(21) 555-341'),
(72, 'Maja', 'Zalewska', 'Richter Supermarkt', 'Grenzacherweg 237', 'Genewa', 'Szwajcaria', '0897-034214'),
(73, 'Marta', 'Czarnecka', 'Romero y tomillo', 'Gran VĂ¬a, 1', 'Madryt', 'Hiszpania', '(91) 745 620'),
(74, 'Szymon', 'KrÓl', 'SantĂŠ Gourmet', 'Erling Skakkes gate 78', 'Stavern', 'Norwegia', '07-98 92 35'),
(75, 'Ĺucja', 'Chojnacka', 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'USA', '(208) 555-80'),
(76, 'Maja', 'ZiÓŁkowska', 'Seven Seas Imports', '90 Wadhurst Rd.', 'Londyn', 'Wielka Brytania', '(71) 555-171'),
(77, 'Julia', 'WrÓblewska', 'Simons bistro', 'VinbÄltet 34', 'KĹbenhavn', 'Dania', '31 12 34 56'),
(78, 'Antoni', 'Malinowski', 'SpĂŠcialitĂŠs du monde', '25, rue Lauriston', 'ParyĹź', 'Francja', '(1) 47.55.60'),
(79, 'Nadia', 'Nowak', 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'USA', '(307) 555-46'),
(80, 'Iga', 'Szulc', 'Supremes dĂŠlices', 'Boulevard Tirou, 255', 'Charleroi', 'Belgia', '(071) 23 67 '),
(81, 'Eryk', 'Marciniak', 'Tele-Fonica', 'ul. Wawelska 12', 'KrakÓw', 'Polska', '(012) 45-32-'),
(82, 'Jan', 'Kowalski', 'The Big Cheese', '89 Jefferson Way\r\nSuite 2', 'Portland', 'USA', '(503) 555-36'),
(83, 'Tymoteusz', 'Sikora', 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'USA', '(406) 555-58'),
(84, 'Martyna', 'Kalinowska', 'Toms SpezialitĂ¤ten', 'Luisenstr. 48', 'MĂźnster', 'Niemcy', '0251-031259'),
(85, 'Hanna', 'Maciejewska', 'Tortuga Restaurante', 'Avda. Azteca 123', 'MĂŠxico D.F.', 'Meksyk', ''),
(86, 'Jakub', 'Nowak', 'TradiĂ§Äo Hipermercados', 'Av. Ines de Castro, 414', 'SÄo Paulo', 'Brazylia', '(11) 555-216'),
(87, 'Bartek', 'WiĹniewski', 'Trail\'s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'USA', '(206) 555-82'),
(88, 'ElĹźbieta', 'Zakrzewska', 'Vaffeljernet', 'SmagslĹget 45', 'Äšrhus', 'Dania', '86 21 32 43'),
(89, 'Piotr', 'Jaworski', 'Victuailles en stock', '2, rue du Commerce', 'Lyon', 'Francja', '78.32.54.86'),
(90, 'Dominika', 'Sobczak', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', 'Francja', '26.47.15.10'),
(91, 'Anna', 'Lis', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', 'Niemcy', '0711-020361'),
(92, 'Ĺukasz', 'KrÓl', 'Wartian Herkku', 'Torikatu 38', 'Oulu', 'Finlandia', '981-443655'),
(93, 'Maria', 'WŁodarczyk', 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'Brazylia', ''),
(94, 'Tymon', 'Michalak', 'White Clover Markets', '305 - 14th Ave. S.\r\nSuite 3B', 'Seattle', 'USA', '(206) 555-41'),
(95, 'Anna', 'Sikorska', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', 'Finlandia', '90-224 8858'),
(96, 'Maria', 'Wilk', 'Wolski  Zajazd', 'ul. Filtrowa 68', 'Warszawa', 'Polska', '(26) 642-701'),
(97, 'Piotr', 'nowak', 'WrzesiĹski Karol', 'ul.KrÓtka 2', 'Koszalin', 'Polska', ''),
(98, 'Filip', 'SzymaĹski', 'ZAZAZ', 'Topolowa 22', 'Konin', 'Polska', ''),
(99, 'John', '', 'Z-Trans', 'KsiÄĹźÄca 12', 'PoznaĹ', 'Polska', '(44)765-98-0');

-- --------------------------------------------------------

--
-- Table structure for table `oddzial`
--

CREATE TABLE `oddzial` (
  `id_odzial` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oddzial`
--

INSERT INTO `oddzial` (`id_odzial`, `nazwa`) VALUES
(1, 'sprzedawca'),
(2, 'magazynier'),
(3, 'wózkowy'),
(4, 'planista'),
(5, 'informatyk'),
(6, 'analityk'),
(7, 'kierownik sprzedaży'),
(8, 'dyrektor'),
(9, 'księgowy'),
(10, 'kadrowa'),
(11, 'specjalista do spraw HR'),
(12, 'specjalista do spraw BHP'),
(13, 'sekretarka');

-- --------------------------------------------------------

--
-- Table structure for table `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownik` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `id_odzial` int(11) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `data_zatrudnienia` date NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `telefon` varchar(12) NOT NULL,
  `kraj` varchar(50) NOT NULL DEFAULT 'Polska',
  `adres` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownik`, `imie`, `nazwisko`, `id_odzial`, `data_urodzenia`, `data_zatrudnienia`, `miasto`, `telefon`, `kraj`, `adres`) VALUES
(1, 'John', 'Abrahow', 8, '1954-10-01', '1972-02-08', 'RzeszÓw', '787474747', 'USA', 'NY,NEW STREET 7H'),
(2, 'Ewa', 'Jonik', 1, '1980-03-15', '2003-08-01', 'KrakÓw', '123636369', 'Polska', 'ul. RÓĹźana 67'),
(3, 'Adnrzej', 'Kowaluk', 1, '1966-10-07', '1987-10-29', 'RzeszÓw', '1812545', 'Polska', 'ul. Podkarpacka 6/45'),
(4, 'Justyna', 'Biel', 13, '1977-12-09', '1999-10-29', 'LeĹźajsk', '17224242', 'Polska', 'ul. podkarpacka 8/2'),
(5, 'Antoni', 'Kraszewski', 11, '1967-08-05', '1983-10-29', 'ĹaĹcut', '178585877', 'Polska', 'ul. Warszawska 8/7'),
(6, 'Janusz', 'Nowak', 4, '1970-10-07', '1992-10-21', 'RzeszÓw', '178785454', 'Polska', 'ul. HetmaĹska 111'),
(7, 'Jan', 'Ewer', 7, '1971-10-14', '1992-12-21', 'Berlin', '2547474', 'Niemcy', ''),
(8, 'Damian', 'WrÓbel', 2, '1978-03-21', '1999-10-05', 'Krosno', '798787874', 'Polska', ''),
(9, 'Adrian', 'Domka', 1, '1970-08-05', '1992-10-21', 'RzeszÓw', '182525252', 'Polska', '');

-- --------------------------------------------------------

--
-- Table structure for table `produkty`
--

CREATE TABLE `produkty` (
  `id_produkt` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `id_dostwcy` int(11) NOT NULL,
  `id_kategoria` int(11) NOT NULL,
  `ilosc_w_jednostce` varchar(100) NOT NULL,
  `cena_jednostkowa` float NOT NULL,
  `stan_magazynu` int(11) NOT NULL,
  `minimum_magazynu` int(11) NOT NULL,
  `wycofany` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id_produkt`, `nazwa`, `id_dostwcy`, `id_kategoria`, `ilosc_w_jednostce`, `cena_jednostkowa`, `stan_magazynu`, `minimum_magazynu`, `wycofany`) VALUES
(1, 'Tort', 10, 1, '45', 123, 11, 5, 1),
(2, 'Podpora betonowa', 6, 2, '100', 34512300, 10, 2, 1),
(3, 'Farba Zielona', 8, 2, '122', 100, 67, 5, 0),
(4, 'Laptop HP', 4, 4, '1000', 25, 800, 100, 10),
(5, 'Woda Gazowana', 3, 3, '456', 1, 190, 10, 3),
(6, 'Napój Owocowy', 3, 3, '4563', 2, 3452, 23, 7),
(7, 'Utleniacz', 9, 2, '45', 345, 20, 2, 0),
(8, 'Rowerek', 2, 7, '49', 3500, 20, 2, 1),
(9, 'Kino Domowe', 1, 6, '90', 7000, 300, 30, 0),
(10, 'Wafelek', 10, 1, '50', 2, 45, 3, 3),
(11, 'Telewizor', 5, 5, '56', 5000, 34, 2, 1),
(12, 'Pralka', 5, 5, '56', 5000, 5, 2, 0),
(13, 'Odkurzacz', 5, 5, '230', 500, 30, 2, 1),
(14, 'Laptop Dell', 3, 4, '34', 24, 2345, 12, 1),
(15, 'Laptop Mac', 3, 4, '678', 54, 345, 20, 11),
(16, 'Rozpuszczalnik', 6, 2, '67', 6, 50, 2, 0),
(17, 'Podpora stalowa', 6, 2, '4567', 600000, 30, 1, 0),
(18, 'Chleb', 10, 1, '345', 2, 234, 2, 23),
(19, 'Klocki', 4, 7, '45', 45, 12, 1, 1),
(20, 'Lalaki', 4, 7, '567', 45, 340, 30, 0),
(21, 'Rumba', 5, 5, '56', 5000, 34, 3, 3),
(22, 'Energetyk', 8, 3, '435', 34, 45, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `spedytorzy`
--

CREATE TABLE `spedytorzy` (
  `id_spedytora` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `telefon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spedytorzy`
--

INSERT INTO `spedytorzy` (`id_spedytora`, `nazwa`, `telefon`) VALUES
(1, 'UPS', '77713125'),
(2, 'DHL', '8889966'),
(3, 'INPOST', '23654987'),
(4, 'DPD', '78796933'),
(5, 'ADAR', '888777444');

-- --------------------------------------------------------

--
-- Table structure for table `szczegoly_zamowien`
--

CREATE TABLE `szczegoly_zamowien` (
  `id_zamowienia` int(11) NOT NULL,
  `id_produkt` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL,
  `rabat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `szczegoly_zamowien`
--

INSERT INTO `szczegoly_zamowien` (`id_zamowienia`, `id_produkt`, `ilosc`, `rabat`) VALUES
(1, 18, 2, 0),
(2, 8, 3, 0),
(3, 9, 2, 0.1),
(4, 13, 2, 0.25),
(5, 12, 1, 0),
(6, 3, 15, 0.1),
(7, 19, 2, 0),
(8, 1, 3, 0.2),
(9, 14, 2, 0),
(10, 4, 12, 0),
(11, 5, 5, 0),
(12, 6, 14, 0.1),
(13, 12, 2, 0.25),
(14, 21, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_pracownika` int(11) NOT NULL,
  `data_zamowienia` date NOT NULL,
  `data_wysylki` date NOT NULL,
  `id_spedytora` int(11) NOT NULL,
  `koszt_przesylki` float NOT NULL,
  `nazwisko_odbiorcy` varchar(100) NOT NULL,
  `adres_odbiorcy` varchar(100) NOT NULL,
  `kraj_odbiorcy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klienta`, `id_pracownika`, `data_zamowienia`, `data_wysylki`, `id_spedytora`, `koszt_przesylki`, `nazwisko_odbiorcy`, `adres_odbiorcy`, `kraj_odbiorcy`) VALUES
(1, 1, 2, '2020-10-01', '2020-10-03', 1, 15, '', '', 'Polska'),
(2, 2, 9, '2020-10-07', '2020-10-09', 4, 12, '', '', 'Polska'),
(3, 46, 2, '2020-08-01', '2020-08-03', 3, 14, '', '', 'Polska'),
(4, 95, 9, '2020-08-26', '2020-08-28', 2, 22, '', '', ''),
(5, 22, 9, '2020-10-07', '2020-10-09', 5, 25, '', '', ''),
(6, 43, 9, '2021-10-15', '2021-10-17', 1, 13, '', '', ''),
(7, 2, 2, '2021-10-07', '2021-10-09', 5, 15, '', '', ''),
(8, 18, 9, '2021-08-05', '2021-08-07', 5, 18, '', '', ''),
(9, 64, 2, '2021-10-21', '2021-10-23', 2, 18, '', '', ''),
(10, 47, 2, '2021-04-09', '2021-04-11', 2, 15, '', '', ''),
(11, 91, 3, '2021-05-07', '2021-05-09', 3, 15, '', '', ''),
(12, 80, 3, '2021-09-02', '2021-10-03', 4, 25, '', '', ''),
(13, 85, 3, '2021-04-09', '2021-04-12', 3, 15, '', '', ''),
(14, 6, 3, '2021-04-06', '2021-04-08', 4, 15, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`id_dostwcy`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kategoria`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `oddzial`
--
ALTER TABLE `oddzial`
  ADD PRIMARY KEY (`id_odzial`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownik`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_produkt`);

--
-- Indexes for table `spedytorzy`
--
ALTER TABLE `spedytorzy`
  ADD PRIMARY KEY (`id_spedytora`);

--
-- Indexes for table `szczegoly_zamowien`
--
ALTER TABLE `szczegoly_zamowien`
  ADD PRIMARY KEY (`id_zamowienia`,`id_produkt`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dostawcy`
--
ALTER TABLE `dostawcy`
  MODIFY `id_dostwcy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `oddzial`
--
ALTER TABLE `oddzial`
  MODIFY `id_odzial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id_pracownik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `spedytorzy`
--
ALTER TABLE `spedytorzy`
  MODIFY `id_spedytora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
